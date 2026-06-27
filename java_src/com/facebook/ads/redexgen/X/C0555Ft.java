package com.facebook.ads.redexgen.X;

import android.app.ActivityManager;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ft, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0555Ft implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ C0557Fv A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 85);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-51, -50, -33, -46, -52, -50, -56, -35, -40, -35, -54, -43, -56, -42, -50, -42, -40, -37, -30};
    }

    public C0555Ft(C0557Fv c0557Fv) {
        this.A00 = c0557Fv;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        this.A00.A01.getMemoryInfo(memoryInfo);
        this.A00.A03(A00(0, 19, 20), Long.valueOf(memoryInfo.totalMem / 1048576));
    }
}
