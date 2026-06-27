package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.support.annotation.NonNull;
import android.view.Display;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.5s, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C02985s {
    public static final C02875h A00;

    static {
        if (Build.VERSION.SDK_INT >= 26) {
            A00 = new C02965q() { // from class: com.facebook.ads.redexgen.X.5r
            };
            return;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            A00 = new C02965q();
            return;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            A00 = new C02955p();
            return;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            A00 = new C02945o();
            return;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            A00 = new C02925m();
            return;
        }
        if (Build.VERSION.SDK_INT >= 18) {
            A00 = new C02915l();
            return;
        }
        if (Build.VERSION.SDK_INT >= 17) {
            A00 = new C02905k();
            return;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            A00 = new C02895j();
        } else if (Build.VERSION.SDK_INT >= 15) {
            A00 = new C02885i();
        } else {
            A00 = new C02875h();
        }
    }

    private C02985s() {
    }

    public static int A00(View view) {
        return A00.A03(view);
    }

    public static int A01(View view) {
        return A00.A04(view);
    }

    public static int A02(View view) {
        return A00.A05(view);
    }

    public static int A03(View view) {
        return A00.A06(view);
    }

    public static Display A04(@NonNull View view) {
        return A00.A07(view);
    }

    public static C6F A05(View view, C6F c6f) {
        return A00.A08(view, c6f);
    }

    public static C6F A06(View view, C6F c6f) {
        return A00.A09(view, c6f);
    }

    public static void A07(View view) {
        A00.A0A(view);
    }

    public static void A08(@NonNull View view) {
        A00.A0B(view);
    }

    public static void A09(View view, int i) {
        A00.A0C(view, i);
    }

    public static void A0A(View view, C5L c5l) {
        A00.A0D(view, c5l);
    }

    public static void A0B(View view, C5T c5t) {
        A00.A0E(view, c5t);
    }

    public static void A0C(View view, Runnable runnable) {
        A00.A0F(view, runnable);
    }

    public static void A0D(View view, Runnable runnable, long j) {
        A00.A0G(view, runnable, j);
    }

    public static boolean A0E(View view) {
        return A00.A0J(view);
    }

    public static boolean A0F(View view) {
        return A00.A0H(view);
    }
}
