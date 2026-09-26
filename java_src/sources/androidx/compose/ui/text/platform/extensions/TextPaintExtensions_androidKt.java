package androidx.compose.ui.text.platform.extensions;

import android.graphics.Typeface;
import android.os.Build;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.platform.AndroidTextPaint;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import e8.r;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class TextPaintExtensions_androidKt {
    @NotNull
    public static final SpanStyle a(@NotNull AndroidTextPaint androidTextPaint, @NotNull SpanStyle style, @NotNull r<? super FontFamily, ? super FontWeight, ? super FontStyle, ? super FontSynthesis, ? extends Typeface> resolveTypeface, @NotNull Density density) {
        t.j(androidTextPaint, "<this>");
        t.j(style, "style");
        t.j(resolveTypeface, "resolveTypeface");
        t.j(density, "density");
        long jG = TextUnit.g(style.i());
        TextUnitType.Companion companion = TextUnitType.Companion;
        if (TextUnitType.g(jG, companion.b())) {
            androidTextPaint.setTextSize(density.p0(style.i()));
        } else if (TextUnitType.g(jG, companion.a())) {
            androidTextPaint.setTextSize(androidTextPaint.getTextSize() * TextUnit.h(style.i()));
        }
        if (b(style)) {
            FontFamily fontFamilyG = style.g();
            FontWeight fontWeightL = style.l();
            if (fontWeightL == null) {
                fontWeightL = FontWeight.Companion.d();
            }
            FontStyle fontStyleJ = style.j();
            FontStyle fontStyleC = FontStyle.c(fontStyleJ != null ? fontStyleJ.i() : FontStyle.Companion.b());
            FontSynthesis fontSynthesisK = style.k();
            androidTextPaint.setTypeface(resolveTypeface.invoke(fontFamilyG, fontWeightL, fontStyleC, FontSynthesis.e(fontSynthesisK != null ? fontSynthesisK.m() : FontSynthesis.Companion.a())));
        }
        if (style.n() != null && !t.e(style.n(), LocaleList.Companion.a())) {
            if (Build.VERSION.SDK_INT >= 24) {
                LocaleListHelperMethods.INSTANCE.b(androidTextPaint, style.n());
            } else {
                androidTextPaint.setTextLocale(LocaleExtensions_androidKt.a(style.n().isEmpty() ? Locale.Companion.a() : style.n().c(0)));
            }
        }
        long jG2 = TextUnit.g(style.m());
        if (TextUnitType.g(jG2, companion.a())) {
            androidTextPaint.setLetterSpacing(TextUnit.h(style.m()));
        } else {
            TextUnitType.g(jG2, companion.b());
        }
        if (style.h() != null && !t.e(style.h(), "")) {
            androidTextPaint.setFontFeatureSettings(style.h());
        }
        if (style.s() != null && !t.e(style.s(), TextGeometricTransform.Companion.a())) {
            androidTextPaint.setTextScaleX(androidTextPaint.getTextScaleX() * style.s().b());
            androidTextPaint.setTextSkewX(androidTextPaint.getTextSkewX() + style.s().c());
        }
        androidTextPaint.b(style.f());
        androidTextPaint.a(style.e(), Size.Companion.a());
        androidTextPaint.c(style.p());
        androidTextPaint.d(style.q());
        long jA = (!TextUnitType.g(TextUnit.g(style.m()), companion.b()) || TextUnit.h(style.m()) == 0.0f) ? TextUnit.Companion.a() : style.m();
        long jC = style.c();
        Color.Companion companion2 = Color.Companion;
        long jF = Color.n(jC, companion2.e()) ? companion2.f() : style.c();
        BaselineShift baselineShiftD = style.d();
        return new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, jA, (baselineShiftD != null && BaselineShift.e(baselineShiftD.h(), BaselineShift.Companion.a())) ? null : style.d(), (TextGeometricTransform) null, (LocaleList) null, jF, (TextDecoration) null, (Shadow) null, 13951, (k) null);
    }

    public static final boolean b(@NotNull SpanStyle spanStyle) {
        t.j(spanStyle, "<this>");
        return (spanStyle.g() == null && spanStyle.j() == null && spanStyle.l() == null) ? false : true;
    }
}
