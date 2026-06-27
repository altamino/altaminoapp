package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewPropertyAnimator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;

/* loaded from: classes3.dex */
public class SwipeToDeleteLayout extends FrameLayout {
    boolean disallowIntercept;
    float downX;
    final int edgeSlop;
    boolean intercepted;
    boolean resetTranslation;
    boolean swipable;
    final int touchSlop;
    int translationX;

    public SwipeToDeleteLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.swipable = true;
        this.downX = Float.NaN;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.touchSlop = viewConfiguration.getScaledTouchSlop();
        this.edgeSlop = viewConfiguration.getScaledEdgeSlop() * 2;
    }

    public void setSwipeEnabled(boolean z) {
        this.swipable = z;
        if (z) {
            return;
        }
        setSwipeRight(false, true);
    }

    protected View getRightButton() {
        if (getChildCount() > 0) {
            return getChildAt(getChildCount() - 1);
        }
        return null;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        View rightButton = getRightButton();
        if (rightButton != null) {
            int i5 = i3 - i;
            rightButton.layout(i5, rightButton.getTop(), rightButton.getWidth() + i5, rightButton.getBottom());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0044  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r5) {
        /*
            r4 = this;
            boolean r0 = r4.swipable
            if (r0 != 0) goto L9
            boolean r5 = super.onInterceptTouchEvent(r5)
            return r5
        L9:
            int r0 = r5.getAction()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L50
            if (r0 == r2) goto L44
            r3 = 2
            if (r0 == r3) goto L1a
            r2 = 3
            if (r0 == r2) goto L44
            goto L7b
        L1a:
            boolean r0 = r4.disallowIntercept
            if (r0 != 0) goto L7b
            float r0 = r4.downX
            boolean r0 = java.lang.Float.isNaN(r0)
            if (r0 != 0) goto L7b
            float r0 = r5.getX()
            float r1 = r4.downX
            float r0 = r0 - r1
            float r0 = java.lang.Math.abs(r0)
            int r1 = r4.touchSlop
            float r1 = (float) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L7b
            float r5 = r5.getX()
            r4.downX = r5
            r4.intercepted = r2
            super.requestDisallowInterceptTouchEvent(r2)
            return r2
        L44:
            float r0 = r4.downX
            boolean r0 = java.lang.Float.isNaN(r0)
            if (r0 != 0) goto L7b
            r4.releaseTouch(r1, r1)
            goto L7b
        L50:
            int r0 = r4.translationX
            if (r0 == 0) goto L75
            android.view.View r0 = r4.getRightButton()
            if (r0 == 0) goto L6f
            int r3 = r0.getLeft()
            float r3 = (float) r3
            float r0 = r0.getTranslationX()
            float r3 = r3 + r0
            float r5 = r5.getX()
            int r5 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r5 <= 0) goto L6f
            r4.resetTranslation = r2
            return r1
        L6f:
            r4.releaseTouch(r1, r2)
            r4.resetTranslation = r2
            return r2
        L75:
            float r0 = r5.getX()
            r4.downX = r0
        L7b:
            boolean r5 = super.onInterceptTouchEvent(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.widget.SwipeToDeleteLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.swipable) {
            return super.onTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            if (!this.intercepted && !this.resetTranslation) {
                this.downX = motionEvent.getX();
            }
            return true;
        }
        if (action == 1) {
            if (this.intercepted && !Float.isNaN(this.downX)) {
                float x = motionEvent.getX() - this.downX;
                if (x < this.touchSlop * (-2)) {
                    releaseTouch(-1, true);
                } else if (x >= this.edgeSlop) {
                    releaseTouch(0, true);
                } else {
                    releaseTouch(0, true);
                }
            } else {
                releaseTouch(0, false);
            }
            return true;
        }
        if (action != 2) {
            if (action != 3) {
                return true;
            }
            releaseTouch(0, false);
            return true;
        }
        if (!Float.isNaN(this.downX) && !this.resetTranslation) {
            if (this.intercepted) {
                updateTranslationX((int) (motionEvent.getX() - this.downX), false);
            } else if (!this.disallowIntercept && Math.abs(motionEvent.getX() - this.downX) > this.touchSlop) {
                this.downX = motionEvent.getX();
                this.intercepted = true;
                super.requestDisallowInterceptTouchEvent(true);
            }
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        this.disallowIntercept = z;
        super.requestDisallowInterceptTouchEvent(z);
    }

    public void setSwipeRight(boolean z, boolean z2) {
        releaseTouch(z ? -1 : 0, z2);
    }

    private void releaseTouch(int i, boolean z) {
        this.downX = Float.NaN;
        View rightButton = getRightButton();
        updateTranslationX(rightButton != null ? i * rightButton.getWidth() : 0, z);
        this.intercepted = false;
        this.resetTranslation = false;
        this.disallowIntercept = false;
    }

    private void updateTranslationX(int i, boolean z) {
        int i2 = this.translationX;
        if (i2 != i) {
            boolean z2 = i2 >= this.edgeSlop;
            this.translationX = i;
            int childCount = getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                View rightButton = getRightButton();
                int i4 = this.edgeSlop;
                if (i <= i4) {
                    i4 = i;
                }
                if (childAt == rightButton) {
                    int i5 = -rightButton.getWidth();
                    if (i4 < i5) {
                        i4 = i5;
                    }
                } else {
                    int width = rightButton.getWidth();
                    int i6 = -width;
                    if (i4 < i6) {
                        i4 = ((i4 + width) / 3) + i6;
                    }
                }
                if (z) {
                    ViewPropertyAnimator viewPropertyAnimatorTranslationX = childAt.animate().translationX(i4);
                    if (z2) {
                        viewPropertyAnimatorTranslationX.setInterpolator(new OvershootInterpolator(4.0f));
                    } else {
                        viewPropertyAnimatorTranslationX.setInterpolator(new DecelerateInterpolator());
                    }
                } else {
                    childAt.setTranslationX(i4);
                }
            }
        }
    }
}
