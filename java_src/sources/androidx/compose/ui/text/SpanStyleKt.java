package androidx.compose.ui.text;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.ShadowKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.FontWeightKt;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.BaselineShiftKt;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDrawStyle;
import androidx.compose.ui.text.style.TextDrawStyleKt;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextGeometricTransformKt;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class SpanStyleKt {
    private static final long DefaultBackgroundColor;
    private static final long DefaultColor;
    private static final long DefaultFontSize = TextUnitKt.e(14);
    private static final long DefaultLetterSpacing = TextUnitKt.e(0);

    public static final <T> T c(T t5, T t10, float f) {
        return ((double) f) < 0.5d ? t5 : t10;
    }

    static {
        Color.Companion companion = Color.Companion;
        DefaultBackgroundColor = companion.e();
        DefaultColor = companion.a();
    }

    @NotNull
    public static final SpanStyle b(@NotNull SpanStyle start, @NotNull SpanStyle stop, float f) {
        t.j(start, "start");
        t.j(stop, "stop");
        TextDrawStyle textDrawStyleA = TextDrawStyleKt.a(start.r(), stop.r(), f);
        FontFamily fontFamily = (FontFamily) c(start.g(), stop.g(), f);
        long jE = e(start.i(), stop.i(), f);
        FontWeight fontWeightL = start.l();
        if (fontWeightL == null) {
            fontWeightL = FontWeight.Companion.d();
        }
        FontWeight fontWeightL2 = stop.l();
        if (fontWeightL2 == null) {
            fontWeightL2 = FontWeight.Companion.d();
        }
        FontWeight fontWeightA = FontWeightKt.a(fontWeightL, fontWeightL2, f);
        FontStyle fontStyle = (FontStyle) c(start.j(), stop.j(), f);
        FontSynthesis fontSynthesis = (FontSynthesis) c(start.k(), stop.k(), f);
        String str = (String) c(start.h(), stop.h(), f);
        long jE2 = e(start.m(), stop.m(), f);
        BaselineShift baselineShiftD = start.d();
        float fH = baselineShiftD != null ? baselineShiftD.h() : BaselineShift.c(0.0f);
        BaselineShift baselineShiftD2 = stop.d();
        float fA = BaselineShiftKt.a(fH, baselineShiftD2 != null ? baselineShiftD2.h() : BaselineShift.c(0.0f), f);
        TextGeometricTransform textGeometricTransformS = start.s();
        if (textGeometricTransformS == null) {
            textGeometricTransformS = TextGeometricTransform.Companion.a();
        }
        TextGeometricTransform textGeometricTransformS2 = stop.s();
        if (textGeometricTransformS2 == null) {
            textGeometricTransformS2 = TextGeometricTransform.Companion.a();
        }
        TextGeometricTransform textGeometricTransformA = TextGeometricTransformKt.a(textGeometricTransformS, textGeometricTransformS2, f);
        LocaleList localeList = (LocaleList) c(start.n(), stop.n(), f);
        long jI = ColorKt.i(start.c(), stop.c(), f);
        TextDecoration textDecoration = (TextDecoration) c(start.q(), stop.q(), f);
        Shadow shadowP = start.p();
        if (shadowP == null) {
            shadowP = new Shadow(0L, 0L, 0.0f, 7, null);
        }
        Shadow shadowP2 = stop.p();
        if (shadowP2 == null) {
            shadowP2 = new Shadow(0L, 0L, 0.0f, 7, null);
        }
        return new SpanStyle(textDrawStyleA, jE, fontWeightA, fontStyle, fontSynthesis, fontFamily, str, jE2, BaselineShift.b(fA), textGeometricTransformA, localeList, jI, textDecoration, ShadowKt.a(shadowP, shadowP2, f), d(start.o(), stop.o(), f), (k) null);
    }

    private static final PlatformSpanStyle d(PlatformSpanStyle platformSpanStyle, PlatformSpanStyle platformSpanStyle2, float f) {
        if (platformSpanStyle == null && platformSpanStyle2 == null) {
            return null;
        }
        if (platformSpanStyle == null) {
            platformSpanStyle = PlatformSpanStyle.Companion.a();
        }
        if (platformSpanStyle2 == null) {
            platformSpanStyle2 = PlatformSpanStyle.Companion.a();
        }
        return AndroidTextStyle_androidKt.c(platformSpanStyle, platformSpanStyle2, f);
    }

    @NotNull
    public static final SpanStyle f(@NotNull SpanStyle style) {
        t.j(style, "style");
        TextDrawStyle textDrawStyleC = style.r().c(SpanStyleKt$resolveSpanStyleDefaults$1.INSTANCE);
        long jI = TextUnitKt.f(style.i()) ? DefaultFontSize : style.i();
        FontWeight fontWeightL = style.l();
        if (fontWeightL == null) {
            fontWeightL = FontWeight.Companion.d();
        }
        FontWeight fontWeight = fontWeightL;
        FontStyle fontStyleJ = style.j();
        FontStyle fontStyleC = FontStyle.c(fontStyleJ != null ? fontStyleJ.i() : FontStyle.Companion.b());
        FontSynthesis fontSynthesisK = style.k();
        FontSynthesis fontSynthesisE = FontSynthesis.e(fontSynthesisK != null ? fontSynthesisK.m() : FontSynthesis.Companion.a());
        FontFamily fontFamilyG = style.g();
        if (fontFamilyG == null) {
            fontFamilyG = FontFamily.Companion.b();
        }
        FontFamily fontFamily = fontFamilyG;
        String strH = style.h();
        if (strH == null) {
            strH = "";
        }
        String str = strH;
        long jM = TextUnitKt.f(style.m()) ? DefaultLetterSpacing : style.m();
        BaselineShift baselineShiftD = style.d();
        BaselineShift baselineShiftB = BaselineShift.b(baselineShiftD != null ? baselineShiftD.h() : BaselineShift.Companion.a());
        TextGeometricTransform textGeometricTransformS = style.s();
        if (textGeometricTransformS == null) {
            textGeometricTransformS = TextGeometricTransform.Companion.a();
        }
        TextGeometricTransform textGeometricTransform = textGeometricTransformS;
        LocaleList localeListN = style.n();
        if (localeListN == null) {
            localeListN = LocaleList.Companion.a();
        }
        LocaleList localeList = localeListN;
        long jC = style.c();
        if (jC == Color.Companion.f()) {
            jC = DefaultBackgroundColor;
        }
        long j6 = jC;
        TextDecoration textDecorationQ = style.q();
        if (textDecorationQ == null) {
            textDecorationQ = TextDecoration.Companion.c();
        }
        TextDecoration textDecoration = textDecorationQ;
        Shadow shadowP = style.p();
        if (shadowP == null) {
            shadowP = Shadow.Companion.a();
        }
        return new SpanStyle(textDrawStyleC, jI, fontWeight, fontStyleC, fontSynthesisE, fontFamily, str, jM, baselineShiftB, textGeometricTransform, localeList, j6, textDecoration, shadowP, style.o(), (k) null);
    }

    public static final long e(long j6, long j10, float f) {
        if (!TextUnitKt.f(j6) && !TextUnitKt.f(j10)) {
            return TextUnitKt.g(j6, j10, f);
        }
        return ((TextUnit) c(TextUnit.b(j6), TextUnit.b(j10), f)).k();
    }
}
