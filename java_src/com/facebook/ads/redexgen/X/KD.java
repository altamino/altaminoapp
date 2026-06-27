package com.facebook.ads.redexgen.X;

import android.support.annotation.Nullable;
import com.facebook.ads.internal.jni.AbiArchitecture;
import com.facebook.ads.internal.jni.NativeExecutionResult;
import com.tonyodev.fetch.FetchConst;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class KD {
    private static byte[] A03;

    @Nullable
    private final Throwable A00;
    private final List<K5> A01;
    private final Map<K5, KB> A02;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_CONNECTION_TIMEOUT);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A03 = new byte[]{-33, 57, -24, -36, 46, 33, 47, 49, 40, 48, -7, 55, 38, 33, 41, 44, 53, 50, 37, -3, 7, -81, -81, 6, -83, -95, -12, -10, -15, -15, -16, -13, -11, -26, -27, -66, -4};
    }

    private KD(@Nullable Throwable th, List<K5> list, Map<K5, KB> map) {
        this.A00 = th;
        List<AbiArchitecture> supported = new ArrayList<>(list);
        this.A01 = supported;
        Map<AbiArchitecture, NativeExecutionResult.AbiLoadResult> result = new TreeMap<>(new KA(this));
        this.A02 = result;
        this.A02.putAll(map);
    }

    public /* synthetic */ KD(Throwable th, List list, Map map, KA ka) {
        this(th, list, map);
    }

    public static KC A00() {
        return new KC(null);
    }

    public final String toString() {
        KD kd = this;
        Iterator<Map.Entry<K5, KB>> it = null;
        String string = null;
        boolean z = false;
        Iterator<K5> it2 = null;
        boolean z2 = false;
        K5 next = null;
        boolean z3 = false;
        Map.Entry<K5, KB> next2 = null;
        StringBuilder sb = new StringBuilder();
        sb.append(A01(12, 8, 88));
        char c = kd.A00 != null ? (char) 2 : (char) 19;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    kd = kd;
                    sb = sb;
                    sb.append(z);
                    if (kd.A00 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    kd = kd;
                    string = kd.A00.toString();
                    c = 5;
                    break;
                case 5:
                    return string;
                case 6:
                    kd = kd;
                    sb = sb;
                    sb.append(A01(24, 13, 25));
                    z2 = true;
                    it2 = kd.A01.iterator();
                    c = 7;
                    break;
                case 7:
                    it2 = it2;
                    if (!it2.hasNext()) {
                        c = '\f';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    it2 = it2;
                    next = it2.next();
                    if (!z2) {
                        c = 11;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    z2 = false;
                    c = '\n';
                    break;
                case '\n':
                    sb = sb;
                    next = next;
                    sb.append(next.name());
                    c = 7;
                    break;
                case 11:
                    sb = sb;
                    sb.append(A01(0, 1, 75));
                    c = '\n';
                    break;
                case '\f':
                    kd = kd;
                    sb = sb;
                    sb.append(A01(1, 11, 84));
                    z3 = true;
                    it = kd.A02.entrySet().iterator();
                    c = '\r';
                    break;
                case '\r':
                    it = it;
                    if (!it.hasNext()) {
                        c = 18;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    it = it;
                    next2 = it.next();
                    if (!z3) {
                        c = 17;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    z3 = false;
                    c = 16;
                    break;
                case 16:
                    sb = sb;
                    next2 = next2;
                    sb.append(next2.getKey().name());
                    sb.append(A01(20, 1, 98));
                    sb.append(next2.getValue().A00);
                    c = '\r';
                    break;
                case 17:
                    sb = sb;
                    sb.append(A01(0, 1, 75));
                    c = 16;
                    break;
                case 18:
                    sb = sb;
                    sb.append(A01(23, 1, 33));
                    sb.append(A01(21, 2, 61));
                    string = sb.toString();
                    c = 5;
                    break;
                case 19:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }
}
