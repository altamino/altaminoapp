package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.app.KeyguardManager;
import android.content.Context;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@SuppressLint({"POSSIBLE_VARIABLE_NAME_TYPO"})
/* loaded from: assets/assets/audience_network.dex */
public final class DW extends C0454Bw {
    private static byte[] A01;
    private final KeyguardManager A00;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 46);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A01 = new byte[]{103, 105, 117, 107, 121, 109, 126, 104};
    }

    public DW(Context context, C0430Ay c0430Ay) {
        super(context, c0430Ay);
        this.A00 = (KeyguardManager) context.getSystemService(A01(0, 8, 34));
    }

    public final InterfaceC0442Bk A0G() {
        return new DS(this);
    }

    public final InterfaceC0442Bk A0H() {
        return new DT(this);
    }

    public final InterfaceC0442Bk A0I() {
        return new DU(this);
    }

    public final InterfaceC0442Bk A0J() {
        return new DV(this);
    }
}
