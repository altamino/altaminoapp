package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.narvii.lib.R;
import com.narvii.util.FontAwesomeDrawable;

/* loaded from: classes3.dex */
public class FontAwesomeView extends TextView {
    private static int MIN_SIZE;
    private MyDrawable d;

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    public FontAwesomeView(Context context) {
        this(context, null, 0);
    }

    public FontAwesomeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FontAwesomeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = new MyDrawable(context);
        if (MIN_SIZE == 0) {
            MIN_SIZE = context.getResources().getDimensionPixelSize(R.dimen.fontawesome_min_size);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode != 1073741824) {
            if (mode == Integer.MIN_VALUE) {
                size = Math.min(size, getSuggestedMinimumWidth());
            } else {
                size = getSuggestedMinimumWidth();
            }
        }
        if (mode2 != 1073741824) {
            if (mode2 == Integer.MIN_VALUE) {
                size2 = Math.min(size2, getSuggestedMinimumHeight());
            } else {
                size2 = getSuggestedMinimumHeight();
            }
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), MIN_SIZE);
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), MIN_SIZE);
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        invalidate();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        this.d.setKeyString(getText().toString());
        this.d.setColor(getCurrentTextColor());
        this.d.setBounds(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
        if (Build.VERSION.SDK_INT >= 16) {
            this.d.setShadow(getShadowRadius(), getShadowDx(), getShadowDy(), getShadowColor());
        }
        this.d.draw(canvas);
    }

    private class MyDrawable extends FontAwesomeDrawable {
        @Override // android.graphics.drawable.Drawable
        public void invalidateSelf() {
        }

        public MyDrawable(Context context) {
            super(context);
        }
    }
}
