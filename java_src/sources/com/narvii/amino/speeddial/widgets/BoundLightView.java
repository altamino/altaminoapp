package com.narvii.amino.speeddial.widgets;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.content.ContextCompat;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes7.dex */
public class BoundLightView extends AppCompatImageView {
    private static final int DURATION_FADE_IN = 800;
    private static final int DURATION_FADE_IN_DELAY = 200;
    private static final int DURATION_FADE_OUT_DELAY = 300;
    private AnimatorSet animatorSet;
    private boolean isVisible;

    public BoundLightView(Context context) {
        this(context, null);
    }

    private void configAniamtion() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "alpha", 0.3f);
        objectAnimatorOfFloat.setStartDelay(300L);
        objectAnimatorOfFloat.setDuration(800L);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, "alpha", 1.0f);
        objectAnimatorOfFloat2.setDuration(800L);
        objectAnimatorOfFloat2.setStartDelay(200L);
        AnimatorSet animatorSet = new AnimatorSet();
        this.animatorSet = animatorSet;
        animatorSet.setTarget(this);
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

    public BoundLightView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setImageDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_live_sr_border));
        configAniamtion();
    }

    private void cancelAnimation() {
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet == null || !animatorSet.isRunning()) {
            return;
        }
        this.animatorSet.cancel();
    }

    private void displayAnimation(int i10) {
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet == null) {
            return;
        }
        if (i10 != 0) {
            animatorSet.cancel();
        } else {
            if (animatorSet.isRunning()) {
                return;
            }
            this.animatorSet.start();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cancelAnimation();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i10) {
        boolean z6;
        super.onVisibilityChanged(view, i10);
        if (getVisibility() == 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.isVisible = z6;
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        boolean z6;
        super.onWindowVisibilityChanged(i10);
        displayAnimation(i10);
        boolean z10 = this.isVisible;
        if (i10 == 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.isVisible = z6 & z10;
    }
}
