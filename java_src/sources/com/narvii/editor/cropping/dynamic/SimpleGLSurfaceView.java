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
import com.narvii.nvplayer.INVPlayer;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class SimpleGLSurfaceView extends SurfaceView implements SurfaceHolder.Callback, Choreographer.FrameCallback, SimpleGLView {

    @Nullable
    private IGLSurfaceDoFrame glSurfaceDoFrameListener;
    private boolean isPlaying;
    private int mFilterType;
    private INVPlayer mPlayer;

    @Nullable
    private Surface mSurface;

    @Nullable
    private RenderThread renderThread;

    public interface IGLSurfaceDoFrame {
        void surfaceDoFrame();
    }

    public SimpleGLSurfaceView(@Nullable Context context) {
        super(context);
    }

    @Nullable
    public final IGLSurfaceDoFrame getGlSurfaceDoFrameListener() {
        return this.glSurfaceDoFrameListener;
    }

    @Override // com.narvii.editor.cropping.dynamic.SimpleGLView
    @NotNull
    public View getView() {
        return this;
    }

    public final boolean isPlaying() {
        return this.isPlaying;
    }

    public final void setGlSurfaceDoFrameListener(@Nullable IGLSurfaceDoFrame iGLSurfaceDoFrame) {
        this.glSurfaceDoFrameListener = iGLSurfaceDoFrame;
    }

    public final void setPlaying(boolean z6) {
        this.isPlaying = z6;
    }

    public SimpleGLSurfaceView(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private final void startPlayWhenResume() {
        RenderThread renderThread = this.renderThread;
        RenderHandler mHandler = renderThread != null ? renderThread.getMHandler() : null;
        if (mHandler != null) {
            mHandler.startPlay();
        }
        this.isPlaying = false;
    }

    public final void anotherSurfaceChanged(int i10, int i11) {
        RenderThread renderThread = this.renderThread;
        RenderHandler mHandler = renderThread != null ? renderThread.getMHandler() : null;
        if (mHandler != null) {
            mHandler.anotherSurfaceChanged(i10, i11);
        }
    }

    @Override // com.narvii.editor.cropping.dynamic.SimpleGLView
    public void changeFilter(int i10) {
        RenderThread renderThread = this.renderThread;
        RenderHandler mHandler = renderThread != null ? renderThread.getMHandler() : null;
        this.mFilterType = i10;
        if (mHandler != null) {
            mHandler.changeFilter(i10);
        }
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j6) {
        RenderThread renderThread = this.renderThread;
        RenderHandler mHandler = renderThread != null ? renderThread.getMHandler() : null;
        Choreographer.getInstance().postFrameCallback(this);
        if (mHandler != null) {
            mHandler.sendDoFrame(j6);
        }
        IGLSurfaceDoFrame iGLSurfaceDoFrame = this.glSurfaceDoFrameListener;
        if (iGLSurfaceDoFrame != null) {
            iGLSurfaceDoFrame.surfaceDoFrame();
        }
    }

    @Override // com.narvii.editor.cropping.dynamic.SimpleGLView
    public void initViews(@NotNull INVPlayer playerTool, int i10) {
        t.j(playerTool, "playerTool");
        this.mPlayer = playerTool;
        this.mFilterType = i10;
        getHolder().addCallback(this);
    }

    @Override // com.narvii.editor.cropping.dynamic.SimpleGLView
    public void renderAnotherSurface(@Nullable Surface surface) {
        RenderThread renderThread = this.renderThread;
        RenderHandler mHandler = renderThread != null ? renderThread.getMHandler() : null;
        if (mHandler != null) {
            mHandler.renderAnotherSurface(surface);
        }
    }

    public final void setTransform(@NotNull float[] floatArray) {
        t.j(floatArray, "floatArray");
        RenderThread renderThread = this.renderThread;
        RenderHandler mHandler = renderThread != null ? renderThread.getMHandler() : null;
        if (mHandler != null) {
            mHandler.setVideoTransform(floatArray);
        }
    }

    @Override // com.narvii.editor.cropping.dynamic.SimpleGLView
    public void setVideoEditorRect(@NotNull Rect rect) {
        t.j(rect, "rect");
        RenderThread renderThread = this.renderThread;
        RenderHandler mHandler = renderThread != null ? renderThread.getMHandler() : null;
        if (mHandler != null) {
            mHandler.setVideoEditorRect(rect);
        }
    }

    public final void setVideoSize(int i10, int i11) {
        RenderThread renderThread = this.renderThread;
        RenderHandler mHandler = renderThread != null ? renderThread.getMHandler() : null;
        if (mHandler != null) {
            mHandler.setVideoSizeChanged(i10, i11);
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

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(@NotNull SurfaceHolder holder, int i10, int i11, int i12) {
        t.j(holder, "holder");
        RenderThread renderThread = this.renderThread;
        RenderHandler mHandler = renderThread != null ? renderThread.getMHandler() : null;
        if (mHandler != null) {
            mHandler.sendSurfaceChanged(i10, i11, i12);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(@NotNull SurfaceHolder holder) {
        INVPlayer iNVPlayer;
        t.j(holder, "holder");
        this.mSurface = holder.getSurface();
        Context context = getContext();
        t.i(context, "getContext(...)");
        Surface surface = holder.getSurface();
        t.i(surface, "getSurface(...)");
        GLUtils.Companion companion = GLUtils.Companion;
        Context context2 = getContext();
        t.h(context2, "null cannot be cast to non-null type android.app.Activity");
        long displayRefreshNsec = companion.getDisplayRefreshNsec((Activity) context2);
        INVPlayer iNVPlayer2 = this.mPlayer;
        if (iNVPlayer2 == null) {
            t.B("mPlayer");
            iNVPlayer = null;
        } else {
            iNVPlayer = iNVPlayer2;
        }
        RenderThread renderThread = new RenderThread(context, surface, displayRefreshNsec, iNVPlayer, "BaseFilter");
        this.renderThread = renderThread;
        renderThread.start();
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
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(@NotNull SurfaceHolder holder) throws InterruptedException {
        t.j(holder, "holder");
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

    public SimpleGLSurfaceView(@Nullable Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
