package com.narvii.list;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.narvii.widget.OnSizeChangedListener;

/* loaded from: classes3.dex */
public class ListHoverFrame extends LinearLayout {
    private View alignView;
    OnSizeChangedListener onSizeChangedListener;

    public void setOnSizeChangedListener(OnSizeChangedListener onSizeChangedListener) {
        this.onSizeChangedListener = onSizeChangedListener;
    }

    public ListHoverFrame(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            ViewGroup.LayoutParams layoutParams = getChildAt(i3).getLayoutParams();
            if (layoutParams.height == -1) {
                layoutParams.height = -2;
            }
        }
        super.onMeasure(i, i2);
    }

    public void setAlignView(View view) {
        this.alignView = view;
        if (getChildCount() > 0) {
            invalidate();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        canvas.save();
        if (this.alignView != null && getChildCount() > 0) {
            if (getChildAt(0).getHeight() > this.alignView.getTop()) {
                canvas.translate(0.0f, this.alignView.getTop() - r0.getHeight());
            }
        }
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.alignView == null || getChildCount() <= 0 || motionEvent.getY() <= this.alignView.getTop()) {
            return super.dispatchTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        OnSizeChangedListener onSizeChangedListener = this.onSizeChangedListener;
        if (onSizeChangedListener != null) {
            onSizeChangedListener.onSizeChanged(i, i2);
        }
    }
}
