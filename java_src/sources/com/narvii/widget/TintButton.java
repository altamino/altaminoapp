package com.narvii.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import com.narvii.lib.R;
import com.narvii.util.Log;

/* JADX INFO: loaded from: classes11.dex */
public class TintButton extends AppCompatImageView {
    private static final int[] iarr = new int[10];
    ColorFilter colorFilter;
    ColorStateList colorList;
    int tintColor;

    public int getTintColor() {
        return this.tintColor;
    }

    public ColorStateList getTintColorStateList() {
        return this.colorList;
    }

    public void removeTintColor() {
        this.colorFilter = null;
        this.colorList = null;
        updateState();
        invalidate();
    }

    public void setTintColor(ColorStateList colorStateList) {
        this.colorList = colorStateList;
        updateState();
    }

    public void setTintColor(int i10) {
        this.tintColor = i10;
        setTintColor(new ColorStateList(new int[][]{new int[0]}, new int[]{i10}));
    }

    public TintButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TintButton);
        this.colorList = typedArrayObtainStyledAttributes.getColorStateList(R.styleable.TintButton_tintColor);
        typedArrayObtainStyledAttributes.recycle();
        updateState();
    }

    public static ColorFilter tintColorFilter(int i10) {
        return new ColorMatrixColorFilter(new float[]{0.0f, 0.0f, 0.0f, 0.0f, Color.red(i10), 0.0f, 0.0f, 0.0f, 0.0f, Color.green(i10), 0.0f, 0.0f, 0.0f, 0.0f, Color.blue(i10), 0.0f, 0.0f, 0.0f, Color.alpha(i10) / 255.0f, 0.0f});
    }

    private void updateState() {
        ColorStateList colorStateList;
        int defaultColor;
        int i10;
        if (getDrawable() != null && (colorStateList = this.colorList) != null) {
            if (colorStateList.isStateful()) {
                if (isPressed()) {
                    iarr[0] = 16842919;
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                if (isFocused()) {
                    iarr[i10] = 16842908;
                    i10++;
                }
                if (isEnabled()) {
                    iarr[i10] = 16842910;
                    i10++;
                }
                int[] iArr = new int[i10];
                System.arraycopy(iarr, 0, iArr, 0, i10);
                defaultColor = this.colorList.getColorForState(iArr, -7829368);
            } else {
                defaultColor = this.colorList.getDefaultColor();
                if (isPressed() || isFocused()) {
                    float[] fArr = new float[3];
                    Color.colorToHSV(defaultColor, fArr);
                    float f = fArr[2];
                    if (f < 0.7f) {
                        fArr[2] = (f + 0.1f) * 1.2f;
                    } else {
                        fArr[2] = f * 0.85f;
                    }
                    defaultColor = Color.HSVToColor(fArr);
                }
            }
            this.colorFilter = tintColorFilter(defaultColor);
            invalidate();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Paint paint;
        ColorFilter colorFilter;
        Drawable drawable = getDrawable();
        ColorFilter colorFilter2 = this.colorFilter;
        if (colorFilter2 != null && (drawable instanceof BitmapDrawable)) {
            paint = ((BitmapDrawable) drawable).getPaint();
            colorFilter = paint.getColorFilter();
            paint.setColorFilter(this.colorFilter);
        } else {
            if (colorFilter2 != null && drawable != null) {
                Log.e("TintButton only support BitmapDrawable now");
                this.colorFilter = null;
            }
            paint = null;
            colorFilter = null;
        }
        super.onDraw(canvas);
        if (paint != null) {
            paint.setColorFilter(colorFilter);
        }
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z6, int i10, Rect rect) {
        super.onFocusChanged(z6, i10, rect);
        updateState();
    }

    @Override // android.view.View
    public void setEnabled(boolean z6) {
        super.setEnabled(z6);
        updateState();
    }

    @Override // android.view.View
    public void setPressed(boolean z6) {
        super.setPressed(z6);
        updateState();
    }

    public void setTintColorStateList(int i10) {
        setTintColor(getResources().getColorStateList(i10));
    }
}
