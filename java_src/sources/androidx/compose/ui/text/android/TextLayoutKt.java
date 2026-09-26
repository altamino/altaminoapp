package androidx.compose.ui.text.android;

import android.graphics.Rect;
import android.text.Spanned;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import androidx.compose.ui.text.android.style.LineHeightStyleSpan;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.u;

/* JADX INFO: loaded from: classes7.dex */
public final class TextLayoutKt {

    @NotNull
    private static final u<Integer, Integer> EmptyPair = new u<>(0, 0);

    @NotNull
    public static final TextDirectionHeuristic e(int i10) {
        if (i10 == 0) {
            TextDirectionHeuristic LTR = TextDirectionHeuristics.LTR;
            t.i(LTR, "LTR");
            return LTR;
        }
        if (i10 == 1) {
            TextDirectionHeuristic RTL = TextDirectionHeuristics.RTL;
            t.i(RTL, "RTL");
            return RTL;
        }
        if (i10 == 2) {
            TextDirectionHeuristic FIRSTSTRONG_LTR = TextDirectionHeuristics.FIRSTSTRONG_LTR;
            t.i(FIRSTSTRONG_LTR, "FIRSTSTRONG_LTR");
            return FIRSTSTRONG_LTR;
        }
        if (i10 == 3) {
            TextDirectionHeuristic FIRSTSTRONG_RTL = TextDirectionHeuristics.FIRSTSTRONG_RTL;
            t.i(FIRSTSTRONG_RTL, "FIRSTSTRONG_RTL");
            return FIRSTSTRONG_RTL;
        }
        if (i10 == 4) {
            TextDirectionHeuristic ANYRTL_LTR = TextDirectionHeuristics.ANYRTL_LTR;
            t.i(ANYRTL_LTR, "ANYRTL_LTR");
            return ANYRTL_LTR;
        }
        if (i10 != 5) {
            TextDirectionHeuristic FIRSTSTRONG_LTR2 = TextDirectionHeuristics.FIRSTSTRONG_LTR;
            t.i(FIRSTSTRONG_LTR2, "FIRSTSTRONG_LTR");
            return FIRSTSTRONG_LTR2;
        }
        TextDirectionHeuristic LOCALE = TextDirectionHeuristics.LOCALE;
        t.i(LOCALE, "LOCALE");
        return LOCALE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final u<Integer, Integer> c(TextLayout textLayout) {
        int iMax = 0;
        int iMax2 = 0;
        for (LineHeightStyleSpan lineHeightStyleSpan : d(textLayout)) {
            if (lineHeightStyleSpan.b() < 0) {
                iMax = Math.max(iMax, Math.abs(lineHeightStyleSpan.b()));
            }
            if (lineHeightStyleSpan.c() < 0) {
                iMax2 = Math.max(iMax, Math.abs(lineHeightStyleSpan.c()));
            }
        }
        if (iMax == 0 && iMax2 == 0) {
            return EmptyPair;
        }
        return new u<>(Integer.valueOf(iMax), Integer.valueOf(iMax2));
    }

    private static final LineHeightStyleSpan[] d(TextLayout textLayout) {
        if (!(textLayout.z() instanceof Spanned)) {
            return new LineHeightStyleSpan[0];
        }
        LineHeightStyleSpan[] lineHeightStyleSpans = (LineHeightStyleSpan[]) ((Spanned) textLayout.z()).getSpans(0, textLayout.z().length(), LineHeightStyleSpan.class);
        t.i(lineHeightStyleSpans, "lineHeightStyleSpans");
        if (lineHeightStyleSpans.length == 0) {
            return new LineHeightStyleSpan[0];
        }
        return lineHeightStyleSpans;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final u<Integer, Integer> f(TextLayout textLayout) {
        int topPadding;
        int bottomPadding;
        if (!textLayout.c() && !textLayout.A()) {
            TextPaint paint = textLayout.d().getPaint();
            CharSequence text = textLayout.d().getText();
            t.i(paint, "paint");
            t.i(text, "text");
            Rect rectC = PaintExtensionsKt.c(paint, text, textLayout.d().getLineStart(0), textLayout.d().getLineEnd(0));
            int lineAscent = textLayout.d().getLineAscent(0);
            int i10 = rectC.top;
            if (i10 < lineAscent) {
                topPadding = lineAscent - i10;
            } else {
                topPadding = textLayout.d().getTopPadding();
            }
            if (textLayout.h() != 1) {
                int lineCount = textLayout.d().getLineCount() - 1;
                rectC = PaintExtensionsKt.c(paint, text, textLayout.d().getLineStart(lineCount), textLayout.d().getLineEnd(lineCount));
            }
            int lineDescent = textLayout.d().getLineDescent(textLayout.d().getLineCount() - 1);
            int i11 = rectC.bottom;
            if (i11 > lineDescent) {
                bottomPadding = i11 - lineDescent;
            } else {
                bottomPadding = textLayout.d().getBottomPadding();
            }
            if (topPadding == 0 && bottomPadding == 0) {
                return EmptyPair;
            }
            return new u<>(Integer.valueOf(topPadding), Integer.valueOf(bottomPadding));
        }
        return new u<>(0, 0);
    }
}
