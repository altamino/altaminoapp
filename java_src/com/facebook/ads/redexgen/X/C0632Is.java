package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Is, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0632Is implements InterfaceC0696Lg {

    @Nullable
    private QL A01;
    private boolean A02;
    private boolean A03;
    private boolean A04;
    private final C9P A07 = new C0639Iz(this);
    private final C9T A06 = new C0638Iy(this);
    private final C9N A08 = new C0636Iw(this);
    private final Q1 A09 = new C0635Iv(this);
    private final JM A0A = new C0633It(this);
    private final Handler A05 = new Handler();
    private final List<B3> A0B = new ArrayList();
    private int A00 = 2000;

    public C0632Is(boolean z) {
        this.A02 = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A03() {
        this.A05.removeCallbacksAndMessages(null);
        Iterator<B3> it = this.A0B.iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    it = it;
                    it.next().cancel();
                    c = 2;
                    break;
                case 4:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A06(boolean z, boolean z2) {
        Iterator<B3> it = this.A0B.iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    it = it;
                    it.next().A2a(z, z2);
                    c = 2;
                    break;
                case 4:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0D(B7 b7) {
        boolean z = false;
        Iterator<B3> it = this.A0B.iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    b7 = b7;
                    it = it;
                    if (it.next().A3j() == b7) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    z = false;
                    c = 5;
                    break;
                case 5:
                    return z;
                case 6:
                    z = true;
                    c = 5;
                    break;
            }
        }
    }

    public final void A0E() {
        this.A0B.clear();
    }

    public final void A0F() {
        if (this.A02) {
            this.A05.removeCallbacksAndMessages(null);
            this.A02 = false;
        }
    }

    public final void A0G() {
        this.A04 = true;
        this.A03 = true;
        A06(false, false);
    }

    public final void A0H(int i) {
        this.A00 = i;
    }

    public final void A0I(B3 b3) {
        this.A0B.add(b3);
    }

    public final boolean A0J() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0696Lg
    public final void A46(QL ql) {
        this.A01 = ql;
        ql.getEventBus().A03(this.A07, this.A0A, this.A08, this.A09, this.A06);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0696Lg
    public final void A7C(QL ql) {
        A03();
        ql.getEventBus().A04(this.A06, this.A0A, this.A08, this.A09, this.A07);
        this.A01 = null;
    }
}
