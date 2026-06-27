package com.narvii.monetization.utils;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.amino.R;
import com.narvii.util.Utils;
import com.narvii.widget.PressedFrameLayout;

/* loaded from: classes3.dex */
public class ClaimGiftHintLayout extends FrameLayout {
    AnimatorSet animatorSet;
    boolean hasBackground;
    boolean isSmall;
    private boolean isVisible;

    public ClaimGiftHintLayout(Context context) {
        this(context, null);
    }

    public ClaimGiftHintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ClaimCoinHintLayout);
        this.hasBackground = typedArrayObtainStyledAttributes.getBoolean(0, true);
        this.isSmall = typedArrayObtainStyledAttributes.getBoolean(2, false);
        typedArrayObtainStyledAttributes.recycle();
        FrameLayout.inflate(context, this.isSmall ? com.narvii.amino.mastes.R.layout.layout_claim_horizontal_global_profile : com.narvii.amino.mastes.R.layout.layout_claim_horizontal, this);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        PressedFrameLayout pressedFrameLayout = (PressedFrameLayout) findViewById(com.narvii.amino.mastes.R.id.hint);
        if (this.hasBackground) {
            pressedFrameLayout.setVisibility(0);
            Drawable drawable = ContextCompat.getDrawable(getContext(), Utils.isRtl() ? com.narvii.amino.mastes.R.drawable.claim_coin_bg_rtl : com.narvii.amino.mastes.R.drawable.claim_coin_bg);
            View viewFindViewById = findViewById(com.narvii.amino.mastes.R.id.hint);
            if (this.isSmall) {
                drawable = null;
            }
            viewFindViewById.setBackgroundDrawable(drawable);
        } else {
            pressedFrameLayout.setVisibility(8);
        }
        View viewFindViewById2 = findViewById(com.narvii.amino.mastes.R.id.claim_gift);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewFindViewById2, "rotation", -6.0f, 6.0f);
        objectAnimatorOfFloat.setDuration(100L);
        objectAnimatorOfFloat.setRepeatCount(8);
        objectAnimatorOfFloat.setRepeatMode(2);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(viewFindViewById2, "rotation", 6.0f, 0.0f);
        objectAnimatorOfFloat2.setDuration(100L);
        this.animatorSet = new AnimatorSet();
        this.animatorSet.playSequentially(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        viewFindViewById2.setPivotX(Utils.dpToPx(getContext(), 10.0f));
        viewFindViewById2.setPivotY(Utils.dpToPx(getContext(), 30.0f));
        this.animatorSet.setTarget(viewFindViewById2);
        this.animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.narvii.monetization.utils.ClaimGiftHintLayout.1
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
                if (ClaimGiftHintLayout.this.isVisible) {
                    ClaimGiftHintLayout.this.animatorSet.setStartDelay(500L);
                    ClaimGiftHintLayout.this.animatorSet.start();
                }
            }
        });
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

    public void setBackgroundResource(int i, int i2) {
        View viewFindViewById = findViewById(com.narvii.amino.mastes.R.id.hint);
        if (viewFindViewById != null) {
            if (Utils.isRtl()) {
                i = i2;
            }
            viewFindViewById.setBackgroundResource(i);
        }
    }
}
