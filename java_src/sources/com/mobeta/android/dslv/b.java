package com.mobeta.android.dslv;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import com.safedk.android.analytics.brandsafety.DetectTouchUtils;

/* JADX INFO: loaded from: classes11.dex */
public class b extends ViewGroup {
    private int mGravity;

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent me) {
        DetectTouchUtils.viewOnTouch("com.mobeta.android.dslv", this, me);
        return super.dispatchTouchEvent(me);
    }

    public int getGravity() {
        return this.mGravity;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        View childAt = getChildAt(0);
        if (childAt == null) {
            return;
        }
        if (this.mGravity == 48) {
            childAt.layout(0, 0, getMeasuredWidth(), childAt.getMeasuredHeight());
        } else {
            childAt.layout(0, getMeasuredHeight() - childAt.getMeasuredHeight(), getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setGravity(int i10) {
        this.mGravity = i10;
    }

    public b(Context context) {
        super(context);
        this.mGravity = 48;
        setLayoutParams(new AbsListView.LayoutParams(-1, -2));
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        int size = View.MeasureSpec.getSize(i11);
        int size2 = View.MeasureSpec.getSize(i10);
        int mode = View.MeasureSpec.getMode(i11);
        View childAt = getChildAt(0);
        if (childAt == null) {
            setMeasuredDimension(0, size2);
            return;
        }
        if (childAt.isLayoutRequested()) {
            measureChild(childAt, i10, View.MeasureSpec.makeMeasureSpec(0, 0));
        }
        if (mode == 0 && (size = getLayoutParams().height) <= 0) {
            size = childAt.getMeasuredHeight();
        }
        setMeasuredDimension(size2, size);
    }
}
