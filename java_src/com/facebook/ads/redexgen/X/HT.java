package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.tonyodev.fetch.FetchConst;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class HT extends AbstractC0556Fu {
    private static byte[] A02;
    private final Context A00;
    private final TelephonyManager A01;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_FILE_NOT_CREATED);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A02 = new byte[]{-37, -45, -38, -39, -48};
    }

    public HT(Context context) {
        this.A00 = context;
        this.A01 = (TelephonyManager) context.getSystemService(A02(0, 5, 5));
    }

    public final InterfaceC0552Fq A07() {
        return new HR(this);
    }

    public final InterfaceC0552Fq A08() {
        return new HL(this);
    }

    public final InterfaceC0552Fq A09() {
        return new HM(this);
    }

    public final InterfaceC0552Fq A0A() {
        return new HQ(this);
    }

    public final InterfaceC0552Fq A0B() {
        return new HO(this);
    }

    public final InterfaceC0552Fq A0C() {
        return new HN(this);
    }

    public final InterfaceC0552Fq A0D() {
        return new HP(this);
    }

    public final InterfaceC0552Fq A0E() {
        return new HS(this);
    }
}
