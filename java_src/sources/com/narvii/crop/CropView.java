package com.narvii.crop;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes6.dex */
public class CropView extends FrameLayout {
    private final GestureCropImageView mGestureCropImageView;
    private final OverlayView mViewOverlay;

    public CropView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @NonNull
    public GestureCropImageView getImageView() {
        return this.mGestureCropImageView;
    }

    @NonNull
    public OverlayView getOverlayView() {
        return this.mViewOverlay;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public CropView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        LayoutInflater.from(context).inflate(R.layout.ucrop_view, (ViewGroup) this, true);
        this.mGestureCropImageView = (GestureCropImageView) findViewById(R.id.image_view_crop);
        this.mViewOverlay = (OverlayView) findViewById(R.id.view_overlay);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ucrop_UCropView);
        getOverlayView().processStyledAttributes(typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setAspectRatio(float f) {
        this.mGestureCropImageView.setTargetAspectRatio(f);
        this.mViewOverlay.setTargetAspectRatio(f);
    }

    public void setCustomPadding(int i10, int i11, int i12, int i13) {
        this.mGestureCropImageView.setCustomPadding(i10, i11, i12, i13);
        this.mViewOverlay.setCustomPadding(i10, i11, i12, i13);
    }

    public void setHorizontalAdjust(boolean z6) {
        this.mViewOverlay.setHorizontalAdjust(z6);
        this.mGestureCropImageView.sethAdjust(z6);
    }
}
