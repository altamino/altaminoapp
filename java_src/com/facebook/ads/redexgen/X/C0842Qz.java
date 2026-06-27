package com.facebook.ads.redexgen.X;

import android.webkit.JavascriptInterface;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Qz, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0842Qz {
    private static byte[] A08;
    private String A00;
    private String A01;
    private final KM A02;
    private final KX A03;
    private final RG A04;
    private final String A05;
    private final Map<String, String> A06;
    private final boolean A07;

    static {
        A04();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 81);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A08 = new byte[]{11, 28, 29, 29, 6, 7, 54, 7, 8, 4, 12, 28, 124, 117, 102, 117, 124, 79, 115, 127, 125, 96, 124, 117, 100, 117, 50, 57, 51, 8, 52, 54, 37, 51, 8, 36, 63, 56, 32, 8, 34, 39, 103, 116, 103, 108, 118, 93, 118, 123, 114, 103, 39, 48, 49, 49, 42, 43, 26, 38, 41, 44, 38, 46, 31, 12, 31, 20, 14, 37, 31, 2, 14, 8, 27, 85, 83, 95, 87, 109, 94, 93, 83, 86, 81, 88, 75, 88, 81, 98, 83, 92, 80, 88, 62};
    }

    public C0842Qz(RG rg, KM km, Map<String, String> map, String str) {
        this.A04 = rg;
        this.A02 = km;
        this.A06 = map;
        this.A05 = str;
        this.A03 = new KX(this.A05, this.A02);
        this.A07 = K1.A1P(rg.getContext());
    }

    private void A01() {
        HashMap map = new HashMap();
        map.put(A00(42, 10, 83), A00(75, 9, 99));
        A07(map);
    }

    private void A02() {
        this.A03.A02(KW.A0Y, null);
    }

    private void A03() {
        HashMap map = new HashMap();
        map.put(A00(42, 10, 83), A00(26, 16, 6));
        A07(map);
    }

    private void A05(String str) {
        HashMap map = new HashMap();
        map.put(A00(84, 10, 108), String.valueOf(str));
        HashMap map2 = new HashMap();
        map2.put(A00(42, 10, 83), A00(12, 14, 65));
        map2.put(A00(64, 11, 43), C0760Nv.A01(map));
        A07(map2);
    }

    private void A06(String str, float f, float f2) {
        HashMap map = new HashMap();
        map.put(A00(0, 11, 56), str);
        map.put(A00(94, 1, 23), String.valueOf(f));
        map.put(A00(11, 1, 52), String.valueOf(f2));
        HashMap map2 = new HashMap();
        map2.put(A00(42, 10, 83), A00(52, 12, 20));
        map2.put(A00(64, 11, 43), C0760Nv.A01(map));
        A07(map2);
    }

    private void A07(Map<String, String> map) {
        map.putAll(this.A06);
        this.A02.A4O(this.A05, this.A00, this.A01, map);
    }

    @JavascriptInterface
    public void initializeLogging(String str, String str2) {
        if (!this.A07) {
            return;
        }
        this.A00 = str;
        this.A01 = str2;
    }

    @JavascriptInterface
    public void logButtonClick(String str, float f, float f2) {
        if (!this.A07) {
            return;
        }
        A06(str, f, f2);
    }

    @JavascriptInterface
    public void logEndCardShowUp() {
        if (!this.A07) {
            return;
        }
        A03();
    }

    @JavascriptInterface
    public void logGameLoad() {
        if (!this.A07) {
            return;
        }
        A01();
    }

    @JavascriptInterface
    public void logLevelComplete(String str) {
        if (!this.A07) {
            return;
        }
        A05(str);
    }

    @JavascriptInterface
    public void onCTAClick() {
        A02();
        this.A04.A08();
    }
}
