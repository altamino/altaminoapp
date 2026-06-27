package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import org.json.JSONArray;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Gq, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0578Gq implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ C0586Gy A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 65);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-87, -74, -74, -77, -74, -10, -22, -9, -14, -17, -18, -4, -3, -24, -7, -18, -5, -10, -14, -4, -4, -14, -8, -9, -4};
    }

    public C0578Gq(C0586Gy c0586Gy) {
        this.A00 = c0586Gy;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        C0578Gq c0578Gq = this;
        JSONArray jSONArray = null;
        String[] strArr = null;
        int length = 0;
        int i = 0;
        char c = c0578Gq.A00.A01 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0578Gq = c0578Gq;
                    c0578Gq.A00.A02(A00(5, 20, 72), A00(0, 5, 3));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    c0578Gq = c0578Gq;
                    strArr = c0578Gq.A00.A01.requestedPermissions;
                    if (strArr == null) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    strArr = strArr;
                    jSONArray = new JSONArray();
                    length = strArr.length;
                    i = 0;
                    c = 6;
                    break;
                case 6:
                    if (i >= length) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    strArr = strArr;
                    jSONArray = jSONArray;
                    jSONArray.put(strArr[i]);
                    i++;
                    c = 6;
                    break;
                case '\b':
                    c0578Gq = c0578Gq;
                    jSONArray = jSONArray;
                    c0578Gq.A00.A03(A00(5, 20, 72), jSONArray);
                    c = 3;
                    break;
            }
        }
    }
}
