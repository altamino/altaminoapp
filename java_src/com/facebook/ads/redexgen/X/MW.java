package com.facebook.ads.redexgen.X;

import android.os.AsyncTask;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class MW extends AsyncTask<MX, Void, C0716Mc> implements MR {
    private static byte[] A03;
    private MQ A00;
    private Lp A01;
    private Exception A02;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 27);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A03 = new byte[]{64, 107, 76, 112, 112, 116, 86, 97, 117, 113, 97, 119, 112, 80, 101, 119, 111, 36, 112, 101, 111, 97, 119, 36, 97, 124, 101, 103, 112, 104, 125, 36, 107, 106, 97, 36, 101, 118, 99, 113, 105, 97, 106, 112, 36, 107, 98, 36, 112, 125, 116, 97, 36, 76, 112, 112, 116, 86, 97, 117, 113, 97, 119, 112};
    }

    public MW(MQ mq, Lp lp) {
        this.A00 = mq;
        this.A01 = lp;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.AsyncTask
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final C0716Mc doInBackground(MX... mxArr) {
        if (mxArr != null) {
            try {
                if (mxArr.length > 0) {
                    return this.A00.A0I(mxArr[0]);
                }
            } catch (Exception e) {
                this.A02 = e;
                cancel(true);
                return null;
            }
        }
        throw new IllegalArgumentException(A01(0, 64, 31));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.AsyncTask
    /* renamed from: A03, reason: merged with bridge method [inline-methods] */
    public final void onPostExecute(C0716Mc c0716Mc) {
        this.A01.A03(c0716Mc);
    }

    @Override // com.facebook.ads.redexgen.X.MR
    public final void A2z(MX mx) {
        super.executeOnExecutor(O4.A01(), mx);
    }

    @Override // android.os.AsyncTask
    public final void onCancelled() {
        this.A01.A04(this.A02);
    }
}
