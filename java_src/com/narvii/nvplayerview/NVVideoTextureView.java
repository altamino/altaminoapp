package com.narvii.nvplayerview;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;

/* loaded from: classes3.dex */
public class NVVideoTextureView extends TextureView implements TextureView.SurfaceTextureListener, IRenderView {
    private Surface surface;
    private ISurfaceListener surfaceListener;

    @Override // com.narvii.nvplayerview.IRenderView
    public View getView() {
        return this;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    public NVVideoTextureView(Context context) {
        this(context, null);
    }

    public NVVideoTextureView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public NVVideoTextureView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setSurfaceTextureListener(this);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        this.surface = new Surface(surfaceTexture);
        ISurfaceListener iSurfaceListener = this.surfaceListener;
        if (iSurfaceListener != null) {
            iSurfaceListener.surfaceCreated(this.surface);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        ISurfaceListener iSurfaceListener = this.surfaceListener;
        if (iSurfaceListener != null) {
            iSurfaceListener.surfaceSizeChanged(this.surface, i, i2);
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

    @Override // com.narvii.nvplayerview.IRenderView
    public void addSurfaceListener(ISurfaceListener iSurfaceListener) {
        this.surfaceListener = iSurfaceListener;
    }

    @Override // com.narvii.nvplayerview.IRenderView
    public Surface getSurface() {
        return this.surface;
    }
}
