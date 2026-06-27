package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class SA {
    private static boolean A00;
    private static byte[] A01;

    private static String A02(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 27);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A01 = new byte[]{106, 71, 93, 94, 66, 79, 87, 99, 75, 90, 92, 71, 77, 93, 14, 71, 93, 14, 64, 91, 66, 66, 0, 33, 22, 27, 30, 19, 22, 3, 30, 24, 25, 87, 17, 22, 30, 27, 18, 19, 89, 103, 101, 102, 108, 91, 77, 81, 75, 76, 93, 91, 77, 30, 87, 77, 30, 80, 75, 82, 82, 16};
    }

    static {
        A03();
        A00 = true;
    }

    private SA() {
    }

    @Nullable
    public static BitmapDrawable A00(Context context, @Nullable String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            byte[] bArrDecode = Base64.decode(str, 0);
            Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
            if (bitmapDecodeByteArray != null && (!A00 || A05(context, bitmapDecodeByteArray))) {
                BitmapDrawable bitmapDrawable = new BitmapDrawable(bitmapDecodeByteArray);
                bitmapDrawable.setTileModeXY(Shader.TileMode.REPEAT, Shader.TileMode.REPEAT);
                Resources resources = context.getResources();
                if (resources != null) {
                    DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                    if (displayMetrics != null) {
                        bitmapDrawable.setTargetDensity(displayMetrics.densityDpi);
                        return bitmapDrawable;
                    }
                    A04(context, A02(0, 23, 53));
                    return bitmapDrawable;
                }
                A04(context, A02(44, 18, 37));
                return bitmapDrawable;
            }
            return null;
        } catch (Throwable th) {
            P7.A07(context, A02(41, 3, 17), P8.A1M, new PA(th));
            return null;
        }
    }

    @Nullable
    public static S6 A01(Context context, @Nullable String str) {
        BitmapDrawable bitmapDrawableA00;
        try {
            if (!TextUtils.isEmpty(str) && (bitmapDrawableA00 = A00(context, str)) != null) {
                S6 s6 = new S6(context);
                if (Build.VERSION.SDK_INT >= 16) {
                    s6.setBackground(bitmapDrawableA00);
                } else {
                    s6.setBackgroundDrawable(bitmapDrawableA00);
                }
                s6.setClickable(false);
                s6.setFocusable(false);
                return s6;
            }
            return null;
        } catch (Throwable th) {
            P7.A07(context, A02(41, 3, 17), P8.A1M, new PA(th));
            return null;
        }
    }

    private static void A04(Context context, String str) {
        P7.A07(context, A02(41, 3, 17), P8.A1M, new PA(str));
    }

    @VisibleForTesting
    private static boolean A05(Context context, Bitmap bitmap) {
        boolean z = false;
        int i = 0;
        int i2 = 0;
        int x = 2;
        while (true) {
            switch (x) {
                case 2:
                    bitmap = bitmap;
                    int x2 = bitmap.getWidth();
                    if (i2 >= x2) {
                        x = 10;
                        break;
                    } else {
                        x = 3;
                        break;
                    }
                case 3:
                    i = 0;
                    x = 4;
                    break;
                case 4:
                    bitmap = bitmap;
                    if (i >= bitmap.getHeight()) {
                        x = 9;
                        break;
                    } else {
                        x = 5;
                        break;
                    }
                case 5:
                    bitmap = bitmap;
                    if (Color.alpha(bitmap.getPixel(i2, i)) / 255.0f <= 0.03f) {
                        x = 8;
                        break;
                    } else {
                        x = 6;
                        break;
                    }
                case 6:
                    context = context;
                    A04(context, A02(23, 18, 108));
                    z = false;
                    x = 7;
                    break;
                case 7:
                    return z;
                case 8:
                    i++;
                    x = 4;
                    break;
                case 9:
                    i2++;
                    x = 2;
                    break;
                case 10:
                    z = true;
                    x = 7;
                    break;
            }
        }
    }
}
