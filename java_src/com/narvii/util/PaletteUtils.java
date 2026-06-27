package com.narvii.util;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.support.v7.graphics.Palette;
import android.widget.ImageView;

/* loaded from: classes3.dex */
public class PaletteUtils {
    public static boolean isLightTone(ImageView imageView) {
        if (imageView != null && (imageView.getDrawable() instanceof BitmapDrawable)) {
            return isLightTone(((BitmapDrawable) imageView.getDrawable()).getBitmap());
        }
        return false;
    }

    public static boolean isLightTone(Bitmap bitmap) {
        Palette.Swatch mutedSwatch = Palette.from(bitmap).generate().getMutedSwatch();
        return mutedSwatch != null && ((double) mutedSwatch.getHsl()[2]) > 0.5d;
    }

    public static boolean isDarkColor(int i) {
        return getColorGrayScale(i) < 0.8d;
    }

    public static double getColorGrayScale(int i) {
        double d = ((i >> 16) & 255) / 255.0f;
        Double.isNaN(d);
        double d2 = ((i >> 8) & 255) / 255.0f;
        Double.isNaN(d2);
        double d3 = (d * 0.299d) + (d2 * 0.587d);
        double d4 = (i & 255) / 255.0f;
        Double.isNaN(d4);
        return d3 + (d4 * 0.114d);
    }
}
