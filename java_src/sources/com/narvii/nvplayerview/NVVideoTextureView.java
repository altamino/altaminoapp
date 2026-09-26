package com.narvii.nvplayerview;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public class NVVideoTextureView extends TextureView implements TextureView.SurfaceTextureListener, IRenderView {
    private Surface surface;
    private ISurfaceListener surfaceListener;

    public NVVideoTextureView(Context context) {
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

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    public NVVideoTextureView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
        Surface surface = new Surface(surfaceTexture);
        this.surface = surface;
        ISurfaceListener iSurfaceListener = this.surfaceListener;
        if (iSurfaceListener != null) {
            iSurfaceListener.surfaceCreated(surface);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(final SurfaceTexture surfaceTexture) {
        ISurfaceListener iSurfaceListener = this.surfaceListener;
        if (iSurfaceListener != null) {
            iSurfaceListener.surfaceDestroyed(this.surface);
        }
        this.surface = null;
        com.narvii.util.Utils.postDelayed(new Runnable() { // from class: com.narvii.nvplayerview.NVVideoTextureView.1
            @Override // java.lang.Runnable
            public void run() {
                surfaceTexture.release();
            }
        }, 500L);
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
        ISurfaceListener iSurfaceListener = this.surfaceListener;
        if (iSurfaceListener != null) {
            iSurfaceListener.surfaceSizeChanged(this.surface, i10, i11);
        }
    }

    public NVVideoTextureView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        setSurfaceTextureListener(this);
    }
}
