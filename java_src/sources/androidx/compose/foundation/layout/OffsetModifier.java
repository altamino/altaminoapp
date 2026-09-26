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
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class OffsetModifier extends InspectorValueInfo implements LayoutModifier {
    private final boolean rtlAware;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final float f84x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final float f85y;

    public /* synthetic */ OffsetModifier(float f, float f6, boolean z6, e8.l lVar, kotlin.jvm.internal.k kVar) {
        this(f, f6, z6, lVar);
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
        return this.f84x;
    }

    public final float c() {
        return this.f85y;
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int c0(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return androidx.compose.ui.layout.b.a(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(e8.l lVar) {
        return androidx.compose.ui.b.a(this, lVar);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        OffsetModifier offsetModifier = obj instanceof OffsetModifier ? (OffsetModifier) obj : null;
        if (offsetModifier == null) {
            return false;
        }
        return Dp.i(this.f84x, offsetModifier.f84x) && Dp.i(this.f85y, offsetModifier.f85y) && this.rtlAware == offsetModifier.rtlAware;
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public /* synthetic */ int s0(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i10) {
        return androidx.compose.ui.layout.b.c(this, intrinsicMeasureScope, intrinsicMeasurable, i10);
    }

    private OffsetModifier(float f, float f6, boolean z6, e8.l<? super InspectorInfo, l0> lVar) {
        super(lVar);
        this.f84x = f;
        this.f85y = f6;
        this.rtlAware = z6;
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    public MeasureResult N0(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j6) {
        t.j(measure, "$this$measure");
        t.j(measurable, "measurable");
        Placeable placeableB0 = measurable.b0(j6);
        return MeasureScope.CC.b(measure, placeableB0.Q0(), placeableB0.B0(), null, new OffsetModifier$measure$1(this, placeableB0, measure), 4, null);
    }

    public int hashCode() {
        return (((Dp.j(this.f84x) * 31) + Dp.j(this.f85y)) * 31) + androidx.compose.foundation.c.a(this.rtlAware);
    }

    @NotNull
    public String toString() {
        return "OffsetModifier(x=" + ((Object) Dp.k(this.f84x)) + ", y=" + ((Object) Dp.k(this.f85y)) + ", rtlAware=" + this.rtlAware + ')';
    }
}
