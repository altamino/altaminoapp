package com.narvii.headlines;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.util.Utils;

/* loaded from: classes2.dex */
public class PromotedFeedLayout extends FrameLayout {
    float maxHeight;
    float minHeight;

    public PromotedFeedLayout(Context context) {
        this(context, null);
    }

    public PromotedFeedLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.minHeight = Utils.dpToPx(getContext(), 300.0f);
        this.maxHeight = Utils.dpToPx(getContext(), 500.0f);
        int screenHeight = Utils.getScreenHeight(context);
        if (screenHeight != 0) {
            float f = screenHeight;
            this.minHeight = 0.4f * f;
            this.maxHeight = f * 0.6f;
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        float size = View.MeasureSpec.getSize(i2);
        float f = this.minHeight;
        if (size < f) {
            i2 = View.MeasureSpec.makeMeasureSpec((int) f, 1073741824);
        }
        float size2 = View.MeasureSpec.getSize(i2);
        float f2 = this.maxHeight;
        if (size2 > f2) {
            i2 = View.MeasureSpec.makeMeasureSpec((int) f2, 1073741824);
        }
        super.onMeasure(i, i2);
    }
}
