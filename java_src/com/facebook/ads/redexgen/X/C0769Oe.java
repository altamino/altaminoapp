package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.Nullable;
import android.util.Base64;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Oe, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0769Oe {
    private static byte[] A00;

    static {
        A06();
    }

    private static String A05(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 40);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A06() {
        A00 = new byte[]{-43, -39, -51, -45, -47};
    }

    private C0769Oe() {
    }

    private static int A00(BitmapFactory.Options options, int halfWidth, int height) {
        int i = 0;
        int i2 = 0;
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        int i5 = 1;
        int inSampleSize = i3 <= height ? 2 : 3;
        while (true) {
            switch (inSampleSize) {
                case 2:
                    if (i4 <= halfWidth) {
                        inSampleSize = 7;
                        break;
                    } else {
                        inSampleSize = 3;
                        break;
                    }
                case 3:
                    i = i3 / 2;
                    i2 = i4 / 2;
                    inSampleSize = 4;
                    break;
                case 4:
                    int inSampleSize2 = i / i5;
                    if (inSampleSize2 < height) {
                        inSampleSize = 7;
                        break;
                    } else {
                        inSampleSize = 5;
                        break;
                    }
                case 5:
                    int inSampleSize3 = i2 / i5;
                    if (inSampleSize3 < halfWidth) {
                        inSampleSize = 7;
                        break;
                    } else {
                        inSampleSize = 6;
                        break;
                    }
                case 6:
                    i5 *= 2;
                    inSampleSize = 4;
                    break;
                case 7:
                    return i5;
            }
        }
    }

    public static Bitmap A01(EnumC0768Od enumC0768Od) {
        byte[] bArrDecode = Base64.decode(enumC0768Od.A00(OY.A01), 0);
        return BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
    }

    public static Bitmap A02(InputStream inputStream, int i, int i2) throws IOException {
        Bitmap bitmapDecodeStream = null;
        C0772Oh c0772Oh = null;
        BitmapFactory.Options options = null;
        Rect rect = null;
        char c = Build.VERSION.SDK_INT < 19 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    inputStream = inputStream;
                    bitmapDecodeStream = BitmapFactory.decodeStream(inputStream);
                    c = 3;
                    break;
                case 3:
                    return bitmapDecodeStream;
                case 4:
                    inputStream = inputStream;
                    rect = null;
                    c0772Oh = new C0772Oh(inputStream);
                    c0772Oh.mark(8192);
                    options = new BitmapFactory.Options();
                    options.inJustDecodeBounds = true;
                    BitmapFactory.decodeStream(c0772Oh, null, options);
                    c0772Oh.reset();
                    if (!c0772Oh.A00()) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    c0772Oh = c0772Oh;
                    options = options;
                    options.inSampleSize = A00(options, i2, i);
                    options.inJustDecodeBounds = false;
                    bitmapDecodeStream = BitmapFactory.decodeStream(c0772Oh, rect, options);
                    c = 3;
                    break;
                case 6:
                    c0772Oh = c0772Oh;
                    bitmapDecodeStream = BitmapFactory.decodeStream(c0772Oh);
                    c = 3;
                    break;
            }
        }
    }

    @SuppressLint({"CatchGeneralException"})
    @Nullable
    public static Bitmap A03(String str, int i, int i2) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            options.inSampleSize = A00(options, i2, i);
            options.inJustDecodeBounds = false;
            return BitmapFactory.decodeFile(str, options);
        } catch (Throwable t) {
            Context contextA00 = IF.A00();
            if (contextA00 != null) {
                P7.A07(contextA00, A05(0, 5, 68), P8.A1F, new PA(t));
            }
            return null;
        }
    }

    public static Drawable A04(Context context, EnumC0768Od enumC0768Od) {
        return new BitmapDrawable(context.getResources(), A01(enumC0768Od));
    }
}
