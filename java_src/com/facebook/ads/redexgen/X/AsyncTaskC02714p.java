package com.facebook.ads.redexgen.X;

import android.os.AsyncTask;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.Executor;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.4p, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class AsyncTaskC02714p extends AsyncTask<AbstractC02704o, Void, C5e> implements C5M {
    private static byte[] A04;
    private InterfaceC0703Ln A00;
    private C02513v A01;
    private Exception A02;
    private Executor A03;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 22);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A04 = new byte[]{50, 46, 46, 42, 90, 8, 31, 11, 15, 31, 9, 14, 90, 28, 27, 19, 22, 31, 30, 64, 90, 95, 9, 15, 56, 46, 45, 50, 51, 46, 56, 103, 125, 120, 57, 125, 117, 120, 46, 116, 103, 87, 120, 46, 117, 73, 73, 77, 29, 79, 88, 78, 77, 82, 83, 78, 88, 29, 84, 78, 29, 83, 72, 81, 81, 96, 75, 108, 80, 80, 84, 118, 65, 85, 81, 65, 87, 80, 112, 69, 87, 79, 4, 80, 69, 79, 65, 87, 4, 65, 92, 69, 71, 80, 72, 93, 4, 75, 74, 65, 4, 69, 86, 67, 81, 73, 65, 74, 80, 4, 75, 66, 4, 80, 93, 84, 65, 4, 108, 80, 80, 84, 118, 65, 85, 81, 65, 87, 80};
    }

    public AsyncTaskC02714p(C02513v c02513v, InterfaceC0703Ln interfaceC0703Ln, Executor executor) {
        this.A01 = c02513v;
        this.A00 = interfaceC0703Ln;
        this.A03 = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.AsyncTask
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final C5e doInBackground(AbstractC02704o... abstractC02704oArr) {
        if (abstractC02704oArr != null) {
            try {
                if (abstractC02704oArr.length > 0) {
                    C5e c5eA0I = this.A01.A0I(abstractC02704oArr[0]);
                    if (c5eA0I != null) {
                        String.format(Locale.US, A01(23, 21, 75), Integer.valueOf(c5eA0I.A3m()), c5eA0I.getUrl(), c5eA0I.A3H());
                    }
                    if (c5eA0I == null) {
                        throw new IllegalStateException(A01(44, 21, 43));
                    }
                    return c5eA0I;
                }
            } catch (Exception e) {
                this.A02 = e;
                String.format(Locale.US, A01(0, 23, 108), e.getMessage());
                cancel(true);
                return null;
            }
        }
        throw new IllegalArgumentException(A01(65, 64, 50));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.AsyncTask
    /* renamed from: A03, reason: merged with bridge method [inline-methods] */
    public final void onPostExecute(C5e c5e) {
        this.A00.A55(c5e);
    }

    @Override // com.facebook.ads.redexgen.X.C5M
    public final void A30(AbstractC02704o abstractC02704o) {
        super.executeOnExecutor(this.A03, abstractC02704o);
    }

    @Override // android.os.AsyncTask
    public final void onCancelled() {
        this.A00.A5H(this.A02);
    }
}
