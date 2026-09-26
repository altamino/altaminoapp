package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class OrientationIndependentConstraints {
    private final int crossAxisMax;
    private final int crossAxisMin;
    private final int mainAxisMax;
    private final int mainAxisMin;

    public /* synthetic */ OrientationIndependentConstraints(long j6, LayoutOrientation layoutOrientation, kotlin.jvm.internal.k kVar) {
        this(j6, layoutOrientation);
    }

    public static /* synthetic */ OrientationIndependentConstraints b(OrientationIndependentConstraints orientationIndependentConstraints, int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = orientationIndependentConstraints.mainAxisMin;
        }
        if ((i14 & 2) != 0) {
            i11 = orientationIndependentConstraints.mainAxisMax;
        }
        if ((i14 & 4) != 0) {
            i12 = orientationIndependentConstraints.crossAxisMin;
        }
        if ((i14 & 8) != 0) {
            i13 = orientationIndependentConstraints.crossAxisMax;
        }
        return orientationIndependentConstraints.a(i10, i11, i12, i13);
    }

    @NotNull
    public final OrientationIndependentConstraints a(int i10, int i11, int i12, int i13) {
        return new OrientationIndependentConstraints(i10, i11, i12, i13);
    }

    public final int c() {
        return this.crossAxisMax;
    }

    public final int d() {
        return this.crossAxisMin;
    }

    public final int e() {
        return this.mainAxisMax;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OrientationIndependentConstraints)) {
            return false;
        }
        OrientationIndependentConstraints orientationIndependentConstraints = (OrientationIndependentConstraints) obj;
        return this.mainAxisMin == orientationIndependentConstraints.mainAxisMin && this.mainAxisMax == orientationIndependentConstraints.mainAxisMax && this.crossAxisMin == orientationIndependentConstraints.crossAxisMin && this.crossAxisMax == orientationIndependentConstraints.crossAxisMax;
    }

    public final int f() {
        return this.mainAxisMin;
    }

    public int hashCode() {
        return (((((this.mainAxisMin * 31) + this.mainAxisMax) * 31) + this.crossAxisMin) * 31) + this.crossAxisMax;
    }

    @NotNull
    public String toString() {
        return "OrientationIndependentConstraints(mainAxisMin=" + this.mainAxisMin + ", mainAxisMax=" + this.mainAxisMax + ", crossAxisMin=" + this.crossAxisMin + ", crossAxisMax=" + this.crossAxisMax + ')';
    }

    public OrientationIndependentConstraints(int i10, int i11, int i12, int i13) {
        this.mainAxisMin = i10;
        this.mainAxisMax = i11;
        this.crossAxisMin = i12;
        this.crossAxisMax = i13;
    }

    public final long g(@NotNull LayoutOrientation orientation) {
        t.j(orientation, "orientation");
        return orientation == LayoutOrientation.Horizontal ? ConstraintsKt.a(this.mainAxisMin, this.mainAxisMax, this.crossAxisMin, this.crossAxisMax) : ConstraintsKt.a(this.crossAxisMin, this.crossAxisMax, this.mainAxisMin, this.mainAxisMax);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    private OrientationIndependentConstraints(long j6, LayoutOrientation layoutOrientation) {
        LayoutOrientation layoutOrientation2 = LayoutOrientation.Horizontal;
        this(layoutOrientation == layoutOrientation2 ? Constraints.p(j6) : Constraints.o(j6), layoutOrientation == layoutOrientation2 ? Constraints.n(j6) : Constraints.m(j6), layoutOrientation == layoutOrientation2 ? Constraints.o(j6) : Constraints.p(j6), layoutOrientation == layoutOrientation2 ? Constraints.m(j6) : Constraints.n(j6));
    }
}
