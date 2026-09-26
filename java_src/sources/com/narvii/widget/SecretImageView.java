package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import com.narvii.model.Media;

/* JADX INFO: loaded from: classes8.dex */
public class SecretImageView extends ThumbImageView implements ISecretImage {
    SecretImageViewDelegate delegate;

    public SecretImageView(Context context) {
        this(context, null);
    }

    public SecretImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.delegate = new SecretImageViewDelegate(this, this.cornerRadius);
    }

    @Override // com.narvii.widget.ThumbImageView, com.narvii.widget.NVImageView, android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.delegate.needBlur()) {
            this.delegate.drawSecret(canvas);
        } else {
            super.onDraw(canvas);
        }
    }

    @Override // com.narvii.widget.NVImageView, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        this.delegate.layout();
        super.onLayout(z6, i10, i11, i12, i13);
    }

    @Override // com.narvii.widget.ISecretImage
    public void setImageForceBlur(Media media, boolean z6, int i10) {
        this.delegate.setImageForceBlur(media, z6, i10);
    }

    @Override // com.narvii.widget.ISecretImage
    public boolean setImageMedia(Media media, boolean z6) {
        return this.delegate.setImageMedia(media, z6);
    }

    @Override // com.narvii.widget.ISecretImage
    public boolean setImageUrl(String str, boolean z6) {
        return this.delegate.setImageUrl(str, z6);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
    }
}
