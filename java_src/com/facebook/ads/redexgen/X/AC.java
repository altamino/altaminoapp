package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class AC extends AnimatorListenerAdapter {
    public final /* synthetic */ C8O A00;

    public AC(C8O c8o) {
        this.A00 = c8o;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        AC ac = this;
        char c = ac.A00.A04 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    ac = ac;
                    OY.A0I(ac.A00.A03);
                    c = 3;
                    break;
                case 3:
                    ac = ac;
                    ac.A00.A03.setAlpha(0.0f);
                    ac.A00.A01 = B7.A04;
                    if (ac.A00.A00 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    ac = ac;
                    ac.A00.A00.setListener(null);
                    ac.A00.A00 = null;
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.A00.A01 = B7.A02;
        if (this.A00.A00 != null) {
            this.A00.A00.setListener(null);
            this.A00.A00 = null;
        }
    }
}
