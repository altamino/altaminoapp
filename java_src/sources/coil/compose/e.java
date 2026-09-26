package coil.compose;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.ScaleFactorKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class e extends InspectorValueInfo implements LayoutModifier, DrawModifier {

    @NotNull
    private final Alignment alignment;
    private final float alpha;

    @Nullable
    private final ColorFilter colorFilter;

    @NotNull
    private final ContentScale contentScale;

    @NotNull
    private final Painter painter;

    static final class a extends v implements l<Placeable.PlacementScope, l0> {
        final /* synthetic */ Placeable $placeable;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Placeable placeable) {
            super(1);
            this.$placeable = placeable;
        }

        public final void a(@NotNull Placeable.PlacementScope placementScope) {
            Placeable.PlacementScope.n(placementScope, this.$placeable, 0, 0, 0.0f, 4, null);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
            a(placementScope);
            return l0.INSTANCE;
        }
    }

    public static final class b extends v implements l<InspectorInfo, l0> {
        final /* synthetic */ Alignment $alignment$inlined;
        final /* synthetic */ float $alpha$inlined;
        final /* synthetic */ ColorFilter $colorFilter$inlined;
        final /* synthetic */ ContentScale $contentScale$inlined;
        final /* synthetic */ Painter $painter$inlined;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Painter painter, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter) {
            super(1);
            this.$painter$inlined = painter;
            this.$alignment$inlined = alignment;
            this.$contentScale$inlined = contentScale;
            this.$alpha$inlined = f;
            this.$colorFilter$inlined = colorFilter;
        }

        public final void a(@NotNull InspectorInfo inspectorInfo) {
            t.j(inspectorInfo, "$this$null");
            inspectorInfo.b("content");
            inspectorInfo.a().c("painter", this.$painter$inlined);
            inspectorInfo.a().c("alignment", this.$alignment$inlined);
            inspectorInfo.a().c("contentScale", this.$contentScale$inlined);
            inspectorInfo.a().c("alpha", Float.valueOf(this.$alpha$inlined));
            inspectorInfo.a().c("colorFilter", this.$colorFilter$inlined);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
            a(inspectorInfo);
            return l0.INSTANCE;
        }
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return androidx.compose.ui.a.a(this, modifier);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, p pVar) {
        return androidx.compose.ui.b.c(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, p pVar) {
        return androidx.compose.ui.b.b(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(l lVar) {
        return androidx.compose.ui.b.a(this, lVar);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return t.e(this.painter, eVar.painter) && t.e(this.alignment, eVar.alignment) && t.e(this.contentScale, eVar.contentScale) && t.e(Float.valueOf(this.alpha), Float.valueOf(eVar.alpha)) && t.e(this.colorFilter, eVar.colorFilter);
    }

    public int hashCode() {
        int iHashCode = ((((((this.painter.hashCode() * 31) + this.alignment.hashCode()) * 31) + this.contentScale.hashCode()) * 31) + Float.floatToIntBits(this.alpha)) * 31;
        ColorFilter colorFilter = this.colorFilter;
        return iHashCode + (colorFilter == null ? 0 : colorFilter.hashCode());
    }

    @NotNull
    public String toString() {
        return "ContentPainterModifier(painter=" + this.painter + ", alignment=" + this.alignment + ", contentScale=" + this.contentScale + ", alpha=" + this.alpha + ", colorFilter=" + this.colorFilter + ')';
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int K(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable intrinsicMeasurable, int i10) {
        if (this.painter.k() == Size.Companion.a()) {
            return intrinsicMeasurable.Y(i10);
        }
        int iY = intrinsicMeasurable.Y(Constraints.m(b(ConstraintsKt.b(0, 0, 0, i10, 7, null))));
        return Math.max(g8.c.c(Size.i(a(SizeKt.a(iY, i10)))), iY);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int S(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable intrinsicMeasurable, int i10) {
        if (this.painter.k() == Size.Companion.a()) {
            return intrinsicMeasurable.a0(i10);
        }
        int iA0 = intrinsicMeasurable.a0(Constraints.m(b(ConstraintsKt.b(0, 0, 0, i10, 7, null))));
        return Math.max(g8.c.c(Size.i(a(SizeKt.a(iA0, i10)))), iA0);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int c0(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable intrinsicMeasurable, int i10) {
        if (this.painter.k() == Size.Companion.a()) {
            return intrinsicMeasurable.M(i10);
        }
        int iM = intrinsicMeasurable.M(Constraints.n(b(ConstraintsKt.b(0, i10, 0, 0, 13, null))));
        return Math.max(g8.c.c(Size.g(a(SizeKt.a(i10, iM)))), iM);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int s0(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable intrinsicMeasurable, int i10) {
        if (this.painter.k() == Size.Companion.a()) {
            return intrinsicMeasurable.V(i10);
        }
        int iV = intrinsicMeasurable.V(Constraints.n(b(ConstraintsKt.b(0, i10, 0, 0, 13, null))));
        return Math.max(g8.c.c(Size.g(a(SizeKt.a(i10, iV)))), iV);
    }

    public e(@NotNull Painter painter, @NotNull Alignment alignment, @NotNull ContentScale contentScale, float f, @Nullable ColorFilter colorFilter) {
        l lVarA;
        if (InspectableValueKt.c()) {
            lVarA = new b(painter, alignment, contentScale, f, colorFilter);
        } else {
            lVarA = InspectableValueKt.a();
        }
        super(lVarA);
        this.painter = painter;
        this.alignment = alignment;
        this.contentScale = contentScale;
        this.alpha = f;
        this.colorFilter = colorFilter;
    }

    private final long a(long j6) {
        if (Size.k(j6)) {
            return Size.Companion.b();
        }
        long jK = this.painter.k();
        if (jK == Size.Companion.a()) {
            return j6;
        }
        float fI = Size.i(jK);
        if (Float.isInfinite(fI) || Float.isNaN(fI)) {
            fI = Size.i(j6);
        }
        float fG = Size.g(jK);
        if (Float.isInfinite(fG) || Float.isNaN(fG)) {
            fG = Size.g(j6);
        }
        long jA = SizeKt.a(fI, fG);
        return ScaleFactorKt.d(jA, this.contentScale.a(jA, j6));
    }

    private final long b(long j6) {
        boolean z6;
        float fP;
        int iO;
        float fA;
        boolean zL = Constraints.l(j6);
        boolean zK = Constraints.k(j6);
        if (zL && zK) {
            return j6;
        }
        if (Constraints.j(j6) && Constraints.i(j6)) {
            z6 = true;
        } else {
            z6 = false;
        }
        long jK = this.painter.k();
        if (jK == Size.Companion.a()) {
            if (z6) {
                return Constraints.e(j6, Constraints.n(j6), 0, Constraints.m(j6), 0, 10, null);
            }
            return j6;
        }
        if (z6 && (zL || zK)) {
            fP = Constraints.n(j6);
            iO = Constraints.m(j6);
        } else {
            float fI = Size.i(jK);
            float fG = Size.g(jK);
            if (!Float.isInfinite(fI) && !Float.isNaN(fI)) {
                fP = j.b(j6, fI);
            } else {
                fP = Constraints.p(j6);
            }
            if (!Float.isInfinite(fG) && !Float.isNaN(fG)) {
                fA = j.a(j6, fG);
            } else {
                iO = Constraints.o(j6);
            }
            long jA = a(SizeKt.a(fP, fA));
            return Constraints.e(j6, ConstraintsKt.g(j6, g8.c.c(Size.i(jA))), 0, ConstraintsKt.f(j6, g8.c.c(Size.g(jA))), 0, 10, null);
        }
        fA = iO;
        long jA2 = a(SizeKt.a(fP, fA));
        return Constraints.e(j6, ConstraintsKt.g(j6, g8.c.c(Size.i(jA2))), 0, ConstraintsKt.f(j6, g8.c.c(Size.g(jA2))), 0, 10, null);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    public MeasureResult N0(@NotNull MeasureScope measureScope, @NotNull Measurable measurable, long j6) {
        Placeable placeableB0 = measurable.b0(b(j6));
        return MeasureScope.CC.b(measureScope, placeableB0.Q0(), placeableB0.B0(), null, new a(placeableB0), 4, null);
    }

    @Override // androidx.compose.ui.draw.DrawModifier
    public void r(@NotNull ContentDrawScope contentDrawScope) {
        long jA = a(contentDrawScope.c());
        long jA2 = this.alignment.a(j.e(jA), j.e(contentDrawScope.c()), contentDrawScope.getLayoutDirection());
        float fC = IntOffset.c(jA2);
        float fD = IntOffset.d(jA2);
        contentDrawScope.T().d().b(fC, fD);
        this.painter.j(contentDrawScope, jA, this.alpha, this.colorFilter);
        contentDrawScope.T().d().b(-fC, -fD);
        contentDrawScope.Z();
    }
}
