package com.facebook.ads.redexgen.X;

import android.animation.AnimatorListenerAdapter;
import android.annotation.TargetApi;
import android.os.Handler;
import android.support.annotation.Nullable;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@TargetApi(12)
/* loaded from: assets/assets/audience_network.dex */
public final class IS implements InterfaceC0696Lg {
    private View A00;

    @Nullable
    private QL A01;

    @Nullable
    private IT A02;
    private boolean A03;
    private final Handler A04;
    private final C9T A05;
    private final C9P A06;
    private final C9N A07;
    private final JM A08;
    private final boolean A09;
    private final boolean A0A;

    public IS(View view, IT it) {
        this(view, it, false);
    }

    public IS(View view, IT it, boolean z) {
        this(view, it, z, false);
    }

    public IS(View view, @Nullable IT it, boolean z, boolean z2) {
        this.A06 = new C0623Ij(this);
        this.A07 = new C0622Ii(this);
        this.A05 = new C0616Ic(this);
        this.A08 = new IZ(this);
        this.A03 = true;
        this.A04 = new Handler();
        this.A09 = z;
        this.A0A = z2;
        A08(view, it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A05() {
        this.A00.animate().alpha(0.0f).setDuration(500L).setListener(new IV(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A06(int i, int i2) {
        this.A04.removeCallbacksAndMessages(null);
        this.A00.clearAnimation();
        this.A00.setAlpha(i);
        this.A00.setVisibility(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A07(AnimatorListenerAdapter animatorListenerAdapter) {
        this.A00.setVisibility(0);
        this.A00.animate().alpha(1.0f).setDuration(500L).setListener(animatorListenerAdapter);
    }

    private final void A08(View view, IT it) {
        IS is = this;
        is.A02 = it;
        is.A00 = view;
        is.A00.clearAnimation();
        char c = it == IT.A03 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    is = is;
                    is.A00.setAlpha(0.0f);
                    is.A00.setVisibility(8);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    is = is;
                    is.A00.setAlpha(1.0f);
                    is.A00.setVisibility(0);
                    c = 3;
                    break;
            }
        }
    }

    public final void A0F() {
        this.A03 = false;
        A07(null);
    }

    public final boolean A0G() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0696Lg
    public final void A46(QL ql) {
        this.A01 = ql;
        ql.getEventBus().A03(this.A06, this.A07, this.A08, this.A05);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0696Lg
    public final void A7C(QL ql) {
        A06(1, 0);
        ql.getEventBus().A04(this.A05, this.A08, this.A07, this.A06);
        this.A01 = null;
    }
}
