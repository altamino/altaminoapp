package com.narvii.community;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.text.Layout;
import android.util.AttributeSet;
import android.widget.TextView;
import java.util.Random;

/* loaded from: classes2.dex */
public class FTextView extends TextView {
    int hash;
    int markColor;
    final Paint paint;
    final Path path;
    final Random random;

    public FTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.path = new Path();
        this.paint = new Paint();
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
        this.random = new Random();
    }

    public void setMarkColor(int i) {
        this.markColor = i;
        invalidate();
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(charSequence, bufferType);
        this.hash = charSequence == null ? 0 : charSequence.hashCode();
    }

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
            for (int i = 0; i < lineCount; i++) {
                Layout layout = getLayout();
                float lineLeft = layout.getLineLeft(i) - f;
                float lineRight = layout.getLineRight(i) + f;
                float lineBaseline = layout.getLineBaseline(i);
                float f2 = lineBaseline + fAscent;
                float f3 = lineBaseline + fDescent;
                this.path.reset();
                if (i == 0) {
                    zNextBoolean = this.random.nextBoolean();
                } else {
                    zNextBoolean = !zNextBoolean;
                }
                float f4 = zNextBoolean ? f / 2.0f : (-f) / 2.0f;
                this.path.moveTo(lineLeft + f4, f2);
                this.path.lineTo(lineLeft - f4, f3);
                float f5 = this.random.nextBoolean() ? f / 2.0f : (-f) / 2.0f;
                this.path.lineTo(lineRight + f5, f3);
                this.path.lineTo(lineRight - f5, f2);
                this.path.close();
                canvas.drawPath(this.path, this.paint);
            }
        }
        super.onDraw(canvas);
    }
}
