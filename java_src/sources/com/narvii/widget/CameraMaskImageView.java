package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.narvii.lib.R;
import com.narvii.util.Log;

/* JADX INFO: loaded from: classes11.dex */
public class CameraMaskImageView extends ImageView {
    int maskColor;
    Paint paint;

    public CameraMaskImageView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CameraMaskImageView);
        this.maskColor = typedArrayObtainStyledAttributes.getColor(R.styleable.CameraMaskImageView_maskColor, 721420288);
        Paint paint = new Paint(1);
        this.paint = paint;
        paint.setColor(this.maskColor);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        try {
            Drawable drawable = getDrawable();
            if (drawable != null && getImageMatrix() != null) {
                RectF rectF = new RectF();
                getImageMatrix().mapRect(rectF, new RectF(drawable.copyBounds()));
                int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                float paddingLeft = getPaddingLeft() + ((width - rectF.width()) / 2.0f);
                canvas.drawRect(new RectF(paddingLeft, 0.0f, rectF.width() + paddingLeft, getPaddingTop() + ((height - rectF.height()) / 2.0f)), this.paint);
            }
        } catch (Exception e) {
            Log.e("mask", e);
        }
    }
}
