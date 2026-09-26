package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.narvii.model.Media;

/* JADX INFO: loaded from: classes7.dex */
public class PreloadImageView extends ThumbImageView {
    private int height;
    private int width;

    public void setSize(int i10, int i11) {
        this.width = i10;
        this.height = i11;
    }

    @Override // com.narvii.widget.ThumbImageView, com.narvii.widget.NVImageView
    protected String getRequestUrl(Media media, boolean z6, int i10, int i11) {
        return super.getRequestUrl(media, true, this.width, this.height);
    }

    public PreloadImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
