package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.InsetDrawable;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes4.dex */
public final class DrawableCompat {
    private static final String TAG = "DrawableCompat";
    private static Method sGetLayoutDirectionMethod;
    private static boolean sGetLayoutDirectionMethodFetched;
    private static Method sSetLayoutDirectionMethod;
    private static boolean sSetLayoutDirectionMethodFetched;

    @NonNull
    public static Drawable r(@NonNull Drawable drawable) {
        return drawable;
    }

    @RequiresApi
    static class Api19Impl {
        private Api19Impl() {
        }

        @DoNotInline
        static int a(Drawable drawable) {
            return drawable.getAlpha();
        }

        @DoNotInline
        static Drawable b(DrawableContainer.DrawableContainerState drawableContainerState, int i10) {
            return drawableContainerState.getChild(i10);
        }

        @DoNotInline
        static Drawable c(InsetDrawable insetDrawable) {
            return insetDrawable.getDrawable();
        }

        @DoNotInline
        static boolean d(Drawable drawable) {
            return drawable.isAutoMirrored();
        }

        @DoNotInline
        static void e(Drawable drawable, boolean z6) {
            drawable.setAutoMirrored(z6);
        }
    }

    @RequiresApi
    static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        static void a(Drawable drawable, Resources.Theme theme) {
            drawable.applyTheme(theme);
        }

        @DoNotInline
        static boolean b(Drawable drawable) {
            return drawable.canApplyTheme();
        }

        @DoNotInline
        static ColorFilter c(Drawable drawable) {
            return drawable.getColorFilter();
        }

        @DoNotInline
        static void d(Drawable drawable, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
        }

        @DoNotInline
        static void e(Drawable drawable, float f, float f6) {
            drawable.setHotspot(f, f6);
        }

        @DoNotInline
        static void f(Drawable drawable, int i10, int i11, int i12, int i13) {
            drawable.setHotspotBounds(i10, i11, i12, i13);
        }

        @DoNotInline
        static void g(Drawable drawable, int i10) {
            drawable.setTint(i10);
        }

        @DoNotInline
        static void h(Drawable drawable, ColorStateList colorStateList) {
            drawable.setTintList(colorStateList);
        }

        @DoNotInline
        static void i(Drawable drawable, PorterDuff.Mode mode) {
            drawable.setTintMode(mode);
        }
    }

    @RequiresApi
    static class Api23Impl {
        private Api23Impl() {
        }

        @DoNotInline
        static int a(Drawable drawable) {
            return drawable.getLayoutDirection();
        }

        @DoNotInline
        static boolean b(Drawable drawable, int i10) {
            return drawable.setLayoutDirection(i10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T extends Drawable> T q(@NonNull Drawable drawable) {
        return drawable instanceof WrappedDrawable ? (T) ((WrappedDrawable) drawable).b() : drawable;
    }

    private DrawableCompat() {
    }

    public static void a(@NonNull Drawable drawable, @NonNull Resources.Theme theme) {
        Api21Impl.a(drawable, theme);
    }

    public static boolean b(@NonNull Drawable drawable) {
        return Api21Impl.b(drawable);
    }

    public static void c(@NonNull Drawable drawable) {
        drawable.clearColorFilter();
    }

    public static int d(@NonNull Drawable drawable) {
        return Api19Impl.a(drawable);
    }

    @Nullable
    public static ColorFilter e(@NonNull Drawable drawable) {
        return Api21Impl.c(drawable);
    }

    public static int f(@NonNull Drawable drawable) {
        return Api23Impl.a(drawable);
    }

    public static void g(@NonNull Drawable drawable, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        Api21Impl.d(drawable, resources, xmlPullParser, attributeSet, theme);
    }

    public static boolean h(@NonNull Drawable drawable) {
        return Api19Impl.d(drawable);
    }

    @Deprecated
    public static void i(@NonNull Drawable drawable) {
        drawable.jumpToCurrentState();
    }

    public static void j(@NonNull Drawable drawable, boolean z6) {
        Api19Impl.e(drawable, z6);
    }

    public static void k(@NonNull Drawable drawable, float f, float f6) {
        Api21Impl.e(drawable, f, f6);
    }

    public static void l(@NonNull Drawable drawable, int i10, int i11, int i12, int i13) {
        Api21Impl.f(drawable, i10, i11, i12, i13);
    }

    public static boolean m(@NonNull Drawable drawable, int i10) {
        return Api23Impl.b(drawable, i10);
    }

    public static void n(@NonNull Drawable drawable, @ColorInt int i10) {
        Api21Impl.g(drawable, i10);
    }

    public static void o(@NonNull Drawable drawable, @Nullable ColorStateList colorStateList) {
        Api21Impl.h(drawable, colorStateList);
    }

    public static void p(@NonNull Drawable drawable, @Nullable PorterDuff.Mode mode) {
        Api21Impl.i(drawable, mode);
    }
}
