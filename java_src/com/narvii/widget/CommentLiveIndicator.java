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
import com.narvii.amino.mastes.R;
import com.narvii.util.Utils;
import java.util.ArrayList;

/* loaded from: classes3.dex */
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

    public CommentLiveIndicator(Context context) {
        this(context, null);
    }

    public CommentLiveIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        FrameLayout.inflate(context, R.layout.live_indicator_comment_2, this);
        initView();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        initView();
    }

    private void initView() {
        this.indicator0 = (ImageView) findViewById(R.id.indi_0);
        this.indicator1 = findViewById(R.id.indi_1);
        this.dot1 = findViewById(R.id.dot1);
        this.dot2 = findViewById(R.id.dot2);
        this.dot3 = findViewById(R.id.dot3);
        this.dot4 = findViewById(R.id.dot4);
        this.dotList = new View[4];
        View[] viewArr = this.dotList;
        viewArr[0] = this.dot1;
        viewArr[1] = this.dot2;
        viewArr[2] = this.dot3;
        viewArr[3] = this.dot4;
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

    public void startAnimation() {
        if (getAnimation() != null) {
            getAnimation().cancel();
        }
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet == null || !animatorSet.isRunning()) {
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
                public void onAnimationStart(Animator animator) {
                    CommentLiveIndicator.this.initViews();
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    CommentLiveIndicator.this.initViews();
                    CommentLiveIndicator.this.animatorSet.setStartDelay(500L);
                    CommentLiveIndicator.this.animatorSet.start();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initViews() {
        this.indicator0.setVisibility(4);
        this.indicator1.setVisibility(4);
        int i = 0;
        while (true) {
            View[] viewArr = this.dotList;
            if (i >= viewArr.length) {
                return;
            }
            viewArr[i].setVisibility(4);
            this.dotList[i].setAlpha(0.0f);
            i++;
        }
    }

    public void endAnimation() {
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet == null || !animatorSet.isRunning()) {
            return;
        }
        this.animatorSet.end();
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
        int top;
        this.indicator1.setPivotX(Utils.isRtl() ? getMeasuredWidth() : 0.0f);
        if (this.indicator0.getTop() == 0) {
            top = (int) TypedValue.applyDimension(1, 27.0f, getResources().getDisplayMetrics());
        } else {
            top = this.indicator0.getTop();
        }
        this.indicator1.setPivotY(top);
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

    AnimatorSet getDotsPreviewAnimators() {
        ArrayList arrayList = new ArrayList();
        for (final int i = 0; i < 4; i++) {
            final View view = this.dotList[i];
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
                    if (fFloatValue <= 0.7d) {
                        return;
                    }
                    int i2 = 0;
                    while (true) {
                        if (i2 < i) {
                            float f = 1.0f - ((((r1 - i2) - 1) * 1.0f) / 4.0f);
                            CommentLiveIndicator.this.dotList[i2].setAlpha(f - ((f - (1.0f - (((r1 - i2) * 1.0f) / 4.0f))) * fFloatValue));
                            i2++;
                        } else {
                            view.setAlpha(fFloatValue);
                            return;
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

    AnimatorSet getDotAnimation() {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < 4) {
            View view = this.dotList[i];
            final float[] fArr = new float[4];
            final float[] fArr2 = new float[4];
            int i2 = 0;
            while (i2 < 4) {
                fArr[i2] = i2 > i ? (i2 - i) * 0.25f : 1.0f - ((i - i2) * 0.25f);
                fArr2[i2] = i2 >= i ? 0.25f + ((i2 - i) * 0.25f) : 1.0f - (((i - i2) - 1) * 0.25f);
                i2++;
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.narvii.widget.CommentLiveIndicator.6
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    if (fFloatValue > 0.7f) {
                        for (int i3 = 0; i3 < 4; i3++) {
                            View view2 = CommentLiveIndicator.this.dotList[i3];
                            float[] fArr3 = fArr2;
                            view2.setAlpha(fArr3[i3] + ((fArr[i3] - fArr3[i3]) * fFloatValue));
                        }
                    }
                }
            });
            valueAnimatorOfFloat.setDuration(400L);
            arrayList.add(valueAnimatorOfFloat);
            i++;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(arrayList);
        return animatorSet;
    }
}
