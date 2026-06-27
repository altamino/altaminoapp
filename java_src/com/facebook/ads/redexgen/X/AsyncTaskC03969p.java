package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.9p, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class AsyncTaskC03969p extends AsyncTask<C03979q, Void, Drawable> {
    private static byte[] A02;
    private final InterfaceC03939m A00;
    private final boolean A01;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 92);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A02 = new byte[]{4, 2, 11, 2, 15, 6, 0};
    }

    private AsyncTaskC03969p(InterfaceC03939m interfaceC03939m, boolean z) {
        this.A00 = interfaceC03939m;
        this.A01 = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.AsyncTask
    @SuppressLint({"CatchGeneralException"})
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final Drawable doInBackground(C03979q... c03979qArr) {
        if (c03979qArr == null || c03979qArr.length < 1) {
            return null;
        }
        String str = c03979qArr[0].A01;
        String str2 = c03979qArr[0].A00;
        Context contextA00 = IF.A00();
        if (contextA00 == null) {
            return null;
        }
        Bitmap bitmapA0N = null;
        try {
            bitmapA0N = new C0607Ht(contextA00).A0N(str, -1, -1);
        } catch (Throwable th) {
            P7.A0E(A01(0, 7, 65), P8.A15, new PA(th));
        }
        if (bitmapA0N != null) {
            return C03989r.A00(contextA00, bitmapA0N, this.A01, str2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.AsyncTask
    /* renamed from: A03, reason: merged with bridge method [inline-methods] */
    public final void onPostExecute(Drawable drawable) {
        this.A00.A5Q(drawable);
    }
}
