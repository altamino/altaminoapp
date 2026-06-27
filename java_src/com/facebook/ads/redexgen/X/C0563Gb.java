package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.wifi.WifiManager;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Gb, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0563Gb extends AbstractC0556Fu {
    private static byte[] A02;
    private final Context A00;
    private final WifiManager A01;

    static {
        A03();
    }

    private static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 95);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A02 = new byte[]{-15, -2, -12, 2, -1, -7, -12, -66, 0, -11, 2, -3, -7, 3, 3, -7, -1, -2, -66, -47, -45, -45, -43, -29, -29, -17, -25, -39, -42, -39, -17, -29, -28, -47, -28, -43, 37, 38, 22, 39, 28, 41, 36, 32, 42, 42, 32, 38, 37, 43, 56, 56, 53, 56, 45, 38, 35, 38, 39, 47, 38, 84, 70, 67, 70};
    }

    public C0563Gb(Context context) {
        this.A01 = (WifiManager) context.getApplicationContext().getSystemService(A02(61, 4, 126));
        this.A00 = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A05(String str) {
        C0563Gb c0563Gb = this;
        boolean z = true;
        char c = !c0563Gb.A06(c0563Gb.A00, A02(0, 36, 49)) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0563Gb = c0563Gb;
                    str = str;
                    c0563Gb.A02(str, A02(36, 13, 88));
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    c0563Gb = c0563Gb;
                    if (c0563Gb.A01 != null) {
                        c = 6;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    c0563Gb = c0563Gb;
                    str = str;
                    c0563Gb.A02(str, A02(49, 5, 103));
                    c = 3;
                    break;
                case 6:
                    c0563Gb = c0563Gb;
                    if (!c0563Gb.A01.isWifiEnabled()) {
                        c = 7;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case 7:
                    c0563Gb = c0563Gb;
                    str = str;
                    c0563Gb.A02(str, A02(54, 7, 89));
                    c = 3;
                    break;
                case '\b':
                    z = false;
                    c = 3;
                    break;
            }
        }
    }

    @SuppressLint({"StringFormatUse", "CatchGeneralException"})
    public final InterfaceC0552Fq A07() {
        return new GX(this);
    }

    public final InterfaceC0552Fq A08() {
        return new GW(this);
    }

    @SuppressLint({"MissingPermission"})
    public final InterfaceC0552Fq A09() {
        return new GY(this);
    }

    @SuppressLint({"MissingPermission", "CatchGeneralException"})
    public final InterfaceC0552Fq A0A() {
        return new GV(this);
    }

    @SuppressLint({"MissingPermission"})
    public final InterfaceC0552Fq A0B() {
        return new C0562Ga(this);
    }

    @SuppressLint({"MissingPermission"})
    public final InterfaceC0552Fq A0C() {
        return new GZ(this);
    }
}
