package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.node.LayoutNodeWrapper;
import androidx.compose.ui.unit.IntSize;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class LayoutCoordinatesKt {
    @NotNull
    public static final Rect a(@NotNull LayoutCoordinates layoutCoordinates) {
        Rect rectA;
        t.j(layoutCoordinates, "<this>");
        LayoutCoordinates layoutCoordinatesB = layoutCoordinates.B();
        return (layoutCoordinatesB == null || (rectA = a.a(layoutCoordinatesB, layoutCoordinates, false, 2, null)) == null) ? new Rect(0.0f, 0.0f, IntSize.g(layoutCoordinates.a()), IntSize.f(layoutCoordinates.a())) : rectA;
    }

    @NotNull
    public static final Rect b(@NotNull LayoutCoordinates layoutCoordinates) {
        t.j(layoutCoordinates, "<this>");
        return a.a(d(layoutCoordinates), layoutCoordinates, false, 2, null);
    }

    @NotNull
    public static final Rect c(@NotNull LayoutCoordinates layoutCoordinates) {
        t.j(layoutCoordinates, "<this>");
        LayoutCoordinates layoutCoordinatesD = d(layoutCoordinates);
        Rect rectB = b(layoutCoordinates);
        long jM = layoutCoordinatesD.m(OffsetKt.a(rectB.j(), rectB.m()));
        long jM2 = layoutCoordinatesD.m(OffsetKt.a(rectB.k(), rectB.m()));
        long jM3 = layoutCoordinatesD.m(OffsetKt.a(rectB.k(), rectB.e()));
        long jM4 = layoutCoordinatesD.m(OffsetKt.a(rectB.j(), rectB.e()));
        return new Rect(y7.d.h(Offset.m(jM), Offset.m(jM2), Offset.m(jM4), Offset.m(jM3)), y7.d.h(Offset.n(jM), Offset.n(jM2), Offset.n(jM4), Offset.n(jM3)), y7.d.g(Offset.m(jM), Offset.m(jM2), Offset.m(jM4), Offset.m(jM3)), y7.d.g(Offset.n(jM), Offset.n(jM2), Offset.n(jM4), Offset.n(jM3)));
    }

    @NotNull
    public static final LayoutCoordinates d(@NotNull LayoutCoordinates layoutCoordinates) {
        LayoutCoordinates layoutCoordinates2;
        t.j(layoutCoordinates, "<this>");
        LayoutCoordinates layoutCoordinatesB = layoutCoordinates.B();
        while (true) {
            LayoutCoordinates layoutCoordinates3 = layoutCoordinatesB;
            layoutCoordinates2 = layoutCoordinates;
            layoutCoordinates = layoutCoordinates3;
            if (layoutCoordinates == null) {
                break;
            }
            layoutCoordinatesB = layoutCoordinates.B();
        }
        LayoutNodeWrapper layoutNodeWrapper = layoutCoordinates2 instanceof LayoutNodeWrapper ? (LayoutNodeWrapper) layoutCoordinates2 : null;
        if (layoutNodeWrapper == null) {
            return layoutCoordinates2;
        }
        LayoutNodeWrapper layoutNodeWrapperG1 = layoutNodeWrapper.G1();
        while (true) {
            LayoutNodeWrapper layoutNodeWrapper2 = layoutNodeWrapperG1;
            LayoutNodeWrapper layoutNodeWrapper3 = layoutNodeWrapper;
            layoutNodeWrapper = layoutNodeWrapper2;
            if (layoutNodeWrapper == null) {
                return layoutNodeWrapper3;
            }
            layoutNodeWrapperG1 = layoutNodeWrapper.G1();
        }
    }

    public static final long e(@NotNull LayoutCoordinates layoutCoordinates) {
        t.j(layoutCoordinates, "<this>");
        return layoutCoordinates.K(Offset.Companion.c());
    }

    public static final long f(@NotNull LayoutCoordinates layoutCoordinates) {
        t.j(layoutCoordinates, "<this>");
        return layoutCoordinates.m(Offset.Companion.c());
    }
}
