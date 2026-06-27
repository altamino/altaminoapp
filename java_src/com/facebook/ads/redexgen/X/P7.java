package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import android.util.SparseIntArray;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.narvii.poweruser.history.ModerationHistory;
import com.narvii.video.SharedVideoView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class P7 {

    @VisibleForTesting
    public static SparseIntArray A00;

    @VisibleForTesting
    public static Executor A01;
    public static boolean A02;
    private static boolean A03;
    private static byte[] A04;
    private static final List<Integer> A05;
    private static final List<P9> A06;
    private static final AtomicInteger A07;
    private static final AtomicReference<InterfaceC0640Ja> A08;
    private static final AtomicReference<JY> A09;

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 9);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A04 = new byte[]{28, 24, 27, 47, 62, 51, 63, 52, 57, 63, 20, 63, 46, 45, 53, 40, 49, 78, 66, 15, 7, 17, 17, 3, 5, 7, 66, 95, 66, 90, 87, 76, 103, 92, 93, 76, 93, 91, 76, 81, 87, 86, 103, 79, 87, 103, 75, 81, 95, 86, 89, 84, 103, 92, 89, 76, 89, 103, 84, 87, 95, 95, 81, 86, 95, 36, 37, 31, 44, 47, 39, 39, 41, 46, 39, 23, 17, 42, 17, 20, 1, 20, 42, 25, 26, 18, 18, 28, 27, 18, 32, 12, 22, 13, 23, 6, 17, 89, 67, 107, 103, 52, 50, 37, 51, 62, 55, 34, 4, 40, 35, 34, 103, 122, 103, 110, 79, 72, 95, 77, 10, 73, 88, 75, 89, 66, 10, 72, 79, 73, 75, 95, 89, 79, 10, 69, 76, 10, 79, 92, 79, 68, 94, 10, 93, 67, 94, 66, 10, 89, 95, 72, 94, 83, 90, 79, 10, 23, 10, 40, 21, 14, 8, 29, 25, 4, 2, 3, 77, 30, 5, 2, 24, 1, 9, 77, 3, 2, 25, 77, 5, 12, 29, 29, 8, 3, 77, 5, 8, 31, 8, 67, 84, 111, 111, 32, 109, 97, 110, 121, 32, 101, 118, 101, 110, 116, 115, 32, 111, 102, 32, 115, 117, 98, 116, 121, 112, 101, 32, 99, 111, 100, 101, 58, 32, 96, 93, 70, 64, 64, 65, 64, 65, 5, 76, 75, 8, 72, 64, 72, 74, 87, 92, 5, 73, 74, 66, 5, 73, 76, 72, 76, 81, 4, 5, 105, 68, 86, 81, 5, 64, 83, 64, 75, 81, 31, 5, 123, 89, 86, 31, 76, 24, 84, 87, 95, 24, 124, 93, 90, 77, 95, 24, 125, 78, 93, 86, 76, 22, 24, 123, 87, 86, 76, 93, 64, 76, 24, 81, 75, 24, 86, 77, 84, 84, 22, 77, 112, 107, 109, 120, 124, 97, 103, 102, 40, 108, 125, 122, 97, 102, 111, 40, 100, 103, 111, 111, 97, 102, 111, 40, 108, 109, 106, 125, 111, 40, 109, 126, 109, 102, 124, 38, 41, 37, 100, 97, 97, 108, 113, 108, 106, 107, 100, 105, 76, 107, 99, 106, 37, 56, 37, 62, 3, 24, 30, 11, 15, 18, 20, 21, 91, 63, 30, 25, 14, 28, 91, 62, 13, 30, 21, 15, 91, 12, 18, 15, 19, 91, 8, 14, 25, 15, 2, 11, 30, 91, 70, 91, 111, 109, 111, 100, 105, 37, 46, 63, 60, 36, 57, 32, 5, 34, 42, 35, 108, 8, 41, 46, 57, 43, 108, 9, 58, 41, 34, 56, 108, 59, 37, 56, 36, 108, 63, 57, 46, 56, 53, 60, 41, 108, 113, 108, 118};
    }

    static {
        A04();
        A00 = new SparseIntArray();
        A03 = false;
        A09 = new AtomicReference<>();
        A08 = new AtomicReference<>();
        A01 = Executors.newSingleThreadExecutor();
        A05 = Arrays.asList(10, 50, 100, 1000);
        A06 = Collections.synchronizedList(new ArrayList());
        A07 = new AtomicInteger();
        A02 = false;
    }

    private P7() {
    }

    private static int A00(String str, int i, Context context) {
        int iA07 = 200;
        char c = A01(SharedVideoView.MEDIA_ERROR_FILE_NOT_EXISTS, 7, 66).equals(str) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    if (P8.A1P != i) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return iA07;
                case 4:
                    str = str;
                    if (!A01(399, 5, 5).equals(str)) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 5:
                    str = str;
                    if (!A01(29, 36, 49).equals(str)) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    iA07 = 50;
                    c = 3;
                    break;
                case 7:
                    str = str;
                    if (!A01(75, 15, 124).equals(str)) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    context = context;
                    iA07 = K1.A07(context);
                    c = 3;
                    break;
                case '\t':
                    iA07 = -1;
                    c = 3;
                    break;
            }
        }
    }

    private static void A05(Context context, int i, int i2) {
        A07(context, A01(65, 10, 73), P8.A1g, new PA(A01(PsExtractor.AUDIO_STREAM, 33, 9) + i, A01(90, 9, 106) + i2));
    }

    public static void A06(Context context, JY jy, InterfaceC0640Ja interfaceC0640Ja) {
        A08.set(interfaceC0640Ja);
        A09.set(jy);
        synchronized (P7.class) {
            if (!A03) {
                A03 = true;
                A01.execute(new P4(context));
            }
        }
    }

    public static void A07(@Nullable Context context, String str, int i, PA pa) {
        String str2 = str;
        PA pa2 = pa;
        String str3 = null;
        Context applicationContext = null;
        char c = context == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    A0G(new RuntimeException(A01(ModerationHistory.OP_ADMIN_SEND_WARNING_TO_USER, 39, 49)));
                    return;
                case 4:
                    context = context;
                    IF.A01(context);
                    applicationContext = context.getApplicationContext();
                    if (!A02) {
                        c = '\t';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    pa2 = pa2;
                    if (pa2.A00() != 0) {
                        c = '\t';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    str2 = str2;
                    str3 = A01(115, 44, 35) + str2 + A01(99, 16, 78) + i;
                    if (!ProcessUtils.sRemoteProcess) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    if (i == P8.A03) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    pa2 = pa2;
                    str3 = str3;
                    A0D(new RuntimeException(str3, pa2));
                    c = '\t';
                    break;
                case '\t':
                    try {
                        if (A0I(applicationContext, str2, i, Math.random(), pa2)) {
                            A0A(applicationContext, str2, i, pa2);
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        A0G(th);
                        return;
                    }
            }
        }
    }

    @SuppressLint({"CatchGeneralException"})
    public static void A08(Context context, String str, int i, PA pa) {
        PA pa2;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        pa = pa;
                        pa.A03(2);
                        pa.A07(false);
                        pa.A04(1);
                        c = K1.A1E(context) ? (char) 7 : '\t';
                    } catch (Throwable th) {
                        A0G(th);
                        return;
                    }
                case 7:
                    pa2 = pa;
                    pa2.A06(true);
                    break;
                case '\t':
                    pa2 = pa;
                    pa2.A06(false);
                    break;
            }
            return;
        }
        A07(context, str, i, pa2);
    }

    public static void A09(Context context, String str, int i, PA pa) {
        try {
            pa.A03(2);
            pa.A06(false);
            A07(context, str, i, pa);
        } catch (Throwable th) {
            A0G(th);
        }
    }

    private static void A0A(Context context, String str, int i, PA pa) {
        synchronized (P7.class) {
            if (!A03) {
                int iA02 = K1.A02(context);
                if (A07.getAndIncrement() < iA02 - 1) {
                    A06.add(new P9(str, i, pa));
                } else if (A07.get() == iA02) {
                    A06.add(new P9(A01(65, 10, 73), P8.A1d, new PA(A01(225, 42, 44) + str + A01(443, 1, 69) + i)));
                }
            } else {
                A0B(context, str, i, pa, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void A0B(Context context, String str, int i, PA pa, boolean z) {
        Context context2 = context;
        String str2 = str;
        PA pa2 = pa;
        boolean z2 = false;
        P6 p6 = null;
        JY jy = A09.get();
        char c = jy != null ? (char) 2 : '\r';
        while (true) {
            switch (c) {
                case 2:
                    jy = jy;
                    if (!jy.A41()) {
                        c = '\r';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z2 = true;
                    c = 4;
                    break;
                case 4:
                    boolean isRunningEndToEndTest = BuildConfigApi.isDebug();
                    if (!isRunningEndToEndTest) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    if (!z2) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    pa2 = pa2;
                    if (pa2.A00() != 0) {
                        c = '\f';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    str2 = str2;
                    pa2 = pa2;
                    Log.e(A01(0, 17, 83), A01(362, 37, 114) + str2 + A01(99, 16, 78) + i, pa2);
                    c = '\b';
                    break;
                case '\b':
                    context2 = context2;
                    str2 = str2;
                    pa2 = pa2;
                    jy = jy;
                    p6 = new P6(context2, str2, i, pa2, jy);
                    if (!z) {
                        c = 11;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    p6 = p6;
                    A01.execute(p6);
                    c = '\n';
                    break;
                case '\n':
                    return;
                case 11:
                    p6 = p6;
                    p6.run();
                    c = '\n';
                    break;
                case '\f':
                    str2 = str2;
                    pa2 = pa2;
                    String str3 = A01(411, 32, 69) + str2 + A01(99, 16, 78) + i + A01(17, 12, 107) + pa2.getMessage() + A01(343, 19, 12) + pa2.A02();
                    c = '\b';
                    break;
                case '\r':
                    z2 = false;
                    c = 4;
                    break;
            }
        }
    }

    private static void A0D(RuntimeException runtimeException) {
        if (A02) {
            new Handler(Looper.getMainLooper()).post(new P5(runtimeException));
        }
    }

    public static void A0E(String str, int i, PA pa) {
        Context contextA00 = IF.A00();
        if (contextA00 != null) {
            A07(contextA00, str, i, pa);
        }
    }

    public static void A0F(Throwable th) {
        if (A02) {
            A0D(new RuntimeException(A01(159, 33, 100), th));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void A0G(Throwable th) {
        Log.e(A01(0, 17, 83), A01(306, 37, 1), th);
        if (A02) {
            A0D(new RuntimeException(th));
        }
    }

    @VisibleForTesting
    @SuppressLint({"CatchGeneralException"})
    private static boolean A0I(Context context, String str, int i, double d, PA pa) {
        double d2;
        try {
            int iA06 = K1.A06(context);
            if (iA06 < 1) {
                return false;
            }
            HashMap<String, Integer> mapA0g = K1.A0g(context);
            Set<String> setKeySet = mapA0g.keySet();
            String eventKey = str + A01(443, 1, 69) + i;
            boolean zContains = setKeySet.contains(eventKey);
            if (zContains) {
                Integer tempSampling = mapA0g.get(eventKey);
                int iIntValue = tempSampling != null ? tempSampling.intValue() : -1;
                if (iIntValue == 0) {
                    return false;
                }
                if (iIntValue > 0) {
                    return d <= 1.0d / ((double) iIntValue);
                }
                if (K1.A05(context) < 1) {
                    return false;
                }
                d2 = (iA06 * r1) / 10000.0d;
            } else if (!pa.A08()) {
                d2 = 0.0d;
            } else {
                d2 = iA06 / 100.0d;
            }
            if (A01(399, 5, 5).equals(str)) {
                int cacheEventsSampling = K1.A0A(context);
                if (cacheEventsSampling == 0) {
                    return false;
                }
                if (cacheEventsSampling > 0) {
                    double cacheEventLogProbability = 1.0d / cacheEventsSampling;
                    return zContains ? O2.A00() <= cacheEventLogProbability * d2 : O2.A00() <= cacheEventLogProbability;
                }
            }
            if (A01(SharedVideoView.MEDIA_ERROR_FILE_NOT_EXISTS, 7, 66).equals(str) && P8.A1P == i) {
                int iA0N = K1.A0N(context);
                if (iA0N == 0) {
                    return false;
                }
                if (iA0N > 0) {
                    double d3 = 1.0d / iA0N;
                    return zContains ? O2.A00() <= d3 * d2 : O2.A00() <= d3;
                }
            }
            return d >= 1.0d - d2;
        } catch (Throwable th) {
            A0G(th);
            return false;
        }
    }

    @VisibleForTesting
    public static boolean A0J(Context context, String str, int eventsLimit, PA pa) {
        int i = 0;
        int iA01 = 0;
        int iA00 = 0;
        boolean z = true;
        char c = !K1.A11(context) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return z;
                case 3:
                    context = context;
                    pa = pa;
                    i = A00.get(eventsLimit);
                    iA01 = K1.A01(context);
                    if (pa.A01() == -1) {
                        c = '\n';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    pa = pa;
                    iA01 = pa.A01();
                    c = 5;
                    break;
                case 5:
                    if (i < iA01) {
                        c = '\f';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    if (!A05.contains(Integer.valueOf(i))) {
                        c = '\t';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    pa = pa;
                    if (!pa.A09()) {
                        c = '\b';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\b':
                    context = context;
                    A05(context, eventsLimit, i);
                    c = '\t';
                    break;
                case '\t':
                    A00.put(eventsLimit, i + 1);
                    c = 2;
                    break;
                case '\n':
                    context = context;
                    str = str;
                    iA00 = A00(str, eventsLimit, context);
                    if (iA01 >= iA00) {
                        c = 5;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    iA01 = iA00;
                    c = 5;
                    break;
                case '\f':
                    A00.put(eventsLimit, i + 1);
                    z = false;
                    c = 2;
                    break;
            }
        }
    }
}
