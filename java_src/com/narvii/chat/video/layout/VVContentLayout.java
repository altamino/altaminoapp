package com.narvii.chat.video.layout;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import com.narvii.util.Utils;

/* loaded from: classes2.dex */
public class VVContentLayout extends FrameLayout {
    private int SWIPE_MIN_PADDING;
    private float collapseThreshold;
    private float lastInterceptPointX;
    private float lastInterceptPointY;
    VVContentCollapseListener listener;
    private boolean supportCollapse;

    public interface VVContentCollapseListener {
        void onCollapsePercentChange(float f);

        void onExpanded();

        void onVVContentCollapsed();
    }

    public VVContentLayout(Context context) {
        this(context, null);
    }

    public VVContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.lastInterceptPointX = 0.0f;
        this.lastInterceptPointY = 0.0f;
        this.collapseThreshold = 0.0f;
        this.SWIPE_MIN_PADDING = 10;
        this.collapseThreshold = Utils.dpToPx(getContext(), 50.0f);
    }

    public void setCollapseListener(VVContentCollapseListener vVContentCollapseListener) {
        this.listener = vVContentCollapseListener;
    }

    public void setSupportCollapse(boolean z) {
        this.supportCollapse = z;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.supportCollapse) {
            return super.onTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 1) {
            releaseView(motionEvent);
        } else if (action == 2) {
            float y = (motionEvent.getY() - this.lastInterceptPointY) + getTranslationY();
            if (y <= 0.0f) {
                setTranslationY(y);
                VVContentCollapseListener vVContentCollapseListener = this.listener;
                if (vVContentCollapseListener != null) {
                    vVContentCollapseListener.onCollapsePercentChange(getHeight() != 0 ? 1.0f * (Math.abs(y) / getHeight()) : 0.0f);
                }
            }
        }
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean zOnInterceptTouchEvent = super.onInterceptTouchEvent(motionEvent);
        if (!this.supportCollapse) {
            return zOnInterceptTouchEvent;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.lastInterceptPointX = motionEvent.getX();
            this.lastInterceptPointY = motionEvent.getY();
        } else if (action == 2) {
            float x = motionEvent.getX();
            float fAbs = Math.abs(motionEvent.getY() - this.lastInterceptPointY);
            if (this.supportCollapse && fAbs > Math.abs(x - this.lastInterceptPointX) && fAbs > this.SWIPE_MIN_PADDING) {
                return true;
            }
        }
        return zOnInterceptTouchEvent;
    }

    private void releaseView(MotionEvent motionEvent) {
        if ((motionEvent.getY() - this.lastInterceptPointY) + getTranslationY() > 0.0f) {
            return;
        }
        if (Math.abs(getTranslationY()) > this.collapseThreshold) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "translationY", getTranslationY(), getHeight() * (-1));
            objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.chat.video.layout.VVContentLayout.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    VVContentCollapseListener vVContentCollapseListener = VVContentLayout.this.listener;
                    if (vVContentCollapseListener != null) {
                        vVContentCollapseListener.onVVContentCollapsed();
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    super.onAnimationCancel(animator);
                    VVContentCollapseListener vVContentCollapseListener = VVContentLayout.this.listener;
                    if (vVContentCollapseListener != null) {
                        vVContentCollapseListener.onVVContentCollapsed();
                    }
                }
            });
            objectAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.chat.video.layout.VVContentLayout.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    VVContentLayout vVContentLayout = VVContentLayout.this;
                    VVContentCollapseListener vVContentCollapseListener = vVContentLayout.listener;
                    if (vVContentCollapseListener != null) {
                        vVContentCollapseListener.onCollapsePercentChange(vVContentLayout.getHeight() == 0 ? 0.0f : (Math.abs(VVContentLayout.this.getTranslationY()) / VVContentLayout.this.getHeight()) * 1.0f);
                    }
                }
            });
            objectAnimatorOfFloat.setDuration(100L);
            objectAnimatorOfFloat.start();
            return;
        }
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, "translationY", getTranslationY(), 0.0f);
        objectAnimatorOfFloat2.setInterpolator(new OvershootInterpolator());
        objectAnimatorOfFloat2.setDuration(100L);
        objectAnimatorOfFloat2.start();
        VVContentCollapseListener vVContentCollapseListener = this.listener;
        if (vVContentCollapseListener != null) {
            vVContentCollapseListener.onExpanded();
        }
    }
}
