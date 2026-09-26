package androidx.compose.ui.layout;

import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntSizeKt;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class MeasuringIntrinsics {

    @NotNull
    public static final MeasuringIntrinsics INSTANCE = new MeasuringIntrinsics();

    private static final class DefaultIntrinsicMeasurable implements Measurable {

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
                return new EmptyPlaceable(this.minMax == IntrinsicMinMax.Max ? this.measurable.a0(Constraints.m(j6)) : this.measurable.Y(Constraints.m(j6)), Constraints.m(j6));
            }
            return new EmptyPlaceable(Constraints.n(j6), this.minMax == IntrinsicMinMax.Max ? this.measurable.M(Constraints.n(j6)) : this.measurable.V(Constraints.n(j6)));
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasurable
        @Nullable
        public Object e() {
            return this.measurable.e();
        }
    }

    private enum IntrinsicMinMax {
        Min,
        Max
    }

    private enum IntrinsicWidthHeight {
        Width,
        Height
    }

    private static final class EmptyPlaceable extends Placeable {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.compose.ui.layout.Placeable
        public void R0(long j6, float f, @Nullable l<? super GraphicsLayerScope, l0> lVar) {
        }

        @Override // androidx.compose.ui.layout.Measured
        public int c0(@NotNull AlignmentLine alignmentLine) {
            t.j(alignmentLine, "alignmentLine");
            return Integer.MIN_VALUE;
        }

        public EmptyPlaceable(int i10, int i11) {
            T0(IntSizeKt.a(i10, i11));
        }
    }

    public final int a(@NotNull LayoutModifier modifier, @NotNull IntrinsicMeasureScope instrinsicMeasureScope, @NotNull IntrinsicMeasurable intrinsicMeasurable, int i10) {
        t.j(modifier, "modifier");
        t.j(instrinsicMeasureScope, "instrinsicMeasureScope");
        t.j(intrinsicMeasurable, "intrinsicMeasurable");
        return modifier.N0(new IntrinsicsMeasureScope(instrinsicMeasureScope, instrinsicMeasureScope.getLayoutDirection()), new DefaultIntrinsicMeasurable(intrinsicMeasurable, IntrinsicMinMax.Max, IntrinsicWidthHeight.Height), ConstraintsKt.b(0, i10, 0, 0, 13, null)).getHeight();
    }

    public final int b(@NotNull LayoutModifier modifier, @NotNull IntrinsicMeasureScope instrinsicMeasureScope, @NotNull IntrinsicMeasurable intrinsicMeasurable, int i10) {
        t.j(modifier, "modifier");
        t.j(instrinsicMeasureScope, "instrinsicMeasureScope");
        t.j(intrinsicMeasurable, "intrinsicMeasurable");
        return modifier.N0(new IntrinsicsMeasureScope(instrinsicMeasureScope, instrinsicMeasureScope.getLayoutDirection()), new DefaultIntrinsicMeasurable(intrinsicMeasurable, IntrinsicMinMax.Max, IntrinsicWidthHeight.Width), ConstraintsKt.b(0, 0, 0, i10, 7, null)).getWidth();
    }

    public final int c(@NotNull LayoutModifier modifier, @NotNull IntrinsicMeasureScope instrinsicMeasureScope, @NotNull IntrinsicMeasurable intrinsicMeasurable, int i10) {
        t.j(modifier, "modifier");
        t.j(instrinsicMeasureScope, "instrinsicMeasureScope");
        t.j(intrinsicMeasurable, "intrinsicMeasurable");
        return modifier.N0(new IntrinsicsMeasureScope(instrinsicMeasureScope, instrinsicMeasureScope.getLayoutDirection()), new DefaultIntrinsicMeasurable(intrinsicMeasurable, IntrinsicMinMax.Min, IntrinsicWidthHeight.Height), ConstraintsKt.b(0, i10, 0, 0, 13, null)).getHeight();
    }

    public final int d(@NotNull LayoutModifier modifier, @NotNull IntrinsicMeasureScope instrinsicMeasureScope, @NotNull IntrinsicMeasurable intrinsicMeasurable, int i10) {
        t.j(modifier, "modifier");
        t.j(instrinsicMeasureScope, "instrinsicMeasureScope");
        t.j(intrinsicMeasurable, "intrinsicMeasurable");
        return modifier.N0(new IntrinsicsMeasureScope(instrinsicMeasureScope, instrinsicMeasureScope.getLayoutDirection()), new DefaultIntrinsicMeasurable(intrinsicMeasurable, IntrinsicMinMax.Min, IntrinsicWidthHeight.Width), ConstraintsKt.b(0, 0, 0, i10, 7, null)).getWidth();
    }

    private MeasuringIntrinsics() {
    }
}
