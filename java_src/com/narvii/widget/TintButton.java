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
import android.widget.ImageView;
import com.narvii.lib.R;
import com.narvii.util.Log;

/* loaded from: classes3.dex */
public class TintButton extends ImageView {
    private static final int[] iarr = new int[10];
    ColorFilter colorFilter;
    ColorStateList colorList;
    int tintColor;

    public TintButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TintButton);
        this.colorList = typedArrayObtainStyledAttributes.getColorStateList(R.styleable.TintButton_tintColor);
        typedArrayObtainStyledAttributes.recycle();
        updateState();
    }

    public void setTintColor(ColorStateList colorStateList) {
        this.colorList = colorStateList;
        updateState();
    }

    public void setTintColor(int i) {
        this.tintColor = i;
        setTintColor(new ColorStateList(new int[][]{new int[0]}, new int[]{i}));
    }

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

    public void setTintColorStateList(int i) {
        setTintColor(getResources().getColorStateList(i));
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        super.setPressed(z);
        updateState();
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        updateState();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        updateState();
    }

    private void updateState() {
        ColorStateList colorStateList;
        int defaultColor;
        int i;
        if (getDrawable() == null || (colorStateList = this.colorList) == null) {
            return;
        }
        if (colorStateList.isStateful()) {
            if (isPressed()) {
                iarr[0] = 16842919;
                i = 1;
            } else {
                i = 0;
            }
            if (isFocused()) {
                iarr[i] = 16842908;
                i++;
            }
            if (isEnabled()) {
                iarr[i] = 16842910;
                i++;
            }
            int[] iArr = new int[i];
            System.arraycopy(iarr, 0, iArr, 0, i);
            defaultColor = this.colorList.getColorForState(iArr, -7829368);
        } else {
            defaultColor = this.colorList.getDefaultColor();
            if (isPressed() || isFocused()) {
                float[] fArr = new float[3];
                Color.colorToHSV(defaultColor, fArr);
                if (fArr[2] < 0.7f) {
                    fArr[2] = (fArr[2] + 0.1f) * 1.2f;
                } else {
                    fArr[2] = fArr[2] * 0.85f;
                }
                defaultColor = Color.HSVToColor(fArr);
            }
        }
        this.colorFilter = tintColorFilter(defaultColor);
        invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        ColorFilter colorFilter;
        Drawable drawable = getDrawable();
        Paint paint = null;
        if (this.colorFilter != null && (drawable instanceof BitmapDrawable)) {
            paint = ((BitmapDrawable) drawable).getPaint();
            colorFilter = paint.getColorFilter();
            paint.setColorFilter(this.colorFilter);
        } else {
            if (this.colorFilter != null && drawable != null) {
                Log.e("TintButton only support BitmapDrawable now");
                this.colorFilter = null;
            }
            colorFilter = null;
        }
        super.onDraw(canvas);
        if (paint != null) {
            paint.setColorFilter(colorFilter);
        }
    }

    public static ColorFilter tintColorFilter(int i) {
        return new ColorMatrixColorFilter(new float[]{0.0f, 0.0f, 0.0f, 0.0f, Color.red(i), 0.0f, 0.0f, 0.0f, 0.0f, Color.green(i), 0.0f, 0.0f, 0.0f, 0.0f, Color.blue(i), 0.0f, 0.0f, 0.0f, Color.alpha(i) / 255.0f, 0.0f});
    }
}
