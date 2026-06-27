package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.narvii.model.Media;

/* loaded from: classes3.dex */
public class PreloadImageView extends ThumbImageView {
    private int height;
    private int width;

    public PreloadImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setSize(int i, int i2) {
        this.width = i;
        this.height = i2;
    }

    @Override // com.narvii.widget.ThumbImageView, com.narvii.widget.NVImageView
    protected String getRequestUrl(Media media, boolean z, int i, int i2) {
        return super.getRequestUrl(media, true, this.width, this.height);
    }
}
