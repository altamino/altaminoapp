package com.narvii.editor.cropping.dynamic.offscreen;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.os.Looper;
import android.view.Surface;
import com.google.android.gms.common.util.GmsVersion;
import com.narvii.editor.cropping.dynamic.GLUtils;
import com.narvii.editor.cropping.dynamic.egl.EglCore;
import com.narvii.editor.cropping.dynamic.egl.OffscreenSurface;
import com.narvii.editor.cropping.dynamic.egl.WindowSurface;
import com.narvii.editor.cropping.dynamic.filter.BaseFilter;
import com.narvii.meisheeditor.R;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import java.io.File;
import java.io.IOException;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
public final class OffScreenRenderThread extends Thread implements FrameCallback {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int HEIGHT = 1280;

    @NotNull
    private static final String TAG = "OffScreenRenderThread";
    private static final int WIDTH = 720;
    private long beginTime;
    private BaseFilter filter;
    private float fixRatio;
    private int frames;
    private float lastRatio;

    @NotNull
    private Context mContext;

    @NotNull
    private File mDestFile;
    private EglCore mEglCore;
    private BaseFilter mEncoderFilter;
    private WindowSurface mInputWindowSurface;
    private int mOESTextureId;

    @NotNull
    private OffScreenActivityHandler mOffScreenActivityHandler;
    private OffscreenSurface mOffScreenWindowSurface;
    private Surface mOutOutSurface;
    private boolean mReady;
    private float mRecordWidth;
    public OffScreenRenderHandler mRenderHandler;

    @NotNull
    private File mSourceFile;

    @NotNull
    private Object mStartLock;
    private SurfaceTexture mSurfaceTexture;
    private VideoDecoder mVideoDecoder;

    @NotNull
    private float[] mVideoEditorPosArray;
    private VideoEncoder mVideoEncoder;
    private boolean recordingEnable;
    private final int size;
    private int totalFrames;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final int getFrames() {
        return this.frames;
    }

    public final float getLastRatio() {
        return this.lastRatio;
    }

    public final int getSize() {
        return this.size;
    }

    public final int getTotalFrames() {
        return this.totalFrames;
    }

    public final void setFrames(int i10) {
        this.frames = i10;
    }

    public final void setLastRatio(float f) {
        this.lastRatio = f;
    }

    public final void setMRenderHandler(@NotNull OffScreenRenderHandler offScreenRenderHandler) {
        t.j(offScreenRenderHandler, "<set-?>");
        this.mRenderHandler = offScreenRenderHandler;
    }

    public final void setTotalFrames(int i10) {
        this.totalFrames = i10;
    }

    public OffScreenRenderThread(@NotNull Context context, @NotNull File source, @NotNull File dest, @NotNull OffScreenActivityHandler offScreenActivityHandler, @NotNull float[] videoEditorPosArray, int i10, int i11) {
        t.j(context, "context");
        t.j(source, "source");
        t.j(dest, "dest");
        t.j(offScreenActivityHandler, "offScreenActivityHandler");
        t.j(videoEditorPosArray, "videoEditorPosArray");
        this.mContext = context;
        this.mSourceFile = source;
        this.mDestFile = dest;
        this.mOffScreenActivityHandler = offScreenActivityHandler;
        this.mOESTextureId = -1;
        this.mStartLock = new Object();
        this.mVideoEditorPosArray = videoEditorPosArray;
        this.fixRatio = ((i10 * 1.0f) / i11) / 0.5625f;
        this.beginTime = System.nanoTime();
        float[] fArr = this.mVideoEditorPosArray;
        float f = fArr[0];
        this.lastRatio = f <= 0.0f ? 0.0f : f;
        this.size = fArr.length;
        this.totalFrames = -1;
    }

    private final void draw() {
        GLUtils.Companion.checkGlError("draw start");
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        GLES20.glClear(16384);
        SurfaceTexture surfaceTexture = this.mSurfaceTexture;
        BaseFilter baseFilter = null;
        if (surfaceTexture == null) {
            t.B("mSurfaceTexture");
            surfaceTexture = null;
        }
        surfaceTexture.updateTexImage();
        BaseFilter baseFilter2 = this.filter;
        if (baseFilter2 == null) {
            t.B("filter");
        } else {
            baseFilter = baseFilter2;
        }
        baseFilter.drawFrame();
    }

    private final void muxerVideoAndAudio() throws IOException {
        FileMuxer fileMuxer = FileMuxer.INSTANCE;
        String path = this.mSourceFile.getPath();
        t.i(path, "getPath(...)");
        String path2 = new File(this.mContext.getCacheDir(), "gltest.mp4").getPath();
        t.i(path2, "getPath(...)");
        String path3 = this.mDestFile.getPath();
        t.i(path3, "getPath(...)");
        fileMuxer.muxeVideoAndAudio(path, path2, path3);
        this.mOffScreenActivityHandler.sendOffscreenProgress(100);
    }

    private final void releaseGL() {
        GLUtils.Companion.checkGlError("releaseGl start");
        OffscreenSurface offscreenSurface = this.mOffScreenWindowSurface;
        EglCore eglCore = null;
        if (offscreenSurface == null) {
            t.B("mOffScreenWindowSurface");
            offscreenSurface = null;
        }
        offscreenSurface.release();
        EglCore eglCore2 = this.mEglCore;
        if (eglCore2 == null) {
            t.B("mEglCore");
        } else {
            eglCore = eglCore2;
        }
        eglCore.makeNothingCurrent();
    }

    @Override // com.narvii.editor.cropping.dynamic.offscreen.FrameCallback
    public void decodeOneFrame(long j6) {
        int i10 = this.totalFrames;
        if (i10 > 0) {
            int i11 = this.frames;
            if (i11 % 30 == 0) {
                this.mOffScreenActivityHandler.sendOffscreenProgress((i11 * 100) / i10);
            }
        }
        draw();
        OffscreenSurface offscreenSurface = null;
        if (this.recordingEnable) {
            WindowSurface windowSurface = this.mInputWindowSurface;
            if (windowSurface == null) {
                t.B("mInputWindowSurface");
                windowSurface = null;
            }
            OffscreenSurface offscreenSurface2 = this.mOffScreenWindowSurface;
            if (offscreenSurface2 == null) {
                t.B("mOffScreenWindowSurface");
                offscreenSurface2 = null;
            }
            windowSurface.makeCurrentReadFrom(offscreenSurface2);
            GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
            GLES20.glClear(16384);
            float f = this.lastRatio;
            int i12 = this.frames;
            if (i12 < this.size) {
                float f6 = this.mVideoEditorPosArray[i12];
                if (f6 >= 0.0f) {
                    f = f6;
                }
                this.lastRatio = f;
            }
            BaseFilter baseFilter = this.mEncoderFilter;
            if (baseFilter == null) {
                t.B("mEncoderFilter");
                baseFilter = null;
            }
            baseFilter.setTransform(this.lastRatio * this.fixRatio, 0.0f);
            BaseFilter baseFilter2 = this.mEncoderFilter;
            if (baseFilter2 == null) {
                t.B("mEncoderFilter");
                baseFilter2 = null;
            }
            baseFilter2.drawFrame();
            WindowSurface windowSurface2 = this.mInputWindowSurface;
            if (windowSurface2 == null) {
                t.B("mInputWindowSurface");
                windowSurface2 = null;
            }
            windowSurface2.setPresentationTime(j6 * ((long) 1000));
            WindowSurface windowSurface3 = this.mInputWindowSurface;
            if (windowSurface3 == null) {
                t.B("mInputWindowSurface");
                windowSurface3 = null;
            }
            windowSurface3.swapBuffers();
            VideoEncoder videoEncoder = this.mVideoEncoder;
            if (videoEncoder == null) {
                t.B("mVideoEncoder");
                videoEncoder = null;
            }
            videoEncoder.drainEncoderWithNoTimeOut(false);
            OffscreenSurface offscreenSurface3 = this.mOffScreenWindowSurface;
            if (offscreenSurface3 == null) {
                t.B("mOffScreenWindowSurface");
                offscreenSurface3 = null;
            }
            offscreenSurface3.makeCurrent();
        }
        this.frames++;
        OffscreenSurface offscreenSurface4 = this.mOffScreenWindowSurface;
        if (offscreenSurface4 == null) {
            t.B("mOffScreenWindowSurface");
        } else {
            offscreenSurface = offscreenSurface4;
        }
        if (offscreenSurface.swapBuffers()) {
            return;
        }
        Log.e(TAG, "swapBuffers failed, killing renderer thread");
        shutDown();
    }

    @NotNull
    public final OffScreenRenderHandler getMRenderHandler() {
        OffScreenRenderHandler offScreenRenderHandler = this.mRenderHandler;
        if (offScreenRenderHandler != null) {
            return offScreenRenderHandler;
        }
        t.B("mRenderHandler");
        return null;
    }

    public final void initEncoder() {
        File file = new File(this.mContext.getCacheDir(), "gltest.mp4");
        if (file.exists()) {
            file.delete();
            file = new File(this.mContext.getCacheDir(), "gltest.mp4");
        }
        VideoEncoder videoEncoder = new VideoEncoder(720, 1280, GmsVersion.VERSION_MANCHEGO, file);
        this.mVideoEncoder = videoEncoder;
        Surface mInputSurface = videoEncoder.getMInputSurface();
        VideoDecoder videoDecoder = null;
        if (mInputSurface != null) {
            EglCore eglCore = this.mEglCore;
            if (eglCore == null) {
                t.B("mEglCore");
                eglCore = null;
            }
            VideoEncoder videoEncoder2 = this.mVideoEncoder;
            if (videoEncoder2 == null) {
                t.B("mVideoEncoder");
                videoEncoder2 = null;
            }
            this.mInputWindowSurface = new WindowSurface(eglCore, videoEncoder2.getMInputSurface(), true);
            this.recordingEnable = true;
            OffscreenSurface offscreenSurface = this.mOffScreenWindowSurface;
            if (offscreenSurface == null) {
                t.B("mOffScreenWindowSurface");
                offscreenSurface = null;
            }
            this.mRecordWidth = (offscreenSurface.getHeight() / 16.0f) * 9.0f;
        }
        BaseFilter baseFilter = new BaseFilter(this.mContext, this.mOESTextureId);
        this.mEncoderFilter = baseFilter;
        baseFilter.initProgram();
        BaseFilter baseFilter2 = this.mEncoderFilter;
        if (baseFilter2 == null) {
            t.B("mEncoderFilter");
            baseFilter2 = null;
        }
        VideoDecoder videoDecoder2 = this.mVideoDecoder;
        if (videoDecoder2 == null) {
            t.B("mVideoDecoder");
            videoDecoder2 = null;
        }
        int mVideoWidth = videoDecoder2.getMVideoWidth();
        VideoDecoder videoDecoder3 = this.mVideoDecoder;
        if (videoDecoder3 == null) {
            t.B("mVideoDecoder");
        } else {
            videoDecoder = videoDecoder3;
        }
        baseFilter2.setVideoAndViewSize(mVideoWidth, videoDecoder.getMVideoHeight(), 720, 1280);
    }

    public final void prepareGL() {
        this.mVideoDecoder = new VideoDecoder(this.mSourceFile);
        EglCore eglCore = this.mEglCore;
        Surface surface = null;
        if (eglCore == null) {
            t.B("mEglCore");
            eglCore = null;
        }
        OffscreenSurface offscreenSurface = new OffscreenSurface(eglCore, 720, 1280);
        this.mOffScreenWindowSurface = offscreenSurface;
        offscreenSurface.makeCurrent();
        this.mOESTextureId = GLUtils.Companion.createOESTextureObject();
        this.mSurfaceTexture = new SurfaceTexture(this.mOESTextureId);
        SurfaceTexture surfaceTexture = this.mSurfaceTexture;
        if (surfaceTexture == null) {
            t.B("mSurfaceTexture");
            surfaceTexture = null;
        }
        this.mOutOutSurface = new Surface(surfaceTexture);
        VideoDecoder videoDecoder = this.mVideoDecoder;
        if (videoDecoder == null) {
            t.B("mVideoDecoder");
            videoDecoder = null;
        }
        Surface surface2 = this.mOutOutSurface;
        if (surface2 == null) {
            t.B("mOutOutSurface");
        } else {
            surface = surface2;
        }
        videoDecoder.setMOutputSurface(surface);
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        GLES20.glDisable(2929);
        GLES20.glDisable(2884);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        initEncoder();
        BaseFilter baseFilter = new BaseFilter(this.mContext, this.mOESTextureId);
        this.filter = baseFilter;
        baseFilter.initProgram();
    }

    public final void renderFrame() {
        VideoEncoder videoEncoder = this.mVideoEncoder;
        VideoDecoder videoDecoder = null;
        if (videoEncoder == null) {
            t.B("mVideoEncoder");
            videoEncoder = null;
        }
        if (videoEncoder.getMediaCodecInitFailed()) {
            NVToast.makeText(this.mContext, R.string.not_support_dynamic_cropping, 0).show();
            return;
        }
        VideoDecoder videoDecoder2 = this.mVideoDecoder;
        if (videoDecoder2 == null) {
            t.B("mVideoDecoder");
            videoDecoder2 = null;
        }
        videoDecoder2.setMFrameCallback(this);
        try {
            VideoDecoder videoDecoder3 = this.mVideoDecoder;
            if (videoDecoder3 == null) {
                t.B("mVideoDecoder");
            } else {
                videoDecoder = videoDecoder3;
            }
            videoDecoder.decode(this.mContext);
        } catch (Exception e) {
            Log.e("OffScreenRenderThread videoDecoder decode method exception", e);
        }
    }

    public final void shutDown() {
        Log.d(TAG, "shutdown");
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != null) {
            looperMyLooper.quit();
        }
    }

    public final void waitUntilReady() {
        synchronized (this.mStartLock) {
            while (!this.mReady) {
                try {
                    this.mStartLock.wait();
                } catch (Throwable th) {
                    throw th;
                }
            }
            l0 l0Var = l0.INSTANCE;
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
        VideoEncoder videoEncoder2 = null;
        if (videoEncoder == null) {
            t.B("mVideoEncoder");
            videoEncoder = null;
        }
        videoEncoder.drainEncoderWithNoTimeOut(true);
        WindowSurface windowSurface = this.mInputWindowSurface;
        if (windowSurface == null) {
            t.B("mInputWindowSurface");
            windowSurface = null;
        }
        windowSurface.release();
        VideoEncoder videoEncoder3 = this.mVideoEncoder;
        if (videoEncoder3 == null) {
            t.B("mVideoEncoder");
        } else {
            videoEncoder2 = videoEncoder3;
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

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Looper.prepare();
        setMRenderHandler(new OffScreenRenderHandler(this));
        EglCore eglCore = null;
        this.mEglCore = new EglCore(null, 3);
        synchronized (this.mStartLock) {
            this.mReady = true;
            this.mStartLock.notify();
            l0 l0Var = l0.INSTANCE;
        }
        Looper.loop();
        Log.d(TAG, "looper quit");
        releaseGL();
        EglCore eglCore2 = this.mEglCore;
        if (eglCore2 == null) {
            t.B("mEglCore");
        } else {
            eglCore = eglCore2;
        }
        eglCore.release();
        synchronized (this.mStartLock) {
            this.mReady = false;
        }
    }
}
