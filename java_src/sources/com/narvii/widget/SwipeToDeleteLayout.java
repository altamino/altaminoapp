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

/* JADX INFO: loaded from: classes8.dex */
public class SwipeToDeleteLayout extends FrameLayout {
    boolean disallowIntercept;
    float downX;
    final int edgeSlop;
    boolean intercepted;
    boolean resetTranslation;
    boolean swipable;
    final int touchSlop;
    int translationX;

    private void releaseTouch(int i10, boolean z6) {
        this.downX = Float.NaN;
        View rightButton = getRightButton();
        updateTranslationX(rightButton != null ? i10 * rightButton.getWidth() : 0, z6);
        this.intercepted = false;
        this.resetTranslation = false;
        this.disallowIntercept = false;
    }

    private void updateTranslationX(int i10, boolean z6) {
        int i11 = this.translationX;
        if (i11 != i10) {
            boolean z10 = i11 >= this.edgeSlop;
            this.translationX = i10;
            int childCount = getChildCount();
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = getChildAt(i12);
                View rightButton = getRightButton();
                int i13 = this.edgeSlop;
                if (i10 <= i13) {
                    i13 = i10;
                }
                if (childAt == rightButton) {
                    int i14 = -rightButton.getWidth();
                    if (i13 < i14) {
                        i13 = i14;
                    }
                } else {
                    int width = rightButton.getWidth();
                    int i15 = -width;
                    if (i13 < i15) {
                        i13 = ((i13 + width) / 3) + i15;
                    }
                }
                if (z6) {
                    ViewPropertyAnimator viewPropertyAnimatorTranslationX = childAt.animate().translationX(i13);
                    if (z10) {
                        viewPropertyAnimatorTranslationX.setInterpolator(new OvershootInterpolator(4.0f));
                    } else {
                        viewPropertyAnimatorTranslationX.setInterpolator(new DecelerateInterpolator());
                    }
                } else {
                    childAt.setTranslationX(i13);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0044  */
    /* JADX WARN: Code duplicated, block: B:24:0x004c  */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.swipable) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                if (!Float.isNaN(this.downX)) {
                    releaseTouch(0, false);
                }
            } else if (action != 2) {
                if (action == 3) {
                    if (!Float.isNaN(this.downX)) {
                        releaseTouch(0, false);
                    }
                }
            } else if (!this.disallowIntercept && !Float.isNaN(this.downX) && Math.abs(motionEvent.getX() - this.downX) > this.touchSlop) {
                this.downX = motionEvent.getX();
                this.intercepted = true;
                super.requestDisallowInterceptTouchEvent(true);
                return true;
            }
        } else {
            if (this.translationX != 0) {
                View rightButton = getRightButton();
                if (rightButton != null) {
                    if (motionEvent.getX() > rightButton.getLeft() + rightButton.getTranslationX()) {
                        this.resetTranslation = true;
                        return false;
                    }
                }
                releaseTouch(0, true);
                this.resetTranslation = true;
                return true;
            }
            this.downX = motionEvent.getX();
        }
        return super.onInterceptTouchEvent(motionEvent);
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
            if (!this.intercepted || Float.isNaN(this.downX)) {
                releaseTouch(0, false);
            } else {
                float x6 = motionEvent.getX() - this.downX;
                if (x6 < this.touchSlop * (-2)) {
                    releaseTouch(-1, true);
                } else if (x6 >= this.edgeSlop) {
                    releaseTouch(0, true);
                } else {
                    releaseTouch(0, true);
                }
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
    public void requestDisallowInterceptTouchEvent(boolean z6) {
        this.disallowIntercept = z6;
        super.requestDisallowInterceptTouchEvent(z6);
    }

    public void setSwipeEnabled(boolean z6) {
        this.swipable = z6;
        if (z6) {
            return;
        }
        setSwipeRight(false, true);
    }

    public void setSwipeRight(boolean z6, boolean z10) {
        releaseTouch(z6 ? -1 : 0, z10);
    }

    public SwipeToDeleteLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.swipable = true;
        this.downX = Float.NaN;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.touchSlop = viewConfiguration.getScaledTouchSlop();
        this.edgeSlop = viewConfiguration.getScaledEdgeSlop() * 2;
    }

    protected View getRightButton() {
        if (getChildCount() > 0) {
            return getChildAt(getChildCount() - 1);
        }
        return null;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        View rightButton = getRightButton();
        if (rightButton != null) {
            int i14 = i12 - i10;
            rightButton.layout(i14, rightButton.getTop(), rightButton.getWidth() + i14, rightButton.getBottom());
        }
    }
}
