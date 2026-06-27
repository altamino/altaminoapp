package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.view.MotionEvent;
import com.tonyodev.fetch.FetchConst;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@ThreadSafe
/* renamed from: com.facebook.ads.redexgen.X.Al, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0418Al {
    private static byte[] A00;
    private static final AtomicReference<B0> A01;

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_FILE_ALREADY_CREATED);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A00 = new byte[]{-27, -29, -20, -29, -16, -25, -31};
    }

    static {
        A01();
        A01 = new AtomicReference<>();
    }

    private C0418Al() {
    }

    @SuppressLint({"CatchGeneralException"})
    public static void A02(@Nullable Activity activity, MotionEvent motionEvent) {
        B0 b0;
        try {
            if (Au.A0P(activity) && (b0 = A01.get()) != null) {
                b0.A05(motionEvent);
            }
        } catch (Throwable t) {
            P7.A0E(A00(0, 7, 14), P8.A0s, new PA(t));
        }
    }

    private static void A03(Context context) {
        if (!(context instanceof Application)) {
            return;
        }
        NR.A04(new C0417Ak());
    }

    public static void A04(Context context, @Nullable String str) {
        O4.A05.execute(new C0412Af(context, str));
    }

    @SuppressLint({"CatchGeneralException"})
    public static void A05(Context context, String str) {
        B0 b0 = null;
        char c = !Au.A0P(context) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    if (A01.get() != null) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    str = str;
                    if (!FH.A0C(FH.A03(str))) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    context = context;
                    str = str;
                    A04(context, str);
                    c = 2;
                    break;
                case 6:
                    b0 = A01.get();
                    if (b0 == null) {
                        c = 2;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    str = str;
                    b0 = b0;
                    O4.A05.execute(new C0413Ag(b0, str));
                    c = 2;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CatchGeneralException"})
    public static synchronized void A07(Context context, @Nullable String str) {
        try {
            if (A01.get() == null && Au.A0P(context)) {
                C0422Ap c0422Ap = new C0422Ap(context);
                C0420An c0420An = new C0420An(context);
                C0430Ay c0430AyA0I = new C0429Ax().A0H(true).A04(Au.A05(context)).A02(Au.A03(context)).A03(Au.A04(context)).A06(Au.A07(context)).A0F(Au.A0M()).A0A(c0422Ap).A09(c0420An.A00()).A00(Au.A01(context)).A0C(EnumC0525Ep.A0F).A0E(Au.A0D(context)).A0G(Au.A0N(context)).A05(Au.A06(context)).A0D(Build.class).A01(Au.A02(context)).A08(Au.A09(context)).A07(Au.A08(context)).A0B(c0420An).A0I();
                if (Au.A0Q(context)) {
                    A03(context.getApplicationContext());
                }
                B0 b0 = new B0(context, c0430AyA0I, Au.A0A(context));
                if (str != null) {
                    b0.A06(str);
                }
                A01.set(b0);
            }
        } catch (Throwable th) {
            P7.A07(context, A00(0, 7, 14), P8.A0s, new PA(th));
        }
    }
}
