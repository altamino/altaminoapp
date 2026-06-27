package com.narvii.livelayer.detailview;

import android.content.Context;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

/* loaded from: classes3.dex */
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

    public LiveLayerDetailListItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.rect = new RectF();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
    }
}
