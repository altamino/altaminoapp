package com.narvii.crop;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.narvii.lib.R;

/* loaded from: classes2.dex */
public class CropView extends FrameLayout {
    private final GestureCropImageView mGestureCropImageView;
    private final OverlayView mViewOverlay;

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public CropView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CropView(Context context, AttributeSet attributeSet, int i) throws Resources.NotFoundException {
        super(context, attributeSet, i);
        LayoutInflater.from(context).inflate(R.layout.ucrop_view, (ViewGroup) this, true);
        this.mGestureCropImageView = (GestureCropImageView) findViewById(R.id.image_view_crop);
        this.mViewOverlay = (OverlayView) findViewById(R.id.view_overlay);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ucrop_UCropView);
        getOverlayView().processStyledAttributes(typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
    }

    public GestureCropImageView getImageView() {
        return this.mGestureCropImageView;
    }

    public OverlayView getOverlayView() {
        return this.mViewOverlay;
    }

    public void setAspectRatio(float f) {
        this.mGestureCropImageView.setTargetAspectRatio(f);
        this.mViewOverlay.setTargetAspectRatio(f);
    }

    public void setCustomPadding(int i, int i2, int i3, int i4) {
        this.mGestureCropImageView.setCustomPadding(i, i2, i3, i4);
        this.mViewOverlay.setCustomPadding(i, i2, i3, i4);
    }

    public void setHorizontalAdjust(boolean z) {
        this.mViewOverlay.setHorizontalAdjust(z);
        this.mGestureCropImageView.sethAdjust(z);
    }
}
