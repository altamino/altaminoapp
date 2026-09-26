package com.narvii.nvplayerview;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVApplication;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.lib.R;
import com.narvii.util.image.Screenshot;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes9.dex */
public class NVVideoView extends FrameLayout {
    public static final int CENTER_CROP_SCALE_TYPE = 1;
    public static final int FIT_CENTER_SCALE_TYPE = 0;
    public static final int TYPE_SURFACE_VIEW = 0;
    public static final int TYPE_TEXTURE_VIEW = 1;
    private static boolean checkVideoDebug;
    public static boolean videoDebugEnable;
    private int backgroundColor;
    private NVVideoContainer container;
    private Context context;
    private int cornerRadius;
    private float[] cornerRadiusArray;
    private boolean inited;
    private NVImageView nvImageView;
    private NVVideoDebugView nvVideoDebugView;

    public NVVideoView(Context context) {
        this(context, null);
    }

    public NVVideoContainer getContainer() {
        return this.container;
    }

    public NVImageView getNvImageView() {
        return this.nvImageView;
    }

    public void init(@Nullable ISurfaceListener iSurfaceListener) {
        if (this.inited) {
            return;
        }
        this.inited = true;
        this.container = new NVVideoContainer(this.context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        addView(this.container, layoutParams);
        this.container.init(1, iSurfaceListener);
        setBackgroundColor(this.backgroundColor);
        checkVideoDebug(this.context);
    }

    public void setNVImage(NVImageView nVImageView) {
        this.nvImageView = nVImageView;
    }

    public NVVideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    private void checkVideoDebug(Context context) {
        if (checkVideoDebug) {
            return;
        }
        checkVideoDebug = true;
        videoDebugEnable = ((SharedPreferences) com.narvii.util.Utils.getNVContext(context).getService(IncubatorApplication.PREFS_SERVICE_KEY)).getBoolean(NVVideoDebugView.VIDEO_DEBUG_PREFS, false);
    }

    public static boolean isDebug() {
        return NVApplication.DEBUG || videoDebugEnable;
    }

    public void addDebugVideoView() {
        this.nvVideoDebugView = new NVVideoDebugView(this.context);
        addView(this.nvVideoDebugView, new FrameLayout.LayoutParams(-2, -2));
    }

    public void addSurfaceListener(ISurfaceListener iSurfaceListener) {
        NVVideoContainer nVVideoContainer = this.container;
        if (nVVideoContainer != null) {
            nVVideoContainer.addSurfaceListener(iSurfaceListener);
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (this.cornerRadius == 0 || this.cornerRadiusArray == null) {
            super.draw(canvas);
            return;
        }
        canvas.save();
        try {
            try {
                Path path = new Path();
                path.addRoundRect(new RectF(0.0f, 0.0f, getWidth(), getHeight()), this.cornerRadiusArray, Path.Direction.CW);
                canvas.clipPath(path);
                super.draw(canvas);
            } catch (Exception unused) {
                super.draw(canvas);
            }
        } finally {
            canvas.restore();
        }
    }

    public float getRatio() {
        NVVideoContainer nVVideoContainer = this.container;
        if (nVVideoContainer != null) {
            return nVVideoContainer.getRatio();
        }
        return -1.0f;
    }

    public IRenderView getRenderView() {
        NVVideoContainer nVVideoContainer = this.container;
        if (nVVideoContainer != null) {
            return nVVideoContainer.getRenderView();
        }
        return null;
    }

    public int getScaleType() {
        NVVideoContainer nVVideoContainer = this.container;
        if (nVVideoContainer != null) {
            return nVVideoContainer.getScaleType();
        }
        return 0;
    }

    public Bitmap getSnapshot() {
        NVVideoContainer nVVideoContainer = this.container;
        if (nVVideoContainer == null) {
            return null;
        }
        Object renderView = nVVideoContainer.getRenderView();
        if (renderView instanceof View) {
            return Screenshot.takeScreenshot((View) renderView);
        }
        return null;
    }

    public Surface getSurface() {
        NVVideoContainer nVVideoContainer = this.container;
        if (nVVideoContainer != null) {
            return nVVideoContainer.getSurface();
        }
        return null;
    }

    public void hidePlayButton(boolean z6) {
        NVImageView nVImageView = this.nvImageView;
        if (nVImageView != null) {
            nVImageView.hidePlayButton = z6;
            nVImageView.invalidate();
        }
    }

    public void resetDebugVideoView() {
        NVVideoDebugView nVVideoDebugView = this.nvVideoDebugView;
        if (nVVideoDebugView != null) {
            nVVideoDebugView.reset();
        }
    }

    public void setCornerRadiusArray(float[] fArr, int i10) {
        this.cornerRadiusArray = fArr;
        if (i10 != this.cornerRadius) {
            this.cornerRadius = i10;
            invalidate();
        }
    }

    public void setErrorText(String str) {
        NVVideoDebugView nVVideoDebugView = this.nvVideoDebugView;
        if (nVVideoDebugView != null) {
            nVVideoDebugView.setErrorText(str);
        }
    }

    public void setFromSettingToFirstFrameText(long j6) {
        NVVideoDebugView nVVideoDebugView = this.nvVideoDebugView;
        if (nVVideoDebugView != null) {
            nVVideoDebugView.setFromSettingToFirstFrameText(j6);
        }
    }

    public void setHitCacheText(String str) {
        NVVideoDebugView nVVideoDebugView = this.nvVideoDebugView;
        if (nVVideoDebugView != null) {
            nVVideoDebugView.setHitCacheText(str);
        }
    }

    public void setPlayerStatus(int i10) {
        NVVideoDebugView nVVideoDebugView = this.nvVideoDebugView;
        if (nVVideoDebugView != null) {
            nVVideoDebugView.setPlayerStatus(i10);
        }
    }

    public void setPredictedRatio(float f) {
        NVVideoContainer nVVideoContainer = this.container;
        if (nVVideoContainer != null) {
            nVVideoContainer.setPredictedRatio(f);
        }
    }

    public void setPreloadStrategyInfo(String str) {
        NVVideoDebugView nVVideoDebugView = this.nvVideoDebugView;
        if (nVVideoDebugView != null) {
            nVVideoDebugView.setPreloadText(str);
        }
    }

    public void setResolutionText(int i10, int i11) {
        NVVideoDebugView nVVideoDebugView = this.nvVideoDebugView;
        if (nVVideoDebugView != null) {
            nVVideoDebugView.setResolutionText(i10, i11);
        }
    }

    public void setScaleType(int i10) {
        NVVideoContainer nVVideoContainer = this.container;
        if (nVVideoContainer != null) {
            nVVideoContainer.setScaleType(i10);
        }
    }

    public void setStrategyInfoText(ObjectNode objectNode) {
        NVVideoDebugView nVVideoDebugView = this.nvVideoDebugView;
        if (nVVideoDebugView != null) {
            nVVideoDebugView.setStrategyInfoText(objectNode);
        }
    }

    public void setVideoSize(int i10, int i11) {
        NVVideoContainer nVVideoContainer = this.container;
        if (nVVideoContainer != null) {
            nVVideoContainer.setVideoSize(i10, i11);
        }
    }

    public void setVideoSupportLowRes(boolean z6) {
        NVVideoDebugView nVVideoDebugView = this.nvVideoDebugView;
        if (nVVideoDebugView != null) {
            nVVideoDebugView.setSupportLowResText(z6);
        }
    }

    public NVVideoView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.context = context;
        setWillNotDraw(false);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NVVideoView);
        this.backgroundColor = typedArrayObtainStyledAttributes.getColor(R.styleable.NVVideoView_backgroundColor, ViewCompat.MEASURED_STATE_MASK);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public boolean performClick() {
        return super.performClick();
    }

    public void setTouchListener(View.OnTouchListener onTouchListener) {
        setOnTouchListener(onTouchListener);
    }

    public void init(@Nullable ISurfaceListener iSurfaceListener, int i10) {
        if (this.inited) {
            return;
        }
        this.inited = true;
        this.container = new NVVideoContainer(this.context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        addView(this.container, layoutParams);
        this.container.init(i10, iSurfaceListener);
        setBackgroundColor(this.backgroundColor);
        checkVideoDebug(this.context);
    }
}
