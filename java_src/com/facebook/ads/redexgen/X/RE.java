package com.facebook.ads.redexgen.X;

import android.view.View;
import com.tonyodev.fetch.FetchConst;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class RE implements View.OnClickListener {
    private static byte[] A01;
    public final /* synthetic */ RF A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_FILE_NOT_CREATED);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-26, -37, -24, -36, -27, -24, -29, -71, -22, -41, -71, -30, -33, -39, -31};
    }

    public RE(RF rf) {
        this.A00 = rf;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.A00.A04.A2f(A00(0, 15, 16));
    }
}
