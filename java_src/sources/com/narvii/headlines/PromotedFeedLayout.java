package com.narvii.headlines;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes2.dex */
public class PromotedFeedLayout extends FrameLayout {
    float maxHeight;
    float minHeight;

    public PromotedFeedLayout(@NonNull Context context) {
        this(context, null);
    }

    public PromotedFeedLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
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
    protected void onMeasure(int i10, int i11) {
        float size = View.MeasureSpec.getSize(i11);
        float f = this.minHeight;
        if (size < f) {
            i11 = View.MeasureSpec.makeMeasureSpec((int) f, 1073741824);
        }
        float size2 = View.MeasureSpec.getSize(i11);
        float f6 = this.maxHeight;
        if (size2 > f6) {
            i11 = View.MeasureSpec.makeMeasureSpec((int) f6, 1073741824);
        }
        super.onMeasure(i10, i11);
    }
}
