package l3;

import android.content.Context;
import android.graphics.Color;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.resources.b;

/* JADX INFO: loaded from: classes7.dex */
public class a {
    private static final float FORMULA_MULTIPLIER = 4.5f;
    private static final float FORMULA_OFFSET = 2.0f;
    private static final int OVERLAY_ACCENT_COLOR_ALPHA = (int) Math.round(5.1000000000000005d);
    private final int colorSurface;
    private final float displayDensity;
    private final int elevationOverlayAccentColor;
    private final int elevationOverlayColor;
    private final boolean elevationOverlayEnabled;

    public a(@NonNull Context context) {
        this(b.b(context, d3.b.elevationOverlayEnabled, false), i3.a.b(context, d3.b.elevationOverlayColor, 0), i3.a.b(context, d3.b.elevationOverlayAccentColor, 0), i3.a.b(context, d3.b.colorSurface, 0), context.getResources().getDisplayMetrics().density);
    }

    public boolean e() {
        return this.elevationOverlayEnabled;
    }

    private boolean f(@ColorInt int i10) {
        return ColorUtils.o(i10, 255) == this.colorSurface;
    }

    public float a(float f) {
        float f6 = this.displayDensity;
        if (f6 <= 0.0f || f <= 0.0f) {
            return 0.0f;
        }
        return Math.min(((((float) Math.log1p(f / f6)) * FORMULA_MULTIPLIER) + 2.0f) / 100.0f, 1.0f);
    }

    @ColorInt
    public int c(@ColorInt int i10, float f) {
        return (this.elevationOverlayEnabled && f(i10)) ? b(i10, f) : i10;
    }

    @ColorInt
    public int d(float f) {
        return c(this.colorSurface, f);
    }

    @ColorInt
    public int b(@ColorInt int i10, float f) {
        int i11;
        float fA = a(f);
        int iAlpha = Color.alpha(i10);
        int iH = i3.a.h(ColorUtils.o(i10, 255), this.elevationOverlayColor, fA);
        if (fA > 0.0f && (i11 = this.elevationOverlayAccentColor) != 0) {
            iH = i3.a.g(iH, ColorUtils.o(i11, OVERLAY_ACCENT_COLOR_ALPHA));
        }
        return ColorUtils.o(iH, iAlpha);
    }

    public a(boolean z6, @ColorInt int i10, @ColorInt int i11, @ColorInt int i12, float f) {
        this.elevationOverlayEnabled = z6;
        this.elevationOverlayColor = i10;
        this.elevationOverlayAccentColor = i11;
        this.colorSurface = i12;
        this.displayDensity = f;
    }
}
