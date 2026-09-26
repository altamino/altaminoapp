package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes10.dex */
public class CardLayout extends ViewGroup {
    static final float MH = 1.0f;
    static final float MW = 0.8f;
    View card1;
    View card2;

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        int i14 = i12 - i10;
        int i15 = i13 - i11;
        int i16 = this.card1.getLayoutParams().width;
        if (this.card2.getVisibility() != 0) {
            int i17 = (i14 - i16) / 2;
            this.card1.layout(i17, 0, i16 + i17, i15);
            return;
        }
        int paddingLeft = ((i14 - (i16 * 2)) + ((int) (this.card2.getPaddingLeft() * 0.8f))) / 2;
        int paddingLeft2 = (int) (this.card2.getPaddingLeft() * 1.0f);
        if (Utils.isRtl()) {
            this.card2.layout(paddingLeft, 0, paddingLeft + i16, i15 - paddingLeft2);
        } else {
            this.card1.layout(paddingLeft, paddingLeft2, paddingLeft + i16, i15);
        }
        int paddingLeft3 = paddingLeft + (i16 - ((int) (this.card2.getPaddingLeft() * 0.8f)));
        if (Utils.isRtl()) {
            this.card1.layout(paddingLeft3, paddingLeft2, i16 + paddingLeft3, i15);
        } else {
            this.card2.layout(paddingLeft3, 0, i16 + paddingLeft3, i15 - paddingLeft2);
        }
    }

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
    protected void onMeasure(int i10, int i11) {
        int defaultSize = View.getDefaultSize(getSuggestedMinimumWidth(), i10);
        int i12 = this.card1.getLayoutParams().width;
        int i13 = this.card1.getLayoutParams().height;
        this.card1.measure(View.MeasureSpec.makeMeasureSpec(i12, 1073741824), View.MeasureSpec.makeMeasureSpec(i13, 1073741824));
        if (this.card2.getVisibility() == 0) {
            this.card2.measure(View.MeasureSpec.makeMeasureSpec(i12, 1073741824), View.MeasureSpec.makeMeasureSpec(i13, 1073741824));
            setMeasuredDimension(defaultSize, i13 + ((int) (this.card2.getPaddingLeft() * 1.0f)));
        } else {
            setMeasuredDimension(defaultSize, i13);
        }
    }
}
