package androidx.compose.ui.platform;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.TextUnit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
final class MutableSpanStyle {
    private long background;

    @Nullable
    private BaselineShift baselineShift;
    private long color;

    @Nullable
    private FontFamily fontFamily;

    @Nullable
    private String fontFeatureSettings;
    private long fontSize;

    @Nullable
    private FontStyle fontStyle;

    @Nullable
    private FontSynthesis fontSynthesis;

    @Nullable
    private FontWeight fontWeight;
    private long letterSpacing;

    @Nullable
    private LocaleList localeList;

    @Nullable
    private Shadow shadow;

    @Nullable
    private TextDecoration textDecoration;

    @Nullable
    private TextGeometricTransform textGeometricTransform;

    public /* synthetic */ MutableSpanStyle(long j6, long j10, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j11, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j12, TextDecoration textDecoration, Shadow shadow, kotlin.jvm.internal.k kVar) {
        this(j6, j10, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j11, baselineShift, textGeometricTransform, localeList, j12, textDecoration, shadow);
    }

    public final void a(long j6) {
        this.background = j6;
    }

    public final void b(@Nullable BaselineShift baselineShift) {
        this.baselineShift = baselineShift;
    }

    public final void c(long j6) {
        this.color = j6;
    }

    public final void d(@Nullable String str) {
        this.fontFeatureSettings = str;
    }

    public final void e(long j6) {
        this.fontSize = j6;
    }

    public final void f(@Nullable FontStyle fontStyle) {
        this.fontStyle = fontStyle;
    }

    public final void g(@Nullable FontSynthesis fontSynthesis) {
        this.fontSynthesis = fontSynthesis;
    }

    public final void h(@Nullable FontWeight fontWeight) {
        this.fontWeight = fontWeight;
    }

    public final void i(long j6) {
        this.letterSpacing = j6;
    }

    public final void j(@Nullable Shadow shadow) {
        this.shadow = shadow;
    }

    public final void k(@Nullable TextDecoration textDecoration) {
        this.textDecoration = textDecoration;
    }

    public final void l(@Nullable TextGeometricTransform textGeometricTransform) {
        this.textGeometricTransform = textGeometricTransform;
    }

    private MutableSpanStyle(long j6, long j10, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j11, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j12, TextDecoration textDecoration, Shadow shadow) {
        this.color = j6;
        this.fontSize = j10;
        this.fontWeight = fontWeight;
        this.fontStyle = fontStyle;
        this.fontSynthesis = fontSynthesis;
        this.fontFamily = fontFamily;
        this.fontFeatureSettings = str;
        this.letterSpacing = j11;
        this.baselineShift = baselineShift;
        this.textGeometricTransform = textGeometricTransform;
        this.localeList = localeList;
        this.background = j12;
        this.textDecoration = textDecoration;
        this.shadow = shadow;
    }

    @NotNull
    public final SpanStyle m() {
        return new SpanStyle(this.color, this.fontSize, this.fontWeight, this.fontStyle, this.fontSynthesis, this.fontFamily, this.fontFeatureSettings, this.letterSpacing, this.baselineShift, this.textGeometricTransform, this.localeList, this.background, this.textDecoration, this.shadow, (kotlin.jvm.internal.k) null);
    }

    public /* synthetic */ MutableSpanStyle(long j6, long j10, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j11, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j12, TextDecoration textDecoration, Shadow shadow, int i10, kotlin.jvm.internal.k kVar) {
        this((i10 & 1) != 0 ? Color.Companion.f() : j6, (i10 & 2) != 0 ? TextUnit.Companion.a() : j10, (i10 & 4) != 0 ? null : fontWeight, (i10 & 8) != 0 ? null : fontStyle, (i10 & 16) != 0 ? null : fontSynthesis, (i10 & 32) != 0 ? null : fontFamily, (i10 & 64) != 0 ? null : str, (i10 & 128) != 0 ? TextUnit.Companion.a() : j11, (i10 & 256) != 0 ? null : baselineShift, (i10 & 512) != 0 ? null : textGeometricTransform, (i10 & 1024) != 0 ? null : localeList, (i10 & 2048) != 0 ? Color.Companion.f() : j12, (i10 & 4096) != 0 ? null : textDecoration, (i10 & 8192) != 0 ? null : shadow, null);
    }
}
