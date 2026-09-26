package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.narvii.lib.R;
import com.narvii.util.FontAwesomeDrawable;

/* JADX INFO: loaded from: classes9.dex */
public class FontAwesomeView extends AppCompatTextView {
    private static int MIN_SIZE;
    private MyDrawable d;

    private class MyDrawable extends FontAwesomeDrawable {
        @Override // android.graphics.drawable.Drawable
        public void invalidateSelf() {
        }

        public MyDrawable(Context context) {
            super(context);
        }
    }

    public FontAwesomeView(Context context) {
        this(context, null, 0);
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
    }

    public FontAwesomeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        this.d.setKeyString(getText().toString());
        this.d.setColor(getCurrentTextColor());
        this.d.setBounds(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
        this.d.setShadow(getShadowRadius(), getShadowDx(), getShadowDy(), getShadowColor());
        this.d.draw(canvas);
    }

    public FontAwesomeView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.d = new MyDrawable(context);
        if (MIN_SIZE == 0) {
            MIN_SIZE = context.getResources().getDimensionPixelSize(R.dimen.fontawesome_min_size);
        }
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), MIN_SIZE);
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), MIN_SIZE);
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    protected void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
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

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        super.onTextChanged(charSequence, i10, i11, i12);
        invalidate();
    }
}
