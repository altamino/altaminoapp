package com.narvii.editor.cropping.dynamic;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.Surface;
import com.narvii.editor.cropping.dynamic.egl.EglCore;
import com.narvii.editor.cropping.dynamic.egl.WindowSurface;
import com.narvii.editor.cropping.dynamic.filter.BaseFilter;
import com.narvii.editor.cropping.dynamic.filter.FilterListUtil;
import com.narvii.nvplayer.INVPlayer;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class RenderThread extends Thread {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final String TAG = "RenderThread";
    private BaseFilter anotherFilter;

    @Nullable
    private Surface anotherSurface;
    private WindowSurface anotherWindowSurface;

    @NotNull
    private Rect editorRect;
    private BaseFilter filter;
    private boolean filterNeedReset;
    private int filterType;

    @NotNull
    private Context mContext;

    @NotNull
    private float[] mDisplayProjectionMatrix;
    private int mDroppedFrames;
    private EglCore mEglCore;
    public RenderHandler mHandler;
    private int mOESTextureId;

    @NotNull
    private INVPlayer mPlayer;
    private boolean mPreviousWasDropped;
    private boolean mReady;
    private long mRefreshPeriod;

    @NotNull
    private final Object mStartLock;

    @NotNull
    private Surface mSurface;
    private SurfaceTexture mSurfaceTexture;

    @NotNull
    private String mType;
    private WindowSurface mWindowSurface;
    private boolean renderAnotherSurfaceEnable;

    @NotNull
    private float[] transformArray;
    private int videoHeight;
    private int videoWidth;
    private int viewHeight;
    private int viewWidth;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final void resetFilter(int i10) {
        this.filterNeedReset = true;
        this.filterType = i10;
    }

    public final void setMHandler(@NotNull RenderHandler renderHandler) {
        t.j(renderHandler, "<set-?>");
        this.mHandler = renderHandler;
    }

    public final void setVideoEditorRect(@NotNull Rect rect) {
        t.j(rect, "rect");
        this.editorRect = rect;
    }

    public RenderThread(@NotNull Context context, @NotNull Surface surface, long j6, @NotNull INVPlayer player, @NotNull String type) {
        t.j(context, "context");
        t.j(surface, "surface");
        t.j(player, "player");
        t.j(type, "type");
        this.mStartLock = new Object();
        this.mSurface = surface;
        this.mPlayer = player;
        this.mContext = context;
        this.mRefreshPeriod = j6;
        float[] fArr = new float[16];
        for (int i10 = 0; i10 < 16; i10++) {
            fArr[i10] = 0.0f;
        }
        this.mDisplayProjectionMatrix = fArr;
        this.mType = type;
        this.mOESTextureId = -1;
        this.editorRect = new Rect();
        this.viewWidth = -1;
        this.viewHeight = -1;
        this.videoWidth = -1;
        this.videoHeight = -1;
        this.filterType = -1;
        this.transformArray = new float[]{0.0f, 0.0f};
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

    private final void prepareGL(Surface surface, int i10) {
        Log.d(TAG, "prepareGl");
        EglCore eglCore = this.mEglCore;
        if (eglCore == null) {
            t.B("mEglCore");
            eglCore = null;
        }
        WindowSurface windowSurface = new WindowSurface(eglCore, surface, false);
        this.mWindowSurface = windowSurface;
        windowSurface.makeCurrent();
        this.mOESTextureId = GLUtils.Companion.createOESTextureObject();
        this.mSurfaceTexture = new SurfaceTexture(this.mOESTextureId);
        String str = FilterListUtil.Companion.getLIST().get(i10);
        this.mType = str;
        setFilter(str, this.mOESTextureId);
        new Handler(this.mContext.getMainLooper()).post(new Runnable() { // from class: com.narvii.editor.cropping.dynamic.e
            @Override // java.lang.Runnable
            public final void run() {
                RenderThread.prepareGL$lambda$3(this.f2263a);
            }
        });
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        GLES20.glDisable(2929);
        GLES20.glDisable(2884);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void prepareGL$lambda$3(RenderThread this$0) {
        t.j(this$0, "this$0");
        INVPlayer iNVPlayer = this$0.mPlayer;
        SurfaceTexture surfaceTexture = this$0.mSurfaceTexture;
        if (surfaceTexture == null) {
            t.B("mSurfaceTexture");
            surfaceTexture = null;
        }
        iNVPlayer.setVideoSurface(new Surface(surfaceTexture));
    }

    private final void releaseGL() {
        GLUtils.Companion.checkGlError("releaseGl start");
        WindowSurface windowSurface = this.mWindowSurface;
        EglCore eglCore = null;
        if (windowSurface == null) {
            t.B("mWindowSurface");
            windowSurface = null;
        }
        windowSurface.release();
        EglCore eglCore2 = this.mEglCore;
        if (eglCore2 == null) {
            t.B("mEglCore");
        } else {
            eglCore = eglCore2;
        }
        eglCore.makeNothingCurrent();
    }

    private final void setFilter(String str, int i10) {
        BaseFilter filter = FilterListUtil.Companion.setFilter(str, i10, this.mContext);
        this.filter = filter;
        if (filter == null) {
            t.B("filter");
            filter = null;
        }
        filter.initProgram();
    }

    private final void setSizeAndTransform() {
        if (this.videoHeight <= -1 || this.videoWidth <= -1 || this.viewWidth <= -1 || this.viewHeight <= -1) {
            return;
        }
        BaseFilter baseFilter = this.filter;
        BaseFilter baseFilter2 = null;
        if (baseFilter == null) {
            t.B("filter");
            baseFilter = null;
        }
        baseFilter.setVideoAndViewSize(this.videoWidth, this.videoHeight, this.viewWidth, this.viewHeight);
        BaseFilter baseFilter3 = this.filter;
        if (baseFilter3 == null) {
            t.B("filter");
        } else {
            baseFilter2 = baseFilter3;
        }
        int i10 = this.viewHeight;
        int i11 = this.viewWidth;
        baseFilter2.setTransform((((((i10 * i10) * 1.0f) / i11) - i11) / 2) / i11, 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startPlay$lambda$4(RenderThread this$0) {
        t.j(this$0, "this$0");
        this$0.mPlayer.setPlayWhenReady(true);
    }

    public final void anotherSurfaceChanged(int i10, int i11) {
        if (!this.renderAnotherSurfaceEnable || i10 <= 0 || i11 <= 0) {
            return;
        }
        BaseFilter baseFilter = this.anotherFilter;
        WindowSurface windowSurface = null;
        if (baseFilter == null) {
            t.B("anotherFilter");
            baseFilter = null;
        }
        WindowSurface windowSurface2 = this.mWindowSurface;
        if (windowSurface2 == null) {
            t.B("mWindowSurface");
            windowSurface2 = null;
        }
        float width = (windowSurface2.getWidth() * 1.0f) / i10;
        WindowSurface windowSurface3 = this.mWindowSurface;
        if (windowSurface3 == null) {
            t.B("mWindowSurface");
        } else {
            windowSurface = windowSurface3;
        }
        baseFilter.setScaleAndTransform(width, (windowSurface.getHeight() * 1.0f) / i11, 0.0f, 0.0f);
    }

    @NotNull
    public final RenderHandler getMHandler() {
        RenderHandler renderHandler = this.mHandler;
        if (renderHandler != null) {
            return renderHandler;
        }
        t.B("mHandler");
        return null;
    }

    public final void renderAnotherSurface(@NotNull Surface surface) {
        t.j(surface, "surface");
        this.renderAnotherSurfaceEnable = true;
        this.anotherSurface = surface;
        EglCore eglCore = this.mEglCore;
        WindowSurface windowSurface = null;
        if (eglCore == null) {
            t.B("mEglCore");
            eglCore = null;
        }
        this.anotherWindowSurface = new WindowSurface(eglCore, this.anotherSurface, false);
        BaseFilter filter = FilterListUtil.Companion.setFilter("BaseFilter", this.mOESTextureId, this.mContext);
        this.anotherFilter = filter;
        if (filter == null) {
            t.B("anotherFilter");
            filter = null;
        }
        filter.initProgram();
        StringBuilder sb = new StringBuilder();
        WindowSurface windowSurface2 = this.mWindowSurface;
        if (windowSurface2 == null) {
            t.B("mWindowSurface");
            windowSurface2 = null;
        }
        sb.append(windowSurface2.getWidth());
        sb.append(' ');
        WindowSurface windowSurface3 = this.mWindowSurface;
        if (windowSurface3 == null) {
            t.B("mWindowSurface");
            windowSurface3 = null;
        }
        sb.append(windowSurface3.getHeight());
        sb.append(' ');
        WindowSurface windowSurface4 = this.anotherWindowSurface;
        if (windowSurface4 == null) {
            t.B("anotherWindowSurface");
            windowSurface4 = null;
        }
        sb.append(windowSurface4.getWidth());
        sb.append(' ');
        WindowSurface windowSurface5 = this.anotherWindowSurface;
        if (windowSurface5 == null) {
            t.B("anotherWindowSurface");
            windowSurface5 = null;
        }
        sb.append(windowSurface5.getHeight());
        Log.d(TAG, sb.toString());
        BaseFilter baseFilter = this.anotherFilter;
        if (baseFilter == null) {
            t.B("anotherFilter");
            baseFilter = null;
        }
        WindowSurface windowSurface6 = this.mWindowSurface;
        if (windowSurface6 == null) {
            t.B("mWindowSurface");
            windowSurface6 = null;
        }
        float width = windowSurface6.getWidth() * 1.0f;
        WindowSurface windowSurface7 = this.anotherWindowSurface;
        if (windowSurface7 == null) {
            t.B("anotherWindowSurface");
            windowSurface7 = null;
        }
        float width2 = width / windowSurface7.getWidth();
        WindowSurface windowSurface8 = this.mWindowSurface;
        if (windowSurface8 == null) {
            t.B("mWindowSurface");
            windowSurface8 = null;
        }
        float height = windowSurface8.getHeight() * 1.0f;
        WindowSurface windowSurface9 = this.anotherWindowSurface;
        if (windowSurface9 == null) {
            t.B("anotherWindowSurface");
            windowSurface9 = null;
        }
        baseFilter.setScaleAndTransform(width2, height / windowSurface9.getHeight(), 0.0f, 0.0f);
        BaseFilter baseFilter2 = this.filter;
        if (baseFilter2 == null) {
            t.B("filter");
            baseFilter2 = null;
        }
        float f = this.transformArray[0];
        WindowSurface windowSurface10 = this.anotherWindowSurface;
        if (windowSurface10 == null) {
            t.B("anotherWindowSurface");
            windowSurface10 = null;
        }
        float width3 = windowSurface10.getWidth() * 1.0f;
        WindowSurface windowSurface11 = this.anotherWindowSurface;
        if (windowSurface11 == null) {
            t.B("anotherWindowSurface");
            windowSurface11 = null;
        }
        float height2 = width3 / windowSurface11.getHeight();
        WindowSurface windowSurface12 = this.mWindowSurface;
        if (windowSurface12 == null) {
            t.B("mWindowSurface");
            windowSurface12 = null;
        }
        float width4 = windowSurface12.getWidth() * 1.0f;
        WindowSurface windowSurface13 = this.mWindowSurface;
        if (windowSurface13 == null) {
            t.B("mWindowSurface");
        } else {
            windowSurface = windowSurface13;
        }
        baseFilter2.setTransform(f * (height2 / (width4 / windowSurface.getHeight())), 0.0f);
    }

    public final void setVideoSizeChanged(int i10, int i11) {
        this.videoWidth = i10;
        this.videoHeight = i11;
        setSizeAndTransform();
    }

    public final void setVideoTransform(@NotNull float[] floatArray) {
        t.j(floatArray, "floatArray");
        this.transformArray = floatArray;
        if (this.renderAnotherSurfaceEnable) {
            if (this.anotherWindowSurface == null) {
                t.B("anotherWindowSurface");
            }
            BaseFilter baseFilter = this.filter;
            WindowSurface windowSurface = null;
            if (baseFilter == null) {
                t.B("filter");
                baseFilter = null;
            }
            float f = floatArray[0];
            WindowSurface windowSurface2 = this.anotherWindowSurface;
            if (windowSurface2 == null) {
                t.B("anotherWindowSurface");
                windowSurface2 = null;
            }
            float width = windowSurface2.getWidth() * 1.0f;
            WindowSurface windowSurface3 = this.anotherWindowSurface;
            if (windowSurface3 == null) {
                t.B("anotherWindowSurface");
                windowSurface3 = null;
            }
            float height = width / windowSurface3.getHeight();
            WindowSurface windowSurface4 = this.mWindowSurface;
            if (windowSurface4 == null) {
                t.B("mWindowSurface");
                windowSurface4 = null;
            }
            float width2 = windowSurface4.getWidth() * 1.0f;
            WindowSurface windowSurface5 = this.mWindowSurface;
            if (windowSurface5 == null) {
                t.B("mWindowSurface");
            } else {
                windowSurface = windowSurface5;
            }
            baseFilter.setTransform(f * (height / (width2 / windowSurface.getHeight())), 0.0f);
        }
    }

    public final void shutDown() {
        Log.d(TAG, "shutdown");
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != null) {
            looperMyLooper.quit();
        }
    }

    public final void startPlay() {
        new Handler(this.mContext.getMainLooper()).post(new Runnable() { // from class: com.narvii.editor.cropping.dynamic.d
            @Override // java.lang.Runnable
            public final void run() {
                RenderThread.startPlay$lambda$4(this.f2262a);
            }
        });
    }

    public final void stopRenderAnotherSurface() {
        if (this.renderAnotherSurfaceEnable) {
            this.renderAnotherSurfaceEnable = false;
            WindowSurface windowSurface = null;
            this.anotherSurface = null;
            WindowSurface windowSurface2 = this.anotherWindowSurface;
            if (windowSurface2 == null) {
                t.B("anotherWindowSurface");
            } else {
                windowSurface = windowSurface2;
            }
            windowSurface.release();
        }
    }

    public final void surfaceChanged(int i10, int i11) {
        Log.d(TAG, "surfaceChanged " + i10 + 'x' + i11);
        GLES20.glViewport(0, 0, i10, i11);
        Matrix.orthoM(this.mDisplayProjectionMatrix, 0, 0.0f, (float) i10, 0.0f, (float) i11, -1.0f, 1.0f);
        this.viewWidth = i10;
        this.viewHeight = i11;
        setSizeAndTransform();
    }

    public final void surfaceCreated(int i10) {
        prepareGL(this.mSurface, i10);
    }

    public final void waitUtilReady() {
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

    public final void doFrame(long j6) {
        if (System.nanoTime() - j6 > this.mRefreshPeriod - ((long) 2000000)) {
            this.mPreviousWasDropped = true;
            this.mDroppedFrames++;
            return;
        }
        WindowSurface windowSurface = null;
        if (this.filterNeedReset && this.filterType != -1) {
            BaseFilter baseFilter = this.filter;
            if (baseFilter == null) {
                t.B("filter");
                baseFilter = null;
            }
            baseFilter.release();
            setFilter(FilterListUtil.Companion.getLIST().get(this.filterType), this.mOESTextureId);
            this.filterNeedReset = false;
            this.filterType = -1;
        }
        draw();
        if (this.renderAnotherSurfaceEnable) {
            WindowSurface windowSurface2 = this.anotherWindowSurface;
            if (windowSurface2 == null) {
                t.B("anotherWindowSurface");
                windowSurface2 = null;
            }
            WindowSurface windowSurface3 = this.mWindowSurface;
            if (windowSurface3 == null) {
                t.B("mWindowSurface");
                windowSurface3 = null;
            }
            windowSurface2.makeCurrentReadFrom(windowSurface3);
            GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
            GLES20.glClear(16384);
            BaseFilter baseFilter2 = this.anotherFilter;
            if (baseFilter2 == null) {
                t.B("anotherFilter");
                baseFilter2 = null;
            }
            baseFilter2.drawFrame();
            WindowSurface windowSurface4 = this.anotherWindowSurface;
            if (windowSurface4 == null) {
                t.B("anotherWindowSurface");
                windowSurface4 = null;
            }
            windowSurface4.setPresentationTime(j6);
            WindowSurface windowSurface5 = this.anotherWindowSurface;
            if (windowSurface5 == null) {
                t.B("anotherWindowSurface");
                windowSurface5 = null;
            }
            windowSurface5.swapBuffers();
            WindowSurface windowSurface6 = this.mWindowSurface;
            if (windowSurface6 == null) {
                t.B("mWindowSurface");
                windowSurface6 = null;
            }
            windowSurface6.makeCurrent();
        }
        WindowSurface windowSurface7 = this.mWindowSurface;
        if (windowSurface7 == null) {
            t.B("mWindowSurface");
        } else {
            windowSurface = windowSurface7;
        }
        if (!windowSurface.swapBuffers()) {
            Log.w(TAG, "swapBuffers failed, killing renderer thread");
            shutDown();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Looper.prepare();
        setMHandler(new RenderHandler(this));
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
