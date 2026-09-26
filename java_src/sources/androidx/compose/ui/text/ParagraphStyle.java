package androidx.compose.ui.text;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
@Immutable
public final class ParagraphStyle {
    private final long lineHeight;

    @Nullable
    private final LineHeightStyle lineHeightStyle;

    @Nullable
    private final PlatformParagraphStyle platformStyle;

    @Nullable
    private final TextAlign textAlign;

    @Nullable
    private final TextDirection textDirection;

    @Nullable
    private final TextIndent textIndent;

    @ExperimentalTextApi
    public /* synthetic */ ParagraphStyle(TextAlign textAlign, TextDirection textDirection, long j6, TextIndent textIndent, @ExperimentalTextApi PlatformParagraphStyle platformParagraphStyle, @ExperimentalTextApi LineHeightStyle lineHeightStyle, k kVar) {
        this(textAlign, textDirection, j6, textIndent, platformParagraphStyle, lineHeightStyle);
    }

    public final long c() {
        return this.lineHeight;
    }

    @ExperimentalTextApi
    @Nullable
    public final LineHeightStyle d() {
        return this.lineHeightStyle;
    }

    @ExperimentalTextApi
    @Nullable
    public final PlatformParagraphStyle e() {
        return this.platformStyle;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ParagraphStyle)) {
            return false;
        }
        ParagraphStyle paragraphStyle = (ParagraphStyle) obj;
        return t.e(this.textAlign, paragraphStyle.textAlign) && t.e(this.textDirection, paragraphStyle.textDirection) && TextUnit.e(this.lineHeight, paragraphStyle.lineHeight) && t.e(this.textIndent, paragraphStyle.textIndent) && t.e(this.platformStyle, paragraphStyle.platformStyle) && t.e(this.lineHeightStyle, paragraphStyle.lineHeightStyle);
    }

    @Nullable
    public final TextAlign f() {
        return this.textAlign;
    }

    @Nullable
    public final TextDirection g() {
        return this.textDirection;
    }

    @Nullable
    public final TextIndent h() {
        return this.textIndent;
    }

    public /* synthetic */ ParagraphStyle(TextAlign textAlign, TextDirection textDirection, long j6, TextIndent textIndent, k kVar) {
        this(textAlign, textDirection, j6, textIndent);
    }

    public static /* synthetic */ ParagraphStyle b(ParagraphStyle paragraphStyle, TextAlign textAlign, TextDirection textDirection, long j6, TextIndent textIndent, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            textAlign = paragraphStyle.textAlign;
        }
        if ((i10 & 2) != 0) {
            textDirection = paragraphStyle.textDirection;
        }
        TextDirection textDirection2 = textDirection;
        if ((i10 & 4) != 0) {
            j6 = paragraphStyle.lineHeight;
        }
        long j10 = j6;
        if ((i10 & 8) != 0) {
            textIndent = paragraphStyle.textIndent;
        }
        return paragraphStyle.a(textAlign, textDirection2, j10, textIndent);
    }

    private final PlatformParagraphStyle j(PlatformParagraphStyle platformParagraphStyle) {
        PlatformParagraphStyle platformParagraphStyle2 = this.platformStyle;
        if (platformParagraphStyle2 == null) {
            return platformParagraphStyle;
        }
        return platformParagraphStyle == null ? platformParagraphStyle2 : platformParagraphStyle2.c(platformParagraphStyle);
    }

    @NotNull
    public final ParagraphStyle a(@Nullable TextAlign textAlign, @Nullable TextDirection textDirection, long j6, @Nullable TextIndent textIndent) {
        return new ParagraphStyle(textAlign, textDirection, j6, textIndent, this.platformStyle, this.lineHeightStyle, null);
    }

    public int hashCode() {
        TextAlign textAlign = this.textAlign;
        int iK = (textAlign != null ? TextAlign.k(textAlign.m()) : 0) * 31;
        TextDirection textDirection = this.textDirection;
        int iJ = (((iK + (textDirection != null ? TextDirection.j(textDirection.l()) : 0)) * 31) + TextUnit.i(this.lineHeight)) * 31;
        TextIndent textIndent = this.textIndent;
        int iHashCode = (iJ + (textIndent != null ? textIndent.hashCode() : 0)) * 31;
        PlatformParagraphStyle platformParagraphStyle = this.platformStyle;
        int iHashCode2 = (iHashCode + (platformParagraphStyle != null ? platformParagraphStyle.hashCode() : 0)) * 31;
        LineHeightStyle lineHeightStyle = this.lineHeightStyle;
        return iHashCode2 + (lineHeightStyle != null ? lineHeightStyle.hashCode() : 0);
    }

    @Stable
    @NotNull
    public final ParagraphStyle i(@Nullable ParagraphStyle paragraphStyle) {
        if (paragraphStyle == null) {
            return this;
        }
        long j6 = TextUnitKt.f(paragraphStyle.lineHeight) ? this.lineHeight : paragraphStyle.lineHeight;
        TextIndent textIndent = paragraphStyle.textIndent;
        if (textIndent == null) {
            textIndent = this.textIndent;
        }
        TextIndent textIndent2 = textIndent;
        TextAlign textAlign = paragraphStyle.textAlign;
        if (textAlign == null) {
            textAlign = this.textAlign;
        }
        TextAlign textAlign2 = textAlign;
        TextDirection textDirection = paragraphStyle.textDirection;
        if (textDirection == null) {
            textDirection = this.textDirection;
        }
        TextDirection textDirection2 = textDirection;
        PlatformParagraphStyle platformParagraphStyleJ = j(paragraphStyle.platformStyle);
        LineHeightStyle lineHeightStyle = paragraphStyle.lineHeightStyle;
        if (lineHeightStyle == null) {
            lineHeightStyle = this.lineHeightStyle;
        }
        return new ParagraphStyle(textAlign2, textDirection2, j6, textIndent2, platformParagraphStyleJ, lineHeightStyle, null);
    }

    @NotNull
    public String toString() {
        return "ParagraphStyle(textAlign=" + this.textAlign + ", textDirection=" + this.textDirection + ", lineHeight=" + ((Object) TextUnit.j(this.lineHeight)) + ", textIndent=" + this.textIndent + ", platformStyle=" + this.platformStyle + ", lineHeightStyle=" + this.lineHeightStyle + ')';
    }

    private ParagraphStyle(TextAlign textAlign, TextDirection textDirection, long j6, TextIndent textIndent, PlatformParagraphStyle platformParagraphStyle, LineHeightStyle lineHeightStyle) {
        this.textAlign = textAlign;
        this.textDirection = textDirection;
        this.lineHeight = j6;
        this.textIndent = textIndent;
        this.platformStyle = platformParagraphStyle;
        this.lineHeightStyle = lineHeightStyle;
        if (TextUnit.e(j6, TextUnit.Companion.a()) || TextUnit.h(j6) >= 0.0f) {
            return;
        }
        throw new IllegalStateException(("lineHeight can't be negative (" + TextUnit.h(j6) + ')').toString());
    }

    public /* synthetic */ ParagraphStyle(TextAlign textAlign, TextDirection textDirection, long j6, TextIndent textIndent, PlatformParagraphStyle platformParagraphStyle, LineHeightStyle lineHeightStyle, int i10, k kVar) {
        this((i10 & 1) != 0 ? null : textAlign, (i10 & 2) != 0 ? null : textDirection, (i10 & 4) != 0 ? TextUnit.Companion.a() : j6, (i10 & 8) != 0 ? null : textIndent, (i10 & 16) != 0 ? null : platformParagraphStyle, (i10 & 32) == 0 ? lineHeightStyle : null, null);
    }

    public /* synthetic */ ParagraphStyle(TextAlign textAlign, TextDirection textDirection, long j6, TextIndent textIndent, int i10, k kVar) {
        this((i10 & 1) != 0 ? null : textAlign, (i10 & 2) != 0 ? null : textDirection, (i10 & 4) != 0 ? TextUnit.Companion.a() : j6, (i10 & 8) != 0 ? null : textIndent, null);
    }

    private ParagraphStyle(TextAlign textAlign, TextDirection textDirection, long j6, TextIndent textIndent) {
        this(textAlign, textDirection, j6, textIndent, null, null, null);
    }
}
