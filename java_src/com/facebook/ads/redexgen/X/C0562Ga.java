package com.facebook.ads.redexgen.X;

import android.net.wifi.WifiConfiguration;
import java.util.Arrays;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ga, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0562Ga implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ C0563Gb A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 99);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{88, 70, 73, 70, 112, 76, 64, 65, 73, 70, 72, 90, 93, 74, 75, 112, 65, 74, 91, 112, 92, 70, 85, 74, 76, 87, 78, 78};
    }

    public C0562Ga(C0563Gb c0563Gb) {
        this.A00 = c0563Gb;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        C0562Ga c0562Ga = this;
        List<WifiConfiguration> configuredNetworks = null;
        char c = c0562Ga.A00.A05(A00(0, 24, 76)) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c0562Ga = c0562Ga;
                    configuredNetworks = c0562Ga.A00.A01.getConfiguredNetworks();
                    if (configuredNetworks != null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c0562Ga = c0562Ga;
                    c0562Ga.A00.A02(A00(0, 24, 76), A00(24, 4, 65));
                    c = 5;
                    break;
                case 5:
                    c0562Ga = c0562Ga;
                    configuredNetworks = configuredNetworks;
                    c0562Ga.A00.A03(A00(0, 24, 76), Integer.valueOf(configuredNetworks.size()));
                    c = 2;
                    break;
            }
        }
    }
}
