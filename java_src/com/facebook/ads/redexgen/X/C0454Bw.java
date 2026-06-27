package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Bw, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0454Bw {
    private static byte[] A03;
    private final Context A00;
    private final Intent A01;
    private final C0430Ay A02;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 122);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A03 = new byte[]{27, 40, 30, 44, 41, 35, 30, -24, 35, 40, 46, 31, 40, 46, -24, 27, 29, 46, 35, 41, 40, -24, -4, -5, 14, 14, -1, 12, 19, 25, -3, 2, -5, 8, 1, -1, -2};
    }

    public C0454Bw(Context context, C0430Ay c0430Ay) {
        this.A00 = context;
        this.A02 = c0430Ay;
        this.A01 = this.A00.registerReceiver(null, new IntentFilter(A00(0, 37, 64)));
    }

    @Nullable
    public final F8 A02() {
        C0454Bw c0454Bw = this;
        F8 signalValueContext = null;
        String strA00 = null;
        char c = c0454Bw.A02.A0T() == EnumC0525Ep.A0F ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    signalValueContext = null;
                    c = 3;
                    break;
                case 3:
                    return signalValueContext;
                case 4:
                    c0454Bw = c0454Bw;
                    if (c0454Bw.A00 != null) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    strA00 = A00(37, 0, 33);
                    c = 6;
                    break;
                case 6:
                    strA00 = strA00;
                    signalValueContext = new F8(strA00);
                    c = 3;
                    break;
                case 7:
                    c0454Bw = c0454Bw;
                    strA00 = c0454Bw.A00.getPackageName();
                    c = 6;
                    break;
            }
        }
    }

    public final AbstractC0528Es A03(float f) {
        return new C0532Ew(SystemClock.elapsedRealtime(), A02(), f);
    }

    public final AbstractC0528Es A04(int i) {
        return new C0534Ey(SystemClock.elapsedRealtime(), A02(), i);
    }

    public final AbstractC0528Es A05(int i, HashMap<String, String> map) {
        C0454Bw c0454Bw = this;
        Iterator<String> it = null;
        HashMap<String, Integer> map2 = null;
        AbstractC0528Es abstractC0528EsA07 = null;
        char c = c0454Bw.A01 != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    map = map;
                    map2 = new HashMap<>();
                    it = map.keySet().iterator();
                    c = 3;
                    break;
                case 3:
                    it = it;
                    if (!it.hasNext()) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0454Bw = c0454Bw;
                    map = map;
                    map2 = map2;
                    it = it;
                    String next = it.next();
                    map2.put(next, Integer.valueOf(c0454Bw.A01.getIntExtra(map.get(next), i)));
                    c = 3;
                    break;
                case 5:
                    c0454Bw = c0454Bw;
                    abstractC0528EsA07 = c0454Bw.A07(F6.A05);
                    c = 7;
                    break;
                case 6:
                    c0454Bw = c0454Bw;
                    map2 = map2;
                    abstractC0528EsA07 = c0454Bw.A0C(map2);
                    c = 7;
                    break;
                case 7:
                    return abstractC0528EsA07;
            }
        }
    }

    public final AbstractC0528Es A06(long j) {
        return new F1(SystemClock.elapsedRealtime(), A02(), j);
    }

    public final AbstractC0528Es A07(F6 f6) {
        return new C0531Ev(SystemClock.elapsedRealtime(), A02(), new F7(f6));
    }

    public final AbstractC0528Es A08(String str) {
        return new FA(SystemClock.elapsedRealtime(), A02(), str);
    }

    public final AbstractC0528Es A09(String str) {
        C0454Bw c0454Bw = this;
        AbstractC0528Es abstractC0528EsA08 = null;
        char c = c0454Bw.A01 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0454Bw = c0454Bw;
                    str = str;
                    abstractC0528EsA08 = c0454Bw.A08(c0454Bw.A01.getStringExtra(str));
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA08;
                case 4:
                    c0454Bw = c0454Bw;
                    abstractC0528EsA08 = c0454Bw.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }

    public final AbstractC0528Es A0A(String str, int i) {
        C0454Bw c0454Bw = this;
        AbstractC0528Es abstractC0528EsA04 = null;
        char c = c0454Bw.A01 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0454Bw = c0454Bw;
                    str = str;
                    abstractC0528EsA04 = c0454Bw.A04(c0454Bw.A01.getIntExtra(str, i));
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA04;
                case 4:
                    c0454Bw = c0454Bw;
                    abstractC0528EsA04 = c0454Bw.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }

    public final AbstractC0528Es A0B(String str, boolean z) {
        C0454Bw c0454Bw = this;
        AbstractC0528Es abstractC0528EsA0F = null;
        char c = c0454Bw.A01 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0454Bw = c0454Bw;
                    str = str;
                    abstractC0528EsA0F = c0454Bw.A0F(c0454Bw.A01.getBooleanExtra(str, z));
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA0F;
                case 4:
                    c0454Bw = c0454Bw;
                    abstractC0528EsA0F = c0454Bw.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }

    public final AbstractC0528Es A0C(HashMap<String, Integer> map) {
        return new C0533Ex(SystemClock.elapsedRealtime(), A02(), map);
    }

    public final AbstractC0528Es A0D(List<InterfaceC0466Ci> list) {
        return new F0(SystemClock.elapsedRealtime(), A02(), list, F9.A03);
    }

    public final AbstractC0528Es A0E(List<String> resultList) {
        return new F0(SystemClock.elapsedRealtime(), A02(), resultList, F9.A0C);
    }

    public final AbstractC0528Es A0F(boolean z) {
        return new C0529Et(SystemClock.elapsedRealtime(), A02(), z);
    }
}
