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

/* JADX INFO: loaded from: classes5.dex */
public class FlexSizeImageView extends ThumbImageView implements IFlexSizeImageView, FlexSizeImageViewDelegate.IFlexSizeCallback, ISecretImage {
    private final Runnable checkLayout;
    private IFlexSizeImageSetDimensionCallback flexSizeImageSetDimensionCallback;
    private FlexSizeImageViewDelegate flexSizeImageViewDelegate;
    public float preferredRatio;
    public float ratioFromUrl;
    private SecretImageViewDelegate secretImageViewDelegate;

    public interface IFlexSizeImageSetDimensionCallback {
        void onSetMeasuredDimension(int i10, int i11);
    }

    public void adjustSize(int[] iArr) {
    }

    @Override // com.narvii.widget.ThumbImageView
    protected boolean isReadyToWork(boolean z6) {
        return true;
    }

    public void setFlexSizeImageSetDimensionCallback(IFlexSizeImageSetDimensionCallback iFlexSizeImageSetDimensionCallback) {
        this.flexSizeImageSetDimensionCallback = iFlexSizeImageSetDimensionCallback;
    }

    @Override // com.narvii.widget.ThumbImageView, com.narvii.widget.NVImageView
    public boolean setImageMedia(Media media) {
        if (Utils.isEquals(media, this.media)) {
            int i10 = this.status;
            this.status = 0;
            this.media = media;
            setImageStatus(i10, false);
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
        float fProcessImageUrl = processImageUrl(str);
        this.ratioFromUrl = fProcessImageUrl;
        if (fProcessImageUrl > 0.0f) {
            requestLayout();
            return true;
        }
        require();
        return true;
    }

    @Override // com.narvii.widget.IFlexSizeImageView
    public void setImageSizeFromUrl(String str) {
        this.flexSizeImageViewDelegate.setImageSizeFromUrl(str);
    }

    @Override // com.narvii.widget.IFlexSizeImageView
    public void flexMeasure(int i10, int i11) {
        this.flexSizeImageViewDelegate.flexMeasure(i10, i11);
    }

    @Override // com.narvii.widget.ThumbImageView, com.narvii.widget.NVImageView, android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.secretImageViewDelegate.needBlur()) {
            this.secretImageViewDelegate.drawSecret(canvas);
        } else {
            super.onDraw(canvas);
        }
    }

    @Override // com.narvii.widget.NVImageView, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        Runnable runnable;
        if (this.ratioFromUrl <= 0.0f && (runnable = this.checkLayout) != null) {
            Utils.handler.removeCallbacks(runnable);
        }
        this.secretImageViewDelegate.layout();
        super.onLayout(z6, i10, i11, i12, i13);
    }

    @Override // com.narvii.widget.IFlexSizeImageView
    public float processImageUrl(String str) {
        return this.flexSizeImageViewDelegate.processImageUrl(str);
    }

    @Override // com.narvii.widget.NVImageView
    protected void setImageDrawable(Drawable drawable, int i10) {
        Runnable runnable = this.checkLayout;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
            Utils.postDelayed(this.checkLayout, 150L);
        }
        super.setImageDrawable(drawable, i10);
    }

    @Override // com.narvii.widget.ISecretImage
    public void setImageForceBlur(Media media, boolean z6, int i10) {
        this.secretImageViewDelegate.setImageForceBlur(media, z6, i10);
    }

    public void setImageSize(int i10, int i11) {
        this.flexSizeImageViewDelegate.setImageSize(i10, i11);
    }

    @Override // com.narvii.widget.IFlexSizeImageView
    public void setImageSizeFromUrl(String str, boolean z6) {
        this.flexSizeImageViewDelegate.setImageSizeFromUrl(str, z6);
    }

    @Override // com.narvii.widget.ISecretImage
    public boolean setImageUrl(String str, boolean z6) {
        return this.secretImageViewDelegate.setImageUrl(str, z6);
    }

    public FlexSizeImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.ratioFromUrl = -1.0f;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FlexSizeImageView);
        this.preferredRatio = typedArrayObtainStyledAttributes.getFloat(R.styleable.FlexSizeImageView_preferredRatio, 0.75f);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.FlexSizeImageView_estimatedWidth, 0);
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.FlexSizeImageView_estimatedHeight, 0);
        boolean z6 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.FlexSizeImageView_keepRatio, false);
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
        FlexSizeImageViewDelegate flexSizeImageViewDelegate = new FlexSizeImageViewDelegate(this, this.preferredRatio, dimensionPixelSize, dimensionPixelSize2, this);
        this.flexSizeImageViewDelegate = flexSizeImageViewDelegate;
        flexSizeImageViewDelegate.setKeepRatio(z6);
        this.secretImageViewDelegate = new SecretImageViewDelegate(this, this.cornerRadius);
    }

    @Override // com.narvii.widget.NVImageView
    public void innerSetMeasuredDimension(int i10, int i11) {
        int minimumWidth = getMinimumWidth();
        int minimumHeight = getMinimumHeight();
        if (minimumWidth > 0 || minimumHeight > 0) {
            i10 = Math.max(i10, minimumWidth);
            i11 = Math.max(i11, minimumHeight);
            setScaleType(ImageView.ScaleType.CENTER_CROP);
        }
        IFlexSizeImageSetDimensionCallback iFlexSizeImageSetDimensionCallback = this.flexSizeImageSetDimensionCallback;
        if (iFlexSizeImageSetDimensionCallback != null) {
            iFlexSizeImageSetDimensionCallback.onSetMeasuredDimension(i10, i11);
        }
        super.innerSetMeasuredDimension(i10, i11);
    }

    @Override // com.narvii.widget.NVImageView, android.widget.ImageView, android.view.View
    protected void onMeasure(int i10, int i11) {
        flexMeasure(i10, i11);
    }

    @Override // com.narvii.widget.FlexSizeImageViewDelegate.IFlexSizeCallback
    @SuppressLint({"WrongCall"})
    public void onSuperMeasuredCalled(int i10, int i11) {
        super.onMeasure(i10, i11);
    }

    @Override // com.narvii.widget.ISecretImage
    public boolean setImageMedia(Media media, boolean z6) {
        return this.secretImageViewDelegate.setImageMedia(media, z6);
    }
}
