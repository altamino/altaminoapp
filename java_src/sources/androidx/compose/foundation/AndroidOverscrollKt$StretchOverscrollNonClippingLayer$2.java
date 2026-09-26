package androidx.compose.foundation;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import e8.l;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class AndroidOverscrollKt$StretchOverscrollNonClippingLayer$2 extends v implements q<MeasureScope, Measurable, Constraints, MeasureResult> {
    public static final AndroidOverscrollKt$StretchOverscrollNonClippingLayer$2 INSTANCE = new AndroidOverscrollKt$StretchOverscrollNonClippingLayer$2();

    /* JADX INFO: renamed from: androidx.compose.foundation.AndroidOverscrollKt$StretchOverscrollNonClippingLayer$2$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<Placeable.PlacementScope, l0> {
        final /* synthetic */ int $extraSizePx;
        final /* synthetic */ Placeable $placeable;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Placeable placeable, int i10) {
            super(1);
            this.$placeable = placeable;
            this.$extraSizePx = i10;
        }

        public final void a(@NotNull Placeable.PlacementScope layout) {
            t.j(layout, "$this$layout");
            Placeable placeable = this.$placeable;
            int i10 = this.$extraSizePx;
            Placeable.PlacementScope.j(layout, placeable, i10 / 2, i10 / 2, 0.0f, 4, null);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
            a(placementScope);
            return l0.INSTANCE;
        }
    }

    AndroidOverscrollKt$StretchOverscrollNonClippingLayer$2() {
        super(3);
    }

    @NotNull
    public final MeasureResult a(@NotNull MeasureScope layout, @NotNull Measurable measurable, long j6) {
        t.j(layout, "$this$layout");
        t.j(measurable, "measurable");
        Placeable placeableB0 = measurable.b0(j6);
        int iJ0 = layout.j0(Dp.f(ClipScrollableContainerKt.b() * 2));
        return MeasureScope.CC.b(layout, placeableB0.Q0() + iJ0, placeableB0.B0() + iJ0, null, new AnonymousClass1(placeableB0, iJ0), 4, null);
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ MeasureResult invoke(MeasureScope measureScope, Measurable measurable, Constraints constraints) {
        return a(measureScope, measurable, constraints.t());
    }
}
