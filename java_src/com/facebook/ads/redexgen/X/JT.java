package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.annotation.Nullable;
import android.util.Log;
import com.facebook.ads.AudienceNetworkAds;
import com.facebook.ads.internal.logging.AdEventManagerImpl;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.facebook.ads.internal.settings.MultithreadedBundleWrapper;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class JT {
    private static boolean A00;
    private static boolean A01;
    private static byte[] A02;
    private static final AtomicBoolean A03;
    private static final AtomicBoolean A04;
    private static final AtomicBoolean A05;

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 15);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A02 = new byte[]{110, 106, 105, 93, 76, 65, 77, 70, 75, 77, 102, 77, 92, 95, 71, 90, 67, 52, 54, 61, 54, 33, 58, 48, 103, 118, 111, 117, 67, 89, 12, 72, 67, 66, 11, 88, 12, 79, 77, 64, 64, 12, 109, 89, 72, 69, 73, 66, 79, 73, 98, 73, 88, 91, 67, 94, 71, 109, 72, 95, 2, 69, 66, 69, 88, 69, 77, 64, 69, 86, 73, 4, 5, 2, 12, 127, 67, 65, 73, 12, 74, 89, 66, 79, 88, 69, 67, 66, 77, 64, 69, 88, 85, 12, 65, 77, 85, 12, 66, 67, 88, 12, 91, 67, 94, 71, 12, 92, 94, 67, 92, 73, 94, 64, 85, 2, 57, 62, 57, 36, 57, 49, 60, 57, 42, 53, 120, 121, 112, 62, 63, 36, 112, 51, 49, 60, 60, 53, 52, 126, 100, 100, 101, 53, 103, 102, 53, 96, 39, 32, 39, 58, 39, 47, 34, 39, 52, 43, 15, 24, 23, 124, 53, 50, 53, 40, 53, 61, 48, 53, 38, 61, 40, 53, 51, 50, 124, 47, 40, 61, 46, 40, 57, 56, 36, 19, 28, 87, 0, 22, 4, 87, 22, 27, 5, 18, 22, 19, 14, 87, 30, 25, 30, 3, 30, 22, 27, 30, 13, 18, 19, 86, 87, 36, 28, 30, 7, 7, 30, 25, 16, 89};
    }

    static {
        A02();
        A05 = new AtomicBoolean();
        A03 = new AtomicBoolean();
        A04 = new AtomicBoolean();
    }

    private JT() {
    }

    @SuppressLint({"CatchGeneralException"})
    public static void A03(Context context) {
        if (K1.A11(context) && !A04.getAndSet(true)) {
            try {
                IY reportHandler = new IY(Thread.getDefaultUncaughtExceptionHandler(), context, new JX());
                Thread.setDefaultUncaughtExceptionHandler(reportHandler);
            } catch (Exception e) {
                P7.A07(context, A00(17, 7, 92), P8.A17, new PA(e));
            }
        }
    }

    public static void A04(Context context) {
        A0C(context, null, null, 3);
    }

    public static void A05(Context context) {
        A0C(context, null, null, 3);
    }

    public static void A06(Context context) {
        if (K1.A1U(context)) {
            A0B(context, 0);
            A08(context);
        }
    }

    public static void A07(Context context) {
        if (K1.A1V(context)) {
            A0D(context, null, null, 3);
        }
    }

    private static void A08(Context context) {
        O4.A05.execute(new JQ(context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void A09(Context context) {
        P7.A06(context, new JZ(context), new C0641Jb());
        K9.A02(context);
        AdEventManagerImpl.getInstance(context);
        C0418Al.A04(context, null);
        FP.A04(context);
    }

    private static void A0B(Context context, int i) {
        IF.A01(context);
        char c = A03.getAndSet(true) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    context = context;
                    A03(context);
                    AnonymousClass27.A02(K1.A0k());
                    ME.A00(K1.A0k());
                    MK.A0A(K1.A0k());
                    ML.A0A(K1.A0k());
                    MJ.A0A(K1.A0k());
                    C0407Aa.A03(K1.A08(context));
                    C0780Op.A0D(new JW(context));
                    if (!AdInternalSettings.isDebugBuild()) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    if (!AdInternalSettings.isDebuggerOn()) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    C0695Lf.A02();
                    c = 6;
                    break;
                case 6:
                    if (i != 3) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    context = context;
                    Log.e(A00(0, 17, 39), A00(27, 89, 35));
                    P7.A08(context, A00(24, 3, 9), P8.A0F, new PA(A00(116, 24, 95)));
                    c = '\b';
                    break;
                case '\b':
                    context = context;
                    NR.A03(context);
                    O4.A05(context);
                    c = 2;
                    break;
            }
        }
    }

    public static void A0C(Context context, @Nullable MultithreadedBundleWrapper multithreadedBundleWrapper, @Nullable AudienceNetworkAds.InitListener initListener, int i) {
        C0695Lf.A05(A00(148, 10, 65), A00(158, 26, 83), A00(140, 8, 88));
        C0780Op.A0A();
        A0D(context.getApplicationContext(), multithreadedBundleWrapper, initListener, i);
    }

    @SuppressLint({"CatchGeneralException"})
    private static void A0D(Context context, @Nullable MultithreadedBundleWrapper multithreadedBundleWrapper, @Nullable AudienceNetworkAds.InitListener initListener, int i) {
        IF.A01(context);
        boolean z = false;
        synchronized (JT.class) {
            if (!A00) {
                if (i != 1 && i != 2) {
                    if (i == 3 && !A01) {
                        A01 = true;
                        z = true;
                    }
                } else {
                    A00 = true;
                    z = true;
                }
            }
        }
        if (z) {
            A0B(context, i);
            O4.A07.execute(new JP(context, multithreadedBundleWrapper, initListener));
        } else {
            if (i != 1) {
                return;
            }
            String strA00 = A00(184, 38, 120);
            if (initListener != null) {
                A0E(initListener, new JS(true, strA00));
            } else {
                Log.w(A00(0, 17, 39), strA00);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void A0E(AudienceNetworkAds.InitListener initListener, AudienceNetworkAds.InitResult initResult) {
        OR.A01.execute(new JR(initListener, initResult));
    }

    public static synchronized boolean A0G() {
        return A00;
    }
}
