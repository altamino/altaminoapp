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
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDrawStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@Immutable
public final class SpanStyle {
    private final long background;

    @Nullable
    private final BaselineShift baselineShift;

    @Nullable
    private final FontFamily fontFamily;

    @Nullable
    private final String fontFeatureSettings;
    private final long fontSize;

    @Nullable
    private final FontStyle fontStyle;

    @Nullable
    private final FontSynthesis fontSynthesis;

    @Nullable
    private final FontWeight fontWeight;
    private final long letterSpacing;

    @Nullable
    private final LocaleList localeList;

    @Nullable
    private final PlatformSpanStyle platformStyle;

    @Nullable
    private final Shadow shadow;

    @Nullable
    private final TextDecoration textDecoration;

    @NotNull
    private final TextDrawStyle textDrawStyle;

    @Nullable
    private final TextGeometricTransform textGeometricTransform;

    @ExperimentalTextApi
    public /* synthetic */ SpanStyle(long j6, long j10, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j11, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j12, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, k kVar) {
        this(j6, j10, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j11, baselineShift, textGeometricTransform, localeList, j12, textDecoration, shadow, platformSpanStyle);
    }

    public final long c() {
        return this.background;
    }

    @Nullable
    public final BaselineShift d() {
        return this.baselineShift;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpanStyle)) {
            return false;
        }
        SpanStyle spanStyle = (SpanStyle) obj;
        return t(spanStyle) && u(spanStyle);
    }

    @Nullable
    public final FontFamily g() {
        return this.fontFamily;
    }

    @Nullable
    public final String h() {
        return this.fontFeatureSettings;
    }

    public final long i() {
        return this.fontSize;
    }

    @Nullable
    public final FontStyle j() {
        return this.fontStyle;
    }

    @Nullable
    public final FontSynthesis k() {
        return this.fontSynthesis;
    }

    @Nullable
    public final FontWeight l() {
        return this.fontWeight;
    }

    public final long m() {
        return this.letterSpacing;
    }

    @Nullable
    public final LocaleList n() {
        return this.localeList;
    }

    @ExperimentalTextApi
    @Nullable
    public final PlatformSpanStyle o() {
        return this.platformStyle;
    }

    @Nullable
    public final Shadow p() {
        return this.shadow;
    }

    @Nullable
    public final TextDecoration q() {
        return this.textDecoration;
    }

    @NotNull
    public final TextDrawStyle r() {
        return this.textDrawStyle;
    }

    @Nullable
    public final TextGeometricTransform s() {
        return this.textGeometricTransform;
    }

    public /* synthetic */ SpanStyle(long j6, long j10, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j11, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j12, TextDecoration textDecoration, Shadow shadow, k kVar) {
        this(j6, j10, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j11, baselineShift, textGeometricTransform, localeList, j12, textDecoration, shadow);
    }

    private final boolean u(SpanStyle spanStyle) {
        return t.e(this.textDrawStyle, spanStyle.textDrawStyle) && t.e(this.textDecoration, spanStyle.textDecoration) && t.e(this.shadow, spanStyle.shadow);
    }

    private final PlatformSpanStyle w(PlatformSpanStyle platformSpanStyle) {
        PlatformSpanStyle platformSpanStyle2 = this.platformStyle;
        if (platformSpanStyle2 == null) {
            return platformSpanStyle;
        }
        return platformSpanStyle == null ? platformSpanStyle2 : platformSpanStyle2.b(platformSpanStyle);
    }

    @NotNull
    public final SpanStyle a(long j6, long j10, @Nullable FontWeight fontWeight, @Nullable FontStyle fontStyle, @Nullable FontSynthesis fontSynthesis, @Nullable FontFamily fontFamily, @Nullable String str, long j11, @Nullable BaselineShift baselineShift, @Nullable TextGeometricTransform textGeometricTransform, @Nullable LocaleList localeList, long j12, @Nullable TextDecoration textDecoration, @Nullable Shadow shadow) {
        return new SpanStyle(Color.n(j6, f()) ? this.textDrawStyle : TextDrawStyle.Companion.b(j6), j10, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j11, baselineShift, textGeometricTransform, localeList, j12, textDecoration, shadow, this.platformStyle, (k) null);
    }

    @ExperimentalTextApi
    @Nullable
    public final Brush e() {
        return this.textDrawStyle.d();
    }

    public final long f() {
        return this.textDrawStyle.a();
    }

    public final boolean t(@NotNull SpanStyle other) {
        t.j(other, "other");
        if (this == other) {
            return true;
        }
        return TextUnit.e(this.fontSize, other.fontSize) && t.e(this.fontWeight, other.fontWeight) && t.e(this.fontStyle, other.fontStyle) && t.e(this.fontSynthesis, other.fontSynthesis) && t.e(this.fontFamily, other.fontFamily) && t.e(this.fontFeatureSettings, other.fontFeatureSettings) && TextUnit.e(this.letterSpacing, other.letterSpacing) && t.e(this.baselineShift, other.baselineShift) && t.e(this.textGeometricTransform, other.textGeometricTransform) && t.e(this.localeList, other.localeList) && Color.n(this.background, other.background) && t.e(this.platformStyle, other.platformStyle);
    }

    @NotNull
    public String toString() {
        return "SpanStyle(color=" + ((Object) Color.u(f())) + ", brush=" + e() + ", fontSize=" + ((Object) TextUnit.j(this.fontSize)) + ", fontWeight=" + this.fontWeight + ", fontStyle=" + this.fontStyle + ", fontSynthesis=" + this.fontSynthesis + ", fontFamily=" + this.fontFamily + ", fontFeatureSettings=" + this.fontFeatureSettings + ", letterSpacing=" + ((Object) TextUnit.j(this.letterSpacing)) + ", baselineShift=" + this.baselineShift + ", textGeometricTransform=" + this.textGeometricTransform + ", localeList=" + this.localeList + ", background=" + ((Object) Color.u(this.background)) + ", textDecoration=" + this.textDecoration + ", shadow=" + this.shadow + ", platformStyle=" + this.platformStyle + ')';
    }

    @Stable
    @NotNull
    public final SpanStyle v(@Nullable SpanStyle spanStyle) {
        if (spanStyle == null) {
            return this;
        }
        TextDrawStyle textDrawStyleB = this.textDrawStyle.b(spanStyle.textDrawStyle);
        FontFamily fontFamily = spanStyle.fontFamily;
        if (fontFamily == null) {
            fontFamily = this.fontFamily;
        }
        FontFamily fontFamily2 = fontFamily;
        long j6 = !TextUnitKt.f(spanStyle.fontSize) ? spanStyle.fontSize : this.fontSize;
        FontWeight fontWeight = spanStyle.fontWeight;
        if (fontWeight == null) {
            fontWeight = this.fontWeight;
        }
        FontWeight fontWeight2 = fontWeight;
        FontStyle fontStyle = spanStyle.fontStyle;
        if (fontStyle == null) {
            fontStyle = this.fontStyle;
        }
        FontStyle fontStyle2 = fontStyle;
        FontSynthesis fontSynthesis = spanStyle.fontSynthesis;
        if (fontSynthesis == null) {
            fontSynthesis = this.fontSynthesis;
        }
        FontSynthesis fontSynthesis2 = fontSynthesis;
        String str = spanStyle.fontFeatureSettings;
        if (str == null) {
            str = this.fontFeatureSettings;
        }
        String str2 = str;
        long j10 = !TextUnitKt.f(spanStyle.letterSpacing) ? spanStyle.letterSpacing : this.letterSpacing;
        BaselineShift baselineShift = spanStyle.baselineShift;
        if (baselineShift == null) {
            baselineShift = this.baselineShift;
        }
        BaselineShift baselineShift2 = baselineShift;
        TextGeometricTransform textGeometricTransform = spanStyle.textGeometricTransform;
        if (textGeometricTransform == null) {
            textGeometricTransform = this.textGeometricTransform;
        }
        TextGeometricTransform textGeometricTransform2 = textGeometricTransform;
        LocaleList localeList = spanStyle.localeList;
        if (localeList == null) {
            localeList = this.localeList;
        }
        LocaleList localeList2 = localeList;
        long j11 = spanStyle.background;
        if (j11 == Color.Companion.f()) {
            j11 = this.background;
        }
        long j12 = j11;
        TextDecoration textDecoration = spanStyle.textDecoration;
        if (textDecoration == null) {
            textDecoration = this.textDecoration;
        }
        TextDecoration textDecoration2 = textDecoration;
        Shadow shadow = spanStyle.shadow;
        if (shadow == null) {
            shadow = this.shadow;
        }
        return new SpanStyle(textDrawStyleB, j6, fontWeight2, fontStyle2, fontSynthesis2, fontFamily2, str2, j10, baselineShift2, textGeometricTransform2, localeList2, j12, textDecoration2, shadow, w(spanStyle.platformStyle), (k) null);
    }

    @ExperimentalTextApi
    public /* synthetic */ SpanStyle(Brush brush, long j6, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j10, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j11, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, k kVar) {
        this(brush, j6, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j10, baselineShift, textGeometricTransform, localeList, j11, textDecoration, shadow, platformSpanStyle);
    }

    public int hashCode() {
        int iHashCode;
        int iHashCode2;
        int iG;
        int i10;
        int iHashCode3;
        int iHashCode4;
        int iF;
        int iHashCode5;
        int iHashCode6;
        int iHashCode7;
        int iHashCode8;
        int iT = Color.t(f()) * 31;
        Brush brushE = e();
        int iHashCode9 = 0;
        if (brushE != null) {
            iHashCode = brushE.hashCode();
        } else {
            iHashCode = 0;
        }
        int i11 = (((iT + iHashCode) * 31) + TextUnit.i(this.fontSize)) * 31;
        FontWeight fontWeight = this.fontWeight;
        if (fontWeight != null) {
            iHashCode2 = fontWeight.hashCode();
        } else {
            iHashCode2 = 0;
        }
        int i12 = (i11 + iHashCode2) * 31;
        FontStyle fontStyle = this.fontStyle;
        if (fontStyle != null) {
            iG = FontStyle.g(fontStyle.i());
        } else {
            iG = 0;
        }
        int i13 = (i12 + iG) * 31;
        FontSynthesis fontSynthesis = this.fontSynthesis;
        if (fontSynthesis != null) {
            i10 = FontSynthesis.i(fontSynthesis.m());
        } else {
            i10 = 0;
        }
        int i14 = (i13 + i10) * 31;
        FontFamily fontFamily = this.fontFamily;
        if (fontFamily != null) {
            iHashCode3 = fontFamily.hashCode();
        } else {
            iHashCode3 = 0;
        }
        int i15 = (i14 + iHashCode3) * 31;
        String str = this.fontFeatureSettings;
        if (str != null) {
            iHashCode4 = str.hashCode();
        } else {
            iHashCode4 = 0;
        }
        int i16 = (((i15 + iHashCode4) * 31) + TextUnit.i(this.letterSpacing)) * 31;
        BaselineShift baselineShift = this.baselineShift;
        if (baselineShift != null) {
            iF = BaselineShift.f(baselineShift.h());
        } else {
            iF = 0;
        }
        int i17 = (i16 + iF) * 31;
        TextGeometricTransform textGeometricTransform = this.textGeometricTransform;
        if (textGeometricTransform != null) {
            iHashCode5 = textGeometricTransform.hashCode();
        } else {
            iHashCode5 = 0;
        }
        int i18 = (i17 + iHashCode5) * 31;
        LocaleList localeList = this.localeList;
        if (localeList != null) {
            iHashCode6 = localeList.hashCode();
        } else {
            iHashCode6 = 0;
        }
        int iT2 = (((i18 + iHashCode6) * 31) + Color.t(this.background)) * 31;
        TextDecoration textDecoration = this.textDecoration;
        if (textDecoration != null) {
            iHashCode7 = textDecoration.hashCode();
        } else {
            iHashCode7 = 0;
        }
        int i19 = (iT2 + iHashCode7) * 31;
        Shadow shadow = this.shadow;
        if (shadow != null) {
            iHashCode8 = shadow.hashCode();
        } else {
            iHashCode8 = 0;
        }
        int i20 = (i19 + iHashCode8) * 31;
        PlatformSpanStyle platformSpanStyle = this.platformStyle;
        if (platformSpanStyle != null) {
            iHashCode9 = platformSpanStyle.hashCode();
        }
        return i20 + iHashCode9;
    }

    public /* synthetic */ SpanStyle(TextDrawStyle textDrawStyle, long j6, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j10, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j11, TextDecoration textDecoration, Shadow shadow, @ExperimentalTextApi PlatformSpanStyle platformSpanStyle, k kVar) {
        this(textDrawStyle, j6, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j10, baselineShift, textGeometricTransform, localeList, j11, textDecoration, shadow, platformSpanStyle);
    }

    private SpanStyle(TextDrawStyle textDrawStyle, long j6, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j10, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j11, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle) {
        this.textDrawStyle = textDrawStyle;
        this.fontSize = j6;
        this.fontWeight = fontWeight;
        this.fontStyle = fontStyle;
        this.fontSynthesis = fontSynthesis;
        this.fontFamily = fontFamily;
        this.fontFeatureSettings = str;
        this.letterSpacing = j10;
        this.baselineShift = baselineShift;
        this.textGeometricTransform = textGeometricTransform;
        this.localeList = localeList;
        this.background = j11;
        this.textDecoration = textDecoration;
        this.shadow = shadow;
        this.platformStyle = platformSpanStyle;
    }

    public /* synthetic */ SpanStyle(TextDrawStyle textDrawStyle, long j6, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j10, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j11, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, int i10, k kVar) {
        this(textDrawStyle, (i10 & 2) != 0 ? TextUnit.Companion.a() : j6, (i10 & 4) != 0 ? null : fontWeight, (i10 & 8) != 0 ? null : fontStyle, (i10 & 16) != 0 ? null : fontSynthesis, (i10 & 32) != 0 ? null : fontFamily, (i10 & 64) != 0 ? null : str, (i10 & 128) != 0 ? TextUnit.Companion.a() : j10, (i10 & 256) != 0 ? null : baselineShift, (i10 & 512) != 0 ? null : textGeometricTransform, (i10 & 1024) != 0 ? null : localeList, (i10 & 2048) != 0 ? Color.Companion.f() : j11, (i10 & 4096) != 0 ? null : textDecoration, (i10 & 8192) != 0 ? null : shadow, (i10 & 16384) != 0 ? null : platformSpanStyle, (k) null);
    }

    public /* synthetic */ SpanStyle(long j6, long j10, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j11, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j12, TextDecoration textDecoration, Shadow shadow, int i10, k kVar) {
        this((i10 & 1) != 0 ? Color.Companion.f() : j6, (i10 & 2) != 0 ? TextUnit.Companion.a() : j10, (i10 & 4) != 0 ? null : fontWeight, (i10 & 8) != 0 ? null : fontStyle, (i10 & 16) != 0 ? null : fontSynthesis, (i10 & 32) != 0 ? null : fontFamily, (i10 & 64) != 0 ? null : str, (i10 & 128) != 0 ? TextUnit.Companion.a() : j11, (i10 & 256) != 0 ? null : baselineShift, (i10 & 512) != 0 ? null : textGeometricTransform, (i10 & 1024) != 0 ? null : localeList, (i10 & 2048) != 0 ? Color.Companion.f() : j12, (i10 & 4096) != 0 ? null : textDecoration, (i10 & 8192) != 0 ? null : shadow, (k) null);
    }

    private SpanStyle(long j6, long j10, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j11, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j12, TextDecoration textDecoration, Shadow shadow) {
        this(TextDrawStyle.Companion.b(j6), j10, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j11, baselineShift, textGeometricTransform, localeList, j12, textDecoration, shadow, (PlatformSpanStyle) null, (k) null);
    }

    public /* synthetic */ SpanStyle(long j6, long j10, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j11, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j12, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, int i10, k kVar) {
        this((i10 & 1) != 0 ? Color.Companion.f() : j6, (i10 & 2) != 0 ? TextUnit.Companion.a() : j10, (i10 & 4) != 0 ? null : fontWeight, (i10 & 8) != 0 ? null : fontStyle, (i10 & 16) != 0 ? null : fontSynthesis, (i10 & 32) != 0 ? null : fontFamily, (i10 & 64) != 0 ? null : str, (i10 & 128) != 0 ? TextUnit.Companion.a() : j11, (i10 & 256) != 0 ? null : baselineShift, (i10 & 512) != 0 ? null : textGeometricTransform, (i10 & 1024) != 0 ? null : localeList, (i10 & 2048) != 0 ? Color.Companion.f() : j12, (i10 & 4096) != 0 ? null : textDecoration, (i10 & 8192) != 0 ? null : shadow, (i10 & 16384) != 0 ? null : platformSpanStyle, (k) null);
    }

    private SpanStyle(long j6, long j10, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j11, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j12, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle) {
        this(TextDrawStyle.Companion.b(j6), j10, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j11, baselineShift, textGeometricTransform, localeList, j12, textDecoration, shadow, platformSpanStyle, (k) null);
    }

    public /* synthetic */ SpanStyle(Brush brush, long j6, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j10, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j11, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, int i10, k kVar) {
        this(brush, (i10 & 2) != 0 ? TextUnit.Companion.a() : j6, (i10 & 4) != 0 ? null : fontWeight, (i10 & 8) != 0 ? null : fontStyle, (i10 & 16) != 0 ? null : fontSynthesis, (i10 & 32) != 0 ? null : fontFamily, (i10 & 64) != 0 ? null : str, (i10 & 128) != 0 ? TextUnit.Companion.a() : j10, (i10 & 256) != 0 ? null : baselineShift, (i10 & 512) != 0 ? null : textGeometricTransform, (i10 & 1024) != 0 ? null : localeList, (i10 & 2048) != 0 ? Color.Companion.f() : j11, (i10 & 4096) != 0 ? null : textDecoration, (i10 & 8192) != 0 ? null : shadow, (i10 & 16384) != 0 ? null : platformSpanStyle, (k) null);
    }

    private SpanStyle(Brush brush, long j6, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j10, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j11, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle) {
        this(TextDrawStyle.Companion.a(brush), j6, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j10, baselineShift, textGeometricTransform, localeList, j11, textDecoration, shadow, platformSpanStyle, (k) null);
    }
}
