package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.AudioManager;
import android.os.SystemClock;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class CP extends C0454Bw {
    private static byte[] A01;
    private final AudioManager A00;

    static {
        A04();
    }

    private static String A03(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 11);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A01 = new byte[]{-125, -105, -122, -117, -111};
    }

    public CP(Context context, C0430Ay c0430Ay) {
        super(context, c0430Ay);
        this.A00 = (AudioManager) context.getSystemService(A03(0, 5, 23));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"Nullable Dereference"})
    public AbstractC0528Es A02(HashMap<Integer, CO> map) {
        return new F3(SystemClock.elapsedRealtime(), A02(), map, F9.A06);
    }

    public final InterfaceC0442Bk A0G() {
        return new CM(this);
    }

    public final InterfaceC0442Bk A0H() {
        return new CJ(this);
    }

    public final InterfaceC0442Bk A0I() {
        return new CK(this);
    }

    public final InterfaceC0442Bk A0J() {
        return new CL(this);
    }

    public final InterfaceC0442Bk A0K(List<C0521El> list) {
        return new CN(this, list);
    }
}
