package com.narvii.monetization.utils;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.motion.widget.Key;
import androidx.core.content.ContextCompat;
import com.narvii.amino.R;
import com.narvii.util.Utils;
import com.narvii.widget.PressedFrameLayout;

/* JADX INFO: loaded from: classes6.dex */
public class ClaimGiftHintLayout extends FrameLayout {
    AnimatorSet animatorSet;
    boolean hasBackground;
    boolean isSmall;
    private boolean isVisible;

    public ClaimGiftHintLayout(@NonNull Context context) {
        this(context, null);
    }

    public ClaimGiftHintLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ClaimCoinHintLayout);
        this.hasBackground = typedArrayObtainStyledAttributes.getBoolean(0, true);
        this.isSmall = typedArrayObtainStyledAttributes.getBoolean(2, false);
        typedArrayObtainStyledAttributes.recycle();
        View.inflate(context, this.isSmall ? com.narvii.amino.master.R.layout.layout_claim_horizontal_global_profile : com.narvii.amino.master.R.layout.layout_claim_horizontal, this);
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

    @Override // android.view.View
    protected void onFinishInflate() {
        int i10;
        super.onFinishInflate();
        PressedFrameLayout pressedFrameLayout = (PressedFrameLayout) findViewById(com.narvii.amino.master.R.id.hint);
        if (this.hasBackground) {
            pressedFrameLayout.setVisibility(0);
            Context context = getContext();
            if (Utils.isRtl()) {
                i10 = com.narvii.amino.master.R.drawable.claim_coin_bg_rtl;
            } else {
                i10 = com.narvii.amino.master.R.drawable.claim_coin_bg;
            }
            Drawable drawable = ContextCompat.getDrawable(context, i10);
            View viewFindViewById = findViewById(com.narvii.amino.master.R.id.hint);
            if (this.isSmall) {
                drawable = null;
            }
            viewFindViewById.setBackgroundDrawable(drawable);
        } else {
            pressedFrameLayout.setVisibility(8);
        }
        View viewFindViewById2 = findViewById(com.narvii.amino.master.R.id.claim_gift);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewFindViewById2, Key.ROTATION, -6.0f, 6.0f);
        objectAnimatorOfFloat.setDuration(100L);
        objectAnimatorOfFloat.setRepeatCount(8);
        objectAnimatorOfFloat.setRepeatMode(2);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(viewFindViewById2, Key.ROTATION, 6.0f, 0.0f);
        objectAnimatorOfFloat2.setDuration(100L);
        AnimatorSet animatorSet = new AnimatorSet();
        this.animatorSet = animatorSet;
        animatorSet.playSequentially(objectAnimatorOfFloat, objectAnimatorOfFloat2);
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

    public void setBackgroundResource(int i10, int i11) {
        View viewFindViewById = findViewById(com.narvii.amino.master.R.id.hint);
        if (viewFindViewById != null) {
            if (Utils.isRtl()) {
                i10 = i11;
            }
            viewFindViewById.setBackgroundResource(i10);
        }
    }
}
