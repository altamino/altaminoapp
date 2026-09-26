package androidx.compose.ui.layout;

import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.unit.IntSizeKt;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
final class FixedSizeIntrinsicsPlaceable extends Placeable {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.compose.ui.layout.Placeable
    public void R0(long j6, float f, @Nullable l<? super GraphicsLayerScope, l0> lVar) {
    }

    @Override // androidx.compose.ui.layout.Measured
    public int c0(@NotNull AlignmentLine alignmentLine) {
        t.j(alignmentLine, "alignmentLine");
        return Integer.MIN_VALUE;
    }

    public FixedSizeIntrinsicsPlaceable(int i10, int i11) {
        T0(IntSizeKt.a(i10, i11));
    }
}
