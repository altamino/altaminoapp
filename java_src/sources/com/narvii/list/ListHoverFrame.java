package com.narvii.list;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.narvii.widget.OnSizeChangedListener;

/* JADX INFO: loaded from: classes9.dex */
public class ListHoverFrame extends LinearLayout {
    private View alignView;
    OnSizeChangedListener onSizeChangedListener;

    public void setOnSizeChangedListener(OnSizeChangedListener onSizeChangedListener) {
        this.onSizeChangedListener = onSizeChangedListener;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.alignView == null || getChildCount() <= 0 || motionEvent.getY() <= this.alignView.getTop()) {
            return super.dispatchTouchEvent(motionEvent);
        }
        return false;
    }

    public void setAlignView(View view) {
        this.alignView = view;
        if (getChildCount() > 0) {
            invalidate();
        }
    }

    public ListHoverFrame(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        canvas.save();
        if (this.alignView != null && getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (childAt.getHeight() > this.alignView.getTop()) {
                canvas.translate(0.0f, this.alignView.getTop() - childAt.getHeight());
            }
        }
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        int childCount = getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            ViewGroup.LayoutParams layoutParams = getChildAt(i12).getLayoutParams();
            if (layoutParams.height == -1) {
                layoutParams.height = -2;
            }
        }
        super.onMeasure(i10, i11);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        OnSizeChangedListener onSizeChangedListener = this.onSizeChangedListener;
        if (onSizeChangedListener != null) {
            onSizeChangedListener.onSizeChanged(i10, i11);
        }
    }
}
