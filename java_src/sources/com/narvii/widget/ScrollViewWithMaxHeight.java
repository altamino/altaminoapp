package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ScrollView;
import com.narvii.lib.R;
import com.narvii.util.VerticalDisallowInterceptDelegate;

/* JADX INFO: loaded from: classes5.dex */
public class ScrollViewWithMaxHeight extends ScrollView {
    private boolean interceptParent;
    protected int maxHeight;
    private VerticalDisallowInterceptDelegate verticalDisallowInterceptDelegate;

    public ScrollViewWithMaxHeight(Context context) {
        super(context);
        this.maxHeight = -1;
    }

    public void setInterceptParent(boolean z6) {
        this.interceptParent = z6;
    }

    public ScrollViewWithMaxHeight(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.maxHeight = -1;
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.ScrollViewWithMaxHeight, 0, 0);
        float dimension = typedArrayObtainStyledAttributes.getDimension(R.styleable.ScrollViewWithMaxHeight_maxHeight, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        this.maxHeight = (int) dimension;
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

    public void setMaxHeight(int i10) {
        if (this.maxHeight == i10) {
            return;
        }
        this.maxHeight = i10;
        requestLayout();
    }

    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int size = View.MeasureSpec.getSize(i11);
        int i12 = this.maxHeight;
        if (size > i12) {
            i11 = View.MeasureSpec.makeMeasureSpec(i12, Integer.MIN_VALUE);
        }
        super.onMeasure(i10, i11);
    }
}
