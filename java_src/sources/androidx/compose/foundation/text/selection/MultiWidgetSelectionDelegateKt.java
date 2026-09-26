package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.unit.IntSize;
import j8.o;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.u;

/* JADX INFO: loaded from: classes11.dex */
public final class MultiWidgetSelectionDelegateKt {
    @NotNull
    public static final u<Selection, Boolean> d(@NotNull TextLayoutResult textLayoutResult, long j6, long j10, @Nullable Offset offset, long j11, @NotNull SelectionAdjustment adjustment, @Nullable Selection selection, boolean z6) {
        t.j(textLayoutResult, "textLayoutResult");
        t.j(adjustment, "adjustment");
        Rect rect = new Rect(0.0f, 0.0f, IntSize.g(textLayoutResult.A()), IntSize.f(textLayoutResult.A()));
        if (!SelectionMode.Vertical.c(rect, j6, j10)) {
            return new u<>(null, Boolean.FALSE);
        }
        int iC = c(textLayoutResult, rect, j6);
        int iC2 = c(textLayoutResult, rect, j10);
        int iC3 = offset != null ? c(textLayoutResult, rect, offset.u()) : -1;
        long jA = adjustment.a(textLayoutResult, TextRangeKt.b(iC, iC2), iC3, z6, selection != null ? TextRange.b(selection.g()) : null);
        Selection selectionB = b(jA, TextRange.m(jA), j11, textLayoutResult);
        boolean z10 = true;
        boolean z11 = !t.e(selectionB, selection);
        if (!z6 ? iC2 == iC3 : iC == iC3) {
            if (!z11) {
                z10 = false;
            }
        }
        return new u<>(selectionB, Boolean.valueOf(z10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Selection b(long j6, boolean z6, long j10, TextLayoutResult textLayoutResult) {
        return new Selection(new Selection.AnchorInfo(textLayoutResult.b(TextRange.n(j6)), TextRange.n(j6), j10), new Selection.AnchorInfo(textLayoutResult.b(Math.max(TextRange.i(j6) - 1, 0)), TextRange.i(j6), j10), z6);
    }

    public static final int c(@NotNull TextLayoutResult textLayoutResult, @NotNull Rect bounds, long j6) {
        t.j(textLayoutResult, "textLayoutResult");
        t.j(bounds, "bounds");
        int length = textLayoutResult.k().j().length();
        if (bounds.b(j6)) {
            return o.n(textLayoutResult.w(j6), 0, length);
        }
        if (SelectionMode.Vertical.b(j6, bounds) < 0) {
            return 0;
        }
        return length;
    }
}
