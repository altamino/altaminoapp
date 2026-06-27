package com.facebook.ads.redexgen.X;

import android.content.pm.ApplicationInfo;
import java.io.File;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Gw, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0584Gw implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 45);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{92, 77, 77, 98, 78, 84, 71, 88, 31, 8, 8, 21, 8};
    }

    public C0584Gw(C0586Gy c0586Gy) {
        this.A00 = c0586Gy;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        try {
            ApplicationInfo applicationInfo = this.A00.A02.getApplicationInfo(this.A00.A00.getPackageName(), 0);
            if (applicationInfo != null && new File(applicationInfo.publicSourceDir) != null) {
                this.A00.A03(A00(0, 8, 16), Long.valueOf(new File(applicationInfo.publicSourceDir).length()));
            } else {
                this.A00.A02(A00(0, 8, 16), A00(8, 5, 87));
            }
        } catch (Throwable unused) {
            this.A00.A02(A00(0, 8, 16), A00(8, 5, 87));
        }
    }
}
