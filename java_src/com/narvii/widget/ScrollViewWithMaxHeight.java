package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ScrollView;
import com.narvii.lib.R;
import com.narvii.util.VerticalDisallowInterceptDelegate;

/* loaded from: classes3.dex */
public class ScrollViewWithMaxHeight extends ScrollView {
    private boolean interceptParent;
    protected int maxHeight;
    private VerticalDisallowInterceptDelegate verticalDisallowInterceptDelegate;

    public ScrollViewWithMaxHeight(Context context) {
        super(context);
        this.maxHeight = -1;
    }

    public ScrollViewWithMaxHeight(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.maxHeight = -1;
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.ScrollViewWithMaxHeight, 0, 0);
        float dimension = typedArrayObtainStyledAttributes.getDimension(R.styleable.ScrollViewWithMaxHeight_maxHeight, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        this.maxHeight = (int) dimension;
    }

    public void setMaxHeight(int i) {
        if (this.maxHeight == i) {
            return;
        }
        this.maxHeight = i;
        requestLayout();
    }

    public void setInterceptParent(boolean z) {
        this.interceptParent = z;
    }

    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i2);
        int i3 = this.maxHeight;
        if (size > i3) {
            i2 = View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.interceptParent) {
            if (this.verticalDisallowInterceptDelegate == null) {
                this.verticalDisallowInterceptDelegate = new VerticalDisallowInterceptDelegate(this);
            }
            this.verticalDisallowInterceptDelegate.dispatchTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }
}
