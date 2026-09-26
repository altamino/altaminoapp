package com.narvii.widget;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.interpolator.view.animation.LinearOutSlowInInterpolator;
import com.narvii.amino.master.R;
import com.narvii.util.Utils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public class PollLiveIndicator extends FrameLayout {
    private static final int DELAY_CELL_ANIMATION = 300;
    private static final int DELAY_CHECK_START = 300;
    private static final int DURATION_CHECK_ALPHA = 200;
    private static final int DURATION_SCALE = 500;
    private AnimatorSet animatorSet;
    private View cell1;
    private View cell2;
    private View cell3;
    private int indicatorHeight;
    private View pollingBaseView;
    private View pollingCheck;
    private View pollingConainter;

    public PollLiveIndicator(@NonNull Context context) {
        this(context, null);
    }

    public PollLiveIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        View.inflate(context, R.layout.live_indicator_poll, this);
        initView();
        this.indicatorHeight = context.getResources().getDimensionPixelSize(R.dimen.poll_cell_height);
    }

    private ValueAnimator getBaseScaleAnimator() {
        this.pollingBaseView.setPivotX(Utils.isRtl() ? this.pollingBaseView.getMeasuredWidth() : 0.0f);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.pollingBaseView, "scaleX", 0.0f, 1.0f);
        objectAnimatorOfFloat.setDuration(500L);
        objectAnimatorOfFloat.setInterpolator(new LinearOutSlowInInterpolator());
        return objectAnimatorOfFloat;
    }

    private ValueAnimator getCheckAnimator() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.pollingCheck, "alpha", 0.0f, 1.0f);
        objectAnimatorOfFloat.setStartDelay(300L);
        objectAnimatorOfFloat.setDuration(200L);
        return objectAnimatorOfFloat;
    }

    private AnimatorSet getTotalAnimation() {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        for (final int i10 = 0; i10 < 3; i10++) {
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSet2.setStartDelay(300L);
            ValueAnimator baseScaleAnimator = getBaseScaleAnimator();
            animatorSet2.playTogether(baseScaleAnimator, getCheckAnimator());
            baseScaleAnimator.addListener(new Animator.AnimatorListener() { // from class: com.narvii.widget.PollLiveIndicator.2
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                /* JADX WARN: Code duplicated, block: B:8:0x000b  */
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    int i11;
                    int top;
                    int top2;
                    int i12 = i10;
                    if (i12 == 0) {
                        i11 = 0;
                    } else {
                        if (i12 == 1) {
                            top = PollLiveIndicator.this.cell3.getTop();
                            top2 = PollLiveIndicator.this.pollingConainter.getTop();
                        } else if (i12 != 2) {
                            i11 = 0;
                        } else {
                            top = PollLiveIndicator.this.cell1.getTop();
                            top2 = PollLiveIndicator.this.pollingConainter.getTop();
                        }
                        i11 = top - top2;
                    }
                    PollLiveIndicator.this.pollingBaseView.setVisibility(4);
                    PollLiveIndicator.this.pollingConainter.setTranslationY(i11);
                    PollLiveIndicator.this.pollingBaseView.setVisibility(0);
                    PollLiveIndicator.this.pollingCheck.setVisibility(0);
                    PollLiveIndicator.this.pollingCheck.setAlpha(0.0f);
                }
            });
            arrayList.add(animatorSet2);
        }
        animatorSet.playSequentially(arrayList);
        return animatorSet;
    }

    private void initViews() {
        this.pollingBaseView.setVisibility(4);
        this.pollingCheck.setVisibility(4);
    }

    public void endAnimtion() {
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    private void initView() {
        this.pollingConainter = findViewById(R.id.polling_container);
        this.pollingCheck = findViewById(R.id.polling_check);
        this.pollingBaseView = findViewById(R.id.polling_base);
        this.cell1 = findViewById(R.id.cell1);
        this.cell2 = findViewById(R.id.cell2);
        this.cell3 = findViewById(R.id.cell3);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        initView();
    }

    public void startAnimation() {
        if (getAnimation() != null) {
            getAnimation().cancel();
        }
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null && animatorSet.isRunning()) {
            return;
        }
        initViews();
        AnimatorSet totalAnimation = getTotalAnimation();
        this.animatorSet = totalAnimation;
        totalAnimation.start();
        this.animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.narvii.widget.PollLiveIndicator.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                PollLiveIndicator.this.animatorSet.setStartDelay(300L);
                PollLiveIndicator.this.animatorSet.start();
            }
        });
    }
}
