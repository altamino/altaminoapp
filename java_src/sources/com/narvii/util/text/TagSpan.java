package com.narvii.util.text;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.style.ReplacementSpan;

/* JADX INFO: loaded from: classes9.dex */
public class TagSpan extends ReplacementSpan {
    final Paint p;
    final RectF rectf = new RectF();
    final CharSequence text;

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i10, int i11, float f, int i12, int i13, int i14, Paint paint) {
        int iDescent = (int) ((i12 + (((i14 - i12) - (paint.descent() - paint.ascent())) / 2.0f)) - paint.ascent());
        CharSequence charSequence2 = this.text;
        float fMeasureText = charSequence2 != null ? paint.measureText(charSequence2, 0, charSequence2.length()) : paint.measureText(charSequence, i10, i11);
        float fMeasureText2 = paint.measureText("x") * 0.5f;
        RectF rectF = this.rectf;
        rectF.left = f;
        rectF.right = fMeasureText + f + (2.0f * fMeasureText2);
        float f6 = iDescent;
        rectF.top = paint.ascent() + f6;
        this.rectf.bottom = paint.descent() + f6;
        canvas.drawRoundRect(this.rectf, fMeasureText2, fMeasureText2, this.p);
        paint.setColor(-1);
        CharSequence charSequence3 = this.text;
        if (charSequence3 != null) {
            canvas.drawText(charSequence3, 0, charSequence3.length(), f + fMeasureText2, f6, paint);
        } else {
            canvas.drawText(charSequence, i10, i11, fMeasureText2 + f, f6, paint);
        }
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i10, int i11, Paint.FontMetricsInt fontMetricsInt) {
        CharSequence charSequence2 = this.text;
        return (int) ((charSequence2 != null ? paint.measureText(charSequence2, 0, charSequence2.length()) : paint.measureText(charSequence, i10, i11)) + (paint.measureText("x") * 0.5f * 2.0f));
    }

    public TagSpan(int i10, CharSequence charSequence) {
        this.text = charSequence;
        Paint paint = new Paint();
        this.p = paint;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(i10);
    }
}
