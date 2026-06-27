package com.facebook.ads.redexgen.X;

import android.content.pm.ConfigurationInfo;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Fs, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0554Fs implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 99);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-19, -24, -18, -36, -31, -20, -36, -21, -34, -34, -25, -40, -28, -30, -25, -35, -19, -14, -12, -7, -8, -29, -12, -10, -23, -22, -23, -10, -23, -14, -25, -23, 55, 68, 68, 65, 68, 10, 4, 24, 1, 14, 0, 17, 3, -2, 10, 8, 13, 3, -1, 0, -11, -2, -17, -9, -4, -11, 3, -17, 6, -11, 2, 3, -7, -1, -2};
    }

    public C0554Fs(C0557Fv c0557Fv) {
        this.A00 = c0557Fv;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        C0554Fs c0554Fs = this;
        char c = c0554Fs.A00.A01 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c0554Fs = c0554Fs;
                    if (c0554Fs.A00.A01.getDeviceConfigurationInfo() != null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0554Fs = c0554Fs;
                    c0554Fs.A00.A02(A00(50, 17, 45), A00(32, 5, 111));
                    c0554Fs.A00.A02(A00(37, 13, 60), A00(32, 5, 111));
                    c0554Fs.A00.A02(A00(16, 16, 33), A00(32, 5, 111));
                    c0554Fs.A00.A02(A00(0, 16, 22), A00(32, 5, 111));
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    c0554Fs = c0554Fs;
                    ConfigurationInfo deviceConfigurationInfo = c0554Fs.A00.A01.getDeviceConfigurationInfo();
                    c0554Fs.A00.A03(A00(50, 17, 45), deviceConfigurationInfo.getGlEsVersion());
                    c0554Fs.A00.A03(A00(37, 13, 60), Integer.valueOf(deviceConfigurationInfo.reqKeyboardType));
                    c0554Fs.A00.A03(A00(16, 16, 33), Integer.valueOf(deviceConfigurationInfo.reqNavigation));
                    c0554Fs.A00.A03(A00(0, 16, 22), Integer.valueOf(deviceConfigurationInfo.reqTouchScreen));
                    c = 4;
                    break;
            }
        }
    }
}
