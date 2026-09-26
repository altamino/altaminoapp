package androidx.compose.ui.layout;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import j8.o;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
@StabilityInferred
public abstract class Placeable implements Measured {
    public static final int $stable = 8;
    private int height;
    private long measuredSize = IntSizeKt.a(0, 0);
    private long measurementConstraints = PlaceableKt.DefaultConstraints;
    private int width;

    @StabilityInferred
    public static abstract class PlacementScope {
        public static final int $stable = 0;

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        private static LayoutDirection parentLayoutDirection = LayoutDirection.Ltr;
        private static int parentWidth;

        public static final class Companion extends PlacementScope {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private Companion() {
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.compose.ui.layout.Placeable.PlacementScope
            @NotNull
            public LayoutDirection g() {
                return PlacementScope.parentLayoutDirection;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.compose.ui.layout.Placeable.PlacementScope
            public int h() {
                return PlacementScope.parentWidth;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @NotNull
        public abstract LayoutDirection g();

        /* JADX INFO: Access modifiers changed from: protected */
        public abstract int h();

        public static /* synthetic */ void j(PlacementScope placementScope, Placeable placeable, int i10, int i11, float f, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: place");
            }
            if ((i12 & 4) != 0) {
                f = 0.0f;
            }
            placementScope.i(placeable, i10, i11, f);
        }

        public static /* synthetic */ void l(PlacementScope placementScope, Placeable placeable, long j6, float f, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: place-70tqf50");
            }
            if ((i10 & 2) != 0) {
                f = 0.0f;
            }
            placementScope.k(placeable, j6, f);
        }

        public static /* synthetic */ void n(PlacementScope placementScope, Placeable placeable, int i10, int i11, float f, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: placeRelative");
            }
            if ((i12 & 4) != 0) {
                f = 0.0f;
            }
            placementScope.m(placeable, i10, i11, f);
        }

        public static /* synthetic */ void p(PlacementScope placementScope, Placeable placeable, long j6, float f, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: placeRelative-70tqf50");
            }
            if ((i10 & 2) != 0) {
                f = 0.0f;
            }
            placementScope.o(placeable, j6, f);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void r(PlacementScope placementScope, Placeable placeable, int i10, int i11, float f, l lVar, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: placeRelativeWithLayer");
            }
            if ((i12 & 4) != 0) {
                f = 0.0f;
            }
            float f6 = f;
            if ((i12 & 8) != 0) {
                lVar = PlaceableKt.DefaultLayerBlock;
            }
            placementScope.q(placeable, i10, i11, f6, lVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void t(PlacementScope placementScope, Placeable placeable, long j6, float f, l lVar, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: placeRelativeWithLayer-aW-9-wM");
            }
            if ((i10 & 2) != 0) {
                f = 0.0f;
            }
            float f6 = f;
            if ((i10 & 4) != 0) {
                lVar = PlaceableKt.DefaultLayerBlock;
            }
            placementScope.s(placeable, j6, f6, lVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void v(PlacementScope placementScope, Placeable placeable, int i10, int i11, float f, l lVar, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: placeWithLayer");
            }
            if ((i12 & 4) != 0) {
                f = 0.0f;
            }
            float f6 = f;
            if ((i12 & 8) != 0) {
                lVar = PlaceableKt.DefaultLayerBlock;
            }
            placementScope.u(placeable, i10, i11, f6, lVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ void x(PlacementScope placementScope, Placeable placeable, long j6, float f, l lVar, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: placeWithLayer-aW-9-wM");
            }
            if ((i10 & 2) != 0) {
                f = 0.0f;
            }
            float f6 = f;
            if ((i10 & 4) != 0) {
                lVar = PlaceableKt.DefaultLayerBlock;
            }
            placementScope.w(placeable, j6, f6, lVar);
        }

        public final void i(@NotNull Placeable placeable, int i10, int i11, float f) {
            t.j(placeable, "<this>");
            long jA = IntOffsetKt.a(i10, i11);
            long jZ0 = placeable.z0();
            placeable.R0(IntOffsetKt.a(IntOffset.j(jA) + IntOffset.j(jZ0), IntOffset.k(jA) + IntOffset.k(jZ0)), f, null);
        }

        public final void k(@NotNull Placeable place, long j6, float f) {
            t.j(place, "$this$place");
            long jZ0 = place.z0();
            place.R0(IntOffsetKt.a(IntOffset.j(j6) + IntOffset.j(jZ0), IntOffset.k(j6) + IntOffset.k(jZ0)), f, null);
        }

        public final void m(@NotNull Placeable placeable, int i10, int i11, float f) {
            t.j(placeable, "<this>");
            long jA = IntOffsetKt.a(i10, i11);
            if (g() == LayoutDirection.Ltr || h() == 0) {
                long jZ0 = placeable.z0();
                placeable.R0(IntOffsetKt.a(IntOffset.j(jA) + IntOffset.j(jZ0), IntOffset.k(jA) + IntOffset.k(jZ0)), f, null);
            } else {
                long jA2 = IntOffsetKt.a((h() - IntSize.g(placeable.measuredSize)) - IntOffset.j(jA), IntOffset.k(jA));
                long jZ1 = placeable.z0();
                placeable.R0(IntOffsetKt.a(IntOffset.j(jA2) + IntOffset.j(jZ1), IntOffset.k(jA2) + IntOffset.k(jZ1)), f, null);
            }
        }

        public final void o(@NotNull Placeable placeRelative, long j6, float f) {
            t.j(placeRelative, "$this$placeRelative");
            if (g() == LayoutDirection.Ltr || h() == 0) {
                long jZ0 = placeRelative.z0();
                placeRelative.R0(IntOffsetKt.a(IntOffset.j(j6) + IntOffset.j(jZ0), IntOffset.k(j6) + IntOffset.k(jZ0)), f, null);
            } else {
                long jA = IntOffsetKt.a((h() - IntSize.g(placeRelative.measuredSize)) - IntOffset.j(j6), IntOffset.k(j6));
                long jZ1 = placeRelative.z0();
                placeRelative.R0(IntOffsetKt.a(IntOffset.j(jA) + IntOffset.j(jZ1), IntOffset.k(jA) + IntOffset.k(jZ1)), f, null);
            }
        }

        public final void q(@NotNull Placeable placeable, int i10, int i11, float f, @NotNull l<? super GraphicsLayerScope, l0> layerBlock) {
            t.j(placeable, "<this>");
            t.j(layerBlock, "layerBlock");
            long jA = IntOffsetKt.a(i10, i11);
            if (g() == LayoutDirection.Ltr || h() == 0) {
                long jZ0 = placeable.z0();
                placeable.R0(IntOffsetKt.a(IntOffset.j(jA) + IntOffset.j(jZ0), IntOffset.k(jA) + IntOffset.k(jZ0)), f, layerBlock);
            } else {
                long jA2 = IntOffsetKt.a((h() - IntSize.g(placeable.measuredSize)) - IntOffset.j(jA), IntOffset.k(jA));
                long jZ1 = placeable.z0();
                placeable.R0(IntOffsetKt.a(IntOffset.j(jA2) + IntOffset.j(jZ1), IntOffset.k(jA2) + IntOffset.k(jZ1)), f, layerBlock);
            }
        }

        public final void s(@NotNull Placeable placeRelativeWithLayer, long j6, float f, @NotNull l<? super GraphicsLayerScope, l0> layerBlock) {
            t.j(placeRelativeWithLayer, "$this$placeRelativeWithLayer");
            t.j(layerBlock, "layerBlock");
            if (g() == LayoutDirection.Ltr || h() == 0) {
                long jZ0 = placeRelativeWithLayer.z0();
                placeRelativeWithLayer.R0(IntOffsetKt.a(IntOffset.j(j6) + IntOffset.j(jZ0), IntOffset.k(j6) + IntOffset.k(jZ0)), f, layerBlock);
            } else {
                long jA = IntOffsetKt.a((h() - IntSize.g(placeRelativeWithLayer.measuredSize)) - IntOffset.j(j6), IntOffset.k(j6));
                long jZ1 = placeRelativeWithLayer.z0();
                placeRelativeWithLayer.R0(IntOffsetKt.a(IntOffset.j(jA) + IntOffset.j(jZ1), IntOffset.k(jA) + IntOffset.k(jZ1)), f, layerBlock);
            }
        }

        public final void u(@NotNull Placeable placeable, int i10, int i11, float f, @NotNull l<? super GraphicsLayerScope, l0> layerBlock) {
            t.j(placeable, "<this>");
            t.j(layerBlock, "layerBlock");
            long jA = IntOffsetKt.a(i10, i11);
            long jZ0 = placeable.z0();
            placeable.R0(IntOffsetKt.a(IntOffset.j(jA) + IntOffset.j(jZ0), IntOffset.k(jA) + IntOffset.k(jZ0)), f, layerBlock);
        }

        public final void w(@NotNull Placeable placeWithLayer, long j6, float f, @NotNull l<? super GraphicsLayerScope, l0> layerBlock) {
            t.j(placeWithLayer, "$this$placeWithLayer");
            t.j(layerBlock, "layerBlock");
            long jZ0 = placeWithLayer.z0();
            placeWithLayer.R0(IntOffsetKt.a(IntOffset.j(j6) + IntOffset.j(jZ0), IntOffset.k(j6) + IntOffset.k(jZ0)), f, layerBlock);
        }
    }

    public final int B0() {
        return this.height;
    }

    protected final long F0() {
        return this.measuredSize;
    }

    protected final long N0() {
        return this.measurementConstraints;
    }

    public final int Q0() {
        return this.width;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void R0(long j6, float f, @Nullable l<? super GraphicsLayerScope, l0> lVar);

    public /* synthetic */ Object e() {
        return d.a(this);
    }

    private final void S0() {
        this.width = o.n(IntSize.g(this.measuredSize), Constraints.p(this.measurementConstraints), Constraints.n(this.measurementConstraints));
        this.height = o.n(IntSize.f(this.measuredSize), Constraints.o(this.measurementConstraints), Constraints.m(this.measurementConstraints));
    }

    public int C0() {
        return IntSize.f(this.measuredSize);
    }

    public int M0() {
        return IntSize.g(this.measuredSize);
    }

    protected final void T0(long j6) {
        if (IntSize.e(this.measuredSize, j6)) {
            return;
        }
        this.measuredSize = j6;
        S0();
    }

    protected final void U0(long j6) {
        if (Constraints.g(this.measurementConstraints, j6)) {
            return;
        }
        this.measurementConstraints = j6;
        S0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long z0() {
        return IntOffsetKt.a((this.width - IntSize.g(this.measuredSize)) / 2, (this.height - IntSize.f(this.measuredSize)) / 2);
    }
}
