package androidx.compose.material;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
@Immutable
public final class Typography {

    @NotNull
    private final TextStyle body1;

    @NotNull
    private final TextStyle body2;

    @NotNull
    private final TextStyle button;

    @NotNull
    private final TextStyle caption;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    @NotNull
    private final TextStyle f87h1;

    /* JADX INFO: renamed from: h2, reason: collision with root package name */
    @NotNull
    private final TextStyle f88h2;

    /* JADX INFO: renamed from: h3, reason: collision with root package name */
    @NotNull
    private final TextStyle f89h3;

    /* JADX INFO: renamed from: h4, reason: collision with root package name */
    @NotNull
    private final TextStyle f90h4;

    /* JADX INFO: renamed from: h5, reason: collision with root package name */
    @NotNull
    private final TextStyle f91h5;

    @NotNull
    private final TextStyle h6;

    @NotNull
    private final TextStyle overline;

    @NotNull
    private final TextStyle subtitle1;

    @NotNull
    private final TextStyle subtitle2;

    public Typography(@NotNull TextStyle h6, @NotNull TextStyle h10, @NotNull TextStyle h11, @NotNull TextStyle h12, @NotNull TextStyle h13, @NotNull TextStyle h14, @NotNull TextStyle subtitle1, @NotNull TextStyle subtitle2, @NotNull TextStyle body1, @NotNull TextStyle body2, @NotNull TextStyle button, @NotNull TextStyle caption, @NotNull TextStyle overline) {
        t.j(h6, "h1");
        t.j(h10, "h2");
        t.j(h11, "h3");
        t.j(h12, "h4");
        t.j(h13, "h5");
        t.j(h14, "h6");
        t.j(subtitle1, "subtitle1");
        t.j(subtitle2, "subtitle2");
        t.j(body1, "body1");
        t.j(body2, "body2");
        t.j(button, "button");
        t.j(caption, "caption");
        t.j(overline, "overline");
        this.f87h1 = h6;
        this.f88h2 = h10;
        this.f89h3 = h11;
        this.f90h4 = h12;
        this.f91h5 = h13;
        this.h6 = h14;
        this.subtitle1 = subtitle1;
        this.subtitle2 = subtitle2;
        this.body1 = body1;
        this.body2 = body2;
        this.button = button;
        this.caption = caption;
        this.overline = overline;
    }

    @NotNull
    public final TextStyle a() {
        return this.body1;
    }

    @NotNull
    public final TextStyle b() {
        return this.body2;
    }

    @NotNull
    public final TextStyle c() {
        return this.button;
    }

    @NotNull
    public final TextStyle d() {
        return this.caption;
    }

    @NotNull
    public final TextStyle e() {
        return this.h6;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Typography)) {
            return false;
        }
        Typography typography = (Typography) obj;
        return t.e(this.f87h1, typography.f87h1) && t.e(this.f88h2, typography.f88h2) && t.e(this.f89h3, typography.f89h3) && t.e(this.f90h4, typography.f90h4) && t.e(this.f91h5, typography.f91h5) && t.e(this.h6, typography.h6) && t.e(this.subtitle1, typography.subtitle1) && t.e(this.subtitle2, typography.subtitle2) && t.e(this.body1, typography.body1) && t.e(this.body2, typography.body2) && t.e(this.button, typography.button) && t.e(this.caption, typography.caption) && t.e(this.overline, typography.overline);
    }

    @NotNull
    public final TextStyle f() {
        return this.overline;
    }

    @NotNull
    public final TextStyle g() {
        return this.subtitle1;
    }

    public /* synthetic */ Typography(FontFamily fontFamily, TextStyle textStyle, TextStyle textStyle2, TextStyle textStyle3, TextStyle textStyle4, TextStyle textStyle5, TextStyle textStyle6, TextStyle textStyle7, TextStyle textStyle8, TextStyle textStyle9, TextStyle textStyle10, TextStyle textStyle11, TextStyle textStyle12, TextStyle textStyle13, int i10, k kVar) {
        this((i10 & 1) != 0 ? FontFamily.Companion.b() : fontFamily, (i10 & 2) != 0 ? new TextStyle(0L, TextUnitKt.e(96), FontWeight.Companion.b(), (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, TextUnitKt.d(-1.5d), (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262009, (k) null) : textStyle, (i10 & 4) != 0 ? new TextStyle(0L, TextUnitKt.e(60), FontWeight.Companion.b(), (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, TextUnitKt.d(-0.5d), (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262009, (k) null) : textStyle2, (i10 & 8) != 0 ? new TextStyle(0L, TextUnitKt.e(48), FontWeight.Companion.d(), (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, TextUnitKt.e(0), (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262009, (k) null) : textStyle3, (i10 & 16) != 0 ? new TextStyle(0L, TextUnitKt.e(34), FontWeight.Companion.d(), (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, TextUnitKt.d(0.25d), (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262009, (k) null) : textStyle4, (i10 & 32) != 0 ? new TextStyle(0L, TextUnitKt.e(24), FontWeight.Companion.d(), (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, TextUnitKt.e(0), (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262009, (k) null) : textStyle5, (i10 & 64) != 0 ? new TextStyle(0L, TextUnitKt.e(20), FontWeight.Companion.c(), (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, TextUnitKt.d(0.15d), (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262009, (k) null) : textStyle6, (i10 & 128) != 0 ? new TextStyle(0L, TextUnitKt.e(16), FontWeight.Companion.d(), (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, TextUnitKt.d(0.15d), (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262009, (k) null) : textStyle7, (i10 & 256) != 0 ? new TextStyle(0L, TextUnitKt.e(14), FontWeight.Companion.c(), (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, TextUnitKt.d(0.1d), (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262009, (k) null) : textStyle8, (i10 & 512) != 0 ? new TextStyle(0L, TextUnitKt.e(16), FontWeight.Companion.d(), (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, TextUnitKt.d(0.5d), (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262009, (k) null) : textStyle9, (i10 & 1024) != 0 ? new TextStyle(0L, TextUnitKt.e(14), FontWeight.Companion.d(), (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, TextUnitKt.d(0.25d), (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262009, (k) null) : textStyle10, (i10 & 2048) != 0 ? new TextStyle(0L, TextUnitKt.e(14), FontWeight.Companion.c(), (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, TextUnitKt.d(1.25d), (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262009, (k) null) : textStyle11, (i10 & 4096) != 0 ? new TextStyle(0L, TextUnitKt.e(12), FontWeight.Companion.d(), (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, TextUnitKt.d(0.4d), (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262009, (k) null) : textStyle12, (i10 & 8192) != 0 ? new TextStyle(0L, TextUnitKt.e(10), FontWeight.Companion.d(), (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, TextUnitKt.d(1.5d), (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262009, (k) null) : textStyle13);
    }

    public int hashCode() {
        return (((((((((((((((((((((((this.f87h1.hashCode() * 31) + this.f88h2.hashCode()) * 31) + this.f89h3.hashCode()) * 31) + this.f90h4.hashCode()) * 31) + this.f91h5.hashCode()) * 31) + this.h6.hashCode()) * 31) + this.subtitle1.hashCode()) * 31) + this.subtitle2.hashCode()) * 31) + this.body1.hashCode()) * 31) + this.body2.hashCode()) * 31) + this.button.hashCode()) * 31) + this.caption.hashCode()) * 31) + this.overline.hashCode();
    }

    @NotNull
    public String toString() {
        return "Typography(h1=" + this.f87h1 + ", h2=" + this.f88h2 + ", h3=" + this.f89h3 + ", h4=" + this.f90h4 + ", h5=" + this.f91h5 + ", h6=" + this.h6 + ", subtitle1=" + this.subtitle1 + ", subtitle2=" + this.subtitle2 + ", body1=" + this.body1 + ", body2=" + this.body2 + ", button=" + this.button + ", caption=" + this.caption + ", overline=" + this.overline + ')';
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Typography(@NotNull FontFamily defaultFontFamily, @NotNull TextStyle h6, @NotNull TextStyle h10, @NotNull TextStyle h11, @NotNull TextStyle h12, @NotNull TextStyle h13, @NotNull TextStyle h14, @NotNull TextStyle subtitle1, @NotNull TextStyle subtitle2, @NotNull TextStyle body1, @NotNull TextStyle body2, @NotNull TextStyle button, @NotNull TextStyle caption, @NotNull TextStyle overline) {
        this(TypographyKt.c(h6, defaultFontFamily), TypographyKt.c(h10, defaultFontFamily), TypographyKt.c(h11, defaultFontFamily), TypographyKt.c(h12, defaultFontFamily), TypographyKt.c(h13, defaultFontFamily), TypographyKt.c(h14, defaultFontFamily), TypographyKt.c(subtitle1, defaultFontFamily), TypographyKt.c(subtitle2, defaultFontFamily), TypographyKt.c(body1, defaultFontFamily), TypographyKt.c(body2, defaultFontFamily), TypographyKt.c(button, defaultFontFamily), TypographyKt.c(caption, defaultFontFamily), TypographyKt.c(overline, defaultFontFamily));
        t.j(defaultFontFamily, "defaultFontFamily");
        t.j(h6, "h1");
        t.j(h10, "h2");
        t.j(h11, "h3");
        t.j(h12, "h4");
        t.j(h13, "h5");
        t.j(h14, "h6");
        t.j(subtitle1, "subtitle1");
        t.j(subtitle2, "subtitle2");
        t.j(body1, "body1");
        t.j(body2, "body2");
        t.j(button, "button");
        t.j(caption, "caption");
        t.j(overline, "overline");
    }
}
