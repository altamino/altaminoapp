package androidx.compose.ui.text;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextDrawStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.TextUnit;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@Immutable
public final class TextStyle {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final TextStyle Default = new TextStyle(0, 0, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0, (TextIndent) null, 262143, (k) null);

    @NotNull
    private final ParagraphStyle paragraphStyle;

    @Nullable
    private final PlatformTextStyle platformStyle;

    @NotNull
    private final SpanStyle spanStyle;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final TextStyle a() {
            return TextStyle.Default;
        }
    }

    @ExperimentalTextApi
    public /* synthetic */ TextStyle(long j6, long j10, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j11, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j12, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j13, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, k kVar) {
        this(j6, j10, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j11, baselineShift, textGeometricTransform, localeList, j12, textDecoration, shadow, textAlign, textDirection, j13, textIndent, platformTextStyle, lineHeightStyle);
    }

    @Stable
    @NotNull
    public final ParagraphStyle D() {
        return this.paragraphStyle;
    }

    @Stable
    @NotNull
    public final SpanStyle E() {
        return this.spanStyle;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextStyle)) {
            return false;
        }
        TextStyle textStyle = (TextStyle) obj;
        return t.e(this.spanStyle, textStyle.spanStyle) && t.e(this.paragraphStyle, textStyle.paragraphStyle) && t.e(this.platformStyle, textStyle.platformStyle);
    }

    @NotNull
    public final ParagraphStyle r() {
        return this.paragraphStyle;
    }

    @ExperimentalTextApi
    @Nullable
    public final PlatformTextStyle s() {
        return this.platformStyle;
    }

    @NotNull
    public final SpanStyle u() {
        return this.spanStyle;
    }

    public /* synthetic */ TextStyle(long j6, long j10, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j11, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j12, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j13, TextIndent textIndent, k kVar) {
        this(j6, j10, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j11, baselineShift, textGeometricTransform, localeList, j12, textDecoration, shadow, textAlign, textDirection, j13, textIndent);
    }

    public final boolean A(@NotNull TextStyle other) {
        t.j(other, "other");
        return this == other || (t.e(this.paragraphStyle, other.paragraphStyle) && this.spanStyle.t(other.spanStyle));
    }

    @Stable
    @NotNull
    public final TextStyle B(@NotNull ParagraphStyle other) {
        t.j(other, "other");
        return new TextStyle(E(), D().i(other));
    }

    @Stable
    @NotNull
    public final TextStyle C(@Nullable TextStyle textStyle) {
        return (textStyle == null || t.e(textStyle, Default)) ? this : new TextStyle(E().v(textStyle.E()), D().i(textStyle.D()));
    }

    @NotNull
    public final TextStyle b(long j6, long j10, @Nullable FontWeight fontWeight, @Nullable FontStyle fontStyle, @Nullable FontSynthesis fontSynthesis, @Nullable FontFamily fontFamily, @Nullable String str, long j11, @Nullable BaselineShift baselineShift, @Nullable TextGeometricTransform textGeometricTransform, @Nullable LocaleList localeList, long j12, @Nullable TextDecoration textDecoration, @Nullable Shadow shadow, @Nullable TextAlign textAlign, @Nullable TextDirection textDirection, long j13, @Nullable TextIndent textIndent) {
        return new TextStyle(new SpanStyle(Color.n(j6, this.spanStyle.f()) ? this.spanStyle.r() : TextDrawStyle.Companion.b(j6), j10, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j11, baselineShift, textGeometricTransform, localeList, j12, textDecoration, shadow, this.spanStyle.o(), (k) null), new ParagraphStyle(textAlign, textDirection, j13, textIndent, this.paragraphStyle.e(), p(), null), this.platformStyle);
    }

    public final long d() {
        return this.spanStyle.c();
    }

    @Nullable
    public final BaselineShift e() {
        return this.spanStyle.d();
    }

    @ExperimentalTextApi
    @Nullable
    public final Brush f() {
        return this.spanStyle.e();
    }

    public final long g() {
        return this.spanStyle.f();
    }

    @Nullable
    public final FontFamily h() {
        return this.spanStyle.g();
    }

    public int hashCode() {
        int iHashCode = ((this.spanStyle.hashCode() * 31) + this.paragraphStyle.hashCode()) * 31;
        PlatformTextStyle platformTextStyle = this.platformStyle;
        return iHashCode + (platformTextStyle != null ? platformTextStyle.hashCode() : 0);
    }

    @Nullable
    public final String i() {
        return this.spanStyle.h();
    }

    public final long j() {
        return this.spanStyle.i();
    }

    @Nullable
    public final FontStyle k() {
        return this.spanStyle.j();
    }

    @Nullable
    public final FontSynthesis l() {
        return this.spanStyle.k();
    }

    @Nullable
    public final FontWeight m() {
        return this.spanStyle.l();
    }

    public final long n() {
        return this.spanStyle.m();
    }

    public final long o() {
        return this.paragraphStyle.c();
    }

    @ExperimentalTextApi
    @Nullable
    public final LineHeightStyle p() {
        return this.paragraphStyle.d();
    }

    @Nullable
    public final LocaleList q() {
        return this.spanStyle.n();
    }

    @Nullable
    public final Shadow t() {
        return this.spanStyle.p();
    }

    @NotNull
    public String toString() {
        return "TextStyle(color=" + ((Object) Color.u(g())) + ", brush=" + f() + ", fontSize=" + ((Object) TextUnit.j(j())) + ", fontWeight=" + m() + ", fontStyle=" + k() + ", fontSynthesis=" + l() + ", fontFamily=" + h() + ", fontFeatureSettings=" + i() + ", letterSpacing=" + ((Object) TextUnit.j(n())) + ", baselineShift=" + e() + ", textGeometricTransform=" + y() + ", localeList=" + q() + ", background=" + ((Object) Color.u(d())) + ", textDecoration=" + w() + ", shadow=" + t() + ", textAlign=" + v() + ", textDirection=" + x() + ", lineHeight=" + ((Object) TextUnit.j(o())) + ", textIndent=" + z() + ", platformStyle=" + this.platformStyle + "lineHeightStyle=" + p() + ')';
    }

    @Nullable
    public final TextAlign v() {
        return this.paragraphStyle.f();
    }

    @Nullable
    public final TextDecoration w() {
        return this.spanStyle.q();
    }

    @Nullable
    public final TextDirection x() {
        return this.paragraphStyle.g();
    }

    @Nullable
    public final TextGeometricTransform y() {
        return this.spanStyle.s();
    }

    @Nullable
    public final TextIndent z() {
        return this.paragraphStyle.h();
    }

    @ExperimentalTextApi
    public /* synthetic */ TextStyle(Brush brush, long j6, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j10, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j11, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j12, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, k kVar) {
        this(brush, j6, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j10, baselineShift, textGeometricTransform, localeList, j11, textDecoration, shadow, textAlign, textDirection, j12, textIndent, platformTextStyle, lineHeightStyle);
    }

    public TextStyle(@NotNull SpanStyle spanStyle, @NotNull ParagraphStyle paragraphStyle, @ExperimentalTextApi @Nullable PlatformTextStyle platformTextStyle) {
        t.j(spanStyle, "spanStyle");
        t.j(paragraphStyle, "paragraphStyle");
        this.spanStyle = spanStyle;
        this.paragraphStyle = paragraphStyle;
        this.platformStyle = platformTextStyle;
    }

    public /* synthetic */ TextStyle(SpanStyle spanStyle, ParagraphStyle paragraphStyle, PlatformTextStyle platformTextStyle, int i10, k kVar) {
        this(spanStyle, paragraphStyle, (i10 & 4) != 0 ? null : platformTextStyle);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TextStyle(@NotNull SpanStyle spanStyle, @NotNull ParagraphStyle paragraphStyle) {
        this(spanStyle, paragraphStyle, TextStyleKt.b(spanStyle.o(), paragraphStyle.e()));
        t.j(spanStyle, "spanStyle");
        t.j(paragraphStyle, "paragraphStyle");
    }

    public /* synthetic */ TextStyle(long j6, long j10, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j11, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j12, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j13, TextIndent textIndent, int i10, k kVar) {
        this((i10 & 1) != 0 ? Color.Companion.f() : j6, (i10 & 2) != 0 ? TextUnit.Companion.a() : j10, (i10 & 4) != 0 ? null : fontWeight, (i10 & 8) != 0 ? null : fontStyle, (i10 & 16) != 0 ? null : fontSynthesis, (i10 & 32) != 0 ? null : fontFamily, (i10 & 64) != 0 ? null : str, (i10 & 128) != 0 ? TextUnit.Companion.a() : j11, (i10 & 256) != 0 ? null : baselineShift, (i10 & 512) != 0 ? null : textGeometricTransform, (i10 & 1024) != 0 ? null : localeList, (i10 & 2048) != 0 ? Color.Companion.f() : j12, (i10 & 4096) != 0 ? null : textDecoration, (i10 & 8192) != 0 ? null : shadow, (i10 & 16384) != 0 ? null : textAlign, (i10 & 32768) != 0 ? null : textDirection, (i10 & 65536) != 0 ? TextUnit.Companion.a() : j13, (i10 & 131072) != 0 ? null : textIndent, null);
    }

    private TextStyle(long j6, long j10, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j11, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j12, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j13, TextIndent textIndent) {
        this(new SpanStyle(j6, j10, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j11, baselineShift, textGeometricTransform, localeList, j12, textDecoration, shadow, (PlatformSpanStyle) null, (k) null), new ParagraphStyle(textAlign, textDirection, j13, textIndent, null, null, null), null);
    }

    public /* synthetic */ TextStyle(long j6, long j10, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j11, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j12, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j13, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, int i10, k kVar) {
        this((i10 & 1) != 0 ? Color.Companion.f() : j6, (i10 & 2) != 0 ? TextUnit.Companion.a() : j10, (i10 & 4) != 0 ? null : fontWeight, (i10 & 8) != 0 ? null : fontStyle, (i10 & 16) != 0 ? null : fontSynthesis, (i10 & 32) != 0 ? null : fontFamily, (i10 & 64) != 0 ? null : str, (i10 & 128) != 0 ? TextUnit.Companion.a() : j11, (i10 & 256) != 0 ? null : baselineShift, (i10 & 512) != 0 ? null : textGeometricTransform, (i10 & 1024) != 0 ? null : localeList, (i10 & 2048) != 0 ? Color.Companion.f() : j12, (i10 & 4096) != 0 ? null : textDecoration, (i10 & 8192) != 0 ? null : shadow, (i10 & 16384) != 0 ? null : textAlign, (i10 & 32768) != 0 ? null : textDirection, (i10 & 65536) != 0 ? TextUnit.Companion.a() : j13, (i10 & 131072) != 0 ? null : textIndent, (i10 & 262144) != 0 ? null : platformTextStyle, (i10 & 524288) != 0 ? null : lineHeightStyle, (k) null);
    }

    private TextStyle(long j6, long j10, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j11, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j12, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j13, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle) {
        this(new SpanStyle(j6, j10, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j11, baselineShift, textGeometricTransform, localeList, j12, textDecoration, shadow, platformTextStyle != null ? platformTextStyle.b() : null, (k) null), new ParagraphStyle(textAlign, textDirection, j13, textIndent, platformTextStyle != null ? platformTextStyle.a() : null, lineHeightStyle, null), platformTextStyle);
    }

    public /* synthetic */ TextStyle(Brush brush, long j6, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j10, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j11, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j12, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, int i10, k kVar) {
        this(brush, (i10 & 2) != 0 ? TextUnit.Companion.a() : j6, (i10 & 4) != 0 ? null : fontWeight, (i10 & 8) != 0 ? null : fontStyle, (i10 & 16) != 0 ? null : fontSynthesis, (i10 & 32) != 0 ? null : fontFamily, (i10 & 64) != 0 ? null : str, (i10 & 128) != 0 ? TextUnit.Companion.a() : j10, (i10 & 256) != 0 ? null : baselineShift, (i10 & 512) != 0 ? null : textGeometricTransform, (i10 & 1024) != 0 ? null : localeList, (i10 & 2048) != 0 ? Color.Companion.f() : j11, (i10 & 4096) != 0 ? null : textDecoration, (i10 & 8192) != 0 ? null : shadow, (i10 & 16384) != 0 ? null : textAlign, (32768 & i10) != 0 ? null : textDirection, (65536 & i10) != 0 ? TextUnit.Companion.a() : j12, (131072 & i10) != 0 ? null : textIndent, (262144 & i10) != 0 ? null : platformTextStyle, (i10 & 524288) != 0 ? null : lineHeightStyle, (k) null);
    }

    private TextStyle(Brush brush, long j6, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j10, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j11, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j12, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle) {
        this(new SpanStyle(brush, j6, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j10, baselineShift, textGeometricTransform, localeList, j11, textDecoration, shadow, platformTextStyle != null ? platformTextStyle.b() : null, (k) null), new ParagraphStyle(textAlign, textDirection, j12, textIndent, platformTextStyle != null ? platformTextStyle.a() : null, lineHeightStyle, null), platformTextStyle);
    }
}
