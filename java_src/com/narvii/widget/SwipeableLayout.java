package com.narvii.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsListView;
import android.widget.FrameLayout;

/* loaded from: classes3.dex */
public class SwipeableLayout extends FrameLayout {
    public static final int DIRECTION_DOWN = 2;
    public static final int DIRECTION_LEFT = 4;
    public static final int DIRECTION_RIGHT = 8;
    public static final int DIRECTION_UP = 1;
    private static final int LEFT_RIGHT = 2;
    private static final int NONE = 0;
    private static final int SWIPE_MIN_PADDING = 10;
    private static final int UP_DOWN = 1;
    private int allowDirection;
    private int appearAnimationDirection;
    private int baseLayoutPositionX;
    private int baseLayoutPositionY;
    private int direction;
    private int lb;
    private AbsListView listView;
    private SwipeListener listener;
    private int lt;
    private int previousFingerPositionX;
    private int previousFingerPositionY;
    private int rb;
    private int rt;

    public interface SwipeListener {
        void onLayoutMoved(int i, int i2, int i3, int i4);

        void onLayoutSwiped();
    }

    public SwipeableLayout(Context context) {
        super(context);
        this.appearAnimationDirection = 0;
    }

    public SwipeableLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.appearAnimationDirection = 0;
    }

    public SwipeableLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.appearAnimationDirection = 0;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int rawY = (int) motionEvent.getRawY();
        int rawX = (int) motionEvent.getRawX();
        if (motionEvent.getActionMasked() == 0) {
            this.previousFingerPositionX = rawX;
            this.previousFingerPositionY = rawY;
            return false;
        }
        if (motionEvent.getActionMasked() != 2) {
            return false;
        }
        int i = rawY - this.previousFingerPositionY;
        int i2 = rawX - this.previousFingerPositionX;
        return (((this.allowDirection & 2) == 0 || Math.abs(i2) + 10 >= i || canListScroll(motionEvent, 2)) && ((this.allowDirection & 1) == 0 || Math.abs(i2) + 10 >= (-i) || canListScroll(motionEvent, 1)) && (((this.allowDirection & 4) == 0 || Math.abs(i) + 10 >= (-i2) || canListScroll(motionEvent, 4)) && (((this.allowDirection & 8) == 0 || Math.abs(i) + 10 >= i2 || canListScroll(motionEvent, 8)) && this.direction == 0))) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int rawY = (int) motionEvent.getRawY();
        int rawX = (int) motionEvent.getRawX();
        if (motionEvent.getActionMasked() == 0) {
            this.previousFingerPositionX = rawX;
            this.previousFingerPositionY = rawY;
        } else {
            if (motionEvent.getActionMasked() == 2) {
                int i = rawY - this.previousFingerPositionY;
                int i2 = rawX - this.previousFingerPositionX;
                if (this.direction == 0) {
                    if (Math.abs(i2) > Math.abs(i)) {
                        this.direction = 2;
                    } else if (Math.abs(i2) < Math.abs(i)) {
                        this.direction = 1;
                    } else {
                        this.direction = 0;
                    }
                }
                int i3 = this.direction;
                if (i3 == 1) {
                    float f = this.baseLayoutPositionY + i;
                    if (((this.allowDirection & 1) == 0 && i < 0) || ((this.allowDirection & 2) == 0 && i > 0)) {
                        f = this.baseLayoutPositionY;
                    }
                    setY(f);
                    SwipeListener swipeListener = this.listener;
                    if (swipeListener != null) {
                        int i4 = this.baseLayoutPositionX;
                        swipeListener.onLayoutMoved(i4, i4, this.baseLayoutPositionY, (int) f);
                    }
                    requestLayout();
                    return true;
                }
                if (i3 == 2) {
                    float f2 = this.baseLayoutPositionX + i2;
                    if (((this.allowDirection & 4) == 0 && i2 < 0) || ((this.allowDirection & 8) == 0 && i2 > 0)) {
                        f2 = this.baseLayoutPositionX;
                    }
                    setX(f2);
                    SwipeListener swipeListener2 = this.listener;
                    if (swipeListener2 != null) {
                        int i5 = this.baseLayoutPositionY;
                        swipeListener2.onLayoutMoved(this.baseLayoutPositionX, (int) f2, i5, i5);
                    }
                    requestLayout();
                }
            } else if (motionEvent.getActionMasked() == 1) {
                int i6 = this.direction;
                if (i6 == 1) {
                    this.direction = 0;
                    if (Math.abs(getY() - this.baseLayoutPositionY) > getHeight() / 4 && this.listener != null) {
                        dismiss(getY() <= ((float) this.baseLayoutPositionY) ? 1 : 2);
                        return true;
                    }
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(getY(), this.baseLayoutPositionY);
                    valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widget.SwipeableLayout.1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                            SwipeableLayout.this.setY(fFloatValue);
                            if (SwipeableLayout.this.listener != null) {
                                SwipeableLayout.this.listener.onLayoutMoved(SwipeableLayout.this.baseLayoutPositionX, SwipeableLayout.this.baseLayoutPositionX, SwipeableLayout.this.baseLayoutPositionY, (int) fFloatValue);
                            }
                        }
                    });
                    valueAnimatorOfFloat.setDuration(300L);
                    valueAnimatorOfFloat.start();
                    return true;
                }
                if (i6 == 2) {
                    this.direction = 0;
                    if (Math.abs(getX() - this.baseLayoutPositionX) > getWidth() / 4 && this.listener != null) {
                        dismiss(getX() <= ((float) this.baseLayoutPositionX) ? 4 : 8);
                        return true;
                    }
                    ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(getX(), this.baseLayoutPositionX);
                    valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widget.SwipeableLayout.2
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                            SwipeableLayout.this.setX(fFloatValue);
                            if (SwipeableLayout.this.listener != null) {
                                SwipeableLayout.this.listener.onLayoutMoved(SwipeableLayout.this.baseLayoutPositionX, (int) fFloatValue, SwipeableLayout.this.baseLayoutPositionY, SwipeableLayout.this.baseLayoutPositionY);
                            }
                        }
                    });
                    valueAnimatorOfFloat2.setDuration(300L);
                    valueAnimatorOfFloat2.start();
                    this.direction = 0;
                }
            }
        }
        return true;
    }

    public void setSwipeListener(SwipeListener swipeListener) {
        this.listener = swipeListener;
    }

    public void setAllowDirection(int i) {
        this.allowDirection = i;
    }

    public void bindListView(AbsListView absListView) {
        this.listView = absListView;
    }

    private boolean canListScroll(MotionEvent motionEvent, int i) {
        AbsListView absListView = this.listView;
        if (absListView == null || !isTouchPointInView(absListView, motionEvent)) {
            return false;
        }
        if (i == 1) {
            return ViewCompat.canScrollVertically(this.listView, 1);
        }
        if (i == 2) {
            return ViewCompat.canScrollVertically(this.listView, -1);
        }
        if (i == 4) {
            return ViewCompat.canScrollHorizontally(this.listView, 1);
        }
        if (i != 8) {
            return false;
        }
        return ViewCompat.canScrollHorizontally(this.listView, -1);
    }

    public void setRadius(int i, int i2, int i3, int i4) {
        this.lt = i;
        this.rt = i2;
        this.lb = i3;
        this.rb = i4;
    }

    private boolean isTouchPointInView(View view, MotionEvent motionEvent) {
        if (view == null) {
            return false;
        }
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        return motionEvent.getRawY() >= ((float) i2) && motionEvent.getRawY() <= ((float) (view.getMeasuredHeight() + i2)) && motionEvent.getRawX() >= ((float) i) && motionEvent.getRawX() <= ((float) (view.getMeasuredWidth() + i));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (Build.VERSION.SDK_INT >= 18) {
            Path path = new Path();
            RectF rectF = new RectF(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight());
            int i = this.lt;
            int i2 = this.rt;
            int i3 = this.rb;
            int i4 = this.lb;
            path.addRoundRect(rectF, new float[]{i, i, i2, i2, i3, i3, i4, i4}, Path.Direction.CW);
            canvas.clipPath(path);
        }
        super.dispatchDraw(canvas);
    }

    public void dismiss(int i) {
        ValueAnimator valueAnimatorOfFloat;
        if (i == 1 || i == 2) {
            valueAnimatorOfFloat = ValueAnimator.ofFloat(getY(), i == 1 ? -getHeight() : getContext().getResources().getDisplayMetrics().heightPixels);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widget.SwipeableLayout.3
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    SwipeableLayout.this.setY(fFloatValue);
                    if (SwipeableLayout.this.listener != null) {
                        SwipeableLayout.this.listener.onLayoutMoved(SwipeableLayout.this.baseLayoutPositionX, SwipeableLayout.this.baseLayoutPositionX, SwipeableLayout.this.baseLayoutPositionY, (int) fFloatValue);
                    }
                }
            });
        } else if (i == 4 || i == 8) {
            valueAnimatorOfFloat = ValueAnimator.ofFloat(getX(), i == 4 ? -getWidth() : getContext().getResources().getDisplayMetrics().widthPixels);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widget.SwipeableLayout.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    SwipeableLayout.this.setX(fFloatValue);
                    if (SwipeableLayout.this.listener != null) {
                        SwipeableLayout.this.listener.onLayoutMoved(SwipeableLayout.this.baseLayoutPositionX, SwipeableLayout.this.baseLayoutPositionX, SwipeableLayout.this.baseLayoutPositionY, (int) fFloatValue);
                    }
                }
            });
        } else {
            valueAnimatorOfFloat = null;
        }
        if (valueAnimatorOfFloat != null) {
            valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.widget.SwipeableLayout.5
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    SwipeableLayout.this.listener.onLayoutSwiped();
                }
            });
            valueAnimatorOfFloat.setDuration(300L);
            valueAnimatorOfFloat.start();
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        setY(this.baseLayoutPositionY);
        setX(this.baseLayoutPositionX);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.baseLayoutPositionX = i;
        this.baseLayoutPositionY = i2;
        int i5 = this.appearAnimationDirection;
        if (i5 != 0) {
            appearAnimation(i5);
        }
    }

    public void setAppearAnimation(int i) {
        this.appearAnimationDirection = i;
    }

    public void appearAnimation(int i) {
        ValueAnimator valueAnimatorOfFloat;
        if (i == 1 || i == 2) {
            valueAnimatorOfFloat = ValueAnimator.ofFloat(i == 2 ? -getHeight() : getContext().getResources().getDisplayMetrics().heightPixels, this.baseLayoutPositionY);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widget.SwipeableLayout.6
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    SwipeableLayout.this.setY(fFloatValue);
                    if (SwipeableLayout.this.listener != null) {
                        SwipeableLayout.this.listener.onLayoutMoved(SwipeableLayout.this.baseLayoutPositionX, SwipeableLayout.this.baseLayoutPositionX, SwipeableLayout.this.baseLayoutPositionY, (int) fFloatValue);
                    }
                }
            });
        } else if (i == 4 || i == 8) {
            valueAnimatorOfFloat = ValueAnimator.ofFloat(i == 8 ? -getWidth() : getContext().getResources().getDisplayMetrics().widthPixels, this.baseLayoutPositionX);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widget.SwipeableLayout.7
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    SwipeableLayout.this.setX(fFloatValue);
                    if (SwipeableLayout.this.listener != null) {
                        SwipeableLayout.this.listener.onLayoutMoved(SwipeableLayout.this.baseLayoutPositionX, SwipeableLayout.this.baseLayoutPositionX, SwipeableLayout.this.baseLayoutPositionY, (int) fFloatValue);
                    }
                }
            });
        } else {
            valueAnimatorOfFloat = null;
        }
        if (valueAnimatorOfFloat != null) {
            valueAnimatorOfFloat.setDuration(300L);
            valueAnimatorOfFloat.start();
        }
        this.appearAnimationDirection = 0;
    }
}
