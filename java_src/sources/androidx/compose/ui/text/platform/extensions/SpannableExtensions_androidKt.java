package androidx.compose.ui.text.platform.extensions;

import android.graphics.Typeface;
import android.os.Build;
import android.text.Spannable;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.LeadingMarginSpan;
import android.text.style.LocaleSpan;
import android.text.style.MetricAffectingSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.ScaleXSpan;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.AnnotatedStringKt;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.android.style.BaselineShiftSpan;
import androidx.compose.ui.text.android.style.FontFeatureSpan;
import androidx.compose.ui.text.android.style.LetterSpacingSpanEm;
import androidx.compose.ui.text.android.style.LetterSpacingSpanPx;
import androidx.compose.ui.text.android.style.LineHeightSpan;
import androidx.compose.ui.text.android.style.LineHeightStyleSpan;
import androidx.compose.ui.text.android.style.ShadowSpan;
import androidx.compose.ui.text.android.style.SkewXSpan;
import androidx.compose.ui.text.android.style.TextDecorationSpan;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.platform.style.ShaderBrushSpan;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.unit.TextUnitType;
import e8.q;
import e8.r;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.o;
import kotlin.collections.p;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class SpannableExtensions_androidKt {
    public static final void b(@Nullable SpanStyle spanStyle, @NotNull List<AnnotatedString.Range<SpanStyle>> spanStyles, @NotNull q<? super SpanStyle, ? super Integer, ? super Integer, l0> block) {
        t.j(spanStyles, "spanStyles");
        t.j(block, "block");
        if (spanStyles.size() <= 1) {
            if (!spanStyles.isEmpty()) {
                block.invoke(d(spanStyle, spanStyles.get(0).e()), Integer.valueOf(spanStyles.get(0).f()), Integer.valueOf(spanStyles.get(0).d()));
                return;
            }
            return;
        }
        int size = spanStyles.size();
        int i10 = size * 2;
        Integer[] numArr = new Integer[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            numArr[i11] = 0;
        }
        int size2 = spanStyles.size();
        for (int i12 = 0; i12 < size2; i12++) {
            AnnotatedString.Range<SpanStyle> range = spanStyles.get(i12);
            numArr[i12] = Integer.valueOf(range.f());
            numArr[i12 + size] = Integer.valueOf(range.d());
        }
        o.x(numArr);
        int iIntValue = ((Number) p.M(numArr)).intValue();
        for (int i13 = 0; i13 < i10; i13++) {
            int iIntValue2 = numArr[i13].intValue();
            if (iIntValue2 != iIntValue) {
                int size3 = spanStyles.size();
                SpanStyle spanStyleD = spanStyle;
                for (int i14 = 0; i14 < size3; i14++) {
                    AnnotatedString.Range<SpanStyle> range2 = spanStyles.get(i14);
                    if (range2.f() != range2.d() && AnnotatedStringKt.g(iIntValue, iIntValue2, range2.f(), range2.d())) {
                        spanStyleD = d(spanStyleD, range2.e());
                    }
                }
                if (spanStyleD != null) {
                    block.invoke(spanStyleD, Integer.valueOf(iIntValue), Integer.valueOf(iIntValue2));
                }
                iIntValue = iIntValue2;
            }
        }
    }

    private static final SpanStyle d(SpanStyle spanStyle, SpanStyle spanStyle2) {
        return spanStyle == null ? spanStyle2 : spanStyle.v(spanStyle2);
    }

    public static final void f(@NotNull Spannable setBackground, long j6, int i10, int i11) {
        t.j(setBackground, "$this$setBackground");
        if (j6 != Color.Companion.f()) {
            r(setBackground, new BackgroundColorSpan(ColorKt.l(j6)), i10, i11);
        }
    }

    private static final void g(Spannable spannable, BaselineShift baselineShift, int i10, int i11) {
        if (baselineShift != null) {
            r(spannable, new BaselineShiftSpan(baselineShift.h()), i10, i11);
        }
    }

    private static final void h(Spannable spannable, Brush brush, int i10, int i11) {
        if (brush != null) {
            if (brush instanceof SolidColor) {
                i(spannable, ((SolidColor) brush).c(), i10, i11);
            } else if (brush instanceof ShaderBrush) {
                r(spannable, new ShaderBrushSpan((ShaderBrush) brush), i10, i11);
            }
        }
    }

    public static final void i(@NotNull Spannable setColor, long j6, int i10, int i11) {
        t.j(setColor, "$this$setColor");
        if (j6 != Color.Companion.f()) {
            r(setColor, new ForegroundColorSpan(ColorKt.l(j6)), i10, i11);
        }
    }

    private static final void j(Spannable spannable, TextStyle textStyle, List<AnnotatedString.Range<SpanStyle>> list, r<? super FontFamily, ? super FontWeight, ? super FontStyle, ? super FontSynthesis, ? extends Typeface> rVar) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            AnnotatedString.Range<SpanStyle> range = list.get(i10);
            AnnotatedString.Range<SpanStyle> range2 = range;
            if (TextPaintExtensions_androidKt.b(range2.e()) || range2.e().k() != null) {
                arrayList.add(range);
            }
        }
        b(c(textStyle) ? new SpanStyle(0L, 0L, textStyle.m(), textStyle.k(), textStyle.l(), textStyle.h(), (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 16323, (k) null) : null, arrayList, new SpannableExtensions_androidKt$setFontAttributes$1(spannable, rVar));
    }

    private static final void k(Spannable spannable, String str, int i10, int i11) {
        if (str != null) {
            r(spannable, new FontFeatureSpan(str), i10, i11);
        }
    }

    public static final void l(@NotNull Spannable setFontSize, long j6, @NotNull Density density, int i10, int i11) {
        t.j(setFontSize, "$this$setFontSize");
        t.j(density, "density");
        long jG = TextUnit.g(j6);
        TextUnitType.Companion companion = TextUnitType.Companion;
        if (TextUnitType.g(jG, companion.b())) {
            r(setFontSize, new AbsoluteSizeSpan(g8.c.c(density.p0(j6)), false), i10, i11);
        } else if (TextUnitType.g(jG, companion.a())) {
            r(setFontSize, new RelativeSizeSpan(TextUnit.h(j6)), i10, i11);
        }
    }

    private static final void m(Spannable spannable, TextGeometricTransform textGeometricTransform, int i10, int i11) {
        if (textGeometricTransform != null) {
            r(spannable, new ScaleXSpan(textGeometricTransform.b()), i10, i11);
            r(spannable, new SkewXSpan(textGeometricTransform.c()), i10, i11);
        }
    }

    public static final void n(@NotNull Spannable setLineHeight, long j6, float f, @NotNull Density density, @NotNull LineHeightStyle lineHeightStyle) {
        t.j(setLineHeight, "$this$setLineHeight");
        t.j(density, "density");
        t.j(lineHeightStyle, "lineHeightStyle");
        float fE = e(j6, f, density);
        if (Float.isNaN(fE)) {
            return;
        }
        r(setLineHeight, new LineHeightStyleSpan(fE, 0, setLineHeight.length(), LineHeightStyle.Trim.f(lineHeightStyle.c()), LineHeightStyle.Trim.g(lineHeightStyle.c()), lineHeightStyle.b()), 0, setLineHeight.length());
    }

    public static final void o(@NotNull Spannable setLineHeight, long j6, float f, @NotNull Density density) {
        t.j(setLineHeight, "$this$setLineHeight");
        t.j(density, "density");
        float fE = e(j6, f, density);
        if (Float.isNaN(fE)) {
            return;
        }
        r(setLineHeight, new LineHeightSpan(fE), 0, setLineHeight.length());
    }

    public static final void p(@NotNull Spannable spannable, @Nullable LocaleList localeList, int i10, int i11) {
        Object localeSpan;
        t.j(spannable, "<this>");
        if (localeList != null) {
            if (Build.VERSION.SDK_INT >= 24) {
                localeSpan = LocaleListHelperMethods.INSTANCE.a(localeList);
            } else {
                localeSpan = new LocaleSpan(LocaleExtensions_androidKt.a(localeList.isEmpty() ? Locale.Companion.a() : localeList.c(0)));
            }
            r(spannable, localeSpan, i10, i11);
        }
    }

    private static final void q(Spannable spannable, Shadow shadow, int i10, int i11) {
        if (shadow != null) {
            r(spannable, new ShadowSpan(ColorKt.l(shadow.c()), Offset.m(shadow.d()), Offset.n(shadow.d()), shadow.b()), i10, i11);
        }
    }

    public static final void r(@NotNull Spannable spannable, @NotNull Object span, int i10, int i11) {
        t.j(spannable, "<this>");
        t.j(span, "span");
        spannable.setSpan(span, i10, i11, 33);
    }

    public static final void t(@NotNull Spannable spannable, @NotNull TextStyle contextTextStyle, @NotNull List<AnnotatedString.Range<SpanStyle>> spanStyles, @NotNull Density density, @NotNull r<? super FontFamily, ? super FontWeight, ? super FontStyle, ? super FontSynthesis, ? extends Typeface> resolveTypeface) {
        t.j(spannable, "<this>");
        t.j(contextTextStyle, "contextTextStyle");
        t.j(spanStyles, "spanStyles");
        t.j(density, "density");
        t.j(resolveTypeface, "resolveTypeface");
        j(spannable, contextTextStyle, spanStyles, resolveTypeface);
        ArrayList arrayList = new ArrayList();
        int size = spanStyles.size();
        for (int i10 = 0; i10 < size; i10++) {
            AnnotatedString.Range<SpanStyle> range = spanStyles.get(i10);
            int iF = range.f();
            int iD = range.d();
            if (iF >= 0 && iF < spannable.length() && iD > iF && iD <= spannable.length()) {
                s(spannable, range, density, arrayList);
            }
        }
        int size2 = arrayList.size();
        for (int i11 = 0; i11 < size2; i11++) {
            SpanRange spanRange = (SpanRange) arrayList.get(i11);
            r(spannable, spanRange.a(), spanRange.b(), spanRange.c());
        }
    }

    public static final void u(@NotNull Spannable spannable, @Nullable TextDecoration textDecoration, int i10, int i11) {
        t.j(spannable, "<this>");
        if (textDecoration != null) {
            TextDecoration.Companion companion = TextDecoration.Companion;
            r(spannable, new TextDecorationSpan(textDecoration.d(companion.d()), textDecoration.d(companion.b())), i10, i11);
        }
    }

    public static final void v(@NotNull Spannable spannable, @Nullable TextIndent textIndent, float f, @NotNull Density density) {
        float fH;
        t.j(spannable, "<this>");
        t.j(density, "density");
        if (textIndent != null) {
            if ((TextUnit.e(textIndent.b(), TextUnitKt.e(0)) && TextUnit.e(textIndent.c(), TextUnitKt.e(0))) || TextUnitKt.f(textIndent.b()) || TextUnitKt.f(textIndent.c())) {
                return;
            }
            long jG = TextUnit.g(textIndent.b());
            TextUnitType.Companion companion = TextUnitType.Companion;
            float fH2 = 0.0f;
            if (TextUnitType.g(jG, companion.b())) {
                fH = density.p0(textIndent.b());
            } else {
                fH = TextUnitType.g(jG, companion.a()) ? TextUnit.h(textIndent.b()) * f : 0.0f;
            }
            long jG2 = TextUnit.g(textIndent.c());
            if (TextUnitType.g(jG2, companion.b())) {
                fH2 = density.p0(textIndent.c());
            } else if (TextUnitType.g(jG2, companion.a())) {
                fH2 = TextUnit.h(textIndent.c()) * f;
            }
            r(spannable, new LeadingMarginSpan.Standard((int) Math.ceil(fH), (int) Math.ceil(fH2)), 0, spannable.length());
        }
    }

    private static final MetricAffectingSpan a(long j6, Density density) {
        long jG = TextUnit.g(j6);
        TextUnitType.Companion companion = TextUnitType.Companion;
        if (TextUnitType.g(jG, companion.b())) {
            return new LetterSpacingSpanPx(density.p0(j6));
        }
        if (TextUnitType.g(jG, companion.a())) {
            return new LetterSpacingSpanEm(TextUnit.h(j6));
        }
        return null;
    }

    private static final boolean c(TextStyle textStyle) {
        if (!TextPaintExtensions_androidKt.b(textStyle.E()) && textStyle.l() == null) {
            return false;
        }
        return true;
    }

    private static final float e(long j6, float f, Density density) {
        long jG = TextUnit.g(j6);
        TextUnitType.Companion companion = TextUnitType.Companion;
        if (TextUnitType.g(jG, companion.b())) {
            return density.p0(j6);
        }
        if (TextUnitType.g(jG, companion.a())) {
            return TextUnit.h(j6) * f;
        }
        return Float.NaN;
    }

    private static final void s(Spannable spannable, AnnotatedString.Range<SpanStyle> range, Density density, ArrayList<SpanRange> arrayList) {
        int iF = range.f();
        int iD = range.d();
        SpanStyle spanStyleE = range.e();
        g(spannable, spanStyleE.d(), iF, iD);
        i(spannable, spanStyleE.f(), iF, iD);
        h(spannable, spanStyleE.e(), iF, iD);
        u(spannable, spanStyleE.q(), iF, iD);
        l(spannable, spanStyleE.i(), density, iF, iD);
        k(spannable, spanStyleE.h(), iF, iD);
        m(spannable, spanStyleE.s(), iF, iD);
        p(spannable, spanStyleE.n(), iF, iD);
        f(spannable, spanStyleE.c(), iF, iD);
        q(spannable, spanStyleE.p(), iF, iD);
        MetricAffectingSpan metricAffectingSpanA = a(spanStyleE.m(), density);
        if (metricAffectingSpanA != null) {
            arrayList.add(new SpanRange(metricAffectingSpanA, iF, iD));
        }
    }
}
