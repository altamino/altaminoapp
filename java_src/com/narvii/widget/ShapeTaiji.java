package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import com.narvii.amino.mastes.R;

/* loaded from: classes3.dex */
public class ShapeTaiji extends View {
    Paint paint;
    Path path;
    int pathHash;

    public ShapeTaiji(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.paint = new Paint();
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(getResources().getColor(R.color.category_tag_bg));
        this.path = new Path();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
        if (((width << 16) | height) != this.pathHash) {
            float f = height;
            this.path.moveTo(0.0f, f);
            float f2 = width;
            this.path.cubicTo(f2 * 0.75f, f, f2 * 0.25f, 0.0f, f2, 0.0f);
            this.path.lineTo(0.0f, 0.0f);
            this.path.close();
        }
        canvas.drawPath(this.path, this.paint);
    }
}
