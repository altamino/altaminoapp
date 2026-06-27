package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class CardLayout extends ViewGroup {
    static final float MH = 1.0f;
    static final float MW = 0.8f;
    View card1;
    View card2;

    public CardLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.card1 = getChildAt(1);
        this.card2 = getChildAt(0);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int defaultSize = ViewGroup.getDefaultSize(getSuggestedMinimumWidth(), i);
        int i3 = this.card1.getLayoutParams().width;
        int i4 = this.card1.getLayoutParams().height;
        this.card1.measure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(i4, 1073741824));
        if (this.card2.getVisibility() == 0) {
            this.card2.measure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(i4, 1073741824));
            setMeasuredDimension(defaultSize, i4 + ((int) (this.card2.getPaddingLeft() * 1.0f)));
        } else {
            setMeasuredDimension(defaultSize, i4);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int i7 = this.card1.getLayoutParams().width;
        if (this.card2.getVisibility() == 0) {
            int paddingLeft = ((i5 - (i7 * 2)) + ((int) (this.card2.getPaddingLeft() * 0.8f))) / 2;
            int paddingLeft2 = (int) (this.card2.getPaddingLeft() * 1.0f);
            if (Utils.isRtl()) {
                this.card2.layout(paddingLeft, 0, paddingLeft + i7, i6 - paddingLeft2);
            } else {
                this.card1.layout(paddingLeft, paddingLeft2, paddingLeft + i7, i6);
            }
            int paddingLeft3 = paddingLeft + (i7 - ((int) (this.card2.getPaddingLeft() * 0.8f)));
            if (Utils.isRtl()) {
                this.card1.layout(paddingLeft3, paddingLeft2, i7 + paddingLeft3, i6);
                return;
            } else {
                this.card2.layout(paddingLeft3, 0, i7 + paddingLeft3, i6 - paddingLeft2);
                return;
            }
        }
        int i8 = (i5 - i7) / 2;
        this.card1.layout(i8, 0, i7 + i8, i6);
    }
}
