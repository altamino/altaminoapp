package com.narvii.chat.video.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes9.dex */
public class RippleChildView extends View {
    private static final int DISABLE_COLOR = -7170921;
    private final int ENABLE_COLOR;
    private Paint paint;

    public RippleChildView(Context context) {
        this(context, null);
    }

    public RippleChildView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.paint = new Paint();
        this.ENABLE_COLOR = ContextCompat.getColor(context, R.color.chat_theme_color);
        initPaint();
    }

    private void initPaint() {
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(this.ENABLE_COLOR);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        int i10 = measuredWidth / 2;
        canvas.save();
        int i11 = measuredHeight - (i10 / 2);
        canvas.clipRect(0, 0, measuredWidth, i11);
        float f = i10;
        float f6 = i11;
        canvas.drawCircle(f, f6, f, this.paint);
        canvas.restore();
        canvas.drawRect(0.0f, f6, measuredWidth, measuredHeight, this.paint);
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
    }

    @Override // android.view.View
    public void setEnabled(boolean z6) {
        int i10;
        super.setEnabled(z6);
        Paint paint = this.paint;
        if (z6) {
            i10 = this.ENABLE_COLOR;
        } else {
            i10 = DISABLE_COLOR;
        }
        paint.setColor(i10);
        postInvalidate();
    }
}
