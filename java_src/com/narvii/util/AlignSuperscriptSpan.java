package com.narvii.util;

import android.text.TextPaint;
import android.text.style.SuperscriptSpan;

/* loaded from: classes3.dex */
public class AlignSuperscriptSpan extends SuperscriptSpan {
    protected float fontScale;
    protected float shiftPercentage;

    public AlignSuperscriptSpan() {
        this.fontScale = 2.0f;
        this.shiftPercentage = 0.0f;
    }

    public AlignSuperscriptSpan(float f, float f2) {
        this.fontScale = 2.0f;
        this.shiftPercentage = 0.0f;
        this.fontScale = f2;
        double d = f;
        if (d <= 0.0d || d >= 1.0d) {
            return;
        }
        this.shiftPercentage = f;
    }

    @Override // android.text.style.SuperscriptSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        float fAscent = textPaint.ascent();
        textPaint.setTextSize(textPaint.getTextSize() * this.fontScale);
        float f = textPaint.getFontMetrics().ascent;
        float f2 = textPaint.baselineShift;
        float f3 = this.shiftPercentage;
        textPaint.baselineShift = (int) (f2 + ((fAscent - (fAscent * f3)) - (f - (f3 * f))));
    }

    @Override // android.text.style.SuperscriptSpan, android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint textPaint) {
        updateDrawState(textPaint);
    }
}
