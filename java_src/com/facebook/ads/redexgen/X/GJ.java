package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.provider.Settings;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class GJ implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ GO A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 81);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{108, 123, 123, 102, 123, 96, 109, 109, 118, 93, 97, 109, 119, 108, 118, 52, 47, 42, 47, 46, 54, 47};
    }

    public GJ(GO go) {
        this.A00 = go;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        if (Build.VERSION.SDK_INT < 24) {
            this.A00.A02(A00(5, 10, 83), A00(15, 7, 16));
            return;
        }
        try {
            this.A00.A03(A00(5, 10, 83), Integer.valueOf(Settings.Global.getInt(this.A00.A00.getContentResolver(), A00(5, 10, 83))));
        } catch (Settings.SettingNotFoundException unused) {
            this.A00.A02(A00(5, 10, 83), A00(0, 5, 88));
        }
    }
}
