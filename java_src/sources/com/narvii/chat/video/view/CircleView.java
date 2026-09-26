package com.narvii.chat.video.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes.dex */
public class CircleView extends View {
    int color;
    private Paint paint;

    public CircleView(Context context) {
        this(context, null);
    }

    public CircleView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.paint = new Paint();
        this.color = ContextCompat.getColor(context, R.color.chat_theme_color);
        initPaint();
    }

    private void initPaint() {
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(this.color);
    }

    public void setColor(int i10) {
        this.color = i10;
        Paint paint = this.paint;
        if (paint != null) {
            paint.setColor(i10);
        }
        invalidate();
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

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
    }
}
