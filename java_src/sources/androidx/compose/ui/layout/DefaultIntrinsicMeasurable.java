package androidx.compose.ui.layout;

import androidx.compose.ui.unit.Constraints;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class DefaultIntrinsicMeasurable implements Measurable {

    @NotNull
    private final IntrinsicMeasurable measurable;

    @NotNull
    private final IntrinsicMinMax minMax;

    @NotNull
    private final IntrinsicWidthHeight widthHeight;

    public DefaultIntrinsicMeasurable(@NotNull IntrinsicMeasurable measurable, @NotNull IntrinsicMinMax minMax, @NotNull IntrinsicWidthHeight widthHeight) {
        t.j(measurable, "measurable");
        t.j(minMax, "minMax");
        t.j(widthHeight, "widthHeight");
        this.measurable = measurable;
        this.minMax = minMax;
        this.widthHeight = widthHeight;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int M(int i10) {
        return this.measurable.M(i10);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int V(int i10) {
        return this.measurable.V(i10);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int Y(int i10) {
        return this.measurable.Y(i10);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int a0(int i10) {
        return this.measurable.a0(i10);
    }

    @Override // androidx.compose.ui.layout.Measurable
    @NotNull
    public Placeable b0(long j6) {
        if (this.widthHeight == IntrinsicWidthHeight.Width) {
            return new FixedSizeIntrinsicsPlaceable(this.minMax == IntrinsicMinMax.Max ? this.measurable.a0(Constraints.m(j6)) : this.measurable.Y(Constraints.m(j6)), Constraints.m(j6));
        }
        return new FixedSizeIntrinsicsPlaceable(Constraints.n(j6), this.minMax == IntrinsicMinMax.Max ? this.measurable.M(Constraints.n(j6)) : this.measurable.V(Constraints.n(j6)));
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    @Nullable
    public Object e() {
        return this.measurable.e();
    }
}
