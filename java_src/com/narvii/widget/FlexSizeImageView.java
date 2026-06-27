package com.narvii.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.narvii.lib.R;
import com.narvii.model.Media;
import com.narvii.util.Utils;
import com.narvii.widget.FlexSizeImageViewDelegate;

/* loaded from: classes3.dex */
public class FlexSizeImageView extends ThumbImageView implements IFlexSizeImageView, FlexSizeImageViewDelegate.IFlexSizeCallback, ISecretImage {
    private final Runnable checkLayout;
    private IFlexSizeImageSetDimensionCallback flexSizeImageSetDimensionCallback;
    private FlexSizeImageViewDelegate flexSizeImageViewDelegate;
    public float preferredRatio;
    public float ratioFromUrl;
    private SecretImageViewDelegate secretImageViewDelegate;

    public interface IFlexSizeImageSetDimensionCallback {
        void onSetMeasuredDimension(int i, int i2);
    }

    public void adjustSize(int[] iArr) {
    }

    @Override // com.narvii.widget.ThumbImageView
    protected boolean isReadyToWork(boolean z) {
        return true;
    }

    public FlexSizeImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.ratioFromUrl = -1.0f;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FlexSizeImageView);
        this.preferredRatio = typedArrayObtainStyledAttributes.getFloat(R.styleable.FlexSizeImageView_preferredRatio, 0.75f);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.FlexSizeImageView_estimatedWidth, 0);
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.FlexSizeImageView_estimatedHeight, 0);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(R.styleable.FlexSizeImageView_keepRatio, false);
        typedArrayObtainStyledAttributes.recycle();
        if (Build.VERSION.SDK_INT < 24) {
            this.checkLayout = null;
        } else {
            this.checkLayout = new Runnable() { // from class: com.narvii.widget.FlexSizeImageView.1
                @Override // java.lang.Runnable
                public void run() {
                    FlexSizeImageView.this.requestLayout();
                }
            };
        }
        this.flexSizeImageViewDelegate = new FlexSizeImageViewDelegate(this, this.preferredRatio, dimensionPixelSize, dimensionPixelSize2, this);
        this.flexSizeImageViewDelegate.setKeepRatio(z);
        this.secretImageViewDelegate = new SecretImageViewDelegate(this, this.cornerRadius);
    }

    @Override // com.narvii.widget.NVImageView
    protected void setImageDrawable(Drawable drawable, int i) {
        Runnable runnable = this.checkLayout;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
            Utils.postDelayed(this.checkLayout, 150L);
        }
        super.setImageDrawable(drawable, i);
    }

    @Override // com.narvii.widget.ThumbImageView, com.narvii.widget.NVImageView
    public boolean setImageMedia(Media media) {
        if (Utils.isEquals(media, this.media)) {
            int i = this.status;
            this.status = 0;
            this.media = media;
            setImageStatus(i, false);
            return false;
        }
        discard();
        this.media = media;
        String str = null;
        this.requestUrl = null;
        this.imageRetrieve = false;
        if (media != null && (str = media.coverImage) == null) {
            str = media.url;
        }
        this.ratioFromUrl = processImageUrl(str);
        if (this.ratioFromUrl > 0.0f) {
            requestLayout();
            return true;
        }
        require();
        return true;
    }

    public void setImageSize(int i, int i2) {
        this.flexSizeImageViewDelegate.setImageSize(i, i2);
    }

    @Override // com.narvii.widget.ISecretImage
    public boolean setImageUrl(String str, boolean z) {
        return this.secretImageViewDelegate.setImageUrl(str, z);
    }

    @Override // com.narvii.widget.ISecretImage
    public boolean setImageMedia(Media media, boolean z) {
        return this.secretImageViewDelegate.setImageMedia(media, z);
    }

    @Override // com.narvii.widget.ISecretImage
    public void setImageForceBlur(Media media, boolean z, int i) {
        this.secretImageViewDelegate.setImageForceBlur(media, z, i);
    }

    @Override // com.narvii.widget.IFlexSizeImageView
    public float processImageUrl(String str) {
        return this.flexSizeImageViewDelegate.processImageUrl(str);
    }

    @Override // com.narvii.widget.IFlexSizeImageView
    public void setImageSizeFromUrl(String str) throws NumberFormatException {
        this.flexSizeImageViewDelegate.setImageSizeFromUrl(str);
    }

    @Override // com.narvii.widget.IFlexSizeImageView
    public void setImageSizeFromUrl(String str, boolean z) throws NumberFormatException {
        this.flexSizeImageViewDelegate.setImageSizeFromUrl(str, z);
    }

    @Override // com.narvii.widget.IFlexSizeImageView
    public void flexMeasure(int i, int i2) {
        this.flexSizeImageViewDelegate.flexMeasure(i, i2);
    }

    @Override // com.narvii.widget.NVImageView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Runnable runnable;
        if (this.ratioFromUrl <= 0.0f && (runnable = this.checkLayout) != null) {
            Utils.handler.removeCallbacks(runnable);
        }
        this.secretImageViewDelegate.layout();
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // com.narvii.widget.NVImageView, android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        flexMeasure(i, i2);
    }

    @Override // com.narvii.widget.FlexSizeImageViewDelegate.IFlexSizeCallback
    @SuppressLint({"WrongCall"})
    public void onSuperMeasuredCalled(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // com.narvii.widget.ThumbImageView, com.narvii.widget.NVImageView, android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (!this.secretImageViewDelegate.needBlur()) {
            super.onDraw(canvas);
        } else {
            this.secretImageViewDelegate.drawSecret(canvas);
        }
    }

    @Override // com.narvii.widget.NVImageView
    public void innerSetMeasuredDimension(int i, int i2) {
        int minimumWidth = getMinimumWidth();
        int minimumHeight = getMinimumHeight();
        if (minimumWidth > 0 || minimumHeight > 0) {
            i = Math.max(i, minimumWidth);
            i2 = Math.max(i2, minimumHeight);
            setScaleType(ImageView.ScaleType.CENTER_CROP);
        }
        IFlexSizeImageSetDimensionCallback iFlexSizeImageSetDimensionCallback = this.flexSizeImageSetDimensionCallback;
        if (iFlexSizeImageSetDimensionCallback != null) {
            iFlexSizeImageSetDimensionCallback.onSetMeasuredDimension(i, i2);
        }
        super.innerSetMeasuredDimension(i, i2);
    }

    public void setFlexSizeImageSetDimensionCallback(IFlexSizeImageSetDimensionCallback iFlexSizeImageSetDimensionCallback) {
        this.flexSizeImageSetDimensionCallback = iFlexSizeImageSetDimensionCallback;
    }
}
