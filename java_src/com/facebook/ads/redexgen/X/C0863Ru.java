package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ru, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0863Ru extends ViewGroup {
    private static final int A01 = (int) (8.0f * OY.A01);
    private int A00;

    public C0863Ru(Context context) {
        super(context);
        setMotionEventSplittingEnabled(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        C0863Ru c0863Ru = this;
        View childAt = null;
        int measuredWidth = 0;
        int measuredHeight = 0;
        int width = i3 - i;
        int paddingLeft = c0863Ru.getPaddingLeft();
        int paddingTop = c0863Ru.getPaddingTop();
        int i5 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    c0863Ru = c0863Ru;
                    if (i5 >= c0863Ru.getChildCount()) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0863Ru = c0863Ru;
                    childAt = c0863Ru.getChildAt(i5);
                    measuredWidth = childAt.getMeasuredWidth();
                    measuredHeight = childAt.getMeasuredHeight();
                    if (paddingLeft + measuredWidth <= width) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0863Ru = c0863Ru;
                    paddingLeft = c0863Ru.getPaddingLeft();
                    paddingTop += c0863Ru.A00;
                    c = 5;
                    break;
                case 5:
                    childAt = childAt;
                    childAt.layout(paddingLeft, paddingTop, paddingLeft + measuredWidth, paddingTop + measuredHeight);
                    paddingLeft += A01 + measuredWidth;
                    i5++;
                    c = 2;
                    break;
                case 6:
                    return;
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        C0863Ru c0863Ru = this;
        int lines = 0;
        int i3 = 0;
        int measuredWidth = 0;
        int size = (View.MeasureSpec.getSize(i) - c0863Ru.getPaddingLeft()) - c0863Ru.getPaddingRight();
        int size2 = View.MeasureSpec.getSize(i2);
        int width = c0863Ru.getPaddingTop();
        int i4 = size2 - width;
        int width2 = c0863Ru.getPaddingBottom();
        int paddingLeft = c0863Ru.getPaddingLeft();
        int iMax = 0;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4 - width2, Integer.MIN_VALUE);
        int lineHeight = c0863Ru.getChildCount();
        int lineHeight2 = lineHeight > 0 ? 2 : 8;
        while (true) {
            switch (lineHeight2) {
                case 2:
                    i3 = 1;
                    lineHeight2 = 3;
                    break;
                case 3:
                    lines = 0;
                    lineHeight2 = 4;
                    break;
                case 4:
                    c0863Ru = c0863Ru;
                    int i5 = c0863Ru.getChildCount();
                    if (lines >= i5) {
                        lineHeight2 = 9;
                        break;
                    } else {
                        lineHeight2 = 5;
                        break;
                    }
                case 5:
                    c0863Ru = c0863Ru;
                    View childAt = c0863Ru.getChildAt(lines);
                    int i6 = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
                    childAt.measure(i6, iMakeMeasureSpec);
                    measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    int i7 = A01;
                    iMax = Math.max(iMax, measuredHeight + i7);
                    int i8 = paddingLeft + measuredWidth;
                    if (i8 <= size) {
                        lineHeight2 = 7;
                        break;
                    } else {
                        lineHeight2 = 6;
                        break;
                    }
                case 6:
                    c0863Ru = c0863Ru;
                    i3++;
                    paddingLeft = c0863Ru.getPaddingLeft();
                    lineHeight2 = 7;
                    break;
                case 7:
                    paddingLeft += A01 + measuredWidth;
                    lines++;
                    lineHeight2 = 4;
                    break;
                case 8:
                    i3 = 0;
                    lineHeight2 = 3;
                    break;
                case 9:
                    C0863Ru c0863Ru2 = c0863Ru;
                    c0863Ru2.A00 = iMax;
                    int i9 = c0863Ru2.A00 * i3;
                    int i10 = A01;
                    c0863Ru2.setMeasuredDimension(size, i9 + i10);
                    return;
            }
        }
    }
}
