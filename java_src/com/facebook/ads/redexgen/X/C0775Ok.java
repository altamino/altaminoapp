package com.facebook.ads.redexgen.X;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ok, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0775Ok {
    private static byte[] A00;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 87);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A00 = new byte[]{-21, -9, -11, -74, -18, -23, -21, -19, -22, -9, -9, -13, -74, -23, -20, -5, -74, -15, -8, -21, -12, 18, 31, -40, 37, -47, 21, 22, 29, 22, 37, 22, -47, 26, 33, 20, -47, 30, 18, 35, 28, 22, 35, -33, 17, 47, 60, -11, 66, -18, 49, 64, 51, 47, 66, 51, -18, 55, 62, 49, -18, 59, 47, 64, 57, 51, 64, -4, 58, 65, 52};
    }

    private C0775Ok() {
    }

    public static void A02(Context context) throws IOException {
        Exception e = null;
        boolean zCreateNewFile = true;
        if (context == null) {
            zCreateNewFile = false;
        }
        if (zCreateNewFile) {
            try {
                File file = new File(context.getFilesDir(), A00(0, 20, 49));
                if (!file.exists()) {
                    zCreateNewFile = file.createNewFile();
                }
            } catch (Exception e2) {
                e = e2;
            }
        }
        if (!zCreateNewFile) {
            e = new Exception(A00(44, 24, 119));
        }
        if (e != null) {
            P7.A08(context, A00(68, 3, 122), P8.A1I, new PA(e));
        }
    }

    public static void A03(Context context) {
        Exception e = null;
        boolean zDelete = true;
        if (context == null) {
            zDelete = false;
        }
        if (zDelete) {
            try {
                File file = new File(context.getFilesDir(), A00(0, 20, 49));
                if (file.exists()) {
                    zDelete = file.delete();
                }
            } catch (Exception e2) {
                e = e2;
            }
        }
        if (!zDelete) {
            e = new Exception(A00(20, 24, 90));
        }
        if (e != null) {
            P7.A08(context, A00(68, 3, 122), P8.A1I, new PA(e));
        }
    }

    public static boolean A04(Context context) {
        try {
            File markerFile = new File(context.getFilesDir(), A00(0, 20, 49));
            return markerFile.exists();
        } catch (Exception e) {
            P7.A08(context, A00(68, 3, 122), P8.A1I, new PA(e));
            return false;
        }
    }
}
