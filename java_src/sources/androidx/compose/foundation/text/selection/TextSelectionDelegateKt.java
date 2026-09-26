package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.text.TextLayoutResult;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class TextSelectionDelegateKt {
    public static final float a(@NotNull TextLayoutResult textLayoutResult, int i10, boolean z6, boolean z10) {
        t.j(textLayoutResult, "<this>");
        return textLayoutResult.i(i10, textLayoutResult.b(((!z6 || z10) && (z6 || !z10)) ? Math.max(i10 + (-1), 0) : i10) == textLayoutResult.x(i10));
    }

    public static final long b(@NotNull TextLayoutResult textLayoutResult, int i10, boolean z6, boolean z10) {
        t.j(textLayoutResult, "textLayoutResult");
        return OffsetKt.a(a(textLayoutResult, i10, z6, z10), textLayoutResult.l(textLayoutResult.p(i10)));
    }
}
