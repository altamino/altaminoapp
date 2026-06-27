package com.narvii.nvplayerview;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.View;
import android.widget.FrameLayout;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVApplication;
import com.narvii.lib.R;
import com.narvii.util.image.Screenshot;
import com.narvii.widget.NVImageView;

/* loaded from: classes3.dex */
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

    public NVVideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public NVVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.context = context;
        setWillNotDraw(false);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.NVVideoView);
        this.backgroundColor = typedArrayObtainStyledAttributes.getColor(R.styleable.NVVideoView_backgroundColor, ViewCompat.MEASURED_STATE_MASK);
        typedArrayObtainStyledAttributes.recycle();
    }

    public void init(ISurfaceListener iSurfaceListener) {
        if (this.inited) {
            return;
        }
        this.inited = true;
        int i = Build.VERSION.SDK_INT < 23 ? 0 : 1;
        this.container = new NVVideoContainer(this.context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        addView(this.container, layoutParams);
        this.container.init(i, iSurfaceListener);
        setBackgroundColor(this.backgroundColor);
        checkVideoDebug(this.context);
    }

    public void init(ISurfaceListener iSurfaceListener, int i) {
        if (this.inited) {
            return;
        }
        this.inited = true;
        this.container = new NVVideoContainer(this.context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        addView(this.container, layoutParams);
        this.container.init(i, iSurfaceListener);
        setBackgroundColor(this.backgroundColor);
        checkVideoDebug(this.context);
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

    public void addSurfaceListener(ISurfaceListener iSurfaceListener) {
        NVVideoContainer nVVideoContainer = this.container;
        if (nVVideoContainer != null) {
            nVVideoContainer.addSurfaceListener(iSurfaceListener);
        }
    }

    public void setScaleType(int i) {
        NVVideoContainer nVVideoContainer = this.container;
        if (nVVideoContainer != null) {
            nVVideoContainer.setScaleType(i);
        }
    }

    public int getScaleType() {
        NVVideoContainer nVVideoContainer = this.container;
        if (nVVideoContainer != null) {
            return nVVideoContainer.getScaleType();
        }
        return 0;
    }

    public void setVideoSize(int i, int i2) {
        NVVideoContainer nVVideoContainer = this.container;
        if (nVVideoContainer != null) {
            nVVideoContainer.setVideoSize(i, i2);
        }
    }

    public NVVideoContainer getContainer() {
        return this.container;
    }

    public void setPredictedRatio(float f) {
        NVVideoContainer nVVideoContainer = this.container;
        if (nVVideoContainer != null) {
            nVVideoContainer.setPredictedRatio(f);
        }
    }

    public IRenderView getRenderView() {
        NVVideoContainer nVVideoContainer = this.container;
        if (nVVideoContainer != null) {
            return nVVideoContainer.getRenderView();
        }
        return null;
    }

    public float getRatio() {
        NVVideoContainer nVVideoContainer = this.container;
        if (nVVideoContainer != null) {
            return nVVideoContainer.getRatio();
        }
        return -1.0f;
    }

    public void setTouchListener(View.OnTouchListener onTouchListener) {
        setOnTouchListener(onTouchListener);
    }

    @Override // android.view.View
    public boolean performClick() {
        return super.performClick();
    }

    public void setNVImage(NVImageView nVImageView) {
        this.nvImageView = nVImageView;
    }

    public NVImageView getNvImageView() {
        return this.nvImageView;
    }

    public void hidePlayButton(boolean z) {
        NVImageView nVImageView = this.nvImageView;
        if (nVImageView != null) {
            nVImageView.hidePlayButton = z;
            nVImageView.invalidate();
        }
    }

    public Surface getSurface() {
        NVVideoContainer nVVideoContainer = this.container;
        if (nVVideoContainer != null) {
            return nVVideoContainer.getSurface();
        }
        return null;
    }

    public void addDebugVideoView() {
        this.nvVideoDebugView = new NVVideoDebugView(this.context);
        addView(this.nvVideoDebugView, new FrameLayout.LayoutParams(-2, -2));
    }

    public void resetDebugVideoView() {
        NVVideoDebugView nVVideoDebugView = this.nvVideoDebugView;
        if (nVVideoDebugView != null) {
            nVVideoDebugView.reset();
        }
    }

    public void setHitCacheText(String str) {
        NVVideoDebugView nVVideoDebugView = this.nvVideoDebugView;
        if (nVVideoDebugView != null) {
            nVVideoDebugView.setHitCacheText(str);
        }
    }

    public void setResolutionText(int i, int i2) {
        NVVideoDebugView nVVideoDebugView = this.nvVideoDebugView;
        if (nVVideoDebugView != null) {
            nVVideoDebugView.setResolutionText(i, i2);
        }
    }

    public void setFromSettingToFirstFrameText(long j) {
        NVVideoDebugView nVVideoDebugView = this.nvVideoDebugView;
        if (nVVideoDebugView != null) {
            nVVideoDebugView.setFromSettingToFirstFrameText(j);
        }
    }

    public void setPlayerStatus(int i) {
        NVVideoDebugView nVVideoDebugView = this.nvVideoDebugView;
        if (nVVideoDebugView != null) {
            nVVideoDebugView.setPlayerStatus(i);
        }
    }

    public void setPreloadStrategyInfo(String str) {
        NVVideoDebugView nVVideoDebugView = this.nvVideoDebugView;
        if (nVVideoDebugView != null) {
            nVVideoDebugView.setPreloadText(str);
        }
    }

    public void setVideoSupportLowRes(boolean z) {
        NVVideoDebugView nVVideoDebugView = this.nvVideoDebugView;
        if (nVVideoDebugView != null) {
            nVVideoDebugView.setSupportLowResText(z);
        }
    }

    public void setErrorText(String str) {
        NVVideoDebugView nVVideoDebugView = this.nvVideoDebugView;
        if (nVVideoDebugView != null) {
            nVVideoDebugView.setErrorText(str);
        }
    }

    public void setStrategyInfoText(ObjectNode objectNode) {
        NVVideoDebugView nVVideoDebugView = this.nvVideoDebugView;
        if (nVVideoDebugView != null) {
            nVVideoDebugView.setStrategyInfoText(objectNode);
        }
    }

    public static boolean isDebug() {
        return NVApplication.DEBUG || videoDebugEnable;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (this.cornerRadius != 0 && this.cornerRadiusArray != null) {
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
                return;
            } finally {
                canvas.restore();
            }
        }
        super.draw(canvas);
    }

    public void setCornerRadiusArray(float[] fArr, int i) {
        this.cornerRadiusArray = fArr;
        if (i != this.cornerRadius) {
            this.cornerRadius = i;
            invalidate();
        }
    }

    private void checkVideoDebug(Context context) {
        if (checkVideoDebug) {
            return;
        }
        checkVideoDebug = true;
        videoDebugEnable = ((SharedPreferences) com.narvii.util.Utils.getNVContext(context).getService("prefs")).getBoolean(NVVideoDebugView.VIDEO_DEBUG_PREFS, false);
    }
}
