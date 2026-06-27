package com.facebook.ads.redexgen.X;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import java.util.Arrays;
import javax.annotation.Nullable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Fv, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0557Fv extends AbstractC0556Fu {
    private static byte[] A02;
    private final ActivityManager.RunningAppProcessInfo A00 = new ActivityManager.RunningAppProcessInfo();
    private final ActivityManager A01;

    static {
        A04();
    }

    private static String A03(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 24);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A02 = new byte[]{-82, -80, -63, -74, -61, -74, -63, -58};
    }

    public C0557Fv(Context context) {
        this.A01 = (ActivityManager) context.getSystemService(A03(0, 8, 53));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public Integer A01() {
        C0557Fv c0557Fv = this;
        Integer numValueOf = null;
        char c = Build.VERSION.SDK_INT >= 16 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c0557Fv = c0557Fv;
                    if (c0557Fv.A00 != null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    numValueOf = null;
                    c = 4;
                    break;
                case 4:
                    return numValueOf;
                case 5:
                    c0557Fv = c0557Fv;
                    ActivityManager.getMyMemoryState(c0557Fv.A00);
                    numValueOf = Integer.valueOf(c0557Fv.A00.importance);
                    c = 4;
                    break;
            }
        }
    }

    public final InterfaceC0552Fq A07() {
        return new C0553Fr(this);
    }

    public final InterfaceC0552Fq A08() {
        return new C0554Fs(this);
    }

    public final InterfaceC0552Fq A09() {
        return new C0555Ft(this);
    }
}
