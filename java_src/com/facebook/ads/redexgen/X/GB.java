package com.facebook.ads.redexgen.X;

import android.os.BatteryManager;
import android.os.Build;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class GB implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ GC A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 109);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{67, 64, 85, 85, 68, 83, 88, 126, 66, 84, 83, 83, 68, 79, 85, 126, 79, 78, 86, 39, 48, 48, 45, 48, 79, 84, 81, 84, 85, 77, 84, 24, 27, 14, 14, 31, 8, 3, 23, 27, 20, 27, 29, 31, 8};
    }

    public GB(GC gc) {
        this.A00 = gc;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        GB gb = this;
        BatteryManager batteryManager = null;
        char c = Build.VERSION.SDK_INT < 21 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    gb = gb;
                    gb.A00.A02(A00(0, 19, 76), A00(24, 7, 87));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    gb = gb;
                    batteryManager = (BatteryManager) gb.A00.A00.getSystemService(A00(31, 14, 23));
                    if (batteryManager != null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    gb = gb;
                    gb.A00.A02(A00(0, 19, 76), A00(19, 5, 47));
                    c = 3;
                    break;
                case 6:
                    gb = gb;
                    batteryManager = batteryManager;
                    gb.A00.A03(A00(0, 19, 76), Integer.valueOf(batteryManager.getIntProperty(2)));
                    c = 3;
                    break;
            }
        }
    }
}
