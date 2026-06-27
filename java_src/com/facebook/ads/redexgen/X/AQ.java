package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class AQ {
    private static byte[] A00;
    private static final AtomicReference<AO> A01;
    private static final AtomicReference<String> A02;

    private static String A04(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 60);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A05() {
        A00 = new byte[]{-4, 4, -1, -6, 10, 17, 0, 13, 13, 4, -1, 0, -74, -79, -77, -82, -84, -68, -61, -78, -65, -65, -74, -79, -78, -73, -75, -66, -75, -62, -71, -77};
    }

    static {
        A05();
        A01 = new AtomicReference<>();
        A02 = new AtomicReference<>(A04(32, 0, 87));
    }

    private AQ() {
    }

    public static AO A00() {
        AO advertisingIdInfo = A01.get();
        if (advertisingIdInfo == null) {
            return AO.A00();
        }
        return advertisingIdInfo;
    }

    @SuppressLint({"CatchGeneralException"})
    @Nullable
    private static AO A01(Context context, AO ao) {
        char c = ao != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        ao = ao;
                        if (!TextUtils.isEmpty(ao.A02())) {
                            c = '\b';
                            break;
                        } else {
                            c = 5;
                            break;
                        }
                    } catch (Throwable th) {
                        P7.A07(context, A04(25, 7, 20), P8.A10, new PA(th));
                        c = '\b';
                        break;
                    }
                case 5:
                    context = context;
                    ao = AW.A00(context);
                    c = '\b';
                    break;
                case '\b':
                    return ao;
            }
        }
    }

    @SuppressLint({"CatchGeneralException"})
    @Nullable
    private static AO A02(Context context, AO ao, AP ap) {
        AR arA00 = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        context = context;
                        if (!K1.A1v(context)) {
                            c = '\f';
                            break;
                        } else {
                            c = 4;
                            break;
                        }
                    } catch (Throwable th) {
                        P7.A07(context, A04(25, 7, 20), P8.A12, new PA(th));
                        c = '\f';
                        break;
                    }
                case 4:
                    ao = ao;
                    if (ao == null) {
                        c = '\b';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    ao = ao;
                    if (!TextUtils.isEmpty(ao.A02())) {
                        c = '\f';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    context = context;
                    arA00 = AS.A00(context.getContentResolver());
                    c = '\f';
                    break;
                case '\f':
                    if (arA00 == null) {
                        c = 15;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    if (arA00.A01 == null) {
                        c = 15;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    ap = ap;
                    A02.set(arA00.A01);
                    ap.A05(arA00.A01);
                    c = 15;
                    break;
                case 15:
                    ao = ao;
                    if (ao != null) {
                        c = 19;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    if (arA00 == null) {
                        c = 19;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    if (!TextUtils.isEmpty(arA00.A00)) {
                        c = 18;
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 18:
                    ao = new AO(arA00.A00, arA00.A02, AN.A05);
                    c = 19;
                    break;
                case 19:
                    return ao;
            }
        }
    }

    public static String A03() {
        String attributionId = A02.get();
        if (attributionId == null) {
            return A04(32, 0, 87);
        }
        return attributionId;
    }

    @SuppressLint({"CatchGeneralException"})
    public static void A06(Context context) {
        AO aoA02;
        try {
            AP ap = new AP(context);
            A07(ap);
            if (!A08()) {
                if (K1.A1w(context)) {
                    AO upToDateAdInfo = A02(context, null, ap);
                    aoA02 = A01(context, upToDateAdInfo);
                } else {
                    AO upToDateAdInfo2 = A01(context, null);
                    aoA02 = A02(context, upToDateAdInfo2, ap);
                }
                if (aoA02 != null && !TextUtils.isEmpty(aoA02.A02())) {
                    A01.set(aoA02);
                    ap.A04(aoA02);
                }
            }
        } catch (Throwable th) {
            P7.A07(context, A04(25, 7, 20), P8.A11, new PA(th));
        }
    }

    private static void A07(AP ap) {
        A01.set(ap.A02());
        A02.set(ap.A03());
    }

    private static boolean A08() {
        boolean z = false;
        boolean updated = NT.A04();
        if (updated) {
            boolean updated2 = NT.A05(A04(0, 12, 95));
            if (updated2) {
                A02.set(NT.A01(A04(0, 12, 95)));
                z = true;
            }
        }
        boolean updated3 = NT.A04();
        if (!updated3) {
            return z;
        }
        boolean updated4 = NT.A05(A04(12, 13, 17));
        if (updated4) {
            String strA01 = NT.A01(A04(12, 13, 17));
            AtomicReference<AO> atomicReference = A01;
            if (strA01 == null) {
                strA01 = A04(32, 0, 87);
            }
            atomicReference.set(new AO(strA01, false, AN.A03));
            return true;
        }
        return z;
    }
}
