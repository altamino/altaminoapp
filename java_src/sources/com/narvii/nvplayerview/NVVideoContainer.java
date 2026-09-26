package com.narvii.nvplayerview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.Surface;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public class NVVideoContainer extends AspectRatioFrameLayout {
    private static final int CENTER_CROP_SCALE_TYPE = 1;
    private static final int FIT_CENTER_SCALE_TYPE = 0;
    private static final int TYPE_SURFACE_VIEW = 0;
    private static final int TYPE_TEXTURE_VIEW = 1;
    private Context context;
    private IRenderView renderView;

    public NVVideoContainer(@NonNull Context context) {
        this(context, null);
    }

    public IRenderView getRenderView() {
        return this.renderView;
    }

    public NVVideoContainer(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public void addSurfaceListener(ISurfaceListener iSurfaceListener) {
        IRenderView iRenderView = this.renderView;
        if (iRenderView != null) {
            iRenderView.addSurfaceListener(iSurfaceListener);
        }
    }

    public Surface getSurface() {
        return this.renderView.getSurface();
    }

    public void init(int i10, @Nullable ISurfaceListener iSurfaceListener) {
        if (i10 == 0) {
            this.renderView = new NVVideoSurfaceView(this.context);
        } else if (i10 == 1) {
            this.renderView = new NVVideoTextureView(this.context);
        }
        addView(this.renderView.getView(), new FrameLayout.LayoutParams(-1, -1));
        if (iSurfaceListener != null) {
            this.renderView.addSurfaceListener(iSurfaceListener);
        }
    }

    public NVVideoContainer(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.context = context;
    }
}
