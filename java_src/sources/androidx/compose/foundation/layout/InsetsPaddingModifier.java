package androidx.compose.foundation.layout;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ModifierLocalReadScope;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.ConstraintsKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class InsetsPaddingModifier extends InspectorValueInfo implements LayoutModifier, ModifierLocalConsumer, ModifierLocalProvider<WindowInsets> {

    @NotNull
    private final MutableState consumedInsets$delegate;

    @NotNull
    private final WindowInsets insets;

    @NotNull
    private final MutableState unconsumedInsets$delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InsetsPaddingModifier(@NotNull WindowInsets insets, @NotNull e8.l<? super InspectorInfo, l0> inspectorInfo) {
        super(inspectorInfo);
        t.j(insets, "insets");
        t.j(inspectorInfo, "inspectorInfo");
        this.insets = insets;
        this.unconsumedInsets$delegate = SnapshotStateKt__SnapshotStateKt.e(insets, null, 2, null);
        this.consumedInsets$delegate = SnapshotStateKt__SnapshotStateKt.e(insets, null, 2, null);
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

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, e8.p pVar) {
        return androidx.compose.ui.b.b(this, obj, pVar);
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

    private final WindowInsets a() {
        return (WindowInsets) this.consumedInsets$delegate.getValue();
    }

    private final WindowInsets b() {
        return (WindowInsets) this.unconsumedInsets$delegate.getValue();
    }

    private final void d(WindowInsets windowInsets) {
        this.consumedInsets$delegate.setValue(windowInsets);
    }

    private final void f(WindowInsets windowInsets) {
        this.unconsumedInsets$delegate.setValue(windowInsets);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    public MeasureResult N0(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j6) {
        t.j(measure, "$this$measure");
        t.j(measurable, "measurable");
        int iD = b().d(measure, measure.getLayoutDirection());
        int iA = b().a(measure);
        int iB = b().b(measure, measure.getLayoutDirection()) + iD;
        int iC = b().c(measure) + iA;
        Placeable placeableB0 = measurable.b0(ConstraintsKt.i(j6, -iB, -iC));
        return MeasureScope.CC.b(measure, ConstraintsKt.g(j6, placeableB0.Q0() + iB), ConstraintsKt.f(j6, placeableB0.B0() + iC), null, new InsetsPaddingModifier$measure$1(placeableB0, iD, iA), 4, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof InsetsPaddingModifier) {
            return t.e(((InsetsPaddingModifier) obj).insets, this.insets);
        }
        return false;
    }

    public int hashCode() {
        return this.insets.hashCode();
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
    public void z0(@NotNull ModifierLocalReadScope scope) {
        t.j(scope, "scope");
        WindowInsets windowInsets = (WindowInsets) scope.a(WindowInsetsPaddingKt.a());
        f(WindowInsetsKt.d(this.insets, windowInsets));
        d(WindowInsetsKt.e(windowInsets, this.insets));
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public WindowInsets getValue() {
        return a();
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public ProvidableModifierLocal<WindowInsets> getKey() {
        return WindowInsetsPaddingKt.a();
    }

    public /* synthetic */ InsetsPaddingModifier(WindowInsets windowInsets, e8.l lVar, int i10, kotlin.jvm.internal.k kVar) {
        this(windowInsets, (i10 & 2) != 0 ? InspectableValueKt.c() ? new InsetsPaddingModifier$special$$inlined$debugInspectorInfo$1(windowInsets) : InspectableValueKt.a() : lVar);
    }
}
