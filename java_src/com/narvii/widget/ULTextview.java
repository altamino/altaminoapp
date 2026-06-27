package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.TextView;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class ULTextview extends TextView {
    Paint paint;

    public ULTextview(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.paint = new Paint();
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (getLineCount() == 0 || getLayout() == null) {
            return;
        }
        float lineBaseline = getLayout().getLineBaseline(0);
        float fAscent = getPaint().ascent() + lineBaseline;
        float fDescent = lineBaseline + getPaint().descent();
        float f = (fDescent - fAscent) / 3.0f;
        float f2 = ((fAscent + fDescent) / 2.0f) - (f / 2.0f);
        int color = getPaint().getColor();
        this.paint.setColor(Color.argb(Color.alpha(color) / 2, Color.red(color), Color.green(color), Color.blue(color)));
        if (Utils.isRtl()) {
            canvas.drawOval(new RectF(getWidth() - f, f2, getWidth(), f + f2), this.paint);
        } else {
            canvas.drawOval(new RectF(0.0f, f2, f, f2 + f), this.paint);
        }
    }
}
