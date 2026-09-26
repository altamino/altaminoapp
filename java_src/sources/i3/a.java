package i3;

import android.content.Context;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.resources.b;

/* JADX INFO: loaded from: classes10.dex */
public class a {
    public static final float ALPHA_DISABLED = 0.38f;
    public static final float ALPHA_DISABLED_LOW = 0.12f;
    public static final float ALPHA_FULL = 1.0f;
    public static final float ALPHA_LOW = 0.32f;
    public static final float ALPHA_MEDIUM = 0.54f;
    private static final int TONE_ACCENT_CONTAINER_DARK = 30;
    private static final int TONE_ACCENT_CONTAINER_LIGHT = 90;
    private static final int TONE_ACCENT_DARK = 80;
    private static final int TONE_ACCENT_LIGHT = 40;
    private static final int TONE_ON_ACCENT_CONTAINER_DARK = 90;
    private static final int TONE_ON_ACCENT_CONTAINER_LIGHT = 10;
    private static final int TONE_ON_ACCENT_DARK = 20;
    private static final int TONE_ON_ACCENT_LIGHT = 100;

    public static boolean f(@ColorInt int i10) {
        return i10 != 0 && ColorUtils.e(i10) > 0.5d;
    }

    @ColorInt
    public static int a(@ColorInt int i10, @IntRange int i11) {
        return ColorUtils.o(i10, (Color.alpha(i10) * i11) / 255);
    }

    @ColorInt
    public static int b(@NonNull Context context, @AttrRes int i10, @ColorInt int i11) {
        TypedValue typedValueA = b.a(context, i10);
        if (typedValueA != null) {
            return typedValueA.data;
        }
        return i11;
    }

    @ColorInt
    public static int c(Context context, @AttrRes int i10, String str) {
        return b.d(context, i10, str);
    }

    @ColorInt
    public static int d(@NonNull View view, @AttrRes int i10) {
        return b.e(view, i10);
    }

    @ColorInt
    public static int e(@NonNull View view, @AttrRes int i10, @ColorInt int i11) {
        return b(view.getContext(), i10, i11);
    }

    @ColorInt
    public static int g(@ColorInt int i10, @ColorInt int i11) {
        return ColorUtils.j(i11, i10);
    }

    @ColorInt
    public static int h(@ColorInt int i10, @ColorInt int i11, @FloatRange float f) {
        return g(i10, ColorUtils.o(i11, Math.round(Color.alpha(i11) * f)));
    }

    @ColorInt
    public static int i(@NonNull View view, @AttrRes int i10, @AttrRes int i11, @FloatRange float f) {
        return h(d(view, i10), d(view, i11), f);
    }
}
