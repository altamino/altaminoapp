package com.facebook.ads.redexgen.X;

import android.animation.ValueAnimator;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewGroup;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class AM implements B3 {
    private int A00;

    @Nullable
    private ValueAnimator A01;
    private B7 A02 = B7.A04;
    private final int A03;
    private final int A04;
    private final View A05;

    public AM(View view, int i, int i2, int i3) {
        this.A05 = view;
        this.A03 = i;
        this.A00 = i2;
        this.A04 = i3;
    }

    private ValueAnimator A00(int i, int i2, View view) {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i, i2);
        valueAnimatorOfInt.setDuration(this.A03);
        valueAnimatorOfInt.addUpdateListener(new AY(this, view));
        return valueAnimatorOfInt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A07(boolean z) {
        AM am = this;
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    am = am;
                    am.A02 = B7.A05;
                    am.A01 = am.A00(am.A00, am.A04, am.A05);
                    am.A01.addListener(new C0411Ae(am));
                    am.A01.start();
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    am = am;
                    ViewGroup.LayoutParams layoutParams = am.A05.getLayoutParams();
                    layoutParams.height = am.A04;
                    am.A05.setLayoutParams(layoutParams);
                    OY.A0I(am.A05);
                    am.A02 = B7.A04;
                    c = 3;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A08(boolean z) {
        AM am = this;
        OY.A0O(am.A05);
        char c = z ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    am = am;
                    am.A02 = B7.A03;
                    am.A01 = am.A00(am.A04, am.A00, am.A05);
                    am.A01.addListener(new C0425As(am));
                    am.A01.start();
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    am = am;
                    ViewGroup.LayoutParams layoutParams = am.A05.getLayoutParams();
                    layoutParams.height = am.A00;
                    am.A05.setLayoutParams(layoutParams);
                    am.A02 = B7.A02;
                    c = 3;
                    break;
            }
        }
    }

    public final void A09(int i) {
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.B3
    public final void A2a(boolean z, boolean z2) {
        AM am = this;
        char c = z2 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    am = am;
                    am.A07(z);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    am = am;
                    am.A08(z);
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.B3
    public final B7 A3j() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.B3
    public final void cancel() {
        if (this.A01 != null) {
            this.A01.cancel();
        }
    }
}
