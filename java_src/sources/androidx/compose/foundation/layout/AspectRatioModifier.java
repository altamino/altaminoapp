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
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class AspectRatioModifier extends InspectorValueInfo implements LayoutModifier {
    private final float aspectRatio;
    private final boolean matchHeightConstraintsFirst;

    static /* synthetic */ long c(AspectRatioModifier aspectRatioModifier, long j6, boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = true;
        }
        return aspectRatioModifier.b(j6, z6);
    }

    static /* synthetic */ long f(AspectRatioModifier aspectRatioModifier, long j6, boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = true;
        }
        return aspectRatioModifier.d(j6, z6);
    }

    static /* synthetic */ long h(AspectRatioModifier aspectRatioModifier, long j6, boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = true;
        }
        return aspectRatioModifier.g(j6, z6);
    }

    static /* synthetic */ long j(AspectRatioModifier aspectRatioModifier, long j6, boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = true;
        }
        return aspectRatioModifier.i(j6, z6);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return androidx.compose.ui.a.a(this, modifier);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, e8.p pVar) {
        return androidx.compose.ui.b.c(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, e8.p pVar) {
        return androidx.compose.ui.b.b(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(e8.l lVar) {
        return androidx.compose.ui.b.a(this, lVar);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        AspectRatioModifier aspectRatioModifier = obj instanceof AspectRatioModifier ? (AspectRatioModifier) obj : null;
        if (aspectRatioModifier == null) {
            return false;
        }
        return this.aspectRatio == aspectRatioModifier.aspectRatio && this.matchHeightConstraintsFirst == ((AspectRatioModifier) obj).matchHeightConstraintsFirst;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AspectRatioModifier(float f, boolean z6, @NotNull e8.l<? super InspectorInfo, l0> inspectorInfo) {
        super(inspectorInfo);
        t.j(inspectorInfo, "inspectorInfo");
        this.aspectRatio = f;
        this.matchHeightConstraintsFirst = z6;
        if (f > 0.0f) {
            return;
        }
        throw new IllegalArgumentException(("aspectRatio " + f + " must be > 0").toString());
    }

    private final long a(long j6) {
        if (this.matchHeightConstraintsFirst) {
            long jC = c(this, j6, false, 1, null);
            IntSize.Companion companion = IntSize.Companion;
            if (!IntSize.e(jC, companion.a())) {
                return jC;
            }
            long jF = f(this, j6, false, 1, null);
            if (!IntSize.e(jF, companion.a())) {
                return jF;
            }
            long jH = h(this, j6, false, 1, null);
            if (!IntSize.e(jH, companion.a())) {
                return jH;
            }
            long j10 = j(this, j6, false, 1, null);
            if (!IntSize.e(j10, companion.a())) {
                return j10;
            }
            long jB = b(j6, false);
            if (!IntSize.e(jB, companion.a())) {
                return jB;
            }
            long jD = d(j6, false);
            if (!IntSize.e(jD, companion.a())) {
                return jD;
            }
            long jG = g(j6, false);
            if (!IntSize.e(jG, companion.a())) {
                return jG;
            }
            long jI = i(j6, false);
            if (!IntSize.e(jI, companion.a())) {
                return jI;
            }
        } else {
            long jF2 = f(this, j6, false, 1, null);
            IntSize.Companion companion2 = IntSize.Companion;
            if (!IntSize.e(jF2, companion2.a())) {
                return jF2;
            }
            long jC2 = c(this, j6, false, 1, null);
            if (!IntSize.e(jC2, companion2.a())) {
                return jC2;
            }
            long j11 = j(this, j6, false, 1, null);
            if (!IntSize.e(j11, companion2.a())) {
                return j11;
            }
            long jH2 = h(this, j6, false, 1, null);
            if (!IntSize.e(jH2, companion2.a())) {
                return jH2;
            }
            long jD2 = d(j6, false);
            if (!IntSize.e(jD2, companion2.a())) {
                return jD2;
            }
            long jB2 = b(j6, false);
            if (!IntSize.e(jB2, companion2.a())) {
                return jB2;
            }
            long jI2 = i(j6, false);
            if (!IntSize.e(jI2, companion2.a())) {
                return jI2;
            }
            long jG2 = g(j6, false);
            if (!IntSize.e(jG2, companion2.a())) {
                return jG2;
            }
        }
        return IntSize.Companion.a();
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int K(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurable, "measurable");
        return i10 != Integer.MAX_VALUE ? g8.c.c(i10 * this.aspectRatio) : measurable.Y(i10);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    public MeasureResult N0(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j6) {
        t.j(measure, "$this$measure");
        t.j(measurable, "measurable");
        long jA = a(j6);
        if (!IntSize.e(jA, IntSize.Companion.a())) {
            j6 = Constraints.Companion.c(IntSize.g(jA), IntSize.f(jA));
        }
        Placeable placeableB0 = measurable.b0(j6);
        return MeasureScope.CC.b(measure, placeableB0.Q0(), placeableB0.B0(), null, new AspectRatioModifier$measure$1(placeableB0), 4, null);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int S(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurable, "measurable");
        return i10 != Integer.MAX_VALUE ? g8.c.c(i10 * this.aspectRatio) : measurable.a0(i10);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int c0(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurable, "measurable");
        return i10 != Integer.MAX_VALUE ? g8.c.c(i10 / this.aspectRatio) : measurable.M(i10);
    }

    public int hashCode() {
        return (Float.floatToIntBits(this.aspectRatio) * 31) + androidx.compose.foundation.c.a(this.matchHeightConstraintsFirst);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int s0(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull IntrinsicMeasurable measurable, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurable, "measurable");
        return i10 != Integer.MAX_VALUE ? g8.c.c(i10 / this.aspectRatio) : measurable.V(i10);
    }

    @NotNull
    public String toString() {
        return "AspectRatioModifier(aspectRatio=" + this.aspectRatio + ')';
    }

    private final long b(long j6, boolean z6) {
        int iC;
        int iM = Constraints.m(j6);
        if (iM != Integer.MAX_VALUE && (iC = g8.c.c(iM * this.aspectRatio)) > 0) {
            long jA = IntSizeKt.a(iC, iM);
            if (!z6 || ConstraintsKt.h(j6, jA)) {
                return jA;
            }
        }
        return IntSize.Companion.a();
    }

    private final long d(long j6, boolean z6) {
        int iC;
        int iN = Constraints.n(j6);
        if (iN != Integer.MAX_VALUE && (iC = g8.c.c(iN / this.aspectRatio)) > 0) {
            long jA = IntSizeKt.a(iN, iC);
            if (!z6 || ConstraintsKt.h(j6, jA)) {
                return jA;
            }
        }
        return IntSize.Companion.a();
    }

    private final long g(long j6, boolean z6) {
        int iO = Constraints.o(j6);
        int iC = g8.c.c(iO * this.aspectRatio);
        if (iC > 0) {
            long jA = IntSizeKt.a(iC, iO);
            if (!z6 || ConstraintsKt.h(j6, jA)) {
                return jA;
            }
        }
        return IntSize.Companion.a();
    }

    private final long i(long j6, boolean z6) {
        int iP = Constraints.p(j6);
        int iC = g8.c.c(iP / this.aspectRatio);
        if (iC > 0) {
            long jA = IntSizeKt.a(iP, iC);
            if (!z6 || ConstraintsKt.h(j6, jA)) {
                return jA;
            }
        }
        return IntSize.Companion.a();
    }
}
