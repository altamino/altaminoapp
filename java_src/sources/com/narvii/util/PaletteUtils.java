package com.narvii.util;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.widget.ImageView;
import androidx.palette.graphics.Palette;

/* JADX INFO: loaded from: classes9.dex */
public class PaletteUtils {
    public static double getColorGrayScale(int i10) {
        return (((double) (((i10 >> 16) & 255) / 255.0f)) * 0.299d) + (((double) (((i10 >> 8) & 255) / 255.0f)) * 0.587d) + (((double) ((i10 & 255) / 255.0f)) * 0.114d);
    }

    public static boolean isLightTone(ImageView imageView) {
        if (imageView != null && (imageView.getDrawable() instanceof BitmapDrawable)) {
            return isLightTone(((BitmapDrawable) imageView.getDrawable()).getBitmap());
        }
        return false;
    }

    public static boolean isDarkColor(int i10) {
        if (getColorGrayScale(i10) < 0.8d) {
            return true;
        }
        return false;
    }

    public static boolean isLightTone(Bitmap bitmap) {
        Palette.Swatch swatchG = Palette.b(bitmap).a().g();
        return swatchG != null && ((double) swatchG.c()[2]) > 0.5d;
    }
}
