package com.narvii.nvplayerview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;

/* loaded from: classes3.dex */
public class NVVideoSurfaceView extends SurfaceView implements SurfaceHolder.Callback, IRenderView {
    private Surface surface;
    private ISurfaceListener surfaceListener;

    @Override // com.narvii.nvplayerview.IRenderView
    public View getView() {
        return this;
    }

    public NVVideoSurfaceView(Context context) {
        this(context, null);
    }

    public NVVideoSurfaceView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public NVVideoSurfaceView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        getHolder().addCallback(this);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.surface = surfaceHolder.getSurface();
        ISurfaceListener iSurfaceListener = this.surfaceListener;
        if (iSurfaceListener != null) {
            iSurfaceListener.surfaceCreated(this.surface);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        ISurfaceListener iSurfaceListener = this.surfaceListener;
        if (iSurfaceListener != null) {
            iSurfaceListener.surfaceSizeChanged(surfaceHolder.getSurface(), i2, i3);
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

    @Override // com.narvii.nvplayerview.IRenderView
    public void addSurfaceListener(ISurfaceListener iSurfaceListener) {
        this.surfaceListener = iSurfaceListener;
    }

    @Override // com.narvii.nvplayerview.IRenderView
    public Surface getSurface() {
        return this.surface;
    }
}
