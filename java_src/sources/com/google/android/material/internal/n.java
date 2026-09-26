package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.util.StateSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
public final class n {
    private final ArrayList<b> tuples = new ArrayList<>();

    @Nullable
    private b lastMatch = null;

    @Nullable
    ValueAnimator runningAnimator = null;
    private final Animator.AnimatorListener animationListener = new a();

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            n nVar = n.this;
            if (nVar.runningAnimator == animator) {
                nVar.runningAnimator = null;
            }
        }
    }

    static class b {
        final ValueAnimator animator;
        final int[] specs;

        b(int[] iArr, ValueAnimator valueAnimator) {
            this.specs = iArr;
            this.animator = valueAnimator;
        }
    }

    private void b() {
        ValueAnimator valueAnimator = this.runningAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.runningAnimator = null;
        }
    }

    private void e(@NonNull b bVar) {
        ValueAnimator valueAnimator = bVar.animator;
        this.runningAnimator = valueAnimator;
        valueAnimator.start();
    }

    public void a(int[] iArr, ValueAnimator valueAnimator) {
        b bVar = new b(iArr, valueAnimator);
        valueAnimator.addListener(this.animationListener);
        this.tuples.add(bVar);
    }

    public void c() {
        ValueAnimator valueAnimator = this.runningAnimator;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.runningAnimator = null;
        }
    }

    public void d(int[] iArr) {
        b bVar;
        int size = this.tuples.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                bVar = null;
                break;
            }
            bVar = this.tuples.get(i10);
            if (StateSet.stateSetMatches(bVar.specs, iArr)) {
                break;
            } else {
                i10++;
            }
        }
        b bVar2 = this.lastMatch;
        if (bVar == bVar2) {
            return;
        }
        if (bVar2 != null) {
            b();
        }
        this.lastMatch = bVar;
        if (bVar != null) {
            e(bVar);
        }
    }
}
