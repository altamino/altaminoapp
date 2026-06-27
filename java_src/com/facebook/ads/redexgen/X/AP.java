package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.SharedPreferences;
import com.facebook.ads.internal.util.process.ProcessUtils;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class AP {
    private static byte[] A01;
    private SharedPreferences A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 61);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{117, 121, 123, 56, 112, 119, 117, 115, 116, 121, 121, 125, 56, 119, 114, 101, 56, 127, 114, 112, 119, 124, 121, 107, 120, 111, 105, 116, 110, 116, 115, 122, 84, 121, 107, 126, 126, 120, 99, 104, 127, 126, 99, 101, 100, 67, 110, 107, 110, 106, 110, 115, 70, 99, 83, 117, 102, 100, 108, 110, 105, 96};
    }

    public AP(Context context) {
        this.A00 = context.getSharedPreferences(ProcessUtils.getProcessSpecificName(A00(0, 21, 43), context), 0);
    }

    public final AO A02() {
        AP ap = this;
        AO aoA00 = null;
        char c = ap.A00.contains(A00(21, 13, 32)) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    ap = ap;
                    aoA00 = new AO(ap.A00.getString(A00(21, 13, 32), A00(62, 0, 57)), ap.A00.getBoolean(A00(47, 15, 58), false), AN.A08);
                    c = 3;
                    break;
                case 3:
                    return aoA00;
                case 4:
                    aoA00 = AO.A00();
                    c = 3;
                    break;
            }
        }
    }

    public final String A03() {
        return this.A00.getString(A00(34, 13, 55), A00(62, 0, 57));
    }

    public final void A04(AO ao) {
        SharedPreferences.Editor editorEdit = this.A00.edit();
        editorEdit.putString(A00(21, 13, 32), ao.A02());
        editorEdit.putBoolean(A00(47, 15, 58), ao.A03());
        editorEdit.apply();
    }

    public final void A05(String str) {
        SharedPreferences.Editor editorEdit = this.A00.edit();
        editorEdit.putString(A00(34, 13, 55), str);
        editorEdit.apply();
    }
}
