package com.narvii.editor.cropping.dynamic;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.opengl.GLES30;
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
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RenderThread.kt */
/* loaded from: classes2.dex */
public final class RenderThread extends Thread {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "RenderThread";
    private BaseFilter anotherFilter;
    private Surface anotherSurface;
    private WindowSurface anotherWindowSurface;
    private Rect editorRect;
    private BaseFilter filter;
    private boolean filterNeedReset;
    private int filterType;
    private Context mContext;
    private float[] mDisplayProjectionMatrix;
    private int mDroppedFrames;
    private EglCore mEglCore;
    public RenderHandler mHandler;
    private int mOESTextureId;
    private INVPlayer mPlayer;
    private boolean mPreviousWasDropped;
    private boolean mReady;
    private long mRefreshPeriod;
    private final Object mStartLock;
    private Surface mSurface;
    private SurfaceTexture mSurfaceTexture;
    private String mType;
    private WindowSurface mWindowSurface;
    private boolean renderAnotherSurfaceEnable;
    private float[] transformArray;
    private int videoHeight;
    private int videoWidth;
    private int viewHeight;
    private int viewWidth;

    public static final /* synthetic */ SurfaceTexture access$getMSurfaceTexture$p(RenderThread renderThread) {
        SurfaceTexture surfaceTexture = renderThread.mSurfaceTexture;
        if (surfaceTexture != null) {
            return surfaceTexture;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mSurfaceTexture");
        throw null;
    }

    public RenderThread(Context context, Surface surface, long j, INVPlayer player, String type) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(surface, "surface");
        Intrinsics.checkParameterIsNotNull(player, "player");
        Intrinsics.checkParameterIsNotNull(type, "type");
        this.mStartLock = new Object();
        this.mSurface = surface;
        this.mPlayer = player;
        this.mContext = context;
        this.mRefreshPeriod = j;
        float[] fArr = new float[16];
        for (int i = 0; i < 16; i++) {
            fArr[i] = 0.0f;
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

    /* compiled from: RenderThread.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final RenderHandler getMHandler() {
        RenderHandler renderHandler = this.mHandler;
        if (renderHandler != null) {
            return renderHandler;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mHandler");
        throw null;
    }

    public final void setMHandler(RenderHandler renderHandler) {
        Intrinsics.checkParameterIsNotNull(renderHandler, "<set-?>");
        this.mHandler = renderHandler;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Looper.prepare();
        this.mHandler = new RenderHandler(this);
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

    public final void waitUtilReady() {
        synchronized (this.mStartLock) {
            while (!this.mReady) {
                this.mStartLock.wait();
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void surfaceCreated(int i) {
        prepareGL(this.mSurface, i);
    }

    private final void prepareGL(Surface surface, int i) {
        Log.d(TAG, "prepareGl");
        EglCore eglCore = this.mEglCore;
        if (eglCore != null) {
            this.mWindowSurface = new WindowSurface(eglCore, surface, false);
            WindowSurface windowSurface = this.mWindowSurface;
            if (windowSurface == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mWindowSurface");
                throw null;
            }
            windowSurface.makeCurrent();
            this.mOESTextureId = GLUtils.Companion.createOESTextureObject();
            this.mSurfaceTexture = new SurfaceTexture(this.mOESTextureId);
            this.mType = FilterListUtil.Companion.getLIST().get(i);
            setFilter(this.mType, this.mOESTextureId);
            new Handler(this.mContext.getMainLooper()).post(new Runnable() { // from class: com.narvii.editor.cropping.dynamic.RenderThread.prepareGL.1
                @Override // java.lang.Runnable
                public final void run() {
                    RenderThread.this.mPlayer.setVideoSurface(new Surface(RenderThread.access$getMSurfaceTexture$p(RenderThread.this)));
                }
            });
            GLES30.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
            GLES30.glDisable(2929);
            GLES30.glDisable(2884);
            GLES30.glEnable(3042);
            GLES30.glBlendFunc(770, 771);
            return;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mEglCore");
        throw null;
    }

    public final void surfaceChanged(int i, int i2) {
        Log.d(TAG, "surfaceChanged " + i + "x" + i2);
        GLES30.glViewport(0, 0, i, i2);
        Matrix.orthoM(this.mDisplayProjectionMatrix, 0, 0.0f, (float) i, 0.0f, (float) i2, -1.0f, 1.0f);
        this.viewWidth = i;
        this.viewHeight = i2;
        setSizeAndTransform();
    }

    public final void setVideoSizeChanged(int i, int i2) {
        this.videoWidth = i;
        this.videoHeight = i2;
        setSizeAndTransform();
    }

    private final void setSizeAndTransform() {
        int i;
        int i2;
        int i3;
        int i4 = this.videoHeight;
        if (i4 <= -1 || (i = this.videoWidth) <= -1 || (i2 = this.viewWidth) <= -1 || (i3 = this.viewHeight) <= -1) {
            return;
        }
        BaseFilter baseFilter = this.filter;
        if (baseFilter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("filter");
            throw null;
        }
        baseFilter.setVideoAndViewSize(i, i4, i2, i3);
        BaseFilter baseFilter2 = this.filter;
        if (baseFilter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("filter");
            throw null;
        }
        int i5 = this.viewHeight;
        int i6 = this.viewWidth;
        baseFilter2.setTransform((((((i5 * i5) * 1.0f) / i6) - i6) / 2) / i6, 0.0f);
    }

    public final void resetFilter(int i) {
        this.filterNeedReset = true;
        this.filterType = i;
    }

    public final void doFrame(long j) {
        if (System.nanoTime() - j > this.mRefreshPeriod - 2000000) {
            this.mPreviousWasDropped = true;
            this.mDroppedFrames++;
            return;
        }
        if (this.filterNeedReset && this.filterType != -1) {
            BaseFilter baseFilter = this.filter;
            if (baseFilter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("filter");
                throw null;
            }
            baseFilter.release();
            setFilter(FilterListUtil.Companion.getLIST().get(this.filterType), this.mOESTextureId);
            this.filterNeedReset = false;
            this.filterType = -1;
        }
        draw();
        if (this.renderAnotherSurfaceEnable) {
            WindowSurface windowSurface = this.anotherWindowSurface;
            if (windowSurface == null) {
                Intrinsics.throwUninitializedPropertyAccessException("anotherWindowSurface");
                throw null;
            }
            WindowSurface windowSurface2 = this.mWindowSurface;
            if (windowSurface2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mWindowSurface");
                throw null;
            }
            windowSurface.makeCurrentReadFrom(windowSurface2);
            GLES30.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
            GLES30.glClear(16384);
            BaseFilter baseFilter2 = this.anotherFilter;
            if (baseFilter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("anotherFilter");
                throw null;
            }
            baseFilter2.drawFrame();
            WindowSurface windowSurface3 = this.anotherWindowSurface;
            if (windowSurface3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("anotherWindowSurface");
                throw null;
            }
            windowSurface3.setPresentationTime(j);
            WindowSurface windowSurface4 = this.anotherWindowSurface;
            if (windowSurface4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("anotherWindowSurface");
                throw null;
            }
            windowSurface4.swapBuffers();
            WindowSurface windowSurface5 = this.mWindowSurface;
            if (windowSurface5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mWindowSurface");
                throw null;
            }
            windowSurface5.makeCurrent();
        }
        WindowSurface windowSurface6 = this.mWindowSurface;
        if (windowSurface6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mWindowSurface");
            throw null;
        }
        if (windowSurface6.swapBuffers()) {
            return;
        }
        Log.w(TAG, "swapBuffers failed, killing renderer thread");
        shutDown();
    }

    public final void shutDown() {
        Log.d(TAG, "shutdown");
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != null) {
            looperMyLooper.quit();
        }
    }

    public final void renderAnotherSurface(Surface surface) {
        Intrinsics.checkParameterIsNotNull(surface, "surface");
        this.renderAnotherSurfaceEnable = true;
        this.anotherSurface = surface;
        EglCore eglCore = this.mEglCore;
        if (eglCore != null) {
            this.anotherWindowSurface = new WindowSurface(eglCore, this.anotherSurface, false);
            this.anotherFilter = FilterListUtil.Companion.setFilter("BaseFilter", this.mOESTextureId, this.mContext);
            BaseFilter baseFilter = this.anotherFilter;
            if (baseFilter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("anotherFilter");
                throw null;
            }
            baseFilter.initProgram();
            StringBuilder sb = new StringBuilder();
            WindowSurface windowSurface = this.mWindowSurface;
            if (windowSurface == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mWindowSurface");
                throw null;
            }
            sb.append(windowSurface.getWidth());
            sb.append(' ');
            WindowSurface windowSurface2 = this.mWindowSurface;
            if (windowSurface2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mWindowSurface");
                throw null;
            }
            sb.append(windowSurface2.getHeight());
            sb.append(' ');
            WindowSurface windowSurface3 = this.anotherWindowSurface;
            if (windowSurface3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("anotherWindowSurface");
                throw null;
            }
            sb.append(windowSurface3.getWidth());
            sb.append(' ');
            WindowSurface windowSurface4 = this.anotherWindowSurface;
            if (windowSurface4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("anotherWindowSurface");
                throw null;
            }
            sb.append(windowSurface4.getHeight());
            Log.d(TAG, sb.toString());
            BaseFilter baseFilter2 = this.anotherFilter;
            if (baseFilter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("anotherFilter");
                throw null;
            }
            if (this.mWindowSurface == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mWindowSurface");
                throw null;
            }
            float width = r0.getWidth() * 1.0f;
            if (this.anotherWindowSurface == null) {
                Intrinsics.throwUninitializedPropertyAccessException("anotherWindowSurface");
                throw null;
            }
            float width2 = width / r5.getWidth();
            if (this.mWindowSurface == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mWindowSurface");
                throw null;
            }
            float height = r5.getHeight() * 1.0f;
            if (this.anotherWindowSurface == null) {
                Intrinsics.throwUninitializedPropertyAccessException("anotherWindowSurface");
                throw null;
            }
            baseFilter2.setScaleAndTransform(width2, height / r7.getHeight(), 0.0f, 0.0f);
            BaseFilter baseFilter3 = this.filter;
            if (baseFilter3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("filter");
                throw null;
            }
            float f = this.transformArray[0];
            if (this.anotherWindowSurface == null) {
                Intrinsics.throwUninitializedPropertyAccessException("anotherWindowSurface");
                throw null;
            }
            float width3 = r3.getWidth() * 1.0f;
            if (this.anotherWindowSurface == null) {
                Intrinsics.throwUninitializedPropertyAccessException("anotherWindowSurface");
                throw null;
            }
            float height2 = width3 / r5.getHeight();
            if (this.mWindowSurface == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mWindowSurface");
                throw null;
            }
            float width4 = r5.getWidth() * 1.0f;
            if (this.mWindowSurface != null) {
                baseFilter3.setTransform(f * (height2 / (width4 / r2.getHeight())), 0.0f);
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("mWindowSurface");
                throw null;
            }
        }
        Intrinsics.throwUninitializedPropertyAccessException("mEglCore");
        throw null;
    }

    public final void stopRenderAnotherSurface() {
        if (this.renderAnotherSurfaceEnable) {
            this.renderAnotherSurfaceEnable = false;
            this.anotherSurface = null;
            WindowSurface windowSurface = this.anotherWindowSurface;
            if (windowSurface != null) {
                windowSurface.release();
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("anotherWindowSurface");
                throw null;
            }
        }
    }

    public final void anotherSurfaceChanged(int i, int i2) {
        if (!this.renderAnotherSurfaceEnable || i <= 0 || i2 <= 0) {
            return;
        }
        BaseFilter baseFilter = this.anotherFilter;
        if (baseFilter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("anotherFilter");
            throw null;
        }
        if (this.mWindowSurface == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mWindowSurface");
            throw null;
        }
        float width = (r2.getWidth() * 1.0f) / i;
        if (this.mWindowSurface != null) {
            baseFilter.setScaleAndTransform(width, (r6.getHeight() * 1.0f) / i2, 0.0f, 0.0f);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("mWindowSurface");
            throw null;
        }
    }

    public final void setVideoEditorRect(Rect rect) {
        Intrinsics.checkParameterIsNotNull(rect, "rect");
        this.editorRect = rect;
    }

    public final void setVideoTransform(float[] floatArray) {
        Intrinsics.checkParameterIsNotNull(floatArray, "floatArray");
        this.transformArray = floatArray;
        if (this.renderAnotherSurfaceEnable) {
            WindowSurface windowSurface = this.anotherWindowSurface;
            if (windowSurface == null) {
                Intrinsics.throwUninitializedPropertyAccessException("anotherWindowSurface");
                throw null;
            }
            if (windowSurface != null) {
                BaseFilter baseFilter = this.filter;
                if (baseFilter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("filter");
                    throw null;
                }
                float f = floatArray[0];
                if (windowSurface == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("anotherWindowSurface");
                    throw null;
                }
                float width = windowSurface.getWidth() * 1.0f;
                if (this.anotherWindowSurface == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("anotherWindowSurface");
                    throw null;
                }
                float height = width / r5.getHeight();
                if (this.mWindowSurface == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mWindowSurface");
                    throw null;
                }
                float width2 = r1.getWidth() * 1.0f;
                if (this.mWindowSurface != null) {
                    baseFilter.setTransform(f * (height / (width2 / r4.getHeight())), 0.0f);
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("mWindowSurface");
                    throw null;
                }
            }
        }
    }

    private final void releaseGL() {
        GLUtils.Companion.checkGlError("releaseGl start");
        WindowSurface windowSurface = this.mWindowSurface;
        if (windowSurface == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mWindowSurface");
            throw null;
        }
        windowSurface.release();
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

    private final void setFilter(String str, int i) {
        this.filter = FilterListUtil.Companion.setFilter(str, i, this.mContext);
        BaseFilter baseFilter = this.filter;
        if (baseFilter != null) {
            baseFilter.initProgram();
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("filter");
            throw null;
        }
    }

    public final void startPlay() {
        new Handler(this.mContext.getMainLooper()).post(new Runnable() { // from class: com.narvii.editor.cropping.dynamic.RenderThread.startPlay.1
            @Override // java.lang.Runnable
            public final void run() {
                RenderThread.this.mPlayer.setPlayWhenReady(true);
            }
        });
    }
}
