package com.narvii.nvplayerview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.Surface;
import android.widget.FrameLayout;

/* loaded from: classes3.dex */
public class NVVideoContainer extends AspectRatioFrameLayout {
    private static final int CENTER_CROP_SCALE_TYPE = 1;
    private static final int FIT_CENTER_SCALE_TYPE = 0;
    private static final int TYPE_SURFACE_VIEW = 0;
    private static final int TYPE_TEXTURE_VIEW = 1;
    private Context context;
    private IRenderView renderView;

    public NVVideoContainer(Context context) {
        this(context, null);
    }

    public NVVideoContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public NVVideoContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.context = context;
    }

    public void init(int i, ISurfaceListener iSurfaceListener) {
        if (i == 0) {
            this.renderView = new NVVideoSurfaceView(this.context);
        } else if (i == 1) {
            this.renderView = new NVVideoTextureView(this.context);
        }
        addView(this.renderView.getView(), new FrameLayout.LayoutParams(-1, -1));
        if (iSurfaceListener != null) {
            this.renderView.addSurfaceListener(iSurfaceListener);
        }
    }

    public void addSurfaceListener(ISurfaceListener iSurfaceListener) {
        IRenderView iRenderView = this.renderView;
        if (iRenderView != null) {
            iRenderView.addSurfaceListener(iSurfaceListener);
        }
    }

    public IRenderView getRenderView() {
        return this.renderView;
    }

    public Surface getSurface() {
        return this.renderView.getSurface();
    }
}
