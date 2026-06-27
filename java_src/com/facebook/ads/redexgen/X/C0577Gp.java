package com.facebook.ads.redexgen.X;

import android.content.pm.ServiceInfo;
import java.util.Arrays;
import org.json.JSONArray;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Gp, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0577Gp implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 91);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{22, 7, 7, 40, 4, 18, 5, 1, 30, 20, 18, 4, 62, 41, 41, 52, 41, 94, 79, 79, 96, 76, 90, 77, 73, 86, 92, 90, 76, 96, 92, 80, 74, 81, 75};
    }

    public C0577Gp(C0586Gy c0586Gy) {
        this.A00 = c0586Gy;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        try {
            ServiceInfo[] serviceInfoArr = this.A00.A02.getPackageInfo(this.A00.A00.getPackageName(), 4).services;
            if (serviceInfoArr != null) {
                int i = serviceInfoArr.length < 100 ? serviceInfoArr.length : 100;
                JSONArray jSONArray = new JSONArray();
                for (int i2 = 0; i2 < i; i2++) {
                    jSONArray.put(serviceInfoArr[i2].name);
                }
                C0586Gy c0586Gy = this.A00;
                String strA00 = A00(17, 18, 100);
                int maxElements = serviceInfoArr.length;
                c0586Gy.A03(strA00, Integer.valueOf(maxElements));
                this.A00.A03(A00(0, 12, 44), jSONArray);
            }
        } catch (Throwable unused) {
            this.A00.A02(A00(0, 12, 44), A00(12, 5, 0));
            this.A00.A02(A00(17, 18, 100), A00(12, 5, 0));
        }
    }
}
