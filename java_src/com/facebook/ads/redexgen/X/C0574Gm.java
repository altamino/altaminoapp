package com.facebook.ads.redexgen.X;

import android.content.pm.ActivityInfo;
import java.util.Arrays;
import org.json.JSONArray;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Gm, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0574Gm implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 102);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{11, 9, 30, 3, 28, 3, 30, 3, 15, 25, 53, 9, 5, 31, 4, 30, 49, 38, 38, 59, 38, 94, 92, 75, 86, 73, 86, 75, 86, 90, 76};
    }

    public C0574Gm(C0586Gy c0586Gy) {
        this.A00 = c0586Gy;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        try {
            ActivityInfo[] activityInfoArr = this.A00.A02.getPackageInfo(this.A00.A00.getPackageName(), 1).activities;
            if (activityInfoArr == null) {
                this.A00.A02(A00(0, 16, 12), A00(16, 5, 50));
                this.A00.A02(A00(21, 10, 89), A00(16, 5, 50));
                return;
            }
            JSONArray jSONArray = new JSONArray();
            int length = activityInfoArr.length < 100 ? activityInfoArr.length : 100;
            for (int i = 0; i < length; i++) {
                jSONArray.put(activityInfoArr[i].name);
            }
            this.A00.A03(A00(0, 16, 12), Integer.valueOf(activityInfoArr.length));
            this.A00.A03(A00(21, 10, 89), jSONArray);
        } catch (Throwable unused) {
            this.A00.A02(A00(21, 10, 89), A00(16, 5, 50));
            this.A00.A02(A00(0, 16, 12), A00(16, 5, 50));
        }
    }
}
