package com.narvii.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class TooltipFrameLayout extends FrameLayout {
    Runnable runnable;
    View toolTip;

    public TooltipFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.runnable = new Runnable() { // from class: com.narvii.widget.TooltipFrameLayout.1
            @Override // java.lang.Runnable
            public void run() {
                TooltipFrameLayout.this.setPadding(0, 0, 0, 0);
            }
        };
        setOnTouchListener(new TouchListener());
        setClipChildren(false);
        setClipToPadding(false);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.toolTip = findViewWithTag("tooltip");
        View view = this.toolTip;
        if (view != null && view.getVisibility() == 0) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.toolTip.getLayoutParams();
            if (layoutParams.topMargin < 0) {
                if (getPaddingTop() != Math.abs(layoutParams.topMargin)) {
                    setPadding(0, Math.abs(layoutParams.topMargin), 0, 0);
                    super.onMeasure(i, i2);
                    return;
                }
                return;
            }
        }
        if (getPaddingTop() != 0) {
            Utils.handler.removeCallbacks(this.runnable);
            Utils.handler.postDelayed(this.runnable, 200L);
        }
    }

    private class TouchListener implements View.OnTouchListener {
        private TouchListener() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            View view2 = TooltipFrameLayout.this.toolTip;
            if (view2 == null || view2.getVisibility() != 0) {
                return false;
            }
            Rect rect = new Rect();
            TooltipFrameLayout.this.toolTip.getHitRect(rect);
            if (rect.top < 0) {
                rect.top = TooltipFrameLayout.this.getPaddingTop() + rect.top;
                rect.bottom = TooltipFrameLayout.this.getPaddingTop() + rect.bottom;
            }
            if (rect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return TooltipFrameLayout.this.toolTip.onTouchEvent(motionEvent);
            }
            return false;
        }
    }
}
