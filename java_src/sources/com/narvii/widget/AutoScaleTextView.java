package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes8.dex */
public class AutoScaleTextView extends TextView {
    private int defaultAtHeight;
    private int defaultAtWidth;
    private int defaultSize;
    private boolean excludePadding;
    private int maxSize;
    private int minSize;
    private int size;

    /* JADX WARN: Code duplicated, block: B:18:0x0050  */
    private void setSize(int i10, int i11) {
        int iRound;
        if (this.defaultAtWidth > 0) {
            if (i10 <= 0 || i10 >= 65535) {
                iRound = 0;
            } else {
                if (this.excludePadding) {
                    i10 = (i10 - getPaddingLeft()) - getPaddingRight();
                }
                iRound = Math.round(((this.defaultSize * 1.0f) * i10) / this.defaultAtWidth);
            }
        } else if (this.defaultAtHeight <= 0 || i11 <= 0 || i11 >= 65535) {
            iRound = 0;
        } else {
            if (this.excludePadding) {
                i11 = (i11 - getPaddingTop()) - getPaddingBottom();
            }
            iRound = Math.round(((this.defaultSize * 1.0f) * i11) / this.defaultAtHeight);
        }
        if (iRound > 0) {
            int i12 = this.minSize;
            if (iRound < i12) {
                iRound = i12;
            }
            int i13 = this.maxSize;
            if (iRound > i13) {
                iRound = i13;
            }
            if (iRound != this.size) {
                setTextSize(0, iRound);
                this.size = iRound;
            }
        }
    }

    public AutoScaleTextView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AutoScaleTextView);
        int iRound = Math.round(getTextSize());
        this.defaultSize = iRound;
        this.size = iRound;
        this.defaultAtWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.AutoScaleTextView_defaultAtWidth, 0);
        this.defaultAtHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.AutoScaleTextView_defaultAtHeight, 0);
        this.maxSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.AutoScaleTextView_maxScaleTextSize, this.defaultSize);
        this.minSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.AutoScaleTextView_minScaleTextSize, this.defaultSize);
        this.excludePadding = typedArrayObtainStyledAttributes.getBoolean(R.styleable.AutoScaleTextView_excludePadding, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        setSize(getWidth(), getHeight());
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i10, int i11) {
        int size;
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size2 = 0;
        if (mode != Integer.MIN_VALUE && mode != 1073741824) {
            size = 0;
        } else {
            size = View.MeasureSpec.getSize(i10);
        }
        if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
            size2 = View.MeasureSpec.getSize(i11);
        }
        setSize(size, size2);
        super.onMeasure(i10, i11);
    }
}
