package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class PaddingModifier extends InspectorValueInfo implements LayoutModifier {
    private final float bottom;
    private final float end;
    private final boolean rtlAware;
    private final float start;
    private final float top;

    public /* synthetic */ PaddingModifier(float f, float f6, float f7, float f10, boolean z6, e8.l lVar, kotlin.jvm.internal.k kVar) {
        this(f, f6, f7, f10, z6, lVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return androidx.compose.ui.a.a(this, modifier);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int K(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return androidx.compose.ui.layout.b.d(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int S(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return androidx.compose.ui.layout.b.b(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, e8.p pVar) {
        return androidx.compose.ui.b.c(this, obj, pVar);
    }

    public final boolean a() {
        return this.rtlAware;
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, e8.p pVar) {
        return androidx.compose.ui.b.b(this, obj, pVar);
    }

    public final float b() {
        return this.start;
    }

    public final float c() {
        return this.top;
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int c0(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return androidx.compose.ui.layout.b.a(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(e8.l lVar) {
        return androidx.compose.ui.b.a(this, lVar);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int s0(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return androidx.compose.ui.layout.b.c(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    private PaddingModifier(float f, float f6, float f7, float f10, boolean z6, e8.l<? super InspectorInfo, l0> lVar) {
        super(lVar);
        this.start = f;
        this.top = f6;
        this.end = f7;
        this.bottom = f10;
        this.rtlAware = z6;
        if ((f < 0.0f && !Dp.i(f, Dp.Companion.b())) || ((f6 < 0.0f && !Dp.i(f6, Dp.Companion.b())) || ((f7 < 0.0f && !Dp.i(f7, Dp.Companion.b())) || (f10 < 0.0f && !Dp.i(f10, Dp.Companion.b()))))) {
            throw new IllegalArgumentException("Padding must be non-negative".toString());
        }
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    public MeasureResult N0(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j6) {
        t.j(measure, "$this$measure");
        t.j(measurable, "measurable");
        int iJ0 = measure.j0(this.start) + measure.j0(this.end);
        int iJ1 = measure.j0(this.top) + measure.j0(this.bottom);
        Placeable placeableB0 = measurable.b0(ConstraintsKt.i(j6, -iJ0, -iJ1));
        return MeasureScope.CC.b(measure, ConstraintsKt.g(j6, placeableB0.Q0() + iJ0), ConstraintsKt.f(j6, placeableB0.B0() + iJ1), null, new PaddingModifier$measure$1(this, placeableB0, measure), 4, null);
    }

    public boolean equals(@Nullable Object obj) {
        PaddingModifier paddingModifier = obj instanceof PaddingModifier ? (PaddingModifier) obj : null;
        return paddingModifier != null && Dp.i(this.start, paddingModifier.start) && Dp.i(this.top, paddingModifier.top) && Dp.i(this.end, paddingModifier.end) && Dp.i(this.bottom, paddingModifier.bottom) && this.rtlAware == paddingModifier.rtlAware;
    }

    public int hashCode() {
        return (((((((Dp.j(this.start) * 31) + Dp.j(this.top)) * 31) + Dp.j(this.end)) * 31) + Dp.j(this.bottom)) * 31) + androidx.compose.foundation.c.a(this.rtlAware);
    }

    public /* synthetic */ PaddingModifier(float f, float f6, float f7, float f10, boolean z6, e8.l lVar, int i10, kotlin.jvm.internal.k kVar) {
        this((i10 & 1) != 0 ? Dp.f(0) : f, (i10 & 2) != 0 ? Dp.f(0) : f6, (i10 & 4) != 0 ? Dp.f(0) : f7, (i10 & 8) != 0 ? Dp.f(0) : f10, z6, lVar, null);
    }
}
