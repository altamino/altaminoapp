package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes9.dex */
public class FullHitFrameLayout extends FrameLayout {
    private View target;

    public FullHitFrameLayout(Context context) {
        super(context);
    }

    public FullHitFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public FullHitFrameLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0083  */
    /* JADX WARN: Code duplicated, block: B:34:0x008b  */
    /* JADX WARN: Code duplicated, block: B:36:0x0096  */
    /* JADX WARN: Code duplicated, block: B:56:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:58:0x0101  */
    /* JADX WARN: Code duplicated, block: B:60:0x010c  */
    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        View childAt;
        int right;
        int bottom;
        int right2;
        int bottom2;
        int action = motionEvent.getAction();
        if (action != 0) {
            if ((action == 1 || action == 2 || action == 3) && this.target != null && motionEvent.getX() >= 0.0f && motionEvent.getX() <= getWidth() && motionEvent.getY() >= 0.0f && motionEvent.getY() <= getHeight()) {
                MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                float x6 = motionEvent.getX();
                float y6 = motionEvent.getY();
                if (x6 < this.target.getLeft()) {
                    right2 = this.target.getLeft();
                } else {
                    if (x6 >= this.target.getRight()) {
                        right2 = this.target.getRight() - 1;
                    }
                    if (y6 < this.target.getTop()) {
                        bottom2 = this.target.getTop();
                    } else {
                        if (y6 >= this.target.getBottom()) {
                            bottom2 = this.target.getBottom() - 1;
                        }
                        motionEventObtain.setLocation(x6, y6);
                        return super.dispatchTouchEvent(motionEventObtain);
                    }
                    y6 = bottom2;
                    motionEventObtain.setLocation(x6, y6);
                    return super.dispatchTouchEvent(motionEventObtain);
                }
                x6 = right2;
                if (y6 < this.target.getTop()) {
                    bottom2 = this.target.getTop();
                } else {
                    if (y6 >= this.target.getBottom()) {
                        bottom2 = this.target.getBottom() - 1;
                    }
                    motionEventObtain.setLocation(x6, y6);
                    return super.dispatchTouchEvent(motionEventObtain);
                }
                y6 = bottom2;
                motionEventObtain.setLocation(x6, y6);
                return super.dispatchTouchEvent(motionEventObtain);
            }
        } else {
            if (getChildCount() > 0) {
                childAt = getChildAt(0);
            } else {
                childAt = null;
            }
            this.target = childAt;
            if (childAt != null) {
                MotionEvent motionEventObtain2 = MotionEvent.obtain(motionEvent);
                float x10 = motionEvent.getX();
                float y10 = motionEvent.getY();
                if (x10 < this.target.getLeft()) {
                    right = this.target.getLeft();
                } else {
                    if (x10 >= this.target.getRight()) {
                        right = this.target.getRight() - 1;
                    }
                    if (y10 < this.target.getTop()) {
                        bottom = this.target.getTop();
                    } else {
                        if (y10 >= this.target.getBottom()) {
                            bottom = this.target.getBottom() - 1;
                        }
                        motionEventObtain2.setLocation(x10, y10);
                        return super.dispatchTouchEvent(motionEventObtain2);
                    }
                    y10 = bottom;
                    motionEventObtain2.setLocation(x10, y10);
                    return super.dispatchTouchEvent(motionEventObtain2);
                }
                x10 = right;
                if (y10 < this.target.getTop()) {
                    bottom = this.target.getTop();
                } else {
                    if (y10 >= this.target.getBottom()) {
                        bottom = this.target.getBottom() - 1;
                    }
                    motionEventObtain2.setLocation(x10, y10);
                    return super.dispatchTouchEvent(motionEventObtain2);
                }
                y10 = bottom;
                motionEventObtain2.setLocation(x10, y10);
                return super.dispatchTouchEvent(motionEventObtain2);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }
}
