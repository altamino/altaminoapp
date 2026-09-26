package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public class HomeFrameLayout extends FrameLayout {
    int exh;

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        if (this.exh != 0) {
            i11 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i11) + this.exh, View.MeasureSpec.getMode(i11));
        }
        super.onMeasure(i10, i11);
    }

    public void setExtraHeight(int i10) {
        if (this.exh != i10) {
            this.exh = i10;
            setTranslationY(-i10);
            requestLayout();
        }
    }

    public HomeFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
