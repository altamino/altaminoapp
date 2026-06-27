package com.narvii.amino.speeddial.widgets;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.AppCompatImageView;
import android.util.AttributeSet;
import android.view.View;
import com.narvii.amino.mastes.R;

/* loaded from: classes2.dex */
public class BoundLightView extends AppCompatImageView {
    private static final int DURATION_FADE_IN = 800;
    private static final int DURATION_FADE_IN_DELAY = 200;
    private static final int DURATION_FADE_OUT_DELAY = 300;
    private AnimatorSet animatorSet;
    private boolean isVisible;

    public BoundLightView(Context context) {
        this(context, null);
    }

    public BoundLightView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setImageDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_live_sr_border));
        configAniamtion();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cancelAnimation();
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        displayAnimation(i);
        this.isVisible = (i == 0) & this.isVisible;
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        this.isVisible = getVisibility() == 0;
    }

    private void displayAnimation(int i) {
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet == null) {
            return;
        }
        if (i != 0) {
            animatorSet.cancel();
        } else {
            if (animatorSet.isRunning()) {
                return;
            }
            this.animatorSet.start();
        }
    }

    private void cancelAnimation() {
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet == null || !animatorSet.isRunning()) {
            return;
        }
        this.animatorSet.cancel();
    }

    private void configAniamtion() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "alpha", 0.3f);
        objectAnimatorOfFloat.setStartDelay(300L);
        objectAnimatorOfFloat.setDuration(800L);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, "alpha", 1.0f);
        objectAnimatorOfFloat2.setDuration(800L);
        objectAnimatorOfFloat2.setStartDelay(200L);
        this.animatorSet = new AnimatorSet();
        this.animatorSet.setTarget(this);
        this.animatorSet.playSequentially(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        this.animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.narvii.amino.speeddial.widgets.BoundLightView.1
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
                if (BoundLightView.this.isVisible) {
                    BoundLightView.this.animatorSet.setStartDelay(300L);
                    BoundLightView.this.animatorSet.start();
                }
            }
        });
    }
}
