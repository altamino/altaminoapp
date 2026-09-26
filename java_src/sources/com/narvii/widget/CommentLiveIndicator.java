package com.narvii.widget;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.util.Utils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public class CommentLiveIndicator extends FrameLayout {
    private static final int DOT_ALPHA_STEP_DURATION = 400;
    private static final int DOT_COUNT = 4;
    AnimatorSet animatorSet;
    private View dot1;
    private View dot2;
    private View dot3;
    private View dot4;
    private View[] dotList;
    private ImageView indicator0;
    private View indicator1;

    public CommentLiveIndicator(@NonNull Context context) {
        this(context, null);
    }

    public CommentLiveIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        View.inflate(context, R.layout.live_indicator_comment_2, this);
        initView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initViews() {
        this.indicator0.setVisibility(4);
        this.indicator1.setVisibility(4);
        int i10 = 0;
        while (true) {
            View[] viewArr = this.dotList;
            if (i10 >= viewArr.length) {
                return;
            }
            viewArr[i10].setVisibility(4);
            this.dotList[i10].setAlpha(0.0f);
            i10++;
        }
    }

    public void endAnimation() {
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet == null || !animatorSet.isRunning()) {
            return;
        }
        this.animatorSet.end();
    }

    AnimatorSet getDotAnimation() {
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (i10 < 4) {
            View view = this.dotList[i10];
            final float[] fArr = new float[4];
            final float[] fArr2 = new float[4];
            int i11 = 0;
            while (i11 < 4) {
                fArr[i11] = i11 > i10 ? (i11 - i10) * 0.25f : 1.0f - ((i10 - i11) * 0.25f);
                fArr2[i11] = i11 >= i10 ? 0.25f + ((i11 - i10) * 0.25f) : 1.0f - (((i10 - i11) - 1) * 0.25f);
                i11++;
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widget.CommentLiveIndicator.6
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    if (fFloatValue > 0.7f) {
                        for (int i12 = 0; i12 < 4; i12++) {
                            View view2 = CommentLiveIndicator.this.dotList[i12];
                            float f = fArr2[i12];
                            view2.setAlpha(f + ((fArr[i12] - f) * fFloatValue));
                        }
                    }
                }
            });
            valueAnimatorOfFloat.setDuration(400L);
            arrayList.add(valueAnimatorOfFloat);
            i10++;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(arrayList);
        return animatorSet;
    }

    AnimatorSet getDotsPreviewAnimators() {
        ArrayList arrayList = new ArrayList();
        for (final int i10 = 0; i10 < 4; i10++) {
            final View view = this.dotList[i10];
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.setDuration(400L);
            valueAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: com.narvii.widget.CommentLiveIndicator.4
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    view.setVisibility(0);
                }
            });
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widget.CommentLiveIndicator.5
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    if (fFloatValue > 0.7d) {
                        int i11 = 0;
                        while (true) {
                            int i12 = i10;
                            if (i11 < i12) {
                                float f = 1.0f - ((((i12 - i11) - 1) * 1.0f) / 4.0f);
                                CommentLiveIndicator.this.dotList[i11].setAlpha(f - ((f - (1.0f - (((i12 - i11) * 1.0f) / 4.0f))) * fFloatValue));
                                i11++;
                            } else {
                                view.setAlpha(fFloatValue);
                                return;
                            }
                        }
                    }
                }
            });
            arrayList.add(valueAnimatorOfFloat);
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(arrayList);
        return animatorSet;
    }

    Animator getIndi0ScaleAnimator() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.indicator0, "scaleX", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.indicator0, "scaleY", 0.0f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(50L);
        animatorSet.playSequentially(new Animator[0]);
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        objectAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: com.narvii.widget.CommentLiveIndicator.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                CommentLiveIndicator.this.indicator0.setVisibility(0);
            }
        });
        return animatorSet;
    }

    Animator getIndi1ScaleAnimator() {
        this.indicator1.setPivotX(Utils.isRtl() ? getMeasuredWidth() : 0.0f);
        this.indicator1.setPivotY(this.indicator0.getTop() == 0 ? (int) TypedValue.applyDimension(1, 27.0f, getResources().getDisplayMetrics()) : this.indicator0.getTop());
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.indicator1, "scaleX", 0.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.indicator1, "scaleY", 0.0f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(200L);
        animatorSet.setStartDelay(50L);
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        objectAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: com.narvii.widget.CommentLiveIndicator.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                CommentLiveIndicator.this.indicator1.setVisibility(0);
            }
        });
        return animatorSet;
    }

    private void initView() {
        this.indicator0 = (ImageView) findViewById(R.id.indi_0);
        this.indicator1 = findViewById(R.id.indi_1);
        this.dot1 = findViewById(R.id.dot1);
        this.dot2 = findViewById(R.id.dot2);
        this.dot3 = findViewById(R.id.dot3);
        View viewFindViewById = findViewById(R.id.dot4);
        this.dot4 = viewFindViewById;
        this.dotList = new View[]{this.dot1, this.dot2, this.dot3, viewFindViewById};
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
        this.animatorSet = new AnimatorSet();
        this.animatorSet.playSequentially(getIndi0ScaleAnimator(), getIndi1ScaleAnimator(), getDotsPreviewAnimators(), getDotAnimation());
        this.animatorSet.start();
        this.animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.narvii.widget.CommentLiveIndicator.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                CommentLiveIndicator.this.initViews();
                CommentLiveIndicator.this.animatorSet.setStartDelay(500L);
                CommentLiveIndicator.this.animatorSet.start();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                CommentLiveIndicator.this.initViews();
            }
        });
    }
}
