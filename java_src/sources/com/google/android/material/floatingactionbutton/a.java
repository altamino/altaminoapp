package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
class a {

    @Nullable
    private Animator currentAnimator;

    public void b() {
        this.currentAnimator = null;
    }

    public void a() {
        Animator animator = this.currentAnimator;
        if (animator != null) {
            animator.cancel();
        }
    }

    a() {
    }

    public void c(Animator animator) {
        a();
        this.currentAnimator = animator;
    }
}
