package androidx.compose.material;

import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.selection.SelectableGroupKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Constraints;
import e8.l;
import e8.p;
import e8.q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.w;
import kotlin.coroutines.h;
import kotlin.jvm.internal.n0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class TabRowKt$ScrollableTabRow$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ p<Composer, Integer, l0> $divider;
    final /* synthetic */ float $edgePadding;
    final /* synthetic */ q<List<TabPosition>, Composer, Integer, l0> $indicator;
    final /* synthetic */ int $selectedTabIndex;
    final /* synthetic */ p<Composer, Integer, l0> $tabs;

    /* JADX INFO: renamed from: androidx.compose.material.TabRowKt$ScrollableTabRow$2$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements p<SubcomposeMeasureScope, Constraints, MeasureResult> {
        final /* synthetic */ int $$dirty;
        final /* synthetic */ p<Composer, Integer, l0> $divider;
        final /* synthetic */ float $edgePadding;
        final /* synthetic */ q<List<TabPosition>, Composer, Integer, l0> $indicator;
        final /* synthetic */ ScrollableTabData $scrollableTabData;
        final /* synthetic */ int $selectedTabIndex;
        final /* synthetic */ p<Composer, Integer, l0> $tabs;

        /* JADX INFO: renamed from: androidx.compose.material.TabRowKt$ScrollableTabRow$2$1$2, reason: invalid class name */
        static final class AnonymousClass2 extends v implements l<Placeable.PlacementScope, l0> {
            final /* synthetic */ int $$dirty;
            final /* synthetic */ long $constraints;
            final /* synthetic */ p<Composer, Integer, l0> $divider;
            final /* synthetic */ q<List<TabPosition>, Composer, Integer, l0> $indicator;
            final /* synthetic */ n0 $layoutHeight;
            final /* synthetic */ n0 $layoutWidth;
            final /* synthetic */ int $padding;
            final /* synthetic */ ScrollableTabData $scrollableTabData;
            final /* synthetic */ int $selectedTabIndex;
            final /* synthetic */ List<Placeable> $tabPlaceables;
            final /* synthetic */ SubcomposeMeasureScope $this_SubcomposeLayout;

            /* JADX INFO: renamed from: androidx.compose.material.TabRowKt$ScrollableTabRow$2$1$2$3, reason: invalid class name */
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
                        this.$indicator.invoke(this.$tabPositions, composer, Integer.valueOf(((this.$$dirty >> 12) & 112) | 8));
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
            AnonymousClass2(int i10, List<? extends Placeable> list, SubcomposeMeasureScope subcomposeMeasureScope, p<? super Composer, ? super Integer, l0> pVar, ScrollableTabData scrollableTabData, int i11, long j6, n0 n0Var, n0 n0Var2, q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar, int i12) {
                super(1);
                this.$padding = i10;
                this.$tabPlaceables = list;
                this.$this_SubcomposeLayout = subcomposeMeasureScope;
                this.$divider = pVar;
                this.$scrollableTabData = scrollableTabData;
                this.$selectedTabIndex = i11;
                this.$constraints = j6;
                this.$layoutWidth = n0Var;
                this.$layoutHeight = n0Var2;
                this.$indicator = qVar;
                this.$$dirty = i12;
            }

            public final void a(@NotNull Placeable.PlacementScope layout) {
                t.j(layout, "$this$layout");
                ArrayList arrayList = new ArrayList();
                int i10 = this.$padding;
                List<Placeable> list = this.$tabPlaceables;
                SubcomposeMeasureScope subcomposeMeasureScope = this.$this_SubcomposeLayout;
                int iQ0 = i10;
                for (Placeable placeable : list) {
                    Placeable.PlacementScope.n(layout, placeable, iQ0, 0, 0.0f, 4, null);
                    arrayList.add(new TabPosition(subcomposeMeasureScope.j(iQ0), subcomposeMeasureScope.j(placeable.Q0()), null));
                    iQ0 += placeable.Q0();
                }
                List<Measurable> listV = this.$this_SubcomposeLayout.v(TabSlots.Divider, this.$divider);
                long j6 = this.$constraints;
                n0 n0Var = this.$layoutWidth;
                n0 n0Var2 = this.$layoutHeight;
                for (Measurable measurable : listV) {
                    int i11 = n0Var.element;
                    Placeable placeableB0 = measurable.b0(Constraints.e(j6, i11, i11, 0, 0, 8, null));
                    Placeable.PlacementScope.n(layout, placeableB0, 0, n0Var2.element - placeableB0.B0(), 0.0f, 4, null);
                    n0Var = n0Var;
                    n0Var2 = n0Var2;
                    j6 = j6;
                }
                List<Measurable> listV2 = this.$this_SubcomposeLayout.v(TabSlots.Indicator, ComposableLambdaKt.c(230769237, true, new AnonymousClass3(this.$indicator, arrayList, this.$$dirty)));
                n0 n0Var3 = this.$layoutWidth;
                n0 n0Var4 = this.$layoutHeight;
                Iterator<T> it = listV2.iterator();
                while (it.hasNext()) {
                    Placeable.PlacementScope.n(layout, ((Measurable) it.next()).b0(Constraints.Companion.c(n0Var3.element, n0Var4.element)), 0, 0, 0.0f, 4, null);
                }
                this.$scrollableTabData.c(this.$this_SubcomposeLayout, this.$padding, arrayList, this.$selectedTabIndex);
            }

            @Override // e8.l
            public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
                a(placementScope);
                return l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(float f, p<? super Composer, ? super Integer, l0> pVar, p<? super Composer, ? super Integer, l0> pVar2, ScrollableTabData scrollableTabData, int i10, q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar, int i11) {
            super(2);
            this.$edgePadding = f;
            this.$tabs = pVar;
            this.$divider = pVar2;
            this.$scrollableTabData = scrollableTabData;
            this.$selectedTabIndex = i10;
            this.$indicator = qVar;
            this.$$dirty = i11;
        }

        @NotNull
        public final MeasureResult a(@NotNull SubcomposeMeasureScope SubcomposeLayout, long j6) {
            t.j(SubcomposeLayout, "$this$SubcomposeLayout");
            int iJ0 = SubcomposeLayout.j0(TabRowKt.ScrollableTabRowMinimumTabWidth);
            int iJ1 = SubcomposeLayout.j0(this.$edgePadding);
            long jE = Constraints.e(j6, iJ0, 0, 0, 0, 14, null);
            List<Measurable> listV = SubcomposeLayout.v(TabSlots.Tabs, this.$tabs);
            ArrayList<Placeable> arrayList = new ArrayList(w.x(listV, 10));
            Iterator<T> it = listV.iterator();
            while (it.hasNext()) {
                arrayList.add(((Measurable) it.next()).b0(jE));
            }
            n0 n0Var = new n0();
            n0Var.element = iJ1 * 2;
            n0 n0Var2 = new n0();
            for (Placeable placeable : arrayList) {
                n0Var.element += placeable.Q0();
                n0Var2.element = Math.max(n0Var2.element, placeable.B0());
            }
            return MeasureScope.CC.b(SubcomposeLayout, n0Var.element, n0Var2.element, null, new AnonymousClass2(iJ1, arrayList, SubcomposeLayout, this.$divider, this.$scrollableTabData, this.$selectedTabIndex, j6, n0Var, n0Var2, this.$indicator, this.$$dirty), 4, null);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ MeasureResult invoke(SubcomposeMeasureScope subcomposeMeasureScope, Constraints constraints) {
            return a(subcomposeMeasureScope, constraints.t());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    TabRowKt$ScrollableTabRow$2(float f, p<? super Composer, ? super Integer, l0> pVar, p<? super Composer, ? super Integer, l0> pVar2, int i10, q<? super List<TabPosition>, ? super Composer, ? super Integer, l0> qVar, int i11) {
        super(2);
        this.$edgePadding = f;
        this.$tabs = pVar;
        this.$divider = pVar2;
        this.$selectedTabIndex = i10;
        this.$indicator = qVar;
        this.$$dirty = i11;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
            return;
        }
        ScrollState scrollStateC = ScrollKt.c(0, composer, 0, 1);
        composer.G(773894976);
        composer.G(-492369756);
        Object objH = composer.H();
        Composer.Companion companion = Composer.Companion;
        if (objH == companion.a()) {
            Object compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composer));
            composer.z(compositionScopedCoroutineScopeCanceller);
            objH = compositionScopedCoroutineScopeCanceller;
        }
        composer.Q();
        o0 o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
        composer.Q();
        composer.G(511388516);
        boolean zK = composer.k(scrollStateC) | composer.k(o0VarA);
        Object objH2 = composer.H();
        if (zK || objH2 == companion.a()) {
            objH2 = new ScrollableTabData(scrollStateC, o0VarA);
            composer.z(objH2);
        }
        composer.Q();
        SubcomposeLayoutKt.a(ClipKt.b(SelectableGroupKt.a(ScrollKt.b(SizeKt.H(SizeKt.n(Modifier.Companion, 0.0f, 1, null), Alignment.Companion.h(), false, 2, null), scrollStateC, false, null, false, 14, null))), new AnonymousClass1(this.$edgePadding, this.$tabs, this.$divider, (ScrollableTabData) objH2, this.$selectedTabIndex, this.$indicator, this.$$dirty), composer, 0, 0);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
