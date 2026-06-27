package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.support.annotation.Nullable;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.7M, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C7M implements B3 {

    @Nullable
    private ValueAnimator A00;
    private B7 A01 = B7.A04;
    private final int A02;
    private final int A03;
    private final int A04;
    private final View A05;

    public C7M(View view, int i, int i2, int i3) {
        this.A05 = view;
        this.A02 = i;
        this.A04 = i2;
        this.A03 = i3;
    }

    private ValueAnimator A00(final View view, int i, int i2) {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i, i2);
        valueAnimatorOfInt.setDuration(this.A02);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.facebook.ads.redexgen.X.7Q
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                view.setTranslationY(((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        });
        return valueAnimatorOfInt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A04() {
        if (this.A00 != null) {
            this.A00.removeAllListeners();
            this.A00 = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A08(boolean z) {
        final C7M c7m = this;
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7m = c7m;
                    c7m.A01 = B7.A05;
                    c7m.A00 = c7m.A00(c7m.A05, c7m.A03, c7m.A04);
                    c7m.A00.addListener(new Animator.AnimatorListener() { // from class: com.facebook.ads.redexgen.X.7q
                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationCancel(Animator animator) {
                            this.A00.A09(false);
                            this.A00.A04();
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            this.A00.A01 = B7.A04;
                            OY.A0I(this.A00.A05);
                            this.A00.A04();
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationStart(Animator animator) {
                        }
                    });
                    c7m.A00.start();
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c7m = c7m;
                    c7m.A05.setTranslationY(c7m.A04);
                    OY.A0I(c7m.A05);
                    c7m.A01 = B7.A04;
                    c = 3;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A09(boolean z) {
        final C7M c7m = this;
        OY.A0O(c7m.A05);
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7m = c7m;
                    c7m.A01 = B7.A03;
                    c7m.A00 = c7m.A00(c7m.A05, c7m.A04, c7m.A03);
                    c7m.A00.addListener(new Animator.AnimatorListener() { // from class: com.facebook.ads.redexgen.X.7z
                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationCancel(Animator animator) {
                            this.A00.A08(false);
                            this.A00.A04();
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            this.A00.A00 = null;
                            this.A00.A01 = B7.A02;
                            this.A00.A04();
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationRepeat(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public final void onAnimationStart(Animator animator) {
                        }
                    });
                    c7m.A00.start();
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c7m = c7m;
                    c7m.A05.setTranslationY(c7m.A03);
                    c7m.A01 = B7.A02;
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.B3
    public final void A2a(boolean z, boolean z2) {
        C7M c7m = this;
        char c = z2 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c7m = c7m;
                    c7m.A08(z);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c7m = c7m;
                    c7m.A09(z);
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.B3
    public final B7 A3j() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.B3
    public final void cancel() {
        if (this.A00 != null) {
            this.A00.cancel();
        }
    }
}
