package com.narvii.util.text;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.style.ReplacementSpan;

/* loaded from: classes3.dex */
public class TagSpan extends ReplacementSpan {
    final CharSequence text;
    final RectF rectf = new RectF();
    final Paint p = new Paint();

    public TagSpan(int i, CharSequence charSequence) {
        this.text = charSequence;
        this.p.setAntiAlias(true);
        this.p.setStyle(Paint.Style.FILL);
        this.p.setColor(i);
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        float fMeasureText;
        CharSequence charSequence2 = this.text;
        if (charSequence2 != null) {
            fMeasureText = paint.measureText(charSequence2, 0, charSequence2.length());
        } else {
            fMeasureText = paint.measureText(charSequence, i, i2);
        }
        return (int) (fMeasureText + (paint.measureText("x") * 0.5f * 2.0f));
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        float fMeasureText;
        int iDescent = (int) ((i3 + (((i5 - i3) - (paint.descent() - paint.ascent())) / 2.0f)) - paint.ascent());
        CharSequence charSequence2 = this.text;
        if (charSequence2 != null) {
            fMeasureText = paint.measureText(charSequence2, 0, charSequence2.length());
        } else {
            fMeasureText = paint.measureText(charSequence, i, i2);
        }
        float fMeasureText2 = paint.measureText("x") * 0.5f;
        RectF rectF = this.rectf;
        rectF.left = f;
        rectF.right = fMeasureText + f + (2.0f * fMeasureText2);
        float f2 = iDescent;
        rectF.top = paint.ascent() + f2;
        this.rectf.bottom = paint.descent() + f2;
        canvas.drawRoundRect(this.rectf, fMeasureText2, fMeasureText2, this.p);
        paint.setColor(-1);
        CharSequence charSequence3 = this.text;
        if (charSequence3 != null) {
            canvas.drawText(charSequence3, 0, charSequence3.length(), f + fMeasureText2, f2, paint);
        } else {
            canvas.drawText(charSequence, i, i2, fMeasureText2 + f, f2, paint);
        }
    }
}
