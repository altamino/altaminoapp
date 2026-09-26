package androidx.compose.material;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Constraints;
import e8.l;
import e8.p;
import e8.r;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.d0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class BackdropScaffoldKt$BackdropStack$1$1 extends v implements p<SubcomposeMeasureScope, Constraints, MeasureResult> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ p<Composer, Integer, l0> $backLayer;
    final /* synthetic */ l<Constraints, Constraints> $calculateBackLayerConstraints;
    final /* synthetic */ r<Constraints, Float, Composer, Integer, l0> $frontLayer;

    /* JADX INFO: renamed from: androidx.compose.material.BackdropScaffoldKt$BackdropStack$1$1$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements l<Placeable.PlacementScope, l0> {
        final /* synthetic */ Placeable $backLayerPlaceable;
        final /* synthetic */ List<Placeable> $placeables;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(Placeable placeable, List<? extends Placeable> list) {
            super(1);
            this.$backLayerPlaceable = placeable;
            this.$placeables = list;
        }

        public final void a(@NotNull Placeable.PlacementScope layout) {
            t.j(layout, "$this$layout");
            Placeable.PlacementScope.n(layout, this.$backLayerPlaceable, 0, 0, 0.0f, 4, null);
            List<Placeable> list = this.$placeables;
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                Placeable.PlacementScope.n(layout, list.get(i10), 0, 0, 0.0f, 4, null);
            }
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
            a(placementScope);
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BackdropScaffoldKt$BackdropStack$1$1(p<? super Composer, ? super Integer, l0> pVar, l<? super Constraints, Constraints> lVar, r<? super Constraints, ? super Float, ? super Composer, ? super Integer, l0> rVar, int i10) {
        super(2);
        this.$backLayer = pVar;
        this.$calculateBackLayerConstraints = lVar;
        this.$frontLayer = rVar;
        this.$$dirty = i10;
    }

    @NotNull
    public final MeasureResult a(@NotNull SubcomposeMeasureScope SubcomposeLayout, long j6) {
        t.j(SubcomposeLayout, "$this$SubcomposeLayout");
        Placeable placeableB0 = ((Measurable) d0.j0(SubcomposeLayout.v(BackdropLayers.Back, this.$backLayer))).b0(this.$calculateBackLayerConstraints.invoke(Constraints.b(j6)).t());
        List<Measurable> listV = SubcomposeLayout.v(BackdropLayers.Front, ComposableLambdaKt.c(-1222642649, true, new BackdropScaffoldKt$BackdropStack$1$1$placeables$1(this.$frontLayer, j6, placeableB0.B0(), this.$$dirty)));
        ArrayList arrayList = new ArrayList(listV.size());
        int size = listV.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(listV.get(i10).b0(j6));
        }
        int iMax = Math.max(Constraints.p(j6), placeableB0.Q0());
        int iMax2 = Math.max(Constraints.o(j6), placeableB0.B0());
        int size2 = arrayList.size();
        int iMax3 = iMax2;
        int iMax4 = iMax;
        for (int i11 = 0; i11 < size2; i11++) {
            Placeable placeable = (Placeable) arrayList.get(i11);
            iMax4 = Math.max(iMax4, placeable.Q0());
            iMax3 = Math.max(iMax3, placeable.B0());
        }
        return MeasureScope.CC.b(SubcomposeLayout, iMax4, iMax3, null, new AnonymousClass2(placeableB0, arrayList), 4, null);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ MeasureResult invoke(SubcomposeMeasureScope subcomposeMeasureScope, Constraints constraints) {
        return a(subcomposeMeasureScope, constraints.t());
    }
}
