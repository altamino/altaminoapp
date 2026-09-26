package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import e8.l;
import e8.p;
import e8.q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.w;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class TabRowKt$TabRow$2$1$1 extends v implements p<SubcomposeMeasureScope, Constraints, MeasureResult> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ p<Composer, Integer, l0> $divider;
    final /* synthetic */ q<List<TabPosition>, Composer, Integer, l0> $indicator;
    final /* synthetic */ p<Composer, Integer, l0> $tabs;

    /* JADX INFO: renamed from: androidx.compose.material.TabRowKt$TabRow$2$1$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<Placeable.PlacementScope, l0> {
        final /* synthetic */ int $$dirty;
        final /* synthetic */ long $constraints;
        final /* synthetic */ p<Composer, Integer, l0> $divider;
        final /* synthetic */ q<List<TabPosition>, Composer, Integer, l0> $indicator;
        final /* synthetic */ List<Placeable> $tabPlaceables;
        final /* synthetic */ List<TabPosition> $tabPositions;
        final /* synthetic */ int $tabRowHeight;
        final /* synthetic */ int $tabRowWidth;
        final /* synthetic */ int $tabWidth;
        final /* synthetic */ SubcomposeMeasureScope $this_SubcomposeLayout;

        /* JADX INFO: renamed from: androidx.compose.material.TabRowKt$TabRow$2$1$1$1$3, reason: invalid class name */
        static final class AnonymousClass3 extends v implements p<Composer, Integer, l0> {
            final /* synthetic */ int $$dirty;
            final /* synthetic */ q<List<TabPosition>, Composer, Integer, l0> $indicator;
            final /* synthetic */ List<TabPosition> $tabPositions;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            AnonymousClass3(q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar, List<TabPosition> list, int i10) {
                super(2);
                this.$indicator = qVar;
                this.$tabPositions = list;
                this.$$dirty = i10;
            }

            @Composable
            public final void a(@Nullable Composer composer, int i10) {
                if ((i10 & 11) == 2 && composer.b()) {
                    composer.g();
                } else {
                    this.$indicator.invoke(this.$tabPositions, composer, Integer.valueOf(((this.$$dirty >> 9) & 112) | 8));
                }
            }

            @Override // e8.p
            public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
                a(composer, num.intValue());
                return l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(List<? extends Placeable> list, SubcomposeMeasureScope subcomposeMeasureScope, p<? super Composer, ? super Integer, l0> pVar, int i10, long j6, int i11, q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar, List<TabPosition> list2, int i12, int i13) {
            super(1);
            this.$tabPlaceables = list;
            this.$this_SubcomposeLayout = subcomposeMeasureScope;
            this.$divider = pVar;
            this.$tabWidth = i10;
            this.$constraints = j6;
            this.$tabRowHeight = i11;
            this.$indicator = qVar;
            this.$tabPositions = list2;
            this.$$dirty = i12;
            this.$tabRowWidth = i13;
        }

        public final void a(@NotNull Placeable.PlacementScope layout) {
            t.j(layout, "$this$layout");
            List<Placeable> list = this.$tabPlaceables;
            int i10 = this.$tabWidth;
            int i11 = 0;
            for (Object obj : list) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    kotlin.collections.v.w();
                }
                Placeable.PlacementScope.n(layout, (Placeable) obj, i11 * i10, 0, 0.0f, 4, null);
                i11 = i12;
            }
            List<Measurable> listV = this.$this_SubcomposeLayout.v(TabSlots.Divider, this.$divider);
            long j6 = this.$constraints;
            int i13 = this.$tabRowHeight;
            Iterator<T> it = listV.iterator();
            while (it.hasNext()) {
                Placeable placeableB0 = ((Measurable) it.next()).b0(Constraints.e(j6, 0, 0, 0, 0, 11, null));
                Placeable.PlacementScope.n(layout, placeableB0, 0, i13 - placeableB0.B0(), 0.0f, 4, null);
                i13 = i13;
                j6 = j6;
            }
            List<Measurable> listV2 = this.$this_SubcomposeLayout.v(TabSlots.Indicator, ComposableLambdaKt.c(-1341594997, true, new AnonymousClass3(this.$indicator, this.$tabPositions, this.$$dirty)));
            int i14 = this.$tabRowWidth;
            int i15 = this.$tabRowHeight;
            Iterator<T> it2 = listV2.iterator();
            while (it2.hasNext()) {
                Placeable.PlacementScope.n(layout, ((Measurable) it2.next()).b0(Constraints.Companion.c(i14, i15)), 0, 0, 0.0f, 4, null);
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
    TabRowKt$TabRow$2$1$1(p<? super Composer, ? super Integer, l0> pVar, p<? super Composer, ? super Integer, l0> pVar2, q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar, int i10) {
        super(2);
        this.$tabs = pVar;
        this.$divider = pVar2;
        this.$indicator = qVar;
        this.$$dirty = i10;
    }

    @NotNull
    public final MeasureResult a(@NotNull SubcomposeMeasureScope SubcomposeLayout, long j6) {
        Object next;
        t.j(SubcomposeLayout, "$this$SubcomposeLayout");
        int iN = Constraints.n(j6);
        List<Measurable> listV = SubcomposeLayout.v(TabSlots.Tabs, this.$tabs);
        int size = listV.size();
        int i10 = iN / size;
        List<Measurable> list = listV;
        ArrayList arrayList = new ArrayList(w.x(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((Measurable) it.next()).b0(Constraints.e(j6, i10, i10, 0, 0, 12, null)));
        }
        Iterator it2 = arrayList.iterator();
        if (it2.hasNext()) {
            next = it2.next();
            if (it2.hasNext()) {
                int iB0 = ((Placeable) next).B0();
                do {
                    Object next2 = it2.next();
                    int iB1 = ((Placeable) next2).B0();
                    if (iB0 < iB1) {
                        next = next2;
                        iB0 = iB1;
                    }
                } while (it2.hasNext());
            }
        } else {
            next = null;
        }
        Placeable placeable = (Placeable) next;
        int iB2 = placeable != null ? placeable.B0() : 0;
        ArrayList arrayList2 = new ArrayList(size);
        for (int i11 = 0; i11 < size; i11++) {
            arrayList2.add(new TabPosition(Dp.f(SubcomposeLayout.j(i10) * i11), SubcomposeLayout.j(i10), null));
        }
        return MeasureScope.CC.b(SubcomposeLayout, iN, iB2, null, new AnonymousClass1(arrayList, SubcomposeLayout, this.$divider, i10, j6, iB2, this.$indicator, arrayList2, this.$$dirty, iN), 4, null);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ MeasureResult invoke(SubcomposeMeasureScope subcomposeMeasureScope, Constraints constraints) {
        return a(subcomposeMeasureScope, constraints.t());
    }
}
