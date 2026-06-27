package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.BatteryManager;
import android.os.Build;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import javax.inject.Singleton;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@Singleton
/* renamed from: com.facebook.ads.redexgen.X.Ce, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0462Ce extends C0454Bw {
    private static byte[] A01;
    private final BatteryManager A00;

    static {
        A01();
    }

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 9);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{83, 97, 104, 123, 104, 97, 118, 1, 64, 80, 82, 95, 86, 90, 25, 26, 15, 15, 30, 9, 2, 22, 26, 21, 26, 28, 30, 9};
    }

    public C0462Ce(Context context, C0430Ay c0430Ay) {
        super(context, c0430Ay);
        this.A00 = (BatteryManager) context.getSystemService(A00(14, 14, 114));
    }

    public final InterfaceC0442Bk A0G() {
        return new CW(this);
    }

    public final InterfaceC0442Bk A0H() {
        return new C0460Cc(this);
    }

    public final InterfaceC0442Bk A0I() {
        HashMap map = new HashMap();
        map.put(A00(0, 1, 52), 2);
        map.put(A00(6, 1, 30), 3);
        return new C0459Cb(this, map);
    }

    public final InterfaceC0442Bk A0J() {
        HashMap map = new HashMap();
        map.put(A00(7, 1, 100), A00(1, 5, 4));
        map.put(A00(13, 1, 32), A00(8, 5, 58));
        return new CR(this, map);
    }

    public final InterfaceC0442Bk A0K() {
        return new CZ(this);
    }

    public final InterfaceC0442Bk A0L() {
        return new CU(this);
    }

    public final InterfaceC0442Bk A0M() {
        return new CX(this);
    }

    public final InterfaceC0442Bk A0N() {
        return new C0461Cd(this);
    }

    public final InterfaceC0442Bk A0O() {
        return new CV(this);
    }

    public final InterfaceC0442Bk A0P() {
        return new CS(this);
    }

    public final InterfaceC0442Bk A0Q() {
        return new CY(this);
    }

    public final InterfaceC0442Bk A0R() {
        return new CT(this);
    }

    public final InterfaceC0442Bk A0S() {
        return new C0458Ca(this);
    }

    public final AbstractC0528Es A0T(int i) {
        C0462Ce c0462Ce = this;
        AbstractC0528Es abstractC0528EsA07 = null;
        char c = Build.VERSION.SDK_INT < 21 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0462Ce = c0462Ce;
                    abstractC0528EsA07 = c0462Ce.A07(F6.A03);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA07;
                case 4:
                    c0462Ce = c0462Ce;
                    if (c0462Ce.A00 == null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0462Ce = c0462Ce;
                    abstractC0528EsA07 = c0462Ce.A04(c0462Ce.A00.getIntProperty(i));
                    c = 3;
                    break;
                case 6:
                    c0462Ce = c0462Ce;
                    abstractC0528EsA07 = c0462Ce.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }

    @SuppressLint({"Nullable Dereference"})
    public final AbstractC0528Es A0U(HashMap<String, Integer> map) {
        C0462Ce c0462Ce = this;
        AbstractC0528Es abstractC0528EsA07 = null;
        Iterator<String> it = null;
        HashMap<String, Integer> inputMap = null;
        char c = Build.VERSION.SDK_INT < 21 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0462Ce = c0462Ce;
                    abstractC0528EsA07 = c0462Ce.A07(F6.A03);
                    c = 3;
                    break;
                case 3:
                    return abstractC0528EsA07;
                case 4:
                    c0462Ce = c0462Ce;
                    if (c0462Ce.A00 == null) {
                        c = '\t';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    map = map;
                    Set<String> setKeySet = map.keySet();
                    inputMap = new HashMap<>();
                    it = setKeySet.iterator();
                    c = 6;
                    break;
                case 6:
                    it = it;
                    if (!it.hasNext()) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c0462Ce = c0462Ce;
                    map = map;
                    inputMap = inputMap;
                    it = it;
                    String next = it.next();
                    inputMap.put(next, Integer.valueOf(c0462Ce.A00.getIntProperty(map.get(next).intValue())));
                    c = 6;
                    break;
                case '\b':
                    c0462Ce = c0462Ce;
                    inputMap = inputMap;
                    abstractC0528EsA07 = c0462Ce.A0C(inputMap);
                    c = 3;
                    break;
                case '\t':
                    c0462Ce = c0462Ce;
                    abstractC0528EsA07 = c0462Ce.A07(F6.A05);
                    c = 3;
                    break;
            }
        }
    }
}
