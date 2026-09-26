package com.narvii.livelayer.detailview;

import android.content.Context;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes8.dex */
public class LiveLayerDetailListItemView extends RelativeLayout {
    private RectF rect;

    public LiveLayerDetailListItemView(Context context) {
        super(context);
        this.rect = new RectF();
    }

    public LiveLayerDetailListItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.rect = new RectF();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
    }

    public LiveLayerDetailListItemView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.rect = new RectF();
    }
}
