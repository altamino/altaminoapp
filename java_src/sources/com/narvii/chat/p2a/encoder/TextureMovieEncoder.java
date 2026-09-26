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
import org.apache.commons.compress.archivers.cpio.CpioConstants;

/* JADX INFO: loaded from: classes3.dex */
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
    private boolean mRunning;
    private int mTextureId;
    private float[] mTransform;
    private VideoEncoderCore mVideoEncoder;
    private int mWidth;
    private OnEncoderStatusUpdateListener onEncoderStatusUpdateListener;
    private int texture;
    private Watermark watermark;
    private Object mReadyFence = new Object();
    private long firstTimeStampBase = 0;
    private long firstNanoTime = 0;
    private EncoderConfig config = null;
    private final Object prepareEncoderFence = new Object();
    private boolean prepareEncoderReady = false;
    private final Object stopEncoderFence = new Object();
    private boolean stopEncoderSuccess = false;
    private boolean mRequestStop = false;
    private long prevOutputPTSUs = 0;
    private int mRecordingStatus = 2;

    private class AudioThread extends Thread {
        private AudioThread() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
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
                int i10 = CpioConstants.C_ISSOCK;
                if (49152 < minBufferSize) {
                    i10 = ((minBufferSize / 2048) + 1) * 4096;
                }
                int i11 = i10;
                AudioRecord audioRecord = null;
                for (int i12 : TextureMovieEncoder.AUDIO_SOURCES) {
                    try {
                        AudioRecord audioRecord2 = new AudioRecord(i12, RtcChatManager.SAMPLE_RATE, 16, 2, i11);
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
                                int i13 = audioRecord.read(byteBufferAllocateDirect, 2048);
                                if (i13 > 0) {
                                    byteBufferAllocateDirect.position(i13);
                                    byteBufferAllocateDirect.flip();
                                    TextureMovieEncoder.this.mAudioEncoder.encode(byteBufferAllocateDirect, i13, TextureMovieEncoder.this.getPTSUs());
                                    TextureMovieEncoder.this.mAudioEncoder.drainEncoder();
                                }
                            } catch (Throwable th) {
                                audioRecord.stop();
                                throw th;
                            }
                        }
                        TextureMovieEncoder.this.mAudioEncoder.encode(null, 0, TextureMovieEncoder.this.getPTSUs());
                        audioRecord.stop();
                        audioRecord.release();
                        TextureMovieEncoder.this.mAudioEncoder.release();
                    } catch (Throwable th2) {
                        audioRecord.release();
                        TextureMovieEncoder.this.mAudioEncoder.release();
                        throw th2;
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

    public static class EncoderConfig {
        final long firstTimeStampBase;
        final int mBitRate;
        final EGLContext mEglContext;
        final int mFrameRate;
        final int mHeight;
        final File mOutputFile;
        final int mWidth;

        public String toString() {
            return "EncoderConfig: " + this.mWidth + "x" + this.mHeight + " @" + this.mBitRate + " to '" + this.mOutputFile.toString() + "' ctxt=" + this.mEglContext;
        }

        public EncoderConfig(File file, int i10, int i11, int i12, int i13, EGLContext eGLContext, long j6) {
            this.mOutputFile = file;
            this.mWidth = i10;
            this.mHeight = i11;
            this.mFrameRate = i12;
            this.mBitRate = i13;
            this.mEglContext = eGLContext;
            this.firstTimeStampBase = j6;
        }
    }

    public interface OnEncoderStatusUpdateListener {
        void onStartSuccess();

        void onStopSuccess();
    }

    private static class VideoEncoderHandler extends Handler {
        private WeakReference<TextureMovieEncoder> mWeakEncoder;

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i10 = message.what;
            Object obj = message.obj;
            TextureMovieEncoder textureMovieEncoder = this.mWeakEncoder.get();
            if (textureMovieEncoder == null) {
                Log.w(TextureMovieEncoder.TAG, "VideoEncoderHandler.handleMessage: encoder is null");
                return;
            }
            if (i10 == 0) {
                textureMovieEncoder.handleStartRecording((EncoderConfig) obj);
                return;
            }
            if (i10 == 1) {
                textureMovieEncoder.handleStopRecording();
                return;
            }
            if (i10 == 2) {
                textureMovieEncoder.handleFrameAvailable((float[]) obj, (((long) message.arg1) << 32) | (((long) message.arg2) & 4294967295L));
                return;
            }
            if (i10 == 3) {
                textureMovieEncoder.handleSetTexture(message.arg1);
                return;
            }
            if (i10 == 4) {
                textureMovieEncoder.handleUpdateSharedContext((EGLContext) message.obj);
            } else {
                if (i10 == 5) {
                    Looper.myLooper().quit();
                    return;
                }
                throw new RuntimeException("Unhandled msg what=" + i10);
            }
        }

        public VideoEncoderHandler(TextureMovieEncoder textureMovieEncoder) {
            this.mWeakEncoder = new WeakReference<>(textureMovieEncoder);
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
                TextureMovieEncoder textureMovieEncoder = TextureMovieEncoder.this;
                textureMovieEncoder.mRunning = false;
                textureMovieEncoder.mReady = false;
                TextureMovieEncoder.this.mHandler = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSetTexture(int i10) {
        this.mTextureId = i10;
    }

    public boolean checkRecordingStatus(int i10) {
        return this.mRecordingStatus == i10;
    }

    public void setOnEncoderStatusUpdateListener(OnEncoderStatusUpdateListener onEncoderStatusUpdateListener) {
        this.onEncoderStatusUpdateListener = onEncoderStatusUpdateListener;
    }

    public void setWatermark(Watermark watermark) {
        this.watermark = watermark;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleFrameAvailable(float[] fArr, long j6) {
        if (this.texture != 0) {
            try {
                this.mVideoEncoder.drainEncoder(false);
            } catch (Exception e) {
                Log.e(TAG, "drainEncoder() fail", e);
            }
            EncoderConfig encoderConfig = this.config;
            GLES20.glViewport(0, 0, encoderConfig.mWidth, encoderConfig.mHeight);
            synchronized (TextureMovieEncoder.class) {
                try {
                    this.mFullScreen.drawFrame(this.mTextureId, fArr);
                    Watermark watermark = this.watermark;
                    if (watermark != null && watermark.prepare(this.mWidth, this.mHeight)) {
                        this.watermark.draw();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.mInputWindowSurface.setPresentationTime(getPTSUs() * 1000);
            this.mInputWindowSurface.swapBuffers();
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
    public void handleUpdateSharedContext(EGLContext eGLContext) {
        Log.d(TAG, "handleUpdatedSharedContext " + eGLContext);
        this.mInputWindowSurface.releaseEglSurface();
        this.mFullScreen.release(false);
        this.mEglCore.release();
        EglCore eglCore = new EglCore(eGLContext, 1);
        this.mEglCore = eglCore;
        this.mInputWindowSurface.recreate(eglCore);
        this.mInputWindowSurface.makeCurrent();
        this.mFullScreen = new FullFrameRect(new Texture2dProgram(Texture2dProgram.ProgramType.TEXTURE_2D));
    }

    private void prepareEncoder(EGLContext eGLContext, int i10, int i11, int i12, int i13, File file) {
        try {
            MediaMuxerWrapper mediaMuxerWrapper = new MediaMuxerWrapper(file.toString());
            this.mMuxer = mediaMuxerWrapper;
            this.mVideoEncoder = new VideoEncoderCore(i10, i11, i12, i13, mediaMuxerWrapper);
            this.mAudioEncoder = new AudioEncoderCore(this.mMuxer);
            synchronized (this.prepareEncoderFence) {
                this.prepareEncoderReady = true;
                this.prepareEncoderFence.notify();
            }
            EglCore eglCore = new EglCore(eGLContext, 1);
            this.mEglCore = eglCore;
            WindowSurface windowSurface = new WindowSurface(eglCore, this.mVideoEncoder.getInputSurface(), true);
            this.mInputWindowSurface = windowSurface;
            windowSurface.makeCurrent();
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

    public void frameAvailable(SurfaceTexture surfaceTexture, float[] fArr) {
        synchronized (this.mReadyFence) {
            try {
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
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean isRecording() {
        boolean z6;
        synchronized (this.mReadyFence) {
            z6 = this.mRunning;
        }
        return z6;
    }

    public void setTextureId(FullFrameRect fullFrameRect, int i10, float[] fArr) {
        if (this.texture != 0) {
            int[] iArr = new int[4];
            GLES20.glGetIntegerv(2978, iArr, 0);
            GLES20.glBindFramebuffer(36160, this.frameBuffer);
            GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.texture, 0);
            GLES20.glViewport(0, 0, this.mWidth, this.mHeight);
            if (fullFrameRect != null) {
                fullFrameRect.drawFrame(i10, fArr);
            }
            GLES20.glBindFramebuffer(36160, 0);
            GLES20.glViewport(iArr[0], iArr[1], iArr[2], iArr[3]);
            synchronized (this.mReadyFence) {
                try {
                    if (this.mReady) {
                        this.mHandler.sendMessage(this.mHandler.obtainMessage(3, this.texture, 0, null));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public void startRecording(EncoderConfig encoderConfig) {
        this.mWidth = encoderConfig.mWidth;
        this.mHeight = encoderConfig.mHeight;
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        int i10 = iArr[0];
        this.texture = i10;
        GLES20.glBindTexture(3553, i10);
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
            try {
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
            } catch (Throwable th) {
                throw th;
            }
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

    public void updateSharedContext(EGLContext eGLContext) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(4, eGLContext));
    }

    public TextureMovieEncoder() {
        float[] fArr = new float[16];
        this.mTransform = fArr;
        Matrix.setIdentityM(fArr, 0);
    }

    public static boolean checkAudioPermission() {
        int minBufferSize = AudioRecord.getMinBufferSize(RtcChatManager.SAMPLE_RATE, 16, 2);
        int i10 = CpioConstants.C_ISSOCK;
        if (49152 < minBufferSize) {
            i10 = ((minBufferSize / 2048) + 1) * 4096;
        }
        int i11 = i10;
        AudioRecord audioRecord = null;
        for (int i12 : AUDIO_SOURCES) {
            try {
                AudioRecord audioRecord2 = new AudioRecord(i12, RtcChatManager.SAMPLE_RATE, 16, 2, i11);
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

    protected long getPTSUs() {
        long jNanoTime = System.nanoTime();
        long j6 = this.firstTimeStampBase;
        if (j6 != 0) {
            if (this.firstNanoTime == 0) {
                this.firstNanoTime = jNanoTime;
            }
            jNanoTime = (jNanoTime - this.firstNanoTime) + j6;
        }
        long j10 = jNanoTime / 1000;
        long j11 = this.prevOutputPTSUs;
        if (j10 < j11) {
            j10 += j11 - j10;
        }
        if (j10 == j11) {
            j10 += 100;
        }
        this.prevOutputPTSUs = j10;
        return j10;
    }
}
