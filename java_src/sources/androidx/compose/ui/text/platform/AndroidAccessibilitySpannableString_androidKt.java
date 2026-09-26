package androidx.compose.ui.text.platform;

import android.graphics.Typeface;
import android.os.Build;
import android.text.SpannableString;
import android.text.style.ScaleXSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.RestrictTo;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.InternalTextApi;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TtsAnnotation;
import androidx.compose.ui.text.font.AndroidFontUtils_androidKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.GenericFontFamily;
import androidx.compose.ui.text.font.d;
import androidx.compose.ui.text.platform.extensions.SpannableExtensions_androidKt;
import androidx.compose.ui.text.platform.extensions.TtsAnnotationExtensions_androidKt;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Density;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class AndroidAccessibilitySpannableString_androidKt {
    @RestrictTo
    @InternalTextApi
    @NotNull
    public static final SpannableString b(@NotNull AnnotatedString annotatedString, @NotNull Density density, @NotNull FontFamily.Resolver fontFamilyResolver) {
        t.j(annotatedString, "<this>");
        t.j(density, "density");
        t.j(fontFamilyResolver, "fontFamilyResolver");
        SpannableString spannableString = new SpannableString(annotatedString.g());
        List<AnnotatedString.Range<SpanStyle>> listE = annotatedString.e();
        int size = listE.size();
        for (int i10 = 0; i10 < size; i10++) {
            AnnotatedString.Range<SpanStyle> range = listE.get(i10);
            SpanStyle spanStyleA = range.a();
            a(spannableString, spanStyleA.a((16351 & 1) != 0 ? spanStyleA.f() : 0L, (16351 & 2) != 0 ? spanStyleA.fontSize : 0L, (16351 & 4) != 0 ? spanStyleA.fontWeight : null, (16351 & 8) != 0 ? spanStyleA.fontStyle : null, (16351 & 16) != 0 ? spanStyleA.fontSynthesis : null, (16351 & 32) != 0 ? spanStyleA.fontFamily : null, (16351 & 64) != 0 ? spanStyleA.fontFeatureSettings : null, (16351 & 128) != 0 ? spanStyleA.letterSpacing : 0L, (16351 & 256) != 0 ? spanStyleA.baselineShift : null, (16351 & 512) != 0 ? spanStyleA.textGeometricTransform : null, (16351 & 1024) != 0 ? spanStyleA.localeList : null, (16351 & 2048) != 0 ? spanStyleA.background : 0L, (16351 & 4096) != 0 ? spanStyleA.textDecoration : null, (16351 & 8192) != 0 ? spanStyleA.shadow : null), range.b(), range.c(), density, fontFamilyResolver);
        }
        List<AnnotatedString.Range<TtsAnnotation>> listH = annotatedString.h(0, annotatedString.length());
        int size2 = listH.size();
        for (int i11 = 0; i11 < size2; i11++) {
            AnnotatedString.Range<TtsAnnotation> range2 = listH.get(i11);
            spannableString.setSpan(TtsAnnotationExtensions_androidKt.a(range2.a()), range2.b(), range2.c(), 33);
        }
        return spannableString;
    }

    private static final void a(SpannableString spannableString, SpanStyle spanStyle, int i10, int i11, Density density, FontFamily.Resolver resolver) {
        int iB;
        int iA;
        SpannableExtensions_androidKt.i(spannableString, spanStyle.f(), i10, i11);
        SpannableExtensions_androidKt.l(spannableString, spanStyle.i(), density, i10, i11);
        if (spanStyle.l() != null || spanStyle.j() != null) {
            FontWeight fontWeightL = spanStyle.l();
            if (fontWeightL == null) {
                fontWeightL = FontWeight.Companion.d();
            }
            FontStyle fontStyleJ = spanStyle.j();
            if (fontStyleJ != null) {
                iB = fontStyleJ.i();
            } else {
                iB = FontStyle.Companion.b();
            }
            spannableString.setSpan(new StyleSpan(AndroidFontUtils_androidKt.c(fontWeightL, iB)), i10, i11, 33);
        }
        if (spanStyle.g() != null) {
            if (spanStyle.g() instanceof GenericFontFamily) {
                spannableString.setSpan(new TypefaceSpan(((GenericFontFamily) spanStyle.g()).m()), i10, i11, 33);
            } else if (Build.VERSION.SDK_INT >= 28) {
                FontFamily fontFamilyG = spanStyle.g();
                FontSynthesis fontSynthesisK = spanStyle.k();
                if (fontSynthesisK != null) {
                    iA = fontSynthesisK.m();
                } else {
                    iA = FontSynthesis.Companion.a();
                }
                spannableString.setSpan(Api28Impl.INSTANCE.a((Typeface) d.a(resolver, fontFamilyG, null, 0, iA, 6, null).getValue()), i10, i11, 33);
            }
        }
        if (spanStyle.q() != null) {
            TextDecoration textDecorationQ = spanStyle.q();
            TextDecoration.Companion companion = TextDecoration.Companion;
            if (textDecorationQ.d(companion.d())) {
                spannableString.setSpan(new UnderlineSpan(), i10, i11, 33);
            }
            if (spanStyle.q().d(companion.b())) {
                spannableString.setSpan(new StrikethroughSpan(), i10, i11, 33);
            }
        }
        if (spanStyle.s() != null) {
            spannableString.setSpan(new ScaleXSpan(spanStyle.s().b()), i10, i11, 33);
        }
        SpannableExtensions_androidKt.p(spannableString, spanStyle.n(), i10, i11);
        SpannableExtensions_androidKt.f(spannableString, spanStyle.c(), i10, i11);
    }
}
