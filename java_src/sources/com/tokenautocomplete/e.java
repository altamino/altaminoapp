package com.tokenautocomplete;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes7.dex */
public class e extends ReplacementSpan {
    private int maxWidth;
    protected View view;

    private void a() {
        this.view.measure(View.MeasureSpec.makeMeasureSpec(this.maxWidth, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(0, 0));
        View view = this.view;
        view.layout(0, 0, view.getMeasuredWidth(), this.view.getMeasuredHeight());
    }

    public e(View view, int i10) {
        this.maxWidth = i10;
        this.view = view;
        view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i10, int i11, float f, int i12, int i13, int i14, Paint paint) {
        a();
        canvas.save();
        canvas.translate(f, (i14 - this.view.getBottom()) - (((i14 - i12) - this.view.getBottom()) / 2));
        this.view.draw(canvas);
        canvas.restore();
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i10, int i11, Paint.FontMetricsInt fontMetricsInt) {
        a();
        if (fontMetricsInt != null) {
            int measuredHeight = this.view.getMeasuredHeight();
            int i12 = fontMetricsInt.descent;
            int i13 = fontMetricsInt.ascent;
            int i14 = measuredHeight - (i12 - i13);
            if (i14 > 0) {
                int i15 = i14 / 2;
                int i16 = i14 - i15;
                fontMetricsInt.descent = i12 + i16;
                fontMetricsInt.ascent = i13 - i15;
                fontMetricsInt.bottom += i16;
                fontMetricsInt.top -= i15;
            }
        }
        return this.view.getRight();
    }
}
