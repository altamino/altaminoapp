package com.facebook.ads.redexgen.X;

import android.graphics.Color;
import android.support.annotation.ColorInt;
import android.support.annotation.FloatRange;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.v4.media.MediaDescriptionCompat;
import com.tonyodev.fetch.FetchConst;
import java.util.Arrays;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.4x, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C02794x {
    private static byte[] A00;
    private static final ThreadLocal<double[]> A01;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_FILE_ALREADY_CREATED);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A00 = new byte[]{24, 30, 29, 1, 34, 35, -55, 22, 30, 28, 29, -55, 17, 10, 31, 14, -55, 10, -55, 21, 14, 23, 16, 29, 17, -55, 24, 15, -55, -36, -41, 78, 89, 93, 85, 78, 13, 90, 98, 96, 97, 13, 79, 82, 13, 79, 82, 97, 100, 82, 82, 91, 13, 29, 13, 78, 91, 81, 13, 31, 34, 34, 27};
    }

    static {
        A04();
        A01 = new ThreadLocal<>();
    }

    private C02794x() {
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public static double A00(@ColorInt int i) {
        double[] dArrA07 = A07();
        A06(i, dArrA07);
        return dArrA07[1] / 100.0d;
    }

    @ColorInt
    public static int A01(@ColorInt int i, @IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED, to = IjkMediaMeta.AV_CH_LAYOUT_7POINT1_WIDE_BACK) int i2) {
        char c = i2 >= 0 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    if (i2 <= 255) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    throw new IllegalArgumentException(A03(31, 32, 125));
                case 4:
                    return (16777215 & i) | (i2 << 24);
            }
        }
    }

    @ColorInt
    public static int A02(@ColorInt int i, @ColorInt int i2, @FloatRange(from = 0.0d, to = 1.0d) float g) {
        float inverseRatio = 1.0f - g;
        return Color.argb((int) ((Color.alpha(i) * inverseRatio) + (Color.alpha(i2) * g)), (int) ((Color.red(i) * inverseRatio) + (Color.red(i2) * g)), (int) ((Color.green(i) * inverseRatio) + (Color.green(i2) * g)), (int) ((Color.blue(i) * inverseRatio) + (Color.blue(i2) * g)));
    }

    private static void A05(@IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED, to = IjkMediaMeta.AV_CH_LAYOUT_7POINT1_WIDE_BACK) int i, @IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED, to = IjkMediaMeta.AV_CH_LAYOUT_7POINT1_WIDE_BACK) int i2, @IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED, to = IjkMediaMeta.AV_CH_LAYOUT_7POINT1_WIDE_BACK) int i3, @NonNull double[] dArr) {
        double sg = 0.0d;
        double sr = 0.0d;
        double d = 0.0d;
        double d2 = 0.0d;
        double dPow = 0.0d;
        double dPow2 = 0.0d;
        char c = dArr.length != 3 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    throw new IllegalArgumentException(A03(0, 31, 57));
                case 3:
                    double sg2 = i;
                    sg = sg2 / 255.0d;
                    if (sg >= 0.04045d) {
                        c = '\f';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    sr = sg / 12.92d;
                    c = 5;
                    break;
                case 5:
                    d2 = i2 / 255.0d;
                    if (d2 >= 0.04045d) {
                        c = 11;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    dPow = d2 / 12.92d;
                    c = 7;
                    break;
                case 7:
                    d = i3 / 255.0d;
                    if (d >= 0.04045d) {
                        c = '\n';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    dPow2 = d / 12.92d;
                    c = '\t';
                    break;
                case '\t':
                    double[] dArr2 = dArr;
                    double sb = 0.3576d * dPow;
                    double d3 = (0.4124d * sr) + sb;
                    double sb2 = 0.1805d * dPow2;
                    double sg3 = 100.0d * (d3 + sb2);
                    dArr2[0] = sg3;
                    double sb3 = 0.7152d * dPow;
                    double d4 = (0.2126d * sr) + sb3;
                    double sb4 = 0.0722d * dPow2;
                    double sg4 = 100.0d * (d4 + sb4);
                    dArr2[1] = sg4;
                    double sb5 = 0.1192d * dPow;
                    double d5 = (0.0193d * sr) + sb5;
                    double sb6 = 0.9505d * dPow2;
                    double sg5 = 100.0d * (d5 + sb6);
                    dArr2[2] = sg5;
                    return;
                case '\n':
                    dPow2 = Math.pow((0.055d + d) / 1.055d, 2.4d);
                    c = '\t';
                    break;
                case 11:
                    dPow = Math.pow((0.055d + d2) / 1.055d, 2.4d);
                    c = 7;
                    break;
                case '\f':
                    sr = Math.pow((0.055d + sg) / 1.055d, 2.4d);
                    c = 5;
                    break;
            }
        }
    }

    private static void A06(@ColorInt int i, @NonNull double[] dArr) {
        A05(Color.red(i), Color.green(i), Color.blue(i), dArr);
    }

    private static double[] A07() {
        double[] dArr = A01.get();
        if (dArr == null) {
            double[] dArr2 = new double[3];
            A01.set(dArr2);
            return dArr2;
        }
        return dArr;
    }
}
