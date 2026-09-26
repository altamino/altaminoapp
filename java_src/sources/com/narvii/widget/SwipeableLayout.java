package com.narvii.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes9.dex */
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
        void onLayoutMoved(int i10, int i11, int i12, int i13);

        void onLayoutSwiped();
    }

    public SwipeableLayout(@NonNull Context context) {
        super(context);
        this.appearAnimationDirection = 0;
    }

    private boolean isTouchPointInView(View view, MotionEvent motionEvent) {
        if (view == null) {
            return false;
        }
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int i10 = iArr[0];
        int i11 = iArr[1];
        return motionEvent.getRawY() >= ((float) i11) && motionEvent.getRawY() <= ((float) (view.getMeasuredHeight() + i11)) && motionEvent.getRawX() >= ((float) i10) && motionEvent.getRawX() <= ((float) (view.getMeasuredWidth() + i10));
    }

    public void appearAnimation(int i10) {
        ValueAnimator valueAnimatorOfFloat;
        if (i10 == 1 || i10 == 2) {
            valueAnimatorOfFloat = ValueAnimator.ofFloat(i10 == 2 ? -getHeight() : getContext().getResources().getDisplayMetrics().heightPixels, this.baseLayoutPositionY);
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
        } else if (i10 == 4 || i10 == 8) {
            valueAnimatorOfFloat = ValueAnimator.ofFloat(i10 == 8 ? -getWidth() : getContext().getResources().getDisplayMetrics().widthPixels, this.baseLayoutPositionX);
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

    public void bindListView(AbsListView absListView) {
        this.listView = absListView;
    }

    public void dismiss(int i10) {
        ValueAnimator valueAnimatorOfFloat;
        if (i10 == 1 || i10 == 2) {
            valueAnimatorOfFloat = ValueAnimator.ofFloat(getY(), i10 == 1 ? -getHeight() : getContext().getResources().getDisplayMetrics().heightPixels);
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
        } else if (i10 == 4 || i10 == 8) {
            valueAnimatorOfFloat = ValueAnimator.ofFloat(getX(), i10 == 4 ? -getWidth() : getContext().getResources().getDisplayMetrics().widthPixels);
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

    public void setAllowDirection(int i10) {
        this.allowDirection = i10;
    }

    public void setAppearAnimation(int i10) {
        this.appearAnimationDirection = i10;
    }

    public void setRadius(int i10, int i11, int i12, int i13) {
        this.lt = i10;
        this.rt = i11;
        this.lb = i12;
        this.rb = i13;
    }

    public void setSwipeListener(SwipeListener swipeListener) {
        this.listener = swipeListener;
    }

    public SwipeableLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.appearAnimationDirection = 0;
    }

    private boolean canListScroll(MotionEvent motionEvent, int i10) {
        AbsListView absListView = this.listView;
        if (absListView == null || !isTouchPointInView(absListView, motionEvent)) {
            return false;
        }
        if (i10 == 1) {
            return ViewCompat.g(this.listView, 1);
        }
        if (i10 == 2) {
            return ViewCompat.g(this.listView, -1);
        }
        if (i10 == 4) {
            return ViewCompat.f(this.listView, 1);
        }
        if (i10 != 8) {
            return false;
        }
        return ViewCompat.f(this.listView, -1);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Path path = new Path();
        RectF rectF = new RectF(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight());
        int i10 = this.lt;
        int i11 = this.rt;
        int i12 = this.rb;
        int i13 = this.lb;
        path.addRoundRect(rectF, new float[]{i10, i10, i11, i11, i12, i12, i13, i13}, Path.Direction.CW);
        canvas.clipPath(path);
        super.dispatchDraw(canvas);
    }

    public SwipeableLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.appearAnimationDirection = 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        setY(this.baseLayoutPositionY);
        setX(this.baseLayoutPositionX);
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
        if (motionEvent.getActionMasked() == 2) {
            int i10 = rawY - this.previousFingerPositionY;
            int i11 = rawX - this.previousFingerPositionX;
            if (((this.allowDirection & 2) != 0 && Math.abs(i11) + 10 < i10 && !canListScroll(motionEvent, 2)) || (((this.allowDirection & 1) != 0 && Math.abs(i11) + 10 < (-i10) && !canListScroll(motionEvent, 1)) || (((this.allowDirection & 4) != 0 && Math.abs(i10) + 10 < (-i11) && !canListScroll(motionEvent, 4)) || (((this.allowDirection & 8) != 0 && Math.abs(i10) + 10 < i11 && !canListScroll(motionEvent, 8)) || this.direction != 0)))) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        this.baseLayoutPositionX = i10;
        this.baseLayoutPositionY = i11;
        int i14 = this.appearAnimationDirection;
        if (i14 != 0) {
            appearAnimation(i14);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        int rawY = (int) motionEvent.getRawY();
        int rawX = (int) motionEvent.getRawX();
        if (motionEvent.getActionMasked() == 0) {
            this.previousFingerPositionX = rawX;
            this.previousFingerPositionY = rawY;
        } else {
            int i10 = 8;
            int i11 = 2;
            if (motionEvent.getActionMasked() == 2) {
                int i12 = rawY - this.previousFingerPositionY;
                int i13 = rawX - this.previousFingerPositionX;
                if (this.direction == 0) {
                    if (Math.abs(i13) > Math.abs(i12)) {
                        this.direction = 2;
                    } else if (Math.abs(i13) < Math.abs(i12)) {
                        this.direction = 1;
                    } else {
                        this.direction = 0;
                    }
                }
                int i14 = this.direction;
                if (i14 == 1) {
                    int i15 = this.baseLayoutPositionY;
                    float f = i15 + i12;
                    int i16 = this.allowDirection;
                    if (((i16 & 1) == 0 && i12 < 0) || ((i16 & 2) == 0 && i12 > 0)) {
                        f = i15;
                    }
                    setY(f);
                    SwipeListener swipeListener = this.listener;
                    if (swipeListener != null) {
                        int i17 = this.baseLayoutPositionX;
                        swipeListener.onLayoutMoved(i17, i17, this.baseLayoutPositionY, (int) f);
                    }
                    requestLayout();
                    return true;
                }
                if (i14 == 2) {
                    int i18 = this.baseLayoutPositionX;
                    float f6 = i18 + i13;
                    int i19 = this.allowDirection;
                    if (((i19 & 4) == 0 && i13 < 0) || ((i19 & 8) == 0 && i13 > 0)) {
                        f6 = i18;
                    }
                    setX(f6);
                    SwipeListener swipeListener2 = this.listener;
                    if (swipeListener2 != null) {
                        int i20 = this.baseLayoutPositionY;
                        swipeListener2.onLayoutMoved(this.baseLayoutPositionX, (int) f6, i20, i20);
                    }
                    requestLayout();
                }
            } else if (motionEvent.getActionMasked() == 1) {
                int i21 = this.direction;
                if (i21 == 1) {
                    this.direction = 0;
                    if (Math.abs(getY() - this.baseLayoutPositionY) > getHeight() / 4 && this.listener != null) {
                        if (getY() <= this.baseLayoutPositionY) {
                            i11 = 1;
                        }
                        dismiss(i11);
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
                if (i21 == 2) {
                    this.direction = 0;
                    if (Math.abs(getX() - this.baseLayoutPositionX) > getWidth() / 4 && this.listener != null) {
                        if (getX() <= this.baseLayoutPositionX) {
                            i10 = 4;
                        }
                        dismiss(i10);
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
}
