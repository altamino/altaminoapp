package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.facebook.ads.internal.util.process.ProcessUtils;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class NW extends AnonymousClass27 {
    private static byte[] A01;
    public final /* synthetic */ Context A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 125);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{90, 107, 107, 86, 114, 117, 72, 127, 112, 77, 126, 105, 104, 114, 116, 117, 112, 116, 119, 82, 102, 68, 83, 80, 69};
    }

    public NW(Context context) {
        this.A00 = context;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass27
    public final void A03() {
        NW nw = this;
        int i = 0;
        SharedPreferences sharedPreferences = null;
        int iA03 = 0;
        char c = NY.A02 == NX.A02 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    nw = nw;
                    sharedPreferences = nw.A00.getSharedPreferences(ProcessUtils.getProcessSpecificName(A00(16, 9, 75), nw.A00), 0);
                    i = sharedPreferences.getInt(A00(0, 16, 102), -1);
                    if (i == -1) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    int unused = NY.A00 = i;
                    NY.A02 = NX.A02;
                    c = 2;
                    break;
                case 5:
                    if (Build.VERSION.SDK_INT < 24) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    nw = nw;
                    iA03 = NY.A03(nw.A00);
                    c = 7;
                    break;
                case 7:
                    sharedPreferences = sharedPreferences;
                    int unused2 = NY.A00 = iA03;
                    sharedPreferences.edit().putInt(A00(0, 16, 102), iA03).commit();
                    NY.A02 = NX.A02;
                    c = 2;
                    break;
                case '\b':
                    nw = nw;
                    iA03 = NY.A02(nw.A00);
                    c = 7;
                    break;
            }
        }
    }
}
