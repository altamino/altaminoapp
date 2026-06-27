package com.narvii.editor.cropping.dynamic;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.Choreographer;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import com.narvii.editor.cropping.dynamic.GLUtils;
import com.narvii.nvplayer.INVPlayer;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SimpleGLSurfaceView.kt */
/* loaded from: classes2.dex */
public final class SimpleGLSurfaceView extends SurfaceView implements SurfaceHolder.Callback, Choreographer.FrameCallback, SimpleGLView {
    private HashMap _$_findViewCache;
    private IGLSurfaceDoFrame glSurfaceDoFrameListener;
    private boolean isPlaying;
    private int mFilterType;
    private INVPlayer mPlayer;
    private Surface mSurface;
    private RenderThread renderThread;

    /* compiled from: SimpleGLSurfaceView.kt */
    public interface IGLSurfaceDoFrame {
        void surfaceDoFrame();
    }

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.editor.cropping.dynamic.SimpleGLView
    public View getView() {
        return this;
    }

    public SimpleGLSurfaceView(Context context) {
        super(context);
    }

    public SimpleGLSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SimpleGLSurfaceView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.narvii.editor.cropping.dynamic.SimpleGLView
    public void initViews(INVPlayer playerTool, int i) {
        Intrinsics.checkParameterIsNotNull(playerTool, "playerTool");
        this.mPlayer = playerTool;
        this.mFilterType = i;
        getHolder().addCallback(this);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.mSurface = surfaceHolder != null ? surfaceHolder.getSurface() : null;
        Context context = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        if (surfaceHolder != null) {
            Surface surface = surfaceHolder.getSurface();
            Intrinsics.checkExpressionValueIsNotNull(surface, "holder!!.surface");
            GLUtils.Companion companion = GLUtils.Companion;
            Context context2 = getContext();
            if (context2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.app.Activity");
            }
            long displayRefreshNsec = companion.getDisplayRefreshNsec((Activity) context2);
            INVPlayer iNVPlayer = this.mPlayer;
            if (iNVPlayer != null) {
                this.renderThread = new RenderThread(context, surface, displayRefreshNsec, iNVPlayer, "BaseFilter");
                RenderThread renderThread = this.renderThread;
                if (renderThread != null) {
                    renderThread.start();
                }
                RenderThread renderThread2 = this.renderThread;
                if (renderThread2 != null) {
                    renderThread2.waitUtilReady();
                }
                RenderThread renderThread3 = this.renderThread;
                RenderHandler mHandler = renderThread3 != null ? renderThread3.getMHandler() : null;
                if (mHandler != null) {
                    mHandler.sendSurfaceCreated(this.mFilterType);
                }
                Choreographer.getInstance().postFrameCallback(this);
                if (this.isPlaying) {
                    startPlayWhenResume();
                    return;
                }
                return;
            }
            Intrinsics.throwUninitializedPropertyAccessException("mPlayer");
            throw null;
        }
        Intrinsics.throwNpe();
        throw null;
    }

    public final boolean isPlaying() {
        return this.isPlaying;
    }

    public final void setPlaying(boolean z) {
        this.isPlaying = z;
    }

    private final void startPlayWhenResume() {
        RenderThread renderThread = this.renderThread;
        RenderHandler mHandler = renderThread != null ? renderThread.getMHandler() : null;
        if (mHandler != null) {
            mHandler.startPlay();
        }
        this.isPlaying = false;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        RenderThread renderThread = this.renderThread;
        RenderHandler mHandler = renderThread != null ? renderThread.getMHandler() : null;
        if (mHandler != null) {
            mHandler.sendSurfaceChanged(i, i2, i3);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) throws InterruptedException {
        this.mSurface = null;
        RenderThread renderThread = this.renderThread;
        RenderHandler mHandler = renderThread != null ? renderThread.getMHandler() : null;
        if (mHandler != null) {
            mHandler.sendShutDown();
        }
        RenderThread renderThread2 = this.renderThread;
        if (renderThread2 != null) {
            renderThread2.join();
        }
        this.renderThread = null;
        Choreographer.getInstance().removeFrameCallback(this);
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j) {
        RenderThread renderThread = this.renderThread;
        RenderHandler mHandler = renderThread != null ? renderThread.getMHandler() : null;
        Choreographer.getInstance().postFrameCallback(this);
        if (mHandler != null) {
            mHandler.sendDoFrame(j);
        }
        IGLSurfaceDoFrame iGLSurfaceDoFrame = this.glSurfaceDoFrameListener;
        if (iGLSurfaceDoFrame != null) {
            iGLSurfaceDoFrame.surfaceDoFrame();
        }
    }

    @Override // com.narvii.editor.cropping.dynamic.SimpleGLView
    public void changeFilter(int i) {
        RenderThread renderThread = this.renderThread;
        RenderHandler mHandler = renderThread != null ? renderThread.getMHandler() : null;
        this.mFilterType = i;
        if (mHandler != null) {
            mHandler.changeFilter(i);
        }
    }

    @Override // com.narvii.editor.cropping.dynamic.SimpleGLView
    public void renderAnotherSurface(Surface surface) {
        RenderThread renderThread = this.renderThread;
        RenderHandler mHandler = renderThread != null ? renderThread.getMHandler() : null;
        if (mHandler != null) {
            mHandler.renderAnotherSurface(surface);
        }
    }

    @Override // com.narvii.editor.cropping.dynamic.SimpleGLView
    public void stopRenderAnotherSurface() {
        RenderThread renderThread = this.renderThread;
        RenderHandler mHandler = renderThread != null ? renderThread.getMHandler() : null;
        if (mHandler != null) {
            mHandler.stopRenderAnotherSurface();
        }
    }

    public final void anotherSurfaceChanged(int i, int i2) {
        RenderThread renderThread = this.renderThread;
        RenderHandler mHandler = renderThread != null ? renderThread.getMHandler() : null;
        if (mHandler != null) {
            mHandler.anotherSurfaceChanged(i, i2);
        }
    }

    @Override // com.narvii.editor.cropping.dynamic.SimpleGLView
    public void setVideoEditorRect(Rect rect) {
        Intrinsics.checkParameterIsNotNull(rect, "rect");
        RenderThread renderThread = this.renderThread;
        RenderHandler mHandler = renderThread != null ? renderThread.getMHandler() : null;
        if (mHandler != null) {
            mHandler.setVideoEditorRect(rect);
        }
    }

    public final void setTransform(float[] floatArray) {
        Intrinsics.checkParameterIsNotNull(floatArray, "floatArray");
        RenderThread renderThread = this.renderThread;
        RenderHandler mHandler = renderThread != null ? renderThread.getMHandler() : null;
        if (mHandler != null) {
            mHandler.setVideoTransform(floatArray);
        }
    }

    public final void setVideoSize(int i, int i2) {
        RenderThread renderThread = this.renderThread;
        RenderHandler mHandler = renderThread != null ? renderThread.getMHandler() : null;
        if (mHandler != null) {
            mHandler.setVideoSizeChanged(i, i2);
        }
    }

    public final IGLSurfaceDoFrame getGlSurfaceDoFrameListener() {
        return this.glSurfaceDoFrameListener;
    }

    public final void setGlSurfaceDoFrameListener(IGLSurfaceDoFrame iGLSurfaceDoFrame) {
        this.glSurfaceDoFrameListener = iGLSurfaceDoFrame;
    }
}
