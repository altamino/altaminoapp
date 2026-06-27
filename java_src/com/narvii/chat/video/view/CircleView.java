package com.narvii.chat.video.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.View;
import com.narvii.amino.mastes.R;

/* loaded from: classes2.dex */
public class CircleView extends View {
    int color;
    private Paint paint;

    public CircleView(Context context) {
        this(context, null);
    }

    public CircleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.paint = new Paint();
        this.color = ContextCompat.getColor(context, R.color.chat_theme_color);
        initPaint();
    }

    public void setColor(int i) {
        this.color = i;
        Paint paint = this.paint;
        if (paint != null) {
            paint.setColor(i);
        }
        invalidate();
    }

    private void initPaint() {
        this.paint = new Paint();
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(this.color);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth();
        int height = getHeight();
        canvas.save();
        float f = width / 2;
        canvas.drawCircle(f, height / 2, f, this.paint);
        canvas.restore();
    }
}
