package com.narvii.util;

import android.text.TextPaint;
import android.text.style.SuperscriptSpan;
import com.google.firebase.remoteconfig.a;

/* JADX INFO: loaded from: classes8.dex */
public class AlignSuperscriptSpan extends SuperscriptSpan {
    protected float fontScale;
    protected float shiftPercentage;

    public AlignSuperscriptSpan() {
        this.fontScale = 2.0f;
        this.shiftPercentage = 0.0f;
    }

    public AlignSuperscriptSpan(float f, float f6) {
        this.shiftPercentage = 0.0f;
        this.fontScale = f6;
        double d = f;
        if (d <= a.DEFAULT_VALUE_FOR_DOUBLE || d >= 1.0d) {
            return;
        }
        this.shiftPercentage = f;
    }

    @Override // android.text.style.SuperscriptSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        float fAscent = textPaint.ascent();
        textPaint.setTextSize(textPaint.getTextSize() * this.fontScale);
        float f = textPaint.getFontMetrics().ascent;
        float f6 = textPaint.baselineShift;
        float f7 = this.shiftPercentage;
        textPaint.baselineShift = (int) (f6 + ((fAscent - (fAscent * f7)) - (f - (f7 * f))));
    }

    @Override // android.text.style.SuperscriptSpan, android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint textPaint) {
        updateDrawState(textPaint);
    }
}
