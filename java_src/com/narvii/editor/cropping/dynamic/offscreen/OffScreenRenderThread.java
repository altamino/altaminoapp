package com.narvii.editor.cropping.dynamic.offscreen;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLES30;
import android.os.Looper;
import android.view.Surface;
import com.google.android.gms.common.util.GmsVersion;
import com.narvii.editor.cropping.dynamic.GLUtils;
import com.narvii.editor.cropping.dynamic.egl.EglCore;
import com.narvii.editor.cropping.dynamic.egl.OffscreenSurface;
import com.narvii.editor.cropping.dynamic.egl.WindowSurface;
import com.narvii.editor.cropping.dynamic.filter.BaseFilter;
import com.narvii.editor.cropping.dynamic.offscreen.FrameCallback;
import com.narvii.meisheeditor.R;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import java.io.File;
import java.io.IOException;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: OffScreenRenderThread.kt */
/* loaded from: classes2.dex */
public final class OffScreenRenderThread extends Thread implements FrameCallback {
    public static final Companion Companion = new Companion(null);
    private static final int HEIGHT = 1280;
    private static final String TAG = "OffScreenRenderThread";
    private static final int WIDTH = 720;
    private long beginTime;
    private BaseFilter filter;
    private float fixRatio;
    private int frames;
    private float lastRatio;
    private Context mContext;
    private File mDestFile;
    private EglCore mEglCore;
    private BaseFilter mEncoderFilter;
    private WindowSurface mInputWindowSurface;
    private int mOESTextureId;
    private OffScreenActivityHandler mOffScreenActivityHandler;
    private OffscreenSurface mOffScreenWindowSurface;
    private Surface mOutOutSurface;
    private boolean mReady;
    private float mRecordWidth;
    public OffScreenRenderHandler mRenderHandler;
    private File mSourceFile;
    private Object mStartLock;
    private SurfaceTexture mSurfaceTexture;
    private VideoDecoder mVideoDecoder;
    private float[] mVideoEditorPosArray;
    private VideoEncoder mVideoEncoder;
    private boolean recordingEnable;
    private final int size;
    private int totalFrames;

    public OffScreenRenderThread(Context context, File source, File dest, OffScreenActivityHandler offScreenActivityHandler, float[] videoEditorPosArray, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(source, "source");
        Intrinsics.checkParameterIsNotNull(dest, "dest");
        Intrinsics.checkParameterIsNotNull(offScreenActivityHandler, "offScreenActivityHandler");
        Intrinsics.checkParameterIsNotNull(videoEditorPosArray, "videoEditorPosArray");
        this.mContext = context;
        this.mSourceFile = source;
        this.mDestFile = dest;
        this.mOffScreenActivityHandler = offScreenActivityHandler;
        this.mOESTextureId = -1;
        this.mStartLock = new Object();
        this.mVideoEditorPosArray = videoEditorPosArray;
        this.fixRatio = ((i * 1.0f) / i2) / 0.5625f;
        this.beginTime = System.nanoTime();
        float[] fArr = this.mVideoEditorPosArray;
        this.lastRatio = fArr[0] > ((float) 0) ? fArr[0] : 0.0f;
        this.size = this.mVideoEditorPosArray.length;
        this.totalFrames = -1;
    }

    /* compiled from: OffScreenRenderThread.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final OffScreenRenderHandler getMRenderHandler() {
        OffScreenRenderHandler offScreenRenderHandler = this.mRenderHandler;
        if (offScreenRenderHandler != null) {
            return offScreenRenderHandler;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mRenderHandler");
        throw null;
    }

    public final void setMRenderHandler(OffScreenRenderHandler offScreenRenderHandler) {
        Intrinsics.checkParameterIsNotNull(offScreenRenderHandler, "<set-?>");
        this.mRenderHandler = offScreenRenderHandler;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Looper.prepare();
        this.mRenderHandler = new OffScreenRenderHandler(this);
        this.mEglCore = new EglCore(null, 3);
        synchronized (this.mStartLock) {
            this.mReady = true;
            this.mStartLock.notify();
            Unit unit = Unit.INSTANCE;
        }
        Looper.loop();
        Log.d(TAG, "looper quit");
        releaseGL();
        EglCore eglCore = this.mEglCore;
        if (eglCore == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mEglCore");
            throw null;
        }
        eglCore.release();
        synchronized (this.mStartLock) {
            this.mReady = false;
            Unit unit2 = Unit.INSTANCE;
        }
    }

    public final void waitUntilReady() {
        synchronized (this.mStartLock) {
            while (!this.mReady) {
                this.mStartLock.wait();
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void prepareGL() {
        this.mVideoDecoder = new VideoDecoder(this.mSourceFile);
        EglCore eglCore = this.mEglCore;
        if (eglCore != null) {
            this.mOffScreenWindowSurface = new OffscreenSurface(eglCore, 720, 1280);
            OffscreenSurface offscreenSurface = this.mOffScreenWindowSurface;
            if (offscreenSurface == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mOffScreenWindowSurface");
                throw null;
            }
            offscreenSurface.makeCurrent();
            this.mOESTextureId = GLUtils.Companion.createOESTextureObject();
            this.mSurfaceTexture = new SurfaceTexture(this.mOESTextureId);
            SurfaceTexture surfaceTexture = this.mSurfaceTexture;
            if (surfaceTexture != null) {
                this.mOutOutSurface = new Surface(surfaceTexture);
                VideoDecoder videoDecoder = this.mVideoDecoder;
                if (videoDecoder == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mVideoDecoder");
                    throw null;
                }
                Surface surface = this.mOutOutSurface;
                if (surface == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mOutOutSurface");
                    throw null;
                }
                videoDecoder.setMOutputSurface(surface);
                GLES30.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
                GLES30.glDisable(2929);
                GLES30.glDisable(2884);
                GLES30.glEnable(3042);
                GLES30.glBlendFunc(770, 771);
                initEncoder();
                this.filter = new BaseFilter(this.mContext, this.mOESTextureId);
                BaseFilter baseFilter = this.filter;
                if (baseFilter != null) {
                    baseFilter.initProgram();
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("filter");
                    throw null;
                }
            }
            Intrinsics.throwUninitializedPropertyAccessException("mSurfaceTexture");
            throw null;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mEglCore");
        throw null;
    }

    public final void renderFrame() {
        VideoEncoder videoEncoder = this.mVideoEncoder;
        if (videoEncoder == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mVideoEncoder");
            throw null;
        }
        if (videoEncoder.getMediaCodecInitFailed()) {
            NVToast.makeText(this.mContext, R.string.not_support_dynamic_cropping, 0).show();
            return;
        }
        VideoDecoder videoDecoder = this.mVideoDecoder;
        if (videoDecoder == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mVideoDecoder");
            throw null;
        }
        videoDecoder.setMFrameCallback(this);
        try {
            VideoDecoder videoDecoder2 = this.mVideoDecoder;
            if (videoDecoder2 != null) {
                videoDecoder2.decode();
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("mVideoDecoder");
                throw null;
            }
        } catch (Exception e) {
            Log.e("OffScreenRenderThread videoDecoder decode method exception", e);
        }
    }

    @Override // com.narvii.editor.cropping.dynamic.offscreen.FrameCallback
    public void decodeFrameBegin() {
        FrameCallback.DefaultImpls.decodeFrameBegin(this);
        this.beginTime = System.currentTimeMillis();
    }

    @Override // com.narvii.editor.cropping.dynamic.offscreen.FrameCallback
    public void decodeFrameEnd() throws InterruptedException, IOException {
        FrameCallback.DefaultImpls.decodeFrameEnd(this);
        VideoEncoder videoEncoder = this.mVideoEncoder;
        if (videoEncoder == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mVideoEncoder");
            throw null;
        }
        videoEncoder.drainEncoderWithNoTimeOut(true);
        WindowSurface windowSurface = this.mInputWindowSurface;
        if (windowSurface == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mInputWindowSurface");
            throw null;
        }
        windowSurface.release();
        VideoEncoder videoEncoder2 = this.mVideoEncoder;
        if (videoEncoder2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mVideoEncoder");
            throw null;
        }
        videoEncoder2.release();
        if (!OffScreenFlag.Companion.getStopRenderThread()) {
            muxerVideoAndAudio();
        }
        this.mOffScreenActivityHandler.sendOffscreenEnd();
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != null) {
            looperMyLooper.quitSafely();
        }
        join();
    }

    public final int getFrames() {
        return this.frames;
    }

    public final void setFrames(int i) {
        this.frames = i;
    }

    public final float getLastRatio() {
        return this.lastRatio;
    }

    public final void setLastRatio(float f) {
        this.lastRatio = f;
    }

    public final int getSize() {
        return this.size;
    }

    public final int getTotalFrames() {
        return this.totalFrames;
    }

    public final void setTotalFrames(int i) {
        this.totalFrames = i;
    }

    @Override // com.narvii.editor.cropping.dynamic.offscreen.FrameCallback
    public void decodeOneFrame(long j) {
        int i = this.totalFrames;
        if (i > 0) {
            int i2 = this.frames;
            if (i2 % 30 == 0) {
                this.mOffScreenActivityHandler.sendOffscreenProgress((i2 * 100) / i);
            }
        }
        draw();
        if (this.recordingEnable) {
            WindowSurface windowSurface = this.mInputWindowSurface;
            if (windowSurface == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mInputWindowSurface");
                throw null;
            }
            OffscreenSurface offscreenSurface = this.mOffScreenWindowSurface;
            if (offscreenSurface == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mOffScreenWindowSurface");
                throw null;
            }
            windowSurface.makeCurrentReadFrom(offscreenSurface);
            GLES30.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
            GLES30.glClear(16384);
            float f = this.lastRatio;
            int i3 = this.frames;
            if (i3 < this.size) {
                float f2 = this.mVideoEditorPosArray[i3];
                if (f2 >= 0) {
                    f = f2;
                }
                this.lastRatio = f;
            }
            BaseFilter baseFilter = this.mEncoderFilter;
            if (baseFilter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mEncoderFilter");
                throw null;
            }
            baseFilter.setTransform(this.lastRatio * this.fixRatio, 0.0f);
            BaseFilter baseFilter2 = this.mEncoderFilter;
            if (baseFilter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mEncoderFilter");
                throw null;
            }
            baseFilter2.drawFrame();
            WindowSurface windowSurface2 = this.mInputWindowSurface;
            if (windowSurface2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mInputWindowSurface");
                throw null;
            }
            windowSurface2.setPresentationTime(j * 1000);
            WindowSurface windowSurface3 = this.mInputWindowSurface;
            if (windowSurface3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mInputWindowSurface");
                throw null;
            }
            windowSurface3.swapBuffers();
            VideoEncoder videoEncoder = this.mVideoEncoder;
            if (videoEncoder == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mVideoEncoder");
                throw null;
            }
            videoEncoder.drainEncoderWithNoTimeOut(false);
            OffscreenSurface offscreenSurface2 = this.mOffScreenWindowSurface;
            if (offscreenSurface2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mOffScreenWindowSurface");
                throw null;
            }
            offscreenSurface2.makeCurrent();
        }
        this.frames++;
        OffscreenSurface offscreenSurface3 = this.mOffScreenWindowSurface;
        if (offscreenSurface3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mOffScreenWindowSurface");
            throw null;
        }
        if (offscreenSurface3.swapBuffers()) {
            return;
        }
        Log.e(TAG, "swapBuffers failed, killing renderer thread");
        shutDown();
    }

    public final void shutDown() {
        Log.d(TAG, "shutdown");
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != null) {
            looperMyLooper.quit();
        }
    }

    public final void initEncoder() {
        File file = new File(this.mContext.getCacheDir(), "gltest.mp4");
        if (file.exists()) {
            file.delete();
            file = new File(this.mContext.getCacheDir(), "gltest.mp4");
        }
        this.mVideoEncoder = new VideoEncoder(720, 1280, GmsVersion.VERSION_MANCHEGO, file);
        VideoEncoder videoEncoder = this.mVideoEncoder;
        if (videoEncoder == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mVideoEncoder");
            throw null;
        }
        if (videoEncoder.getMInputSurface() != null) {
            EglCore eglCore = this.mEglCore;
            if (eglCore == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mEglCore");
                throw null;
            }
            VideoEncoder videoEncoder2 = this.mVideoEncoder;
            if (videoEncoder2 != null) {
                this.mInputWindowSurface = new WindowSurface(eglCore, videoEncoder2.getMInputSurface(), true);
                this.recordingEnable = true;
                if (this.mOffScreenWindowSurface == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mOffScreenWindowSurface");
                    throw null;
                }
                this.mRecordWidth = (r0.getHeight() / 16.0f) * 9.0f;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("mVideoEncoder");
                throw null;
            }
        }
        this.mEncoderFilter = new BaseFilter(this.mContext, this.mOESTextureId);
        BaseFilter baseFilter = this.mEncoderFilter;
        if (baseFilter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mEncoderFilter");
            throw null;
        }
        baseFilter.initProgram();
        BaseFilter baseFilter2 = this.mEncoderFilter;
        if (baseFilter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mEncoderFilter");
            throw null;
        }
        VideoDecoder videoDecoder = this.mVideoDecoder;
        if (videoDecoder == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mVideoDecoder");
            throw null;
        }
        int mVideoWidth = videoDecoder.getMVideoWidth();
        VideoDecoder videoDecoder2 = this.mVideoDecoder;
        if (videoDecoder2 != null) {
            baseFilter2.setVideoAndViewSize(mVideoWidth, videoDecoder2.getMVideoHeight(), 720, 1280);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("mVideoDecoder");
            throw null;
        }
    }

    private final void releaseGL() {
        GLUtils.Companion.checkGlError("releaseGl start");
        OffscreenSurface offscreenSurface = this.mOffScreenWindowSurface;
        if (offscreenSurface == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mOffScreenWindowSurface");
            throw null;
        }
        offscreenSurface.release();
        EglCore eglCore = this.mEglCore;
        if (eglCore != null) {
            eglCore.makeNothingCurrent();
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("mEglCore");
            throw null;
        }
    }

    private final void draw() {
        GLUtils.Companion.checkGlError("draw start");
        GLES30.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        GLES30.glClear(16384);
        SurfaceTexture surfaceTexture = this.mSurfaceTexture;
        if (surfaceTexture == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mSurfaceTexture");
            throw null;
        }
        surfaceTexture.updateTexImage();
        BaseFilter baseFilter = this.filter;
        if (baseFilter != null) {
            baseFilter.drawFrame();
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("filter");
            throw null;
        }
    }

    private final void muxerVideoAndAudio() throws IOException {
        FileMuxer fileMuxer = FileMuxer.INSTANCE;
        String path = this.mSourceFile.getPath();
        Intrinsics.checkExpressionValueIsNotNull(path, "mSourceFile.path");
        String path2 = new File(this.mContext.getCacheDir(), "gltest.mp4").getPath();
        Intrinsics.checkExpressionValueIsNotNull(path2, "File(mContext.cacheDir, \"gltest.mp4\").path");
        String path3 = this.mDestFile.getPath();
        Intrinsics.checkExpressionValueIsNotNull(path3, "mDestFile.path");
        fileMuxer.muxeVideoAndAudio(path, path2, path3);
        this.mOffScreenActivityHandler.sendOffscreenProgress(100);
    }
}
