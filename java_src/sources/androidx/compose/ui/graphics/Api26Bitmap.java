package androidx.compose.ui.graphics;

import android.graphics.Bitmap;
import android.util.DisplayMetrics;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
@RequiresApi
final class Api26Bitmap {

    @NotNull
    public static final Api26Bitmap INSTANCE = new Api26Bitmap();

    @DoNotInline
    @NotNull
    public static final ColorSpace a(@NotNull Bitmap bitmap) {
        ColorSpace colorSpaceB;
        kotlin.jvm.internal.t.j(bitmap, "<this>");
        android.graphics.ColorSpace colorSpace = bitmap.getColorSpace();
        return (colorSpace == null || (colorSpaceB = b(colorSpace)) == null) ? ColorSpaces.INSTANCE.s() : colorSpaceB;
    }

    @DoNotInline
    @NotNull
    public static final ColorSpace b(@NotNull android.graphics.ColorSpace colorSpace) {
        kotlin.jvm.internal.t.j(colorSpace, "<this>");
        if (kotlin.jvm.internal.t.e(colorSpace, android.graphics.ColorSpace.get(android.graphics.ColorSpace.Named.SRGB))) {
            return ColorSpaces.INSTANCE.s();
        }
        if (kotlin.jvm.internal.t.e(colorSpace, android.graphics.ColorSpace.get(android.graphics.ColorSpace.Named.ACES))) {
            return ColorSpaces.INSTANCE.a();
        }
        if (kotlin.jvm.internal.t.e(colorSpace, android.graphics.ColorSpace.get(android.graphics.ColorSpace.Named.ACESCG))) {
            return ColorSpaces.INSTANCE.b();
        }
        if (kotlin.jvm.internal.t.e(colorSpace, android.graphics.ColorSpace.get(android.graphics.ColorSpace.Named.ADOBE_RGB))) {
            return ColorSpaces.INSTANCE.c();
        }
        if (kotlin.jvm.internal.t.e(colorSpace, android.graphics.ColorSpace.get(android.graphics.ColorSpace.Named.BT2020))) {
            return ColorSpaces.INSTANCE.d();
        }
        if (kotlin.jvm.internal.t.e(colorSpace, android.graphics.ColorSpace.get(android.graphics.ColorSpace.Named.BT709))) {
            return ColorSpaces.INSTANCE.e();
        }
        if (kotlin.jvm.internal.t.e(colorSpace, android.graphics.ColorSpace.get(android.graphics.ColorSpace.Named.CIE_LAB))) {
            return ColorSpaces.INSTANCE.f();
        }
        if (kotlin.jvm.internal.t.e(colorSpace, android.graphics.ColorSpace.get(android.graphics.ColorSpace.Named.CIE_XYZ))) {
            return ColorSpaces.INSTANCE.g();
        }
        if (kotlin.jvm.internal.t.e(colorSpace, android.graphics.ColorSpace.get(android.graphics.ColorSpace.Named.DCI_P3))) {
            return ColorSpaces.INSTANCE.i();
        }
        if (kotlin.jvm.internal.t.e(colorSpace, android.graphics.ColorSpace.get(android.graphics.ColorSpace.Named.DISPLAY_P3))) {
            return ColorSpaces.INSTANCE.j();
        }
        if (kotlin.jvm.internal.t.e(colorSpace, android.graphics.ColorSpace.get(android.graphics.ColorSpace.Named.EXTENDED_SRGB))) {
            return ColorSpaces.INSTANCE.k();
        }
        if (kotlin.jvm.internal.t.e(colorSpace, android.graphics.ColorSpace.get(android.graphics.ColorSpace.Named.LINEAR_EXTENDED_SRGB))) {
            return ColorSpaces.INSTANCE.l();
        }
        if (kotlin.jvm.internal.t.e(colorSpace, android.graphics.ColorSpace.get(android.graphics.ColorSpace.Named.LINEAR_SRGB))) {
            return ColorSpaces.INSTANCE.m();
        }
        if (kotlin.jvm.internal.t.e(colorSpace, android.graphics.ColorSpace.get(android.graphics.ColorSpace.Named.NTSC_1953))) {
            return ColorSpaces.INSTANCE.n();
        }
        if (kotlin.jvm.internal.t.e(colorSpace, android.graphics.ColorSpace.get(android.graphics.ColorSpace.Named.PRO_PHOTO_RGB))) {
            return ColorSpaces.INSTANCE.q();
        }
        return kotlin.jvm.internal.t.e(colorSpace, android.graphics.ColorSpace.get(android.graphics.ColorSpace.Named.SMPTE_C)) ? ColorSpaces.INSTANCE.r() : ColorSpaces.INSTANCE.s();
    }

    @DoNotInline
    @NotNull
    public static final Bitmap c(int i10, int i11, int i12, boolean z6, @NotNull ColorSpace colorSpace) {
        kotlin.jvm.internal.t.j(colorSpace, "colorSpace");
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap((DisplayMetrics) null, i10, i11, AndroidImageBitmap_androidKt.d(i12), z6, d(colorSpace));
        kotlin.jvm.internal.t.i(bitmapCreateBitmap, "createBitmap(\n          …orkColorSpace()\n        )");
        return bitmapCreateBitmap;
    }

    @DoNotInline
    @NotNull
    public static final android.graphics.ColorSpace d(@NotNull ColorSpace colorSpace) {
        android.graphics.ColorSpace.Named named;
        kotlin.jvm.internal.t.j(colorSpace, "<this>");
        ColorSpaces colorSpaces = ColorSpaces.INSTANCE;
        if (kotlin.jvm.internal.t.e(colorSpace, colorSpaces.s())) {
            named = android.graphics.ColorSpace.Named.SRGB;
        } else if (kotlin.jvm.internal.t.e(colorSpace, colorSpaces.a())) {
            named = android.graphics.ColorSpace.Named.ACES;
        } else if (kotlin.jvm.internal.t.e(colorSpace, colorSpaces.b())) {
            named = android.graphics.ColorSpace.Named.ACESCG;
        } else if (kotlin.jvm.internal.t.e(colorSpace, colorSpaces.c())) {
            named = android.graphics.ColorSpace.Named.ADOBE_RGB;
        } else if (kotlin.jvm.internal.t.e(colorSpace, colorSpaces.d())) {
            named = android.graphics.ColorSpace.Named.BT2020;
        } else if (kotlin.jvm.internal.t.e(colorSpace, colorSpaces.e())) {
            named = android.graphics.ColorSpace.Named.BT709;
        } else if (kotlin.jvm.internal.t.e(colorSpace, colorSpaces.f())) {
            named = android.graphics.ColorSpace.Named.CIE_LAB;
        } else if (kotlin.jvm.internal.t.e(colorSpace, colorSpaces.g())) {
            named = android.graphics.ColorSpace.Named.CIE_XYZ;
        } else if (kotlin.jvm.internal.t.e(colorSpace, colorSpaces.i())) {
            named = android.graphics.ColorSpace.Named.DCI_P3;
        } else if (kotlin.jvm.internal.t.e(colorSpace, colorSpaces.j())) {
            named = android.graphics.ColorSpace.Named.DISPLAY_P3;
        } else if (kotlin.jvm.internal.t.e(colorSpace, colorSpaces.k())) {
            named = android.graphics.ColorSpace.Named.EXTENDED_SRGB;
        } else if (kotlin.jvm.internal.t.e(colorSpace, colorSpaces.l())) {
            named = android.graphics.ColorSpace.Named.LINEAR_EXTENDED_SRGB;
        } else if (kotlin.jvm.internal.t.e(colorSpace, colorSpaces.m())) {
            named = android.graphics.ColorSpace.Named.LINEAR_SRGB;
        } else if (kotlin.jvm.internal.t.e(colorSpace, colorSpaces.n())) {
            named = android.graphics.ColorSpace.Named.NTSC_1953;
        } else if (kotlin.jvm.internal.t.e(colorSpace, colorSpaces.q())) {
            named = android.graphics.ColorSpace.Named.PRO_PHOTO_RGB;
        } else {
            named = kotlin.jvm.internal.t.e(colorSpace, colorSpaces.r()) ? android.graphics.ColorSpace.Named.SMPTE_C : android.graphics.ColorSpace.Named.SRGB;
        }
        android.graphics.ColorSpace colorSpace2 = android.graphics.ColorSpace.get(named);
        kotlin.jvm.internal.t.i(colorSpace2, "get(frameworkNamedSpace)");
        return colorSpace2;
    }

    private Api26Bitmap() {
    }
}
