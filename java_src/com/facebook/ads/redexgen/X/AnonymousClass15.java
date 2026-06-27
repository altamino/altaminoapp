package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Environment;
import android.support.annotation.Nullable;
import android.util.Log;
import java.io.File;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.15, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class AnonymousClass15 {
    private static byte[] A00;
    private static final String A01;

    private static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 36);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A00 = new byte[]{58, 24, 23, 94, 13, 89, 29, 28, 31, 16, 23, 28, 89, 10, 0, 10, 13, 28, 20, 89, 26, 24, 26, 17, 28, 89, 29, 16, 11, 28, 26, 13, 22, 11, 0, 88, 89, 94, 123, 64, 79, 76, 66, 75, 14, 90, 65, 14, 77, 92, 75, 79, 90, 75, 14, 75, 86, 90, 75, 92, 64, 79, 66, 14, 77, 79, 77, 70, 75, 14, 74, 71, 92, 75, 77, 90, 65, 92, 87, 64, 69, 80, 69, 127, 52, 49, 36, 49, 127, 52, 49, 36, 49, 127, 57, 60, 54, 47, 117, 62, 49, 52, 61, 117, 59, 57, 59, 48, 61, 109, 66, 72, 94, 67, 69, 72, 17, 93, 95, 93, 86, 91, 17, 89, 91, 89, 82, 95, 79, 25, 77, 74, 29, 3, 6, 6, 74, 8, 15, 74, 31, 25, 15, 14, 68, 36, 38, 60, 39, 61, 44, 45};
    }

    static {
        A04();
        A01 = AnonymousClass15.class.getSimpleName();
    }

    private AnonymousClass15() {
    }

    public static File A00(Context context) {
        File cacheDir = A02(context, true);
        return new File(cacheDir, A03(94, 15, 124));
    }

    @Nullable
    private static File A01(Context context) {
        File file = new File(new File(new File(new File(Environment.getExternalStorageDirectory(), A03(109, 7, 8)), A03(79, 4, 0)), context.getPackageName()), A03(123, 5, 30));
        char c = !file.exists() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    file = file;
                    if (!file.mkdirs()) {
                        c = 3;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 3:
                    Log.w(A01, A03(38, 41, 10));
                    file = null;
                    c = 4;
                    break;
                case 4:
                    return file;
            }
        }
    }

    private static File A02(Context context, boolean z) {
        String externalStorageState = null;
        File file = null;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    try {
                        externalStorageState = Environment.getExternalStorageState();
                        c = 5;
                        break;
                    } catch (NullPointerException unused) {
                        externalStorageState = A03(94, 0, 25);
                        c = 5;
                        break;
                    }
                case 5:
                    if (!z) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    externalStorageState = externalStorageState;
                    if (!A03(145, 7, 109).equals(externalStorageState)) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    context = context;
                    file = A01(context);
                    c = '\b';
                    break;
                case '\b':
                    if (file != null) {
                        c = '\n';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    context = context;
                    file = context.getCacheDir();
                    c = '\n';
                    break;
                case '\n':
                    if (file != null) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    context = context;
                    String str = A03(83, 11, 116) + context.getPackageName() + A03(116, 7, 26);
                    Log.w(A01, A03(0, 38, 93) + str + A03(128, 17, 78));
                    file = new File(str);
                    c = '\f';
                    break;
                case '\f':
                    return file;
            }
        }
    }
}
