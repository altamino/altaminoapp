package com.tokenautocomplete;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes3.dex */
public class ViewSpan extends ReplacementSpan {
    private int maxWidth;
    protected View view;

    public ViewSpan(View view, int i) {
        this.maxWidth = i;
        this.view = view;
        this.view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
    }

    private void prepView() {
        this.view.measure(View.MeasureSpec.makeMeasureSpec(this.maxWidth, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(0, 0));
        View view = this.view;
        view.layout(0, 0, view.getMeasuredWidth(), this.view.getMeasuredHeight());
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        prepView();
        canvas.save();
        canvas.translate(f, (i5 - this.view.getBottom()) - (((i5 - i3) - this.view.getBottom()) / 2));
        this.view.draw(canvas);
        canvas.restore();
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        prepView();
        if (fontMetricsInt != null) {
            int measuredHeight = this.view.getMeasuredHeight();
            int i3 = fontMetricsInt.descent;
            int i4 = fontMetricsInt.ascent;
            int i5 = measuredHeight - (i3 - i4);
            if (i5 > 0) {
                int i6 = i5 / 2;
                int i7 = i5 - i6;
                fontMetricsInt.descent = i3 + i7;
                fontMetricsInt.ascent = i4 - i6;
                fontMetricsInt.bottom += i7;
                fontMetricsInt.top -= i6;
            }
        }
        return this.view.getRight();
    }
}
