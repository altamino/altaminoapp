package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.support.v8.renderscript.ScriptIntrinsicBLAS;
import android.text.TextUtils;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.settings.AdInternalSettings;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Op, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0780Op {

    @Nullable
    private static JU A00;
    private static byte[] A01;
    private static final Set<String> A02;
    private static final Set<String> A03;
    private static final AtomicBoolean A04;

    private static String A09(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 122);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A0C() {
        A01 = new byte[]{37, 14, 31, 28, 4, 25, 0, 2, 5, 12, 75, 9, 14, 13, 4, 25, 14, 75, 2, 5, 2, 31, 74, 18, 79, 94, 103, 124, 73, 33, 84, 65, 125, 65, 121, 80, 42, 67, 38, 69, 69, 70, 119, 80, 99, 92, 97, 85, 91, 43, 127, 117, 66, 46, 25, 114, 52, 52, 123, 6, 115, 2, 26, 48, 17, 113, 44, 27, 118, 47, 45, 39, 40, 113, 43, 52, 51, 113, 22, 44, 48, 40, 126, 73, 47, 93, 85, 60, 25, 40, 89, 20, 33, 46, 9, 1, 4, 89, 31, 29, 25, 20, 28, 44, 40, 14, 23, 53, 34, 8, 44, 80, 103, 11, 84, 115, 78, 82, 118, 75, 94, 85, 74, 86, 19, 111, 85, 94, 124, 80, 78, 74, 10, 81, 110, 80, 23, 65, 106, 75, 5, 50, 2, 10, 17, 19, 15, 2, 13, 6, 60, 14, 12, 7, 6, 60, 12, 13, 69, 78, 95, 92, 68, 89, 64, 87, 85, 87, 70, 57, 110, 97, 85, 109, 107, 68, 105, 36, 123, 110, 90, 93, 107, 97, 118, 90, 71, 58, 102, 127, 104, 66, 50, 5};
    }

    static {
        A0C();
        A02 = new HashSet();
        A03 = new HashSet();
        A02.add(A09(55, 29, 57));
        A03.add(A09(26, 29, 105));
        A03.add(A09(113, 29, 66));
        A03.add(A09(84, 29, 23));
        A03.add(A09(165, 29, 117));
        A04 = new AtomicBoolean();
    }

    private C0780Op() {
    }

    public static MQ A00(Context context) {
        return A03(context, true);
    }

    public static MQ A01(Context context) {
        return A02(context, true);
    }

    public static MQ A02(Context context, boolean z) {
        Map<String, String> mapA02 = null;
        String next = null;
        Iterator<String> it = null;
        String str = null;
        MQ mq = new MQ(z);
        A0E(mq);
        char c = !A0F() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    mq = mq;
                    mq.A0T(A03);
                    mq.A0S(A02);
                    c = 3;
                    break;
                case 3:
                    if (!NT.A04()) {
                        c = '\b';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    mapA02 = NT.A02();
                    it = mapA02.keySet().iterator();
                    c = 5;
                    break;
                case 5:
                    it = it;
                    if (!it.hasNext()) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    mapA02 = mapA02;
                    it = it;
                    next = it.next();
                    str = mapA02.get(next);
                    if (str == null) {
                        c = 5;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    mq = mq;
                    next = next;
                    str = str;
                    mq.A0H(next, str);
                    c = 5;
                    break;
                case '\b':
                    return mq;
            }
        }
    }

    private static MQ A03(Context context, boolean z) {
        MQ client = new MQ(z);
        A0E(client);
        return client;
    }

    public static InterfaceC02855d A04(Context context) {
        return A07(true, context);
    }

    public static InterfaceC02855d A05(Context context) {
        return A06(true, context);
    }

    public static InterfaceC02855d A06(boolean z, Context context) {
        C5Z c5z = new C5Z();
        C5W c5wA08 = A08(context);
        char c = !A0F() ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c5z = c5z;
                    c5z.A02(A03);
                    c5z.A01(A02);
                    c = 3;
                    break;
                case 3:
                    if (!NT.A04()) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c5wA08 = c5wA08;
                    c5wA08.A08(NT.A02());
                    c = 5;
                    break;
                case 5:
                    return AbstractC02845c.A00().A01(c5z.A00(c5wA08.A09()).A03(z).A04(BuildConfigApi.isDebug()).A05(), new PC(context), O4.A01());
            }
        }
    }

    private static InterfaceC02855d A07(boolean z, Context context) {
        return AbstractC02845c.A00().A01(new C5Z().A03(z).A00(A08(context).A09()).A04(BuildConfigApi.isDebug()).A05(), new PC(context), O4.A01());
    }

    private static C5W A08(Context context) {
        A0B();
        C5W c5w = new C5W();
        if (A0F()) {
            c5w.A02(360000).A04(120000);
        } else {
            c5w.A02(K1.A0E(context));
        }
        c5w.A03(K1.A0F(context)).A04(K1.A0G(context)).A05(K1.A0H(context)).A06(K1.A0I(context));
        synchronized (C0780Op.class) {
            if (A00 != null && (A00 instanceof JV)) {
                c5w.A07((JV) A00);
            }
        }
        return c5w;
    }

    public static void A0A() {
        A04.set(true);
    }

    private static void A0B() {
        if (!A04.get()) {
            P7.A0E(A09(158, 7, 81), P8.A1Q, new PA(A09(0, 23, 17)));
        }
    }

    public static synchronized void A0D(JU ju) {
        A00 = ju;
    }

    private static void A0E(MQ mq) {
        A0B();
        if (A0F()) {
            mq.A0N(360000);
            mq.A0P(120000);
        } else {
            mq.A0N(30000);
        }
        mq.A0O(3);
        synchronized (C0780Op.class) {
            if (A00 != null) {
                mq.A0Q(A00);
            }
        }
    }

    private static boolean A0F() {
        boolean z = false;
        String urlPrefix = AdInternalSettings.getUrlPrefix();
        char c = !TextUtils.isEmpty(urlPrefix) ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    urlPrefix = urlPrefix;
                    String urlPrefix2 = A09(23, 3, 70);
                    if (!urlPrefix.endsWith(urlPrefix2)) {
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

    public static boolean A0G(Context context) {
        boolean z = true;
        boolean z2 = false;
        char c = Build.VERSION.SDK_INT < 17 ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    context = context;
                    z2 = false;
                    if (Settings.System.getInt(context.getContentResolver(), A09(ScriptIntrinsicBLAS.RIGHT, 16, 25), 0) == 0) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return z;
                case 4:
                    z = z2;
                    c = 3;
                    break;
                case 5:
                    context = context;
                    z2 = false;
                    if (Settings.Global.getInt(context.getContentResolver(), A09(ScriptIntrinsicBLAS.RIGHT, 16, 25), 0) != 0) {
                        c = 3;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    z = z2;
                    c = 3;
                    break;
            }
        }
    }
}
