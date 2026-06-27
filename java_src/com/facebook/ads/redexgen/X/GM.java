package com.facebook.ads.redexgen.X;

import android.bluetooth.BluetoothAdapter;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class GM implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 38);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-37, -27, -18, -34, -19, -24, -24, -19, -31, -40, -25, -38, -26, -34, -27, -26, -42, -25, -36, -23, -28, -32, -22, -22, -32, -26, -27};
    }

    public GM(GO go) {
        this.A00 = go;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        String name = null;
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    defaultAdapter = defaultAdapter;
                    name = defaultAdapter.getName();
                    if (name != null) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    try {
                        defaultAdapter = defaultAdapter;
                        name = defaultAdapter.getAddress();
                        c = 6;
                        break;
                    } catch (Throwable unused) {
                        GO go = this.A00;
                        String strA00 = A00(0, 14, 83);
                        String name2 = A00(14, 13, 81);
                        go.A02(strA00, name2);
                        return;
                    }
                case 6:
                    String strA03 = C0592He.A03(name);
                    GO go2 = this.A00;
                    String name3 = A00(0, 14, 83);
                    go2.A03(name3, strA03);
                    return;
            }
        }
    }
}
