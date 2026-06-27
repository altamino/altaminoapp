package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class A3 extends AnimatorListenerAdapter {
    public final /* synthetic */ C8O A00;

    public A3(C8O c8o) {
        this.A00 = c8o;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        A3 a3 = this;
        char c = a3.A00.A04 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    a3 = a3;
                    OY.A0O(a3.A00.A03);
                    c = 3;
                    break;
                case 3:
                    a3 = a3;
                    a3.A00.A03.setAlpha(1.0f);
                    a3.A00.A01 = B7.A02;
                    if (a3.A00.A00 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    a3 = a3;
                    a3.A00.A00.setListener(null);
                    a3.A00.A00 = null;
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        A3 a3 = this;
        char c = a3.A00.A04 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    a3 = a3;
                    OY.A0I(a3.A00.A03);
                    c = 3;
                    break;
                case 3:
                    a3 = a3;
                    a3.A00.A01 = B7.A04;
                    if (a3.A00.A00 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    a3 = a3;
                    a3.A00.A00.setListener(null);
                    a3.A00.A00 = null;
                    c = 5;
                    break;
                case 5:
                    return;
            }
        }
    }
}
