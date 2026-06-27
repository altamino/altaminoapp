package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.util.HashMap;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Sx, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0892Sx {
    private C0892Sx() {
    }

    public static AbstractC0888St A00(T0 t0, @Nullable Bundle bundle, boolean z, boolean z2) {
        Bundle bundle2 = bundle;
        T0 t02 = t0;
        C1S c1sA00 = null;
        boolean zA05 = false;
        C02282y c02282yA00 = null;
        AnonymousClass32 anonymousClass32 = null;
        double dA00 = 0.0d;
        AbstractC0888St abstractC0888StA0A = null;
        boolean z3 = false;
        char c = t02.A00() == 1 ? (char) 2 : (char) 21;
        while (true) {
            switch (c) {
                case 2:
                    t02 = t02;
                    c02282yA00 = t02.A05().A09().A01();
                    c = 3;
                    break;
                case 3:
                    t02 = t02;
                    anonymousClass32 = t02.A05().A0H().get(0);
                    dA00 = C0887Ss.A00(anonymousClass32);
                    boolean zA08 = t02.A05().A0H().get(0).A08();
                    zA05 = C0887Ss.A05(t02.A00(), t02.A01(), dA00);
                    c1sA00 = C1T.A00(t02.A02(), t02.A06(), "", Uri.parse(t02.A05().A0H().get(0).A05().A04()), new HashMap());
                    if (!zA08) {
                        c = '\t';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c1sA00 = c1sA00;
                    if (!(c1sA00 instanceof C01791b)) {
                        c = '\t';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    t02 = t02;
                    c02282yA00 = c02282yA00;
                    abstractC0888StA0A = TP.A0A(t02, c02282yA00, z2);
                    c = 6;
                    break;
                case 6:
                    if (!z) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    t02 = t02;
                    bundle2 = bundle2;
                    anonymousClass32 = anonymousClass32;
                    abstractC0888StA0A = abstractC0888StA0A;
                    abstractC0888StA0A.A0W(anonymousClass32, t02.A05().A0D(), dA00, bundle2, t02.A0A());
                    c = '\b';
                    break;
                case '\b':
                    return abstractC0888StA0A;
                case '\t':
                    anonymousClass32 = anonymousClass32;
                    if (!TextUtils.isEmpty(anonymousClass32.A03().A07())) {
                        c = '\n';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\n':
                    t02 = t02;
                    if (!K1.A1l(t02.A02())) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    t02 = t02;
                    c02282yA00 = c02282yA00;
                    abstractC0888StA0A = new TC(t02, c02282yA00);
                    c = 6;
                    break;
                case '\f':
                    anonymousClass32 = anonymousClass32;
                    if (!TextUtils.isEmpty(anonymousClass32.A03().A07())) {
                        c = 15;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    t02 = t02;
                    if (!K1.A1j(t02.A02())) {
                        c = 15;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    t02 = t02;
                    c02282yA00 = c02282yA00;
                    abstractC0888StA0A = new T2(t02, c02282yA00, zA05);
                    c = 6;
                    break;
                case 15:
                    if (!zA05) {
                        c = 20;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    t02 = t02;
                    if (t02.A00() != 2) {
                        c = 19;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    z3 = true;
                    c = 18;
                    break;
                case 18:
                    t02 = t02;
                    c02282yA00 = c02282yA00;
                    abstractC0888StA0A = new C0890Sv(t02, c02282yA00, z3);
                    c = 6;
                    break;
                case 19:
                    z3 = false;
                    c = 18;
                    break;
                case 20:
                    t02 = t02;
                    c02282yA00 = c02282yA00;
                    abstractC0888StA0A = new TE(t02, C0887Ss.A03(dA00), c02282yA00);
                    c = 6;
                    break;
                case 21:
                    t02 = t02;
                    c02282yA00 = t02.A05().A09().A00();
                    c = 3;
                    break;
            }
        }
    }
}
