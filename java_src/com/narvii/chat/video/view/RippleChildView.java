package com.narvii.chat.video.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.View;
import com.narvii.amino.mastes.R;

/* loaded from: classes2.dex */
public class RippleChildView extends View {
    private static final int DISABLE_COLOR = -7170921;
    private final int ENABLE_COLOR;
    private Paint paint;

    public RippleChildView(Context context) {
        this(context, null);
    }

    public RippleChildView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.paint = new Paint();
        this.ENABLE_COLOR = ContextCompat.getColor(context, R.color.chat_theme_color);
        initPaint();
    }

    private void initPaint() {
        this.paint = new Paint();
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(this.ENABLE_COLOR);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.paint.setColor(z ? this.ENABLE_COLOR : DISABLE_COLOR);
        postInvalidate();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        int i = measuredWidth / 2;
        canvas.save();
        int i2 = measuredHeight - (i / 2);
        canvas.clipRect(0, 0, measuredWidth, i2);
        float f = i;
        float f2 = i2;
        canvas.drawCircle(f, f2, f, this.paint);
        canvas.restore();
        canvas.drawRect(0.0f, f2, measuredWidth, measuredHeight, this.paint);
    }
}
