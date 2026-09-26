package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@Deprecated
public abstract class ExpandableTransformationBehavior extends ExpandableBehavior {

    @Nullable
    private AnimatorSet currentAnimation;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ExpandableTransformationBehavior.this.currentAnimation = null;
        }
    }

    public ExpandableTransformationBehavior() {
    }

    @NonNull
    protected abstract AnimatorSet f(View view, View view2, boolean z6, boolean z10);

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior
    @CallSuper
    protected boolean d(View view, View view2, boolean z6, boolean z10) {
        AnimatorSet animatorSet = this.currentAnimation;
        boolean z11 = animatorSet != null;
        if (z11) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSetF = f(view, view2, z6, z11);
        this.currentAnimation = animatorSetF;
        animatorSetF.addListener(new a());
        this.currentAnimation.start();
        if (!z10) {
            this.currentAnimation.end();
        }
        return true;
    }
}
