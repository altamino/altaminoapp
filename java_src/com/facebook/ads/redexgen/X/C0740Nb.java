package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.support.annotation.VisibleForTesting;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Nb, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0740Nb {
    private float A00;
    private boolean A01;
    private boolean A02;
    private final Handler A03;
    private final InterfaceC0739Na A04;

    public C0740Nb(int i, InterfaceC0739Na interfaceC0739Na) {
        this(i, interfaceC0739Na, new Handler());
    }

    @VisibleForTesting
    private C0740Nb(int i, InterfaceC0739Na interfaceC0739Na, Handler handler) {
        this.A02 = false;
        this.A00 = i;
        this.A04 = interfaceC0739Na;
        this.A03 = handler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A01() {
        C0740Nb c0740Nb = this;
        c0740Nb.A00 -= 0.25f;
        c0740Nb.A04.A63(c0740Nb.A00);
        char c = c0740Nb.A00 <= 0.0f ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0740Nb = c0740Nb;
                    if (!c0740Nb.A01) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    c0740Nb = c0740Nb;
                    c0740Nb.A01 = true;
                    c0740Nb.A04.A56();
                    c0740Nb.A02 = false;
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    public final float A03() {
        return this.A00;
    }

    public final boolean A04() {
        boolean z = false;
        char c = this.A00 <= 0.0f ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    public final boolean A05() {
        return this.A02;
    }

    public final boolean A06() {
        if (!A05()) {
            return false;
        }
        this.A02 = false;
        return true;
    }

    public final boolean A07() {
        C0740Nb c0740Nb = this;
        boolean z = true;
        char c = c0740Nb.A04() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0740Nb = c0740Nb;
                    if (!c0740Nb.A01) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    c0740Nb = c0740Nb;
                    c0740Nb.A04.A56();
                    c = 4;
                    break;
                case 4:
                    c0740Nb = c0740Nb;
                    if (!c0740Nb.A04()) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    c0740Nb = c0740Nb;
                    if (!c0740Nb.A05()) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    z = false;
                    c = 7;
                    break;
                case 7:
                    return z;
                case '\b':
                    c0740Nb = c0740Nb;
                    c0740Nb.A02 = z;
                    c0740Nb.A04.A63(c0740Nb.A00);
                    c0740Nb.A03.postDelayed(new NZ(c0740Nb), 250L);
                    c = 7;
                    break;
            }
        }
    }
}
