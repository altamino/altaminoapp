package androidx.compose.material;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.BoxWithConstraintsScope;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.a;
import e8.l;
import e8.p;
import e8.q;
import java.util.Map;
import kotlin.collections.s0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.a0;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class DrawerKt$ModalDrawer$1 extends v implements q<BoxWithConstraintsScope, Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ p<Composer, Integer, l0> $content;
    final /* synthetic */ long $drawerBackgroundColor;
    final /* synthetic */ q<ColumnScope, Composer, Integer, l0> $drawerContent;
    final /* synthetic */ long $drawerContentColor;
    final /* synthetic */ float $drawerElevation;
    final /* synthetic */ Shape $drawerShape;
    final /* synthetic */ DrawerState $drawerState;
    final /* synthetic */ boolean $gesturesEnabled;
    final /* synthetic */ o0 $scope;
    final /* synthetic */ long $scrimColor;

    /* JADX INFO: renamed from: androidx.compose.material.DrawerKt$ModalDrawer$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements p<DrawerValue, DrawerValue, ThresholdConfig> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(2);
        }

        @Override // e8.p
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ThresholdConfig invoke(@NotNull DrawerValue drawerValue, @NotNull DrawerValue drawerValue2) {
            t.j(drawerValue, "<anonymous parameter 0>");
            t.j(drawerValue2, "<anonymous parameter 1>");
            return new FractionalThreshold(0.5f);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    DrawerKt$ModalDrawer$1(DrawerState drawerState, boolean z6, int i10, long j6, Shape shape, long j10, long j11, float f, p<? super Composer, ? super Integer, l0> pVar, o0 o0Var, q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar) {
        super(3);
        this.$drawerState = drawerState;
        this.$gesturesEnabled = z6;
        this.$$dirty = i10;
        this.$scrimColor = j6;
        this.$drawerShape = shape;
        this.$drawerBackgroundColor = j10;
        this.$drawerContentColor = j11;
        this.$drawerElevation = f;
        this.$content = pVar;
        this.$scope = o0Var;
        this.$drawerContent = qVar;
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
        long jB = BoxWithConstraints.b();
        if (!Constraints.j(jB)) {
            throw new IllegalStateException("Drawer shouldn't have infinite width");
        }
        float f = -Constraints.n(jB);
        Map mapL = s0.l(a0.a(Float.valueOf(f), DrawerValue.Closed), a0.a(Float.valueOf(0.0f), DrawerValue.Open));
        boolean z6 = composer.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl;
        Modifier.Companion companion = Modifier.Companion;
        Modifier modifierH = SwipeableKt.h(companion, this.$drawerState.e(), mapL, Orientation.Horizontal, (288 & 8) != 0 ? true : this.$gesturesEnabled, (288 & 16) != 0 ? false : z6, (288 & 32) != 0 ? null : null, (288 & 64) != 0 ? SwipeableKt$swipeable$1.INSTANCE : AnonymousClass1.INSTANCE, (288 & 128) != 0 ? SwipeableDefaults.d(SwipeableDefaults.INSTANCE, mapL.keySet(), 0.0f, 0.0f, 6, null) : null, (288 & 256) != 0 ? SwipeableDefaults.INSTANCE.b() : DrawerKt.DrawerVelocityThreshold);
        DrawerState drawerState = this.$drawerState;
        int i12 = this.$$dirty;
        long j6 = this.$scrimColor;
        Shape shape = this.$drawerShape;
        long j10 = this.$drawerBackgroundColor;
        long j11 = this.$drawerContentColor;
        float f6 = this.$drawerElevation;
        p<Composer, Integer, l0> pVar = this.$content;
        boolean z10 = this.$gesturesEnabled;
        o0 o0Var = this.$scope;
        q<ColumnScope, Composer, Integer, l0> qVar = this.$drawerContent;
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
        composer.G(-1263168067);
        composer.G(733328855);
        MeasurePolicy measurePolicyH2 = BoxKt.h(companion2.o(), false, composer, 0);
        composer.G(-1323940314);
        Density density2 = (Density) composer.x(CompositionLocalsKt.e());
        LayoutDirection layoutDirection2 = (LayoutDirection) composer.x(CompositionLocalsKt.j());
        ViewConfiguration viewConfiguration2 = (ViewConfiguration) composer.x(CompositionLocalsKt.n());
        a<ComposeUiNode> aVarA2 = companion3.a();
        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC2 = LayoutKt.c(companion);
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
        Updater.e(composerA2, measurePolicyH2, companion3.d());
        Updater.e(composerA2, density2, companion3.b());
        Updater.e(composerA2, layoutDirection2, companion3.c());
        Updater.e(composerA2, viewConfiguration2, companion3.f());
        composer.o();
        qVarC2.invoke(SkippableUpdater.a(SkippableUpdater.b(composer)), composer, 0);
        composer.G(2058660585);
        composer.G(-2137368960);
        composer.G(32495683);
        pVar.invoke(composer, Integer.valueOf((i12 >> 27) & 14));
        composer.Q();
        composer.Q();
        composer.Q();
        composer.d();
        composer.Q();
        composer.Q();
        boolean zF = drawerState.f();
        DrawerKt$ModalDrawer$1$2$2 drawerKt$ModalDrawer$1$2$2 = new DrawerKt$ModalDrawer$1$2$2(z10, drawerState, o0Var);
        Object objValueOf = Float.valueOf(f);
        Object objValueOf2 = Float.valueOf(0.0f);
        composer.G(1618982084);
        boolean zK = composer.k(objValueOf) | composer.k(objValueOf2) | composer.k(drawerState);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new DrawerKt$ModalDrawer$1$2$3$1(f, 0.0f, drawerState);
            composer.z(objH);
        }
        composer.Q();
        DrawerKt.e(zF, drawerKt$ModalDrawer$1$2$2, (a) objH, j6, composer, (i12 >> 15) & 7168);
        String strA = Strings_androidKt.a(Strings.Companion.e(), composer, 6);
        Density density3 = (Density) composer.x(CompositionLocalsKt.e());
        Modifier modifierB = SizeKt.B(companion, density3.j(Constraints.p(jB)), density3.j(Constraints.o(jB)), density3.j(Constraints.n(jB)), density3.j(Constraints.m(jB)));
        composer.G(1157296644);
        boolean zK2 = composer.k(drawerState);
        Object objH2 = composer.H();
        if (zK2 || objH2 == Composer.Companion.a()) {
            objH2 = new DrawerKt$ModalDrawer$1$2$5$1(drawerState);
            composer.z(objH2);
        }
        composer.Q();
        int i13 = i12 >> 12;
        SurfaceKt.b(SemanticsModifierKt.c(PaddingKt.m(OffsetKt.a(modifierB, (l) objH2), 0.0f, 0.0f, DrawerKt.EndDrawerPadding, 0.0f, 11, null), false, new DrawerKt$ModalDrawer$1$2$6(strA, drawerState, o0Var), 1, null), shape, j10, j11, null, f6, ComposableLambdaKt.b(composer, -1941234439, true, new DrawerKt$ModalDrawer$1$2$7(qVar, i12)), composer, ((i12 >> 9) & 112) | 1572864 | (i13 & 896) | (i13 & 7168) | (458752 & i12), 16);
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
