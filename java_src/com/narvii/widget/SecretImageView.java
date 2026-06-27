package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import com.narvii.model.Media;

/* loaded from: classes3.dex */
public class SecretImageView extends ThumbImageView implements ISecretImage {
    SecretImageViewDelegate delegate;

    public SecretImageView(Context context) {
        this(context, null);
    }

    public SecretImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.delegate = new SecretImageViewDelegate(this, this.cornerRadius);
    }

    @Override // com.narvii.widget.ISecretImage
    public boolean setImageUrl(String str, boolean z) {
        return this.delegate.setImageUrl(str, z);
    }

    @Override // com.narvii.widget.ISecretImage
    public boolean setImageMedia(Media media, boolean z) {
        return this.delegate.setImageMedia(media, z);
    }

    @Override // com.narvii.widget.ISecretImage
    public void setImageForceBlur(Media media, boolean z, int i) {
        this.delegate.setImageForceBlur(media, z, i);
    }

    @Override // com.narvii.widget.NVImageView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.delegate.layout();
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // com.narvii.widget.ThumbImageView, com.narvii.widget.NVImageView, android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        if (!this.delegate.needBlur()) {
            super.onDraw(canvas);
        } else {
            this.delegate.drawSecret(canvas);
        }
    }
}
