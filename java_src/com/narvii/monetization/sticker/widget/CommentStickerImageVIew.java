package com.narvii.monetization.sticker.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.narvii.widget.FlexSizeImageViewDelegate;
import com.narvii.widget.IFlexSizeImageView;

/* loaded from: classes3.dex */
public class CommentStickerImageVIew extends StickerImageView implements IFlexSizeImageView, FlexSizeImageViewDelegate.IFlexSizeCallback {
    private FlexSizeImageViewDelegate flexSizeImageViewDelegate;

    @Override // com.narvii.widget.FlexSizeImageViewDelegate.IFlexSizeCallback
    public void adjustSize(int[] iArr) {
    }

    public CommentStickerImageVIew(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.flexSizeImageViewDelegate = new FlexSizeImageViewDelegate(this, 1.0f, 0, 0, this);
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

    @Override // com.narvii.widget.FlexSizeImageViewDelegate.IFlexSizeCallback
    public void onSuperMeasuredCalled(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // com.narvii.widget.NVImageView, android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        flexMeasure(i, i2);
    }
}
