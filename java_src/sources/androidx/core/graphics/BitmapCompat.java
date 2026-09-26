package androidx.core.graphics;

import android.graphics.Bitmap;
import android.graphics.BlendMode;
import android.graphics.ColorSpace;
import android.graphics.Paint;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes5.dex */
public final class BitmapCompat {

    @RequiresApi
    static class Api27Impl {
        @DoNotInline
        static boolean c(Bitmap bitmap) {
            return bitmap.getConfig() == Bitmap.Config.RGBA_F16 && bitmap.getColorSpace().equals(ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB));
        }

        private Api27Impl() {
        }

        @DoNotInline
        static Bitmap a(Bitmap bitmap) {
            if (bitmap.getConfig() == Bitmap.Config.HARDWARE) {
                Bitmap.Config configA = Bitmap.Config.ARGB_8888;
                if (Build.VERSION.SDK_INT >= 31) {
                    configA = Api31Impl.a(bitmap);
                }
                return bitmap.copy(configA, true);
            }
            return bitmap;
        }

        @DoNotInline
        static Bitmap b(int i10, int i11, Bitmap bitmap, boolean z6) {
            Bitmap.Config config = bitmap.getConfig();
            ColorSpace colorSpace = bitmap.getColorSpace();
            ColorSpace colorSpace2 = ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB);
            if (z6 && !bitmap.getColorSpace().equals(colorSpace2)) {
                config = Bitmap.Config.RGBA_F16;
                colorSpace = colorSpace2;
            } else if (bitmap.getConfig() == Bitmap.Config.HARDWARE) {
                config = Bitmap.Config.ARGB_8888;
                if (Build.VERSION.SDK_INT >= 31) {
                    config = Api31Impl.a(bitmap);
                }
            }
            return Bitmap.createBitmap(i10, i11, config, bitmap.hasAlpha(), colorSpace);
        }
    }

    @RequiresApi
    static class Api29Impl {
        @DoNotInline
        static void a(Paint paint) {
            paint.setBlendMode(BlendMode.SRC);
        }

        private Api29Impl() {
        }
    }

    @RequiresApi
    static class Api17Impl {
        private Api17Impl() {
        }

        @DoNotInline
        static boolean a(Bitmap bitmap) {
            return bitmap.hasMipMap();
        }

        @DoNotInline
        static void b(Bitmap bitmap, boolean z6) {
            bitmap.setHasMipMap(z6);
        }
    }

    @RequiresApi
    static class Api19Impl {
        private Api19Impl() {
        }

        @DoNotInline
        static int a(Bitmap bitmap) {
            return bitmap.getAllocationByteCount();
        }
    }

    @RequiresApi
    static class Api31Impl {
        private Api31Impl() {
        }

        @DoNotInline
        static Bitmap.Config a(Bitmap bitmap) {
            if (bitmap.getHardwareBuffer().getFormat() == 22) {
                return Bitmap.Config.RGBA_F16;
            }
            return Bitmap.Config.ARGB_8888;
        }
    }

    private BitmapCompat() {
    }
}
