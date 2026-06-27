package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.view.MotionEvent;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.Nullable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class FP {
    private static int A00;
    private static byte[] A01;
    private static final AtomicReference<C0546Fk> A02;

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 101);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A01 = new byte[]{45, 47, 36, 47, 56, 35, 41, 97, 125, 125, 121, 122, 51, 38, 38, 122, 39, 124, 121, 109, 104, 125, 108, 39, 111, 107, 122, 107, 113, 39, 106, 102, 100, 38, 49, 61, 58, 62, 61, 49, 38, 110, 122, 54, 109, 125, 52, 49, 61, 58, 62, 61, 49, 56, 60, 58, 62, 61, 60, 59, 57, 59, 58, 61, 62, 62, 57, 57, 57};
    }

    static {
        A02();
        A02 = new AtomicReference<>();
        A00 = 0;
    }

    private FP() {
    }

    @SuppressLint({"CatchGeneralException"})
    public static void A03(@Nullable Activity activity, MotionEvent motionEvent) {
        try {
            C0546Fk c0546Fk = A02.get();
            if (c0546Fk != null) {
                c0546Fk.A00(motionEvent);
            }
        } catch (Throwable t) {
            P7.A0E(A00(0, 7, 47), P8.A0s, new PA(t));
        }
    }

    public static void A04(Context context) {
        O4.A05.execute(new FL(context));
    }

    private static void A05(Context context) {
        if (!(context instanceof Application)) {
            return;
        }
        NR.A04(new FO());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CatchGeneralException"})
    public static synchronized void A07(Context context) {
        if (A0A(context)) {
            AQ.A06(context);
            C0544Fi c0544FiA0P = new C0543Fh().A05(A00(7, 62, 108)).A0N(FV.A09(context)).A0O(FV.A0A(context)).A01(FV.A02(context)).A00(FV.A01(context)).A02(new FR(context)).A0M(FV.A08(context)).A09(FU.A06.A02(context)).A06(FU.A03.A02(context)).A0G(FU.A0C.A02(context)).A0J(FU.A0E.A02(context)).A0F(FU.A0B.A02(context)).A07(FU.A04.A02(context)).A0D(FU.A09.A02(context)).A0K(FU.A0F.A02(context)).A0B(FU.A08.A02(context)).A08(FU.A05.A02(context)).A0E(FU.A0A.A02(context)).A0H(FU.A0D.A02(context)).A0I(FV.A0B(context)).A03(EnumC0590Hc.A03).A0L(FV.A0C(context)).A0C(FV.A07(context)).A04(AQ.A00().A02()).A0A(FV.A06(context)).A0P();
            if (FV.A0C(context)) {
                A05(context);
            }
            C0546Fk c0546Fk = new C0546Fk(context, c0544FiA0P);
            A02.set(c0546Fk);
            c0546Fk.A02(true);
        }
    }

    @SuppressLint({"CatchGeneralException"})
    public static void A08(Context context, String str, String str2) {
        char c = A02.get() == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    context = context;
                    if (!A09(context)) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    context = context;
                    if (A00 > K1.A01(context)) {
                        c = 2;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    str = str;
                    str2 = str2;
                    O4.A05.execute(new FM(str, str2));
                    A00++;
                    c = 2;
                    break;
            }
        }
    }

    private static boolean A09(Context context) {
        boolean z = false;
        char c = A02.get() != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    context = context;
                    if (FV.A00(context) <= Math.random() * 100.0d) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    private static boolean A0A(Context context) {
        boolean z = false;
        char c = FV.A08(context) ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    context = context;
                    if (FV.A03(context) <= Math.random() * 100.0d) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }
}
