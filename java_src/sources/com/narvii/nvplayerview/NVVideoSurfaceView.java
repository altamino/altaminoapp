package com.narvii.nvplayerview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;

/* JADX INFO: loaded from: classes11.dex */
public class NVVideoSurfaceView extends SurfaceView implements SurfaceHolder.Callback, IRenderView {
    private Surface surface;
    private ISurfaceListener surfaceListener;

    public NVVideoSurfaceView(Context context) {
        this(context, null);
    }

    @Override // com.narvii.nvplayerview.IRenderView
    public void addSurfaceListener(ISurfaceListener iSurfaceListener) {
        this.surfaceListener = iSurfaceListener;
    }

    @Override // com.narvii.nvplayerview.IRenderView
    public Surface getSurface() {
        return this.surface;
    }

    @Override // com.narvii.nvplayerview.IRenderView
    public View getView() {
        return this;
    }

    public NVVideoSurfaceView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
        ISurfaceListener iSurfaceListener = this.surfaceListener;
        if (iSurfaceListener != null) {
            iSurfaceListener.surfaceSizeChanged(surfaceHolder.getSurface(), i11, i12);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        ISurfaceListener iSurfaceListener = this.surfaceListener;
        if (iSurfaceListener != null) {
            iSurfaceListener.surfaceDestroyed(surfaceHolder.getSurface());
        }
        this.surface = null;
    }

    public NVVideoSurfaceView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        getHolder().addCallback(this);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        Surface surface = surfaceHolder.getSurface();
        this.surface = surface;
        ISurfaceListener iSurfaceListener = this.surfaceListener;
        if (iSurfaceListener != null) {
            iSurfaceListener.surfaceCreated(surface);
        }
    }
}
