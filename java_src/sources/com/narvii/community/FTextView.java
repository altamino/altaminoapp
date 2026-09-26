package com.narvii.community;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.text.Layout;
import android.util.AttributeSet;
import android.widget.TextView;
import java.util.Random;

/* JADX INFO: loaded from: classes7.dex */
public class FTextView extends TextView {
    int hash;
    int markColor;
    final Paint paint;
    final Path path;
    final Random random;

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.markColor != 0) {
            int lineCount = getLineCount();
            this.paint.setColor(this.markColor);
            this.paint.setTypeface(getTypeface());
            this.paint.setTextSize(getTextSize());
            float fAscent = this.paint.ascent();
            float fDescent = this.paint.descent();
            float f = (fDescent - fAscent) * 0.2f;
            this.random.setSeed(this.hash);
            boolean zNextBoolean = false;
            for (int i10 = 0; i10 < lineCount; i10++) {
                Layout layout = getLayout();
                float lineLeft = layout.getLineLeft(i10) - f;
                float lineRight = layout.getLineRight(i10) + f;
                float lineBaseline = layout.getLineBaseline(i10);
                float f6 = lineBaseline + fAscent;
                float f7 = lineBaseline + fDescent;
                this.path.reset();
                zNextBoolean = i10 == 0 ? this.random.nextBoolean() : !zNextBoolean;
                float f10 = zNextBoolean ? f / 2.0f : (-f) / 2.0f;
                this.path.moveTo(lineLeft + f10, f6);
                this.path.lineTo(lineLeft - f10, f7);
                float f11 = this.random.nextBoolean() ? f / 2.0f : (-f) / 2.0f;
                this.path.lineTo(lineRight + f11, f7);
                this.path.lineTo(lineRight - f11, f6);
                this.path.close();
                canvas.drawPath(this.path, this.paint);
            }
        }
        super.onDraw(canvas);
    }

    public void setMarkColor(int i10) {
        this.markColor = i10;
        invalidate();
    }

    public FTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.path = new Path();
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        this.random = new Random();
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        int iHashCode;
        super.setText(charSequence, bufferType);
        if (charSequence == null) {
            iHashCode = 0;
        } else {
            iHashCode = charSequence.hashCode();
        }
        this.hash = iHashCode;
    }
}
