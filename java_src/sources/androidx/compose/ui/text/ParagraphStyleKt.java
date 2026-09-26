package androidx.compose.ui.text;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextIndentKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class ParagraphStyleKt {
    private static final long DefaultLineHeight = TextUnit.Companion.a();

    @Stable
    @NotNull
    public static final ParagraphStyle a(@NotNull ParagraphStyle start, @NotNull ParagraphStyle stop, float f) {
        t.j(start, "start");
        t.j(stop, "stop");
        TextAlign textAlign = (TextAlign) SpanStyleKt.c(start.f(), stop.f(), f);
        TextDirection textDirection = (TextDirection) SpanStyleKt.c(start.g(), stop.g(), f);
        long jE = SpanStyleKt.e(start.c(), stop.c(), f);
        TextIndent textIndentH = start.h();
        if (textIndentH == null) {
            textIndentH = TextIndent.Companion.a();
        }
        TextIndent textIndentH2 = stop.h();
        if (textIndentH2 == null) {
            textIndentH2 = TextIndent.Companion.a();
        }
        return new ParagraphStyle(textAlign, textDirection, jE, TextIndentKt.a(textIndentH, textIndentH2, f), b(start.e(), stop.e(), f), (LineHeightStyle) SpanStyleKt.c(start.d(), stop.d(), f), null);
    }

    private static final PlatformParagraphStyle b(PlatformParagraphStyle platformParagraphStyle, PlatformParagraphStyle platformParagraphStyle2, float f) {
        if (platformParagraphStyle == null && platformParagraphStyle2 == null) {
            return null;
        }
        if (platformParagraphStyle == null) {
            platformParagraphStyle = PlatformParagraphStyle.Companion.a();
        }
        if (platformParagraphStyle2 == null) {
            platformParagraphStyle2 = PlatformParagraphStyle.Companion.a();
        }
        return AndroidTextStyle_androidKt.b(platformParagraphStyle, platformParagraphStyle2, f);
    }

    @NotNull
    public static final ParagraphStyle c(@NotNull ParagraphStyle style, @NotNull LayoutDirection direction) {
        t.j(style, "style");
        t.j(direction, "direction");
        TextAlign textAlignF = style.f();
        TextAlign textAlignG = TextAlign.g(textAlignF != null ? textAlignF.m() : TextAlign.Companion.f());
        TextDirection textDirectionF = TextDirection.f(TextStyleKt.e(direction, style.g()));
        long jC = TextUnitKt.f(style.c()) ? DefaultLineHeight : style.c();
        TextIndent textIndentH = style.h();
        if (textIndentH == null) {
            textIndentH = TextIndent.Companion.a();
        }
        return new ParagraphStyle(textAlignG, textDirectionF, jC, textIndentH, style.e(), style.d(), null);
    }
}
