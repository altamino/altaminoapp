package androidx.compose.foundation.text.selection;

import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class TextFieldSelectionDelegateKt {
    public static final long a(@Nullable TextLayoutResult textLayoutResult, int i10, int i11, @Nullable TextRange textRange, boolean z6, @NotNull SelectionAdjustment adjustment) {
        t.j(adjustment, "adjustment");
        if (textLayoutResult == null) {
            return TextRangeKt.b(0, 0);
        }
        long jB = TextRangeKt.b(i10, i11);
        return (textRange == null && t.e(adjustment, SelectionAdjustment.Companion.c())) ? jB : adjustment.a(textLayoutResult, jB, -1, z6, textRange);
    }
}
