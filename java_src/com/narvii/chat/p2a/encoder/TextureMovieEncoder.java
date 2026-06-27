package com.narvii.chat.p2a.encoder;

import android.graphics.SurfaceTexture;
import android.media.AudioRecord;
import android.opengl.EGLContext;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import com.narvii.chat.video.RtcChatManager;
import com.narvii.util.Log;
import com.narvii.video.gles.EglCore;
import com.narvii.video.gles.FullFrameRect;
import com.narvii.video.gles.Texture2dProgram;
import com.narvii.video.gles.WindowSurface;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public class TextureMovieEncoder {
    private static final int[] AUDIO_SOURCES = {1, 0, 5, 7, 6};
    public static final int IN_RECORDING = 1;
    private static final int MSG_FRAME_AVAILABLE = 2;
    private static final int MSG_QUIT = 5;
    private static final int MSG_SET_TEXTURE_ID = 3;
    private static final int MSG_START_RECORDING = 0;
    private static final int MSG_STOP_RECORDING = 1;
    private static final int MSG_UPDATE_SHARED_CONTEXT = 4;
    public static final int NONE_RECORDING = 4;
    public static final int PREPARE_RECORDING = 5;
    public static final int START_RECORDING = 2;
    public static final int STOP_RECORDING = 3;
    private static final String TAG = "TextureMovieEncoder";
    private static final boolean VERBOSE = false;
    private int frameBuffer;
    private AudioEncoderCore mAudioEncoder;
    private EglCore mEglCore;
    private int mFrameNum;
    private FullFrameRect mFullScreen;
    private volatile VideoEncoderHandler mHandler;
    private int mHeight;
    private WindowSurface mInputWindowSurface;
    private MediaMuxerWrapper mMuxer;
    private boolean mReady;
    private int mRecordingStatus;
    private boolean mRunning;
    private int mTextureId;
    private VideoEncoderCore mVideoEncoder;
    private int mWidth;
    private OnEncoderStatusUpdateListener onEncoderStatusUpdateListener;
    private int texture;
    private Watermark watermark;
    private Object mReadyFence = new Object();
    private long firstTimeStampBase = 0;
    private long firstNanoTime = 0;
    private float[] mTransform = new float[16];
    private EncoderConfig config = null;
    private final Object prepareEncoderFence = new Object();
    private boolean prepareEncoderReady = false;
    private final Object stopEncoderFence = new Object();
    private boolean stopEncoderSuccess = false;
    private boolean mRequestStop = false;
    private long prevOutputPTSUs = 0;

    public interface OnEncoderStatusUpdateListener {
        void onStartSuccess();

        void onStopSuccess();
    }

    public boolean checkRecordingStatus(int i) {
        return this.mRecordingStatus == i;
    }

    public TextureMovieEncoder() {
        this.mRecordingStatus = 4;
        this.mRecordingStatus = 2;
        Matrix.setIdentityM(this.mTransform, 0);
    }

    public void setWatermark(Watermark watermark) {
        this.watermark = watermark;
    }

    public static class EncoderConfig {
        final long firstTimeStampBase;
        final int mBitRate;
        final EGLContext mEglContext;
        final int mFrameRate;
        final int mHeight;
        final File mOutputFile;
        final int mWidth;

        public EncoderConfig(File file, int i, int i2, int i3, int i4, EGLContext eGLContext, long j) {
            this.mOutputFile = file;
            this.mWidth = i;
            this.mHeight = i2;
            this.mFrameRate = i3;
            this.mBitRate = i4;
            this.mEglContext = eGLContext;
            this.firstTimeStampBase = j;
        }

        public String toString() {
            return "EncoderConfig: " + this.mWidth + "x" + this.mHeight + " @" + this.mBitRate + " to '" + this.mOutputFile.toString() + "' ctxt=" + this.mEglContext;
        }
    }

    public void startRecording(EncoderConfig encoderConfig) {
        this.mWidth = encoderConfig.mWidth;
        this.mHeight = encoderConfig.mHeight;
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        this.texture = iArr[0];
        GLES20.glBindTexture(3553, this.texture);
        GLES20.glTexParameteri(3553, 10241, 9729);
        GLES20.glTexParameteri(3553, 10240, 9729);
        GLES20.glTexImage2D(3553, 0, 6408, this.mWidth, this.mHeight, 0, 6408, 5121, null);
        GLES20.glBindTexture(3553, 0);
        int[] iArr2 = new int[1];
        GLES20.glGenFramebuffers(1, iArr2, 0);
        this.frameBuffer = iArr2[0];
        Log.d(TAG, "Encoder: startRecording()");
        this.mRecordingStatus = 5;
        this.firstTimeStampBase = encoderConfig.firstTimeStampBase;
        this.firstNanoTime = System.nanoTime();
        synchronized (this.mReadyFence) {
            if (this.mRunning) {
                Log.w(TAG, "Encoder thread already running");
                return;
            }
            this.mRunning = true;
            new VideoThread("TextureMovieVideoEncoder").start();
            new AudioThread().start();
            while (!this.mReady) {
                try {
                    this.mReadyFence.wait();
                } catch (InterruptedException unused) {
                }
            }
            this.mHandler.sendMessage(this.mHandler.obtainMessage(0, encoderConfig));
        }
    }

    public void stopRecording() {
        GLES20.glDeleteFramebuffers(1, new int[]{this.frameBuffer}, 0);
        GLES20.glDeleteTextures(1, new int[]{this.texture}, 0);
        this.frameBuffer = 0;
        this.texture = 0;
        this.mRecordingStatus = 4;
        this.mHandler.sendMessage(this.mHandler.obtainMessage(1));
        this.mHandler.sendMessage(this.mHandler.obtainMessage(5));
    }

    public boolean isRecording() {
        boolean z;
        synchronized (this.mReadyFence) {
            z = this.mRunning;
        }
        return z;
    }

    public void updateSharedContext(EGLContext eGLContext) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(4, eGLContext));
    }

    public void frameAvailable(SurfaceTexture surfaceTexture, float[] fArr) {
        synchronized (this.mReadyFence) {
            if (this.mReady) {
                long jNanoTime = surfaceTexture == null ? System.nanoTime() : surfaceTexture.getTimestamp();
                if (jNanoTime == 0) {
                    Log.w(TAG, "HEY: got SurfaceTexture with timestamp of zero");
                    return;
                }
                float[] fArr2 = this.mTransform;
                System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
                this.mHandler.sendMessage(this.mHandler.obtainMessage(2, (int) (jNanoTime >> 32), (int) jNanoTime, this.mTransform));
            }
        }
    }

    public void setTextureId(FullFrameRect fullFrameRect, int i, float[] fArr) {
        if (this.texture != 0) {
            int[] iArr = new int[4];
            GLES20.glGetIntegerv(2978, iArr, 0);
            GLES20.glBindFramebuffer(36160, this.frameBuffer);
            GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.texture, 0);
            GLES20.glViewport(0, 0, this.mWidth, this.mHeight);
            if (fullFrameRect != null) {
                fullFrameRect.drawFrame(i, fArr);
            }
            GLES20.glBindFramebuffer(36160, 0);
            GLES20.glViewport(iArr[0], iArr[1], iArr[2], iArr[3]);
            synchronized (this.mReadyFence) {
                if (this.mReady) {
                    this.mHandler.sendMessage(this.mHandler.obtainMessage(3, this.texture, 0, null));
                }
            }
        }
    }

    private class VideoThread extends Thread {
        public VideoThread(String str) {
            super(str);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Looper.prepare();
            synchronized (TextureMovieEncoder.this.mReadyFence) {
                TextureMovieEncoder.this.mHandler = new VideoEncoderHandler(TextureMovieEncoder.this);
                TextureMovieEncoder.this.mReady = true;
                TextureMovieEncoder.this.mReadyFence.notify();
            }
            Looper.loop();
            Log.d(TextureMovieEncoder.TAG, "Encoder thread exiting");
            synchronized (TextureMovieEncoder.this.mReadyFence) {
                TextureMovieEncoder.this.mReady = TextureMovieEncoder.this.mRunning = false;
                TextureMovieEncoder.this.mHandler = null;
            }
        }
    }

    private static class VideoEncoderHandler extends Handler {
        private WeakReference<TextureMovieEncoder> mWeakEncoder;

        public VideoEncoderHandler(TextureMovieEncoder textureMovieEncoder) {
            this.mWeakEncoder = new WeakReference<>(textureMovieEncoder);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            Object obj = message.obj;
            TextureMovieEncoder textureMovieEncoder = this.mWeakEncoder.get();
            if (textureMovieEncoder == null) {
                Log.w(TextureMovieEncoder.TAG, "VideoEncoderHandler.handleMessage: encoder is null");
                return;
            }
            if (i == 0) {
                textureMovieEncoder.handleStartRecording((EncoderConfig) obj);
                return;
            }
            if (i == 1) {
                textureMovieEncoder.handleStopRecording();
                return;
            }
            if (i == 2) {
                textureMovieEncoder.handleFrameAvailable((float[]) obj, (message.arg1 << 32) | (message.arg2 & 4294967295L));
                return;
            }
            if (i == 3) {
                textureMovieEncoder.handleSetTexture(message.arg1);
                return;
            }
            if (i == 4) {
                textureMovieEncoder.handleUpdateSharedContext((EGLContext) message.obj);
            } else {
                if (i == 5) {
                    Looper.myLooper().quit();
                    return;
                }
                throw new RuntimeException("Unhandled msg what=" + i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleStartRecording(EncoderConfig encoderConfig) {
        Log.d(TAG, "handleStartRecording " + encoderConfig);
        this.config = encoderConfig;
        this.mFrameNum = 0;
        prepareEncoder(encoderConfig.mEglContext, encoderConfig.mWidth, encoderConfig.mHeight, encoderConfig.mFrameRate, encoderConfig.mBitRate, encoderConfig.mOutputFile);
        this.mRequestStop = false;
        OnEncoderStatusUpdateListener onEncoderStatusUpdateListener = this.onEncoderStatusUpdateListener;
        if (onEncoderStatusUpdateListener != null) {
            onEncoderStatusUpdateListener.onStartSuccess();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleFrameAvailable(float[] fArr, long j) {
        if (this.texture != 0) {
            try {
                this.mVideoEncoder.drainEncoder(false);
            } catch (Exception e) {
                Log.e(TAG, "drainEncoder() fail", e);
            }
            EncoderConfig encoderConfig = this.config;
            GLES20.glViewport(0, 0, encoderConfig.mWidth, encoderConfig.mHeight);
            synchronized (TextureMovieEncoder.class) {
                this.mFullScreen.drawFrame(this.mTextureId, fArr);
                if (this.watermark != null && this.watermark.prepare(this.mWidth, this.mHeight)) {
                    this.watermark.draw();
                }
            }
            this.mInputWindowSurface.setPresentationTime(getPTSUs() * 1000);
            this.mInputWindowSurface.swapBuffers();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleStopRecording() {
        Log.d(TAG, "handleStopRecording");
        try {
            this.mVideoEncoder.drainEncoder(true);
        } catch (Exception e) {
            Log.e(TAG, "drainEncoder() fail", e);
        }
        this.mRequestStop = true;
        releaseEncoder();
        while (!this.stopEncoderSuccess) {
            synchronized (this.stopEncoderFence) {
                try {
                    this.stopEncoderFence.wait();
                } catch (InterruptedException unused) {
                }
            }
        }
        this.stopEncoderSuccess = false;
        OnEncoderStatusUpdateListener onEncoderStatusUpdateListener = this.onEncoderStatusUpdateListener;
        if (onEncoderStatusUpdateListener != null) {
            onEncoderStatusUpdateListener.onStopSuccess();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSetTexture(int i) {
        this.mTextureId = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleUpdateSharedContext(EGLContext eGLContext) {
        Log.d(TAG, "handleUpdatedSharedContext " + eGLContext);
        this.mInputWindowSurface.releaseEglSurface();
        this.mFullScreen.release(false);
        this.mEglCore.release();
        this.mEglCore = new EglCore(eGLContext, 1);
        this.mInputWindowSurface.recreate(this.mEglCore);
        this.mInputWindowSurface.makeCurrent();
        this.mFullScreen = new FullFrameRect(new Texture2dProgram(Texture2dProgram.ProgramType.TEXTURE_2D));
    }

    private void prepareEncoder(EGLContext eGLContext, int i, int i2, int i3, int i4, File file) {
        try {
            this.mMuxer = new MediaMuxerWrapper(file.toString());
            this.mVideoEncoder = new VideoEncoderCore(i, i2, i3, i4, this.mMuxer);
            this.mAudioEncoder = new AudioEncoderCore(this.mMuxer);
            synchronized (this.prepareEncoderFence) {
                this.prepareEncoderReady = true;
                this.prepareEncoderFence.notify();
            }
            this.mEglCore = new EglCore(eGLContext, 1);
            this.mInputWindowSurface = new WindowSurface(this.mEglCore, this.mVideoEncoder.getInputSurface(), true);
            this.mInputWindowSurface.makeCurrent();
            this.mFullScreen = new FullFrameRect(new Texture2dProgram(Texture2dProgram.ProgramType.TEXTURE_2D));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void releaseEncoder() {
        this.mVideoEncoder.release();
        WindowSurface windowSurface = this.mInputWindowSurface;
        if (windowSurface != null) {
            windowSurface.release();
            this.mInputWindowSurface = null;
        }
        FullFrameRect fullFrameRect = this.mFullScreen;
        if (fullFrameRect != null) {
            fullFrameRect.release(false);
            this.mFullScreen = null;
        }
        EglCore eglCore = this.mEglCore;
        if (eglCore != null) {
            eglCore.release();
            this.mEglCore = null;
        }
    }

    public static boolean checkAudioPermission() {
        int minBufferSize = AudioRecord.getMinBufferSize(RtcChatManager.SAMPLE_RATE, 16, 2);
        int i = 49152 < minBufferSize ? ((minBufferSize / 2048) + 1) * 2048 * 2 : 49152;
        AudioRecord audioRecord = null;
        for (int i2 : AUDIO_SOURCES) {
            try {
                AudioRecord audioRecord2 = new AudioRecord(i2, RtcChatManager.SAMPLE_RATE, 16, 2, i);
                if (audioRecord2.getState() != 1) {
                    audioRecord2 = null;
                }
                audioRecord = audioRecord2;
            } catch (Exception unused) {
                audioRecord = null;
            }
            if (audioRecord != null) {
                break;
            }
        }
        if (audioRecord == null) {
            return false;
        }
        audioRecord.release();
        return true;
    }

    private class AudioThread extends Thread {
        private AudioThread() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws SecurityException, IllegalArgumentException {
            Process.setThreadPriority(-19);
            synchronized (TextureMovieEncoder.this.prepareEncoderFence) {
                while (!TextureMovieEncoder.this.prepareEncoderReady) {
                    try {
                        TextureMovieEncoder.this.prepareEncoderFence.wait();
                    } catch (InterruptedException unused) {
                    }
                }
            }
            TextureMovieEncoder.this.prepareEncoderReady = false;
            try {
                int minBufferSize = AudioRecord.getMinBufferSize(RtcChatManager.SAMPLE_RATE, 16, 2);
                int i = 49152 < minBufferSize ? ((minBufferSize / 2048) + 1) * 2048 * 2 : 49152;
                AudioRecord audioRecord = null;
                for (int i2 : TextureMovieEncoder.AUDIO_SOURCES) {
                    try {
                        AudioRecord audioRecord2 = new AudioRecord(i2, RtcChatManager.SAMPLE_RATE, 16, 2, i);
                        if (audioRecord2.getState() != 1) {
                            audioRecord2 = null;
                        }
                        audioRecord = audioRecord2;
                    } catch (Exception unused2) {
                        audioRecord = null;
                    }
                    if (audioRecord != null) {
                        break;
                    }
                }
                if (audioRecord != null) {
                    try {
                        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(2048);
                        audioRecord.startRecording();
                        TextureMovieEncoder.this.mRecordingStatus = 1;
                        while (!TextureMovieEncoder.this.mRequestStop) {
                            try {
                                byteBufferAllocateDirect.clear();
                                int i3 = audioRecord.read(byteBufferAllocateDirect, 2048);
                                if (i3 > 0) {
                                    byteBufferAllocateDirect.position(i3);
                                    byteBufferAllocateDirect.flip();
                                    TextureMovieEncoder.this.mAudioEncoder.encode(byteBufferAllocateDirect, i3, TextureMovieEncoder.this.getPTSUs());
                                    TextureMovieEncoder.this.mAudioEncoder.drainEncoder();
                                }
                            } finally {
                                audioRecord.stop();
                            }
                        }
                        TextureMovieEncoder.this.mAudioEncoder.encode(null, 0, TextureMovieEncoder.this.getPTSUs());
                    } finally {
                        audioRecord.release();
                        TextureMovieEncoder.this.mAudioEncoder.release();
                    }
                } else {
                    Log.w(TextureMovieEncoder.TAG, "failed to initialize AudioRecord");
                }
            } catch (Exception e) {
                Log.w(TextureMovieEncoder.TAG, "AudioThread#run", e);
            }
            synchronized (TextureMovieEncoder.this.stopEncoderFence) {
                TextureMovieEncoder.this.stopEncoderSuccess = true;
                TextureMovieEncoder.this.stopEncoderFence.notify();
            }
        }
    }

    protected long getPTSUs() {
        long jNanoTime = System.nanoTime();
        if (this.firstTimeStampBase != 0) {
            if (this.firstNanoTime == 0) {
                this.firstNanoTime = jNanoTime;
            }
            jNanoTime = (jNanoTime - this.firstNanoTime) + this.firstTimeStampBase;
        }
        long j = jNanoTime / 1000;
        long j2 = this.prevOutputPTSUs;
        if (j < j2) {
            j += j2 - j;
        }
        if (j == this.prevOutputPTSUs) {
            j += 100;
        }
        this.prevOutputPTSUs = j;
        return j;
    }

    public void setOnEncoderStatusUpdateListener(OnEncoderStatusUpdateListener onEncoderStatusUpdateListener) {
        this.onEncoderStatusUpdateListener = onEncoderStatusUpdateListener;
    }
}
