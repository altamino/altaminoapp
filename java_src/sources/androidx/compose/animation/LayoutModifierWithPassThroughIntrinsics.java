package androidx.compose.animation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.a;
import androidx.compose.ui.b;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutModifier;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public abstract class LayoutModifierWithPassThroughIntrinsics implements LayoutModifier {
    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return a.a(this, modifier);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, p pVar) {
        return b.c(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, p pVar) {
        return b.b(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(l lVar) {
        return b.a(this, lVar);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public final int K(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurable, "measurable");
        return measurable.Y(i10);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public final int S(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurable, "measurable");
        return measurable.a0(i10);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public final int c0(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurable, "measurable");
        return measurable.M(i10);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public final int s0(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurable, "measurable");
        return measurable.V(i10);
    }
}
