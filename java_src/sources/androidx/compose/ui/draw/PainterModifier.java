package androidx.compose.ui.draw;

import androidx.compose.foundation.c;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.a;
import androidx.compose.ui.b;
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
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSizeKt;
import e8.l;
import e8.p;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class PainterModifier extends InspectorValueInfo implements LayoutModifier, DrawModifier {

    @NotNull
    private final Alignment alignment;
    private final float alpha;

    @Nullable
    private final ColorFilter colorFilter;

    @NotNull
    private final ContentScale contentScale;

    @NotNull
    private final Painter painter;
    private final boolean sizeToIntrinsics;

    public /* synthetic */ PainterModifier(Painter painter, boolean z6, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter, l lVar, int i10, k kVar) {
        this(painter, z6, (i10 & 4) != 0 ? Alignment.Companion.e() : alignment, (i10 & 8) != 0 ? ContentScale.Companion.c() : contentScale, (i10 & 16) != 0 ? 1.0f : f, (i10 & 32) != 0 ? null : colorFilter, lVar);
    }

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

    private final boolean b() {
        return this.sizeToIntrinsics && this.painter.k() != Size.Companion.a();
    }

    private final boolean c(long j6) {
        if (!Size.f(j6, Size.Companion.a())) {
            float fG = Size.g(j6);
            if (!Float.isInfinite(fG) && !Float.isNaN(fG)) {
                return true;
            }
        }
        return false;
    }

    private final boolean d(long j6) {
        if (!Size.f(j6, Size.Companion.a())) {
            float fI = Size.i(j6);
            if (!Float.isInfinite(fI) && !Float.isNaN(fI)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int K(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurable, "measurable");
        if (!b()) {
            return measurable.Y(i10);
        }
        long jF = f(ConstraintsKt.b(0, 0, 0, i10, 7, null));
        return Math.max(Constraints.p(jF), measurable.Y(i10));
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    public MeasureResult N0(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j6) {
        t.j(measure, "$this$measure");
        t.j(measurable, "measurable");
        Placeable placeableB0 = measurable.b0(f(j6));
        return MeasureScope.CC.b(measure, placeableB0.Q0(), placeableB0.B0(), null, new PainterModifier$measure$1(placeableB0), 4, null);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int S(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurable, "measurable");
        if (!b()) {
            return measurable.a0(i10);
        }
        long jF = f(ConstraintsKt.b(0, 0, 0, i10, 7, null));
        return Math.max(Constraints.p(jF), measurable.a0(i10));
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int c0(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurable, "measurable");
        if (!b()) {
            return measurable.M(i10);
        }
        long jF = f(ConstraintsKt.b(0, i10, 0, 0, 13, null));
        return Math.max(Constraints.o(jF), measurable.M(i10));
    }

    public boolean equals(@Nullable Object obj) {
        PainterModifier painterModifier = obj instanceof PainterModifier ? (PainterModifier) obj : null;
        return painterModifier != null && t.e(this.painter, painterModifier.painter) && this.sizeToIntrinsics == painterModifier.sizeToIntrinsics && t.e(this.alignment, painterModifier.alignment) && t.e(this.contentScale, painterModifier.contentScale) && this.alpha == painterModifier.alpha && t.e(this.colorFilter, painterModifier.colorFilter);
    }

    public int hashCode() {
        int iHashCode = ((((((((this.painter.hashCode() * 31) + c.a(this.sizeToIntrinsics)) * 31) + this.alignment.hashCode()) * 31) + this.contentScale.hashCode()) * 31) + Float.floatToIntBits(this.alpha)) * 31;
        ColorFilter colorFilter = this.colorFilter;
        return iHashCode + (colorFilter != null ? colorFilter.hashCode() : 0);
    }

    @Override // androidx.compose.ui.draw.DrawModifier
    public void r(@NotNull ContentDrawScope contentDrawScope) {
        t.j(contentDrawScope, "<this>");
        long jK = this.painter.k();
        long jA = SizeKt.a(d(jK) ? Size.i(jK) : Size.i(contentDrawScope.c()), c(jK) ? Size.g(jK) : Size.g(contentDrawScope.c()));
        long jB = (Size.i(contentDrawScope.c()) == 0.0f || Size.g(contentDrawScope.c()) == 0.0f) ? Size.Companion.b() : ScaleFactorKt.d(jA, this.contentScale.a(jA, contentDrawScope.c()));
        long jA2 = this.alignment.a(IntSizeKt.a(g8.c.c(Size.i(jB)), g8.c.c(Size.g(jB))), IntSizeKt.a(g8.c.c(Size.i(contentDrawScope.c())), g8.c.c(Size.g(contentDrawScope.c()))), contentDrawScope.getLayoutDirection());
        float fJ = IntOffset.j(jA2);
        float fK = IntOffset.k(jA2);
        contentDrawScope.T().d().b(fJ, fK);
        this.painter.j(contentDrawScope, jB, this.alpha, this.colorFilter);
        contentDrawScope.T().d().b(-fJ, -fK);
        contentDrawScope.Z();
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int s0(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurable, "measurable");
        if (!b()) {
            return measurable.V(i10);
        }
        long jF = f(ConstraintsKt.b(0, i10, 0, 0, 13, null));
        return Math.max(Constraints.o(jF), measurable.V(i10));
    }

    @NotNull
    public String toString() {
        return "PainterModifier(painter=" + this.painter + ", sizeToIntrinsics=" + this.sizeToIntrinsics + ", alignment=" + this.alignment + ", alpha=" + this.alpha + ", colorFilter=" + this.colorFilter + ')';
    }

    private final long a(long j6) {
        float fI;
        float fG;
        if (b()) {
            if (!d(this.painter.k())) {
                fI = Size.i(j6);
            } else {
                fI = Size.i(this.painter.k());
            }
            if (!c(this.painter.k())) {
                fG = Size.g(j6);
            } else {
                fG = Size.g(this.painter.k());
            }
            long jA = SizeKt.a(fI, fG);
            if (Size.i(j6) == 0.0f || Size.g(j6) == 0.0f) {
                return Size.Companion.b();
            }
            return ScaleFactorKt.d(jA, this.contentScale.a(jA, j6));
        }
        return j6;
    }

    private final long f(long j6) {
        boolean z6;
        int iP;
        int iO;
        boolean z10 = false;
        if (Constraints.j(j6) && Constraints.i(j6)) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (Constraints.l(j6) && Constraints.k(j6)) {
            z10 = true;
        }
        if ((!b() && z6) || z10) {
            return Constraints.e(j6, Constraints.n(j6), 0, Constraints.m(j6), 0, 10, null);
        }
        long jK = this.painter.k();
        if (d(jK)) {
            iP = g8.c.c(Size.i(jK));
        } else {
            iP = Constraints.p(j6);
        }
        if (c(jK)) {
            iO = g8.c.c(Size.g(jK));
        } else {
            iO = Constraints.o(j6);
        }
        long jA = a(SizeKt.a(ConstraintsKt.g(j6, iP), ConstraintsKt.f(j6, iO)));
        return Constraints.e(j6, ConstraintsKt.g(j6, g8.c.c(Size.i(jA))), 0, ConstraintsKt.f(j6, g8.c.c(Size.g(jA))), 0, 10, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PainterModifier(@NotNull Painter painter, boolean z6, @NotNull Alignment alignment, @NotNull ContentScale contentScale, float f, @Nullable ColorFilter colorFilter, @NotNull l<? super InspectorInfo, l0> inspectorInfo) {
        super(inspectorInfo);
        t.j(painter, "painter");
        t.j(alignment, "alignment");
        t.j(contentScale, "contentScale");
        t.j(inspectorInfo, "inspectorInfo");
        this.painter = painter;
        this.sizeToIntrinsics = z6;
        this.alignment = alignment;
        this.contentScale = contentScale;
        this.alpha = f;
        this.colorFilter = colorFilter;
    }
}
