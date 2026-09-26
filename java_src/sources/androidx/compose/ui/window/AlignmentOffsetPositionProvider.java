package androidx.compose.ui.window;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class AlignmentOffsetPositionProvider implements PopupPositionProvider {

    @NotNull
    private final Alignment alignment;
    private final long offset;

    public /* synthetic */ AlignmentOffsetPositionProvider(Alignment alignment, long j6, k kVar) {
        this(alignment, j6);
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    public long a(@NotNull IntRect anchorBounds, long j6, @NotNull LayoutDirection layoutDirection, long j10) {
        t.j(anchorBounds, "anchorBounds");
        t.j(layoutDirection, "layoutDirection");
        long jA = IntOffsetKt.a(0, 0);
        Alignment alignment = this.alignment;
        IntSize.Companion companion = IntSize.Companion;
        long jA2 = alignment.a(companion.a(), IntSizeKt.a(anchorBounds.f(), anchorBounds.b()), layoutDirection);
        long jA3 = this.alignment.a(companion.a(), IntSizeKt.a(IntSize.g(j10), IntSize.f(j10)), layoutDirection);
        long jA4 = IntOffsetKt.a(anchorBounds.c(), anchorBounds.e());
        long jA5 = IntOffsetKt.a(IntOffset.j(jA) + IntOffset.j(jA4), IntOffset.k(jA) + IntOffset.k(jA4));
        long jA6 = IntOffsetKt.a(IntOffset.j(jA5) + IntOffset.j(jA2), IntOffset.k(jA5) + IntOffset.k(jA2));
        long jA7 = IntOffsetKt.a(IntOffset.j(jA3), IntOffset.k(jA3));
        long jA8 = IntOffsetKt.a(IntOffset.j(jA6) - IntOffset.j(jA7), IntOffset.k(jA6) - IntOffset.k(jA7));
        long jA9 = IntOffsetKt.a(IntOffset.j(this.offset) * (layoutDirection == LayoutDirection.Ltr ? 1 : -1), IntOffset.k(this.offset));
        return IntOffsetKt.a(IntOffset.j(jA8) + IntOffset.j(jA9), IntOffset.k(jA8) + IntOffset.k(jA9));
    }

    private AlignmentOffsetPositionProvider(Alignment alignment, long j6) {
        this.alignment = alignment;
        this.offset = j6;
    }
}
