package androidx.compose.ui.graphics;

import android.graphics.Bitmap;
import android.os.Build;
import android.util.DisplayMetrics;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class AndroidImageBitmap_androidKt {
    @NotNull
    public static final ImageBitmap a(int i10, int i11, int i12, boolean z6, @NotNull ColorSpace colorSpace) {
        Bitmap bitmapCreateBitmap;
        kotlin.jvm.internal.t.j(colorSpace, "colorSpace");
        Bitmap.Config configD = d(i12);
        if (Build.VERSION.SDK_INT >= 26) {
            bitmapCreateBitmap = Api26Bitmap.c(i10, i11, i12, z6, colorSpace);
        } else {
            bitmapCreateBitmap = Bitmap.createBitmap((DisplayMetrics) null, i10, i11, configD);
            kotlin.jvm.internal.t.i(bitmapCreateBitmap, "createBitmap(\n          …   bitmapConfig\n        )");
            bitmapCreateBitmap.setHasAlpha(z6);
        }
        return new AndroidImageBitmap(bitmapCreateBitmap);
    }

    @NotNull
    public static final Bitmap b(@NotNull ImageBitmap imageBitmap) {
        kotlin.jvm.internal.t.j(imageBitmap, "<this>");
        if (imageBitmap instanceof AndroidImageBitmap) {
            return ((AndroidImageBitmap) imageBitmap).c();
        }
        throw new UnsupportedOperationException("Unable to obtain android.graphics.Bitmap");
    }

    @NotNull
    public static final ImageBitmap c(@NotNull Bitmap bitmap) {
        kotlin.jvm.internal.t.j(bitmap, "<this>");
        return new AndroidImageBitmap(bitmap);
    }

    @NotNull
    public static final Bitmap.Config d(int i10) {
        ImageBitmapConfig.Companion companion = ImageBitmapConfig.Companion;
        if (ImageBitmapConfig.i(i10, companion.b())) {
            return Bitmap.Config.ARGB_8888;
        }
        if (ImageBitmapConfig.i(i10, companion.a())) {
            return Bitmap.Config.ALPHA_8;
        }
        if (ImageBitmapConfig.i(i10, companion.e())) {
            return Bitmap.Config.RGB_565;
        }
        int i11 = Build.VERSION.SDK_INT;
        if (i11 < 26 || !ImageBitmapConfig.i(i10, companion.c())) {
            return (i11 < 26 || !ImageBitmapConfig.i(i10, companion.d())) ? Bitmap.Config.ARGB_8888 : Bitmap.Config.HARDWARE;
        }
        return Bitmap.Config.RGBA_F16;
    }

    public static final int e(@NotNull Bitmap.Config config) {
        kotlin.jvm.internal.t.j(config, "<this>");
        if (config == Bitmap.Config.ALPHA_8) {
            return ImageBitmapConfig.Companion.a();
        }
        if (config == Bitmap.Config.RGB_565) {
            return ImageBitmapConfig.Companion.e();
        }
        if (config == Bitmap.Config.ARGB_4444) {
            return ImageBitmapConfig.Companion.b();
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 26 || config != Bitmap.Config.RGBA_F16) {
            return (i10 < 26 || config != Bitmap.Config.HARDWARE) ? ImageBitmapConfig.Companion.b() : ImageBitmapConfig.Companion.d();
        }
        return ImageBitmapConfig.Companion.c();
    }
}
