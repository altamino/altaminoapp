package com.narvii.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.narvii.amino.mastes.R;
import com.narvii.scene.poll.ScenePollPlayView;

/* loaded from: classes3.dex */
public class RandomBlinkingView extends FrameLayout {
    private static final int BLINK_DURATION = 3000;
    private ValueAnimator blinkAnimator1;
    private ValueAnimator blinkAnimator2;
    private ImageView blinking1;
    private ImageView blinking2;

    public RandomBlinkingView(Context context) {
        super(context);
    }

    public RandomBlinkingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RandomBlinkingView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @TargetApi(21)
    public RandomBlinkingView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.blinking1 = (ImageView) LayoutInflater.from(getContext()).inflate(R.layout.random_blink_item, (ViewGroup) this, false);
        this.blinking2 = (ImageView) LayoutInflater.from(getContext()).inflate(R.layout.random_blink_item, (ViewGroup) this, false);
        addView(this.blinking1);
        addView(this.blinking2);
        this.blinking1.setAlpha(0.01f);
        this.blinking2.setAlpha(0.01f);
        this.blinkAnimator1 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.blinkAnimator1.setDuration(ScenePollPlayView.POLL_RESULT_COUNT_DOWN_MS);
        this.blinkAnimator1.setRepeatMode(1);
        this.blinkAnimator1.setRepeatCount(-1);
        this.blinkAnimator1.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.widget.RandomBlinkingView.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                RandomBlinkingView randomBlinkingView = RandomBlinkingView.this;
                randomBlinkingView.updateViewPosition(randomBlinkingView.blinking1);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                RandomBlinkingView randomBlinkingView = RandomBlinkingView.this;
                randomBlinkingView.updateViewPosition(randomBlinkingView.blinking1);
            }
        });
        this.blinkAnimator1.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widget.RandomBlinkingView.2
            int tickCount = 1;

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                int i = this.tickCount;
                if (i == 4) {
                    RandomBlinkingView randomBlinkingView = RandomBlinkingView.this;
                    randomBlinkingView.alphaAnimationProcess(randomBlinkingView.blinking1, valueAnimator.getAnimatedFraction());
                    this.tickCount = 1;
                    return;
                }
                this.tickCount = i + 1;
            }
        });
        this.blinkAnimator2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.blinkAnimator2.setDuration(ScenePollPlayView.POLL_RESULT_COUNT_DOWN_MS);
        this.blinkAnimator2.setRepeatMode(1);
        this.blinkAnimator2.setRepeatCount(-1);
        this.blinkAnimator2.setStartDelay(1500L);
        this.blinkAnimator2.addListener(new AnimatorListenerAdapter() { // from class: com.narvii.widget.RandomBlinkingView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                RandomBlinkingView randomBlinkingView = RandomBlinkingView.this;
                randomBlinkingView.updateViewPosition(randomBlinkingView.blinking2);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                RandomBlinkingView randomBlinkingView = RandomBlinkingView.this;
                randomBlinkingView.updateViewPosition(randomBlinkingView.blinking2);
            }
        });
        this.blinkAnimator2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widget.RandomBlinkingView.4
            int tickCount = 1;

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                int i = this.tickCount;
                if (i == 4) {
                    RandomBlinkingView randomBlinkingView = RandomBlinkingView.this;
                    randomBlinkingView.alphaAnimationProcess(randomBlinkingView.blinking2, valueAnimator.getAnimatedFraction());
                    this.tickCount = 1;
                    return;
                }
                this.tickCount = i + 1;
            }
        });
    }

    public void disable() {
        ValueAnimator valueAnimator = this.blinkAnimator1;
        if (valueAnimator != null && valueAnimator.isStarted()) {
            this.blinkAnimator1.end();
        }
        ValueAnimator valueAnimator2 = this.blinkAnimator2;
        if (valueAnimator2 == null || !valueAnimator2.isStarted()) {
            return;
        }
        this.blinkAnimator2.end();
    }

    public void enable() {
        ValueAnimator valueAnimator = this.blinkAnimator1;
        if (valueAnimator != null && !valueAnimator.isStarted()) {
            this.blinkAnimator1.start();
        }
        ValueAnimator valueAnimator2 = this.blinkAnimator2;
        if (valueAnimator2 == null || valueAnimator2.isStarted()) {
            return;
        }
        this.blinkAnimator2.start();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.blinkAnimator1;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.blinkAnimator1 = null;
        }
        ValueAnimator valueAnimator2 = this.blinkAnimator2;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.blinkAnimator2 = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void alphaAnimationProcess(View view, float f) {
        double d = f;
        if (d >= 0.4d && d <= 0.8d && view.getAlpha() != 1.0f) {
            view.setAlpha(1.0f);
            return;
        }
        if (f >= 0.0f && d <= 0.4d) {
            view.setAlpha(f / 0.4f);
        } else {
            if (d < 0.8d || f > 1.0f) {
                return;
            }
            view.setAlpha((1.0f - f) / 0.2f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateViewPosition(View view) {
        double dRandom = Math.random();
        double dRandom2 = Math.random();
        while (true) {
            if (dRandom <= 0.95d && dRandom >= 0.05d) {
                break;
            } else {
                dRandom = Math.random();
            }
        }
        while (true) {
            if (dRandom2 > 0.5d || dRandom2 < 0.1d) {
                dRandom2 = Math.random();
            } else {
                double width = getWidth();
                Double.isNaN(width);
                view.setTranslationX((float) (width * dRandom));
                double height = getHeight();
                Double.isNaN(height);
                view.setTranslationY((float) (height * dRandom2));
                return;
            }
        }
    }
}
