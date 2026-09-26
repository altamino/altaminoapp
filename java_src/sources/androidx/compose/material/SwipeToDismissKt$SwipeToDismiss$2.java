package androidx.compose.material;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.BoxWithConstraintsScope;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.a;
import e8.l;
import e8.p;
import e8.q;
import java.util.Map;
import java.util.Set;
import kotlin.collections.s0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.a0;
import w7.l0;
import w7.u;

/* JADX INFO: loaded from: classes4.dex */
final class SwipeToDismissKt$SwipeToDismiss$2 extends v implements q<BoxWithConstraintsScope, Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ q<RowScope, Composer, Integer, l0> $background;
    final /* synthetic */ Set<DismissDirection> $directions;
    final /* synthetic */ q<RowScope, Composer, Integer, l0> $dismissContent;
    final /* synthetic */ l<DismissDirection, ThresholdConfig> $dismissThresholds;
    final /* synthetic */ DismissState $state;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SwipeToDismissKt$SwipeToDismiss$2(Set<? extends DismissDirection> set, l<? super DismissDirection, ? extends ThresholdConfig> lVar, int i10, DismissState dismissState, q<? super RowScope, ? super Composer, ? super Integer, l0> qVar, q<? super RowScope, ? super Composer, ? super Integer, l0> qVar2) {
        super(3);
        this.$directions = set;
        this.$dismissThresholds = lVar;
        this.$$dirty = i10;
        this.$state = dismissState;
        this.$background = qVar;
        this.$dismissContent = qVar2;
    }

    @ComposableTarget
    @Composable
    public final void a(@NotNull BoxWithConstraintsScope BoxWithConstraints, @Nullable Composer composer, int i10) {
        int i11;
        t.j(BoxWithConstraints, "$this$BoxWithConstraints");
        if ((i10 & 14) == 0) {
            i11 = i10 | (composer.k(BoxWithConstraints) ? 4 : 2);
        } else {
            i11 = i10;
        }
        if ((i11 & 91) == 18 && composer.b()) {
            composer.g();
            return;
        }
        float fN = Constraints.n(BoxWithConstraints.b());
        boolean z6 = composer.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl;
        Float fValueOf = Float.valueOf(0.0f);
        DismissValue dismissValue = DismissValue.Default;
        Map mapN = s0.n(a0.a(fValueOf, dismissValue));
        Set<DismissDirection> set = this.$directions;
        DismissDirection dismissDirection = DismissDirection.StartToEnd;
        if (set.contains(dismissDirection)) {
            u uVarA = a0.a(Float.valueOf(fN), DismissValue.DismissedToEnd);
            mapN.put(uVarA.c(), uVarA.d());
        }
        Set<DismissDirection> set2 = this.$directions;
        DismissDirection dismissDirection2 = DismissDirection.EndToStart;
        if (set2.contains(dismissDirection2)) {
            u uVarA2 = a0.a(Float.valueOf(-fN), DismissValue.DismissedToStart);
            mapN.put(uVarA2.c(), uVarA2.d());
        }
        l<DismissDirection, ThresholdConfig> lVar = this.$dismissThresholds;
        composer.G(1157296644);
        boolean zK = composer.k(lVar);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new SwipeToDismissKt$SwipeToDismiss$2$thresholds$1$1(lVar);
            composer.z(objH);
        }
        composer.Q();
        p pVar = (p) objH;
        float f = this.$directions.contains(dismissDirection2) ? 10.0f : 20.0f;
        float f6 = this.$directions.contains(dismissDirection) ? 10.0f : 20.0f;
        Modifier.Companion companion = Modifier.Companion;
        Modifier modifierH = SwipeableKt.h(companion, this.$state, mapN, Orientation.Horizontal, (288 & 8) != 0 ? true : this.$state.p() == dismissValue, (288 & 16) != 0 ? false : z6, (288 & 32) != 0 ? null : null, (288 & 64) != 0 ? SwipeableKt$swipeable$1.INSTANCE : pVar, (288 & 128) != 0 ? SwipeableDefaults.d(SwipeableDefaults.INSTANCE, mapN.keySet(), 0.0f, 0.0f, 6, null) : new ResistanceConfig(fN, f, f6), (288 & 256) != 0 ? SwipeableDefaults.INSTANCE.b() : 0.0f);
        q<RowScope, Composer, Integer, l0> qVar = this.$background;
        int i12 = this.$$dirty;
        DismissState dismissState = this.$state;
        q<RowScope, Composer, Integer, l0> qVar2 = this.$dismissContent;
        composer.G(733328855);
        Alignment.Companion companion2 = Alignment.Companion;
        MeasurePolicy measurePolicyH = BoxKt.h(companion2.o(), false, composer, 0);
        composer.G(-1323940314);
        Density density = (Density) composer.x(CompositionLocalsKt.e());
        LayoutDirection layoutDirection = (LayoutDirection) composer.x(CompositionLocalsKt.j());
        ViewConfiguration viewConfiguration = (ViewConfiguration) composer.x(CompositionLocalsKt.n());
        ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
        a<ComposeUiNode> aVarA = companion3.a();
        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierH);
        if (!(composer.t() instanceof Applier)) {
            ComposablesKt.c();
        }
        composer.e();
        if (composer.r()) {
            composer.w(aVarA);
        } else {
            composer.c();
        }
        composer.L();
        Composer composerA = Updater.a(composer);
        Updater.e(composerA, measurePolicyH, companion3.d());
        Updater.e(composerA, density, companion3.b());
        Updater.e(composerA, layoutDirection, companion3.c());
        Updater.e(composerA, viewConfiguration, companion3.f());
        composer.o();
        qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composer)), composer, 0);
        composer.G(2058660585);
        composer.G(-2137368960);
        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
        composer.G(981834387);
        Modifier modifierC = boxScopeInstance.c(companion);
        int i13 = (i12 >> 3) & 7168;
        composer.G(693286680);
        Arrangement arrangement = Arrangement.INSTANCE;
        int i14 = i13 >> 3;
        MeasurePolicy measurePolicyA = RowKt.a(arrangement.e(), companion2.l(), composer, (i14 & 14) | (i14 & 112));
        composer.G(-1323940314);
        Density density2 = (Density) composer.x(CompositionLocalsKt.e());
        LayoutDirection layoutDirection2 = (LayoutDirection) composer.x(CompositionLocalsKt.j());
        ViewConfiguration viewConfiguration2 = (ViewConfiguration) composer.x(CompositionLocalsKt.n());
        a<ComposeUiNode> aVarA2 = companion3.a();
        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC2 = LayoutKt.c(modifierC);
        int i15 = ((((i13 << 3) & 112) << 9) & 7168) | 6;
        if (!(composer.t() instanceof Applier)) {
            ComposablesKt.c();
        }
        composer.e();
        if (composer.r()) {
            composer.w(aVarA2);
        } else {
            composer.c();
        }
        composer.L();
        Composer composerA2 = Updater.a(composer);
        Updater.e(composerA2, measurePolicyA, companion3.d());
        Updater.e(composerA2, density2, companion3.b());
        Updater.e(composerA2, layoutDirection2, companion3.c());
        Updater.e(composerA2, viewConfiguration2, companion3.f());
        composer.o();
        qVarC2.invoke(SkippableUpdater.a(SkippableUpdater.b(composer)), composer, Integer.valueOf((i15 >> 3) & 112));
        composer.G(2058660585);
        composer.G(-678309503);
        if (((i15 >> 9) & 10) == 2 && composer.b()) {
            composer.g();
        } else {
            qVar.invoke(RowScopeInstance.INSTANCE, composer, Integer.valueOf(((i13 >> 6) & 112) | 6));
        }
        composer.Q();
        composer.Q();
        composer.d();
        composer.Q();
        composer.Q();
        composer.G(1157296644);
        boolean zK2 = composer.k(dismissState);
        Object objH2 = composer.H();
        if (zK2 || objH2 == Composer.Companion.a()) {
            objH2 = new SwipeToDismissKt$SwipeToDismiss$2$1$1$1(dismissState);
            composer.z(objH2);
        }
        composer.Q();
        Modifier modifierA = OffsetKt.a(companion, (l) objH2);
        int i16 = (i12 >> 6) & 7168;
        composer.G(693286680);
        int i17 = i16 >> 3;
        MeasurePolicy measurePolicyA2 = RowKt.a(arrangement.e(), companion2.l(), composer, (i17 & 112) | (i17 & 14));
        composer.G(-1323940314);
        Density density3 = (Density) composer.x(CompositionLocalsKt.e());
        LayoutDirection layoutDirection3 = (LayoutDirection) composer.x(CompositionLocalsKt.j());
        ViewConfiguration viewConfiguration3 = (ViewConfiguration) composer.x(CompositionLocalsKt.n());
        a<ComposeUiNode> aVarA3 = companion3.a();
        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC3 = LayoutKt.c(modifierA);
        int i18 = ((((i16 << 3) & 112) << 9) & 7168) | 6;
        if (!(composer.t() instanceof Applier)) {
            ComposablesKt.c();
        }
        composer.e();
        if (composer.r()) {
            composer.w(aVarA3);
        } else {
            composer.c();
        }
        composer.L();
        Composer composerA3 = Updater.a(composer);
        Updater.e(composerA3, measurePolicyA2, companion3.d());
        Updater.e(composerA3, density3, companion3.b());
        Updater.e(composerA3, layoutDirection3, companion3.c());
        Updater.e(composerA3, viewConfiguration3, companion3.f());
        composer.o();
        qVarC3.invoke(SkippableUpdater.a(SkippableUpdater.b(composer)), composer, Integer.valueOf((i18 >> 3) & 112));
        composer.G(2058660585);
        composer.G(-678309503);
        if (((i18 >> 9) & 10) == 2 && composer.b()) {
            composer.g();
        } else {
            qVar2.invoke(RowScopeInstance.INSTANCE, composer, Integer.valueOf(((i16 >> 6) & 112) | 6));
        }
        composer.Q();
        composer.Q();
        composer.d();
        composer.Q();
        composer.Q();
        composer.Q();
        composer.Q();
        composer.Q();
        composer.d();
        composer.Q();
        composer.Q();
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(BoxWithConstraintsScope boxWithConstraintsScope, Composer composer, Integer num) {
        a(boxWithConstraintsScope, composer, num.intValue());
        return l0.INSTANCE;
    }
}
