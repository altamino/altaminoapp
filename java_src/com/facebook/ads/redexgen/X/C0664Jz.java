package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Messenger;
import com.tonyodev.fetch.FetchConst;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Jz, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0664Jz {
    private static byte[] A06;
    private Messenger A00;
    private final Context A02;
    private final String A04;
    private final String A05;
    private boolean A01 = false;
    private final ServiceConnection A03 = new ServiceConnectionC0663Jy(this);

    static {
        A06();
    }

    private static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_ILLEGAL_STATE);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A06() {
        A06 = new byte[]{-40, -55, -38, -55, -43, -25, -38, -51, -39, -35, -51, -37, -36, -25, -47, -52, -19, -21, -12, -21, -8, -17, -23, 49, 34, 51, 34, 46, 64, 34, 47, 64, 54, 54, 42, 37, 56, 41, 58, 41, 53, 71, 56, 58, 55, 60, 55, 43, 55, 52, 71, 62, 45, 58, 59, 49, 55, 54, -43, -31, -33, -96, -40, -45, -43, -41, -44, -31, -31, -35, -96, -35, -45, -26, -45, -32, -45, 73, 85, 83, 20, 76, 71, 73, 75, 72, 85, 85, 81, 20, 71, 91, 74, 79, 75, 84, 73, 75, 84, 75, 90, 93, 85, 88, 81, 20, 39, 91, 74, 79, 75, 84, 73, 75, 52, 75, 90, 93, 85, 88, 81, 57, 75, 88, 92, 79, 73, 75};
    }

    public C0664Jz(Context context, String str, String str2) {
        this.A02 = context;
        this.A05 = str;
        this.A04 = str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bundle A01() {
        Bundle bundle = new Bundle();
        bundle.putInt(A05(36, 22, 123), 1);
        bundle.putString(A05(23, 13, 116), this.A04);
        bundle.putString(A05(0, 16, 27), this.A05);
        return bundle;
    }

    public final void A08() {
        Intent intent = new Intent();
        intent.setClassName(A05(58, 19, 5), A05(77, 51, 121));
        try {
            if (!this.A02.bindService(intent, this.A03, 1)) {
                this.A02.unbindService(this.A03);
            }
        } catch (Exception e) {
            P7.A07(this.A02, A05(16, 7, 25), P8.A0y, new PA(e));
        }
    }
}
