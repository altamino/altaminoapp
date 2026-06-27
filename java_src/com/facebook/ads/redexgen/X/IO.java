package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.AsyncTask;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class IO<T> extends AsyncTask<Void, Void, T> {
    private static byte[] A04;
    private IR A00;
    private final Context A01;
    private final IH<T> A02;
    private final IL<T> A03;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 2);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A04 = new byte[]{115, 118, 99, 118, 117, 118, 100, 114};
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.IH != com.facebook.ads.internal.database.AdDatabaseCallback<T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.IL != com.facebook.ads.internal.database.AdDatabaseQuery<T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.IO != com.facebook.ads.internal.database.AdDatabaseHelper$DatabaseQueryAsyncTask<T> */
    public IO(Context context, IL<T> il, IH<T> ih) {
        this.A03 = il;
        this.A02 = ih;
        this.A01 = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.IO != com.facebook.ads.internal.database.AdDatabaseHelper$DatabaseQueryAsyncTask<T> */
    @Override // android.os.AsyncTask
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final T doInBackground(Void... voidArr) {
        T tA03 = null;
        try {
            tA03 = this.A03.A03();
            this.A00 = this.A03.A00();
            return tA03;
        } catch (Exception e) {
            P7.A07(this.A01, A01(0, 8, 21), P8.A0h, new PA(e));
            this.A00 = IR.A08;
            return tA03;
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.IO != com.facebook.ads.internal.database.AdDatabaseHelper$DatabaseQueryAsyncTask<T> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.os.AsyncTask
    public final void onPostExecute(T t) {
        IO<T> io2 = this;
        char c = io2.A00 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    io2 = io2;
                    t = t;
                    io2.A02.A02(t);
                    c = 3;
                    break;
                case 3:
                    io2.A02.A00();
                    return;
                case 4:
                    io2 = io2;
                    io2.A02.A01(io2.A00.A02(), io2.A00.A03());
                    c = 3;
                    break;
            }
        }
    }
}
