package androidx.compose.material;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.BoxWithConstraintsScope;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
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
final class DrawerKt$BottomDrawer$1 extends v implements q<BoxWithConstraintsScope, Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ p<Composer, Integer, l0> $content;
    final /* synthetic */ long $drawerBackgroundColor;
    final /* synthetic */ q<ColumnScope, Composer, Integer, l0> $drawerContent;
    final /* synthetic */ long $drawerContentColor;
    final /* synthetic */ float $drawerElevation;
    final /* synthetic */ Shape $drawerShape;
    final /* synthetic */ BottomDrawerState $drawerState;
    final /* synthetic */ boolean $gesturesEnabled;
    final /* synthetic */ o0 $scope;
    final /* synthetic */ long $scrimColor;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    DrawerKt$BottomDrawer$1(boolean z6, BottomDrawerState bottomDrawerState, p<? super Composer, ? super Integer, l0> pVar, int i10, long j6, Shape shape, long j10, long j11, float f, o0 o0Var, q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar) {
        super(3);
        this.$gesturesEnabled = z6;
        this.$drawerState = bottomDrawerState;
        this.$content = pVar;
        this.$$dirty = i10;
        this.$scrimColor = j6;
        this.$drawerShape = shape;
        this.$drawerBackgroundColor = j10;
        this.$drawerContentColor = j11;
        this.$drawerElevation = f;
        this.$scope = o0Var;
        this.$drawerContent = qVar;
    }

    @ComposableTarget
    @Composable
    public final void b(@NotNull BoxWithConstraintsScope BoxWithConstraints, @Nullable Composer composer, int i10) {
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
        float fM = Constraints.m(BoxWithConstraints.b());
        Object objValueOf = Float.valueOf(fM);
        composer.G(1157296644);
        boolean zK = composer.k(objValueOf);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = SnapshotStateKt__SnapshotStateKt.e(Float.valueOf(fM), null, 2, null);
            composer.z(objH);
        }
        composer.Q();
        MutableState mutableState = (MutableState) objH;
        boolean z6 = Constraints.n(BoxWithConstraints.b()) > Constraints.m(BoxWithConstraints.b());
        float f = 0.5f * fM;
        float fMax = Math.max(0.0f, fM - c(mutableState));
        Map mapL = (c(mutableState) < f || z6) ? s0.l(a0.a(Float.valueOf(fM), BottomDrawerValue.Closed), a0.a(Float.valueOf(fMax), BottomDrawerValue.Expanded)) : s0.l(a0.a(Float.valueOf(fM), BottomDrawerValue.Closed), a0.a(Float.valueOf(f), BottomDrawerValue.Open), a0.a(Float.valueOf(fMax), BottomDrawerValue.Expanded));
        Density density = (Density) composer.x(CompositionLocalsKt.e());
        Modifier.Companion companion = Modifier.Companion;
        Modifier modifierC = SizeKt.C(companion, 0.0f, 0.0f, density.j(Constraints.n(BoxWithConstraints.b())), density.j(Constraints.m(BoxWithConstraints.b())), 3, null);
        Modifier modifierH = SwipeableKt.h(companion.B(this.$gesturesEnabled ? NestedScrollModifierKt.b(companion, this.$drawerState.K(), null, 2, null) : companion), this.$drawerState, mapL, Orientation.Vertical, (288 & 8) != 0 ? true : this.$gesturesEnabled, (288 & 16) != 0 ? false : false, (288 & 32) != 0 ? null : null, (288 & 64) != 0 ? SwipeableKt$swipeable$1.INSTANCE : null, (288 & 128) != 0 ? SwipeableDefaults.d(SwipeableDefaults.INSTANCE, mapL.keySet(), 0.0f, 0.0f, 6, null) : null, (288 & 256) != 0 ? SwipeableDefaults.INSTANCE.b() : 0.0f);
        p<Composer, Integer, l0> pVar = this.$content;
        int i12 = this.$$dirty;
        long j6 = this.$scrimColor;
        BottomDrawerState bottomDrawerState = this.$drawerState;
        Shape shape = this.$drawerShape;
        long j10 = this.$drawerBackgroundColor;
        long j11 = this.$drawerContentColor;
        float f6 = this.$drawerElevation;
        boolean z10 = this.$gesturesEnabled;
        o0 o0Var = this.$scope;
        q<ColumnScope, Composer, Integer, l0> qVar = this.$drawerContent;
        composer.G(733328855);
        MeasurePolicy measurePolicyH = BoxKt.h(Alignment.Companion.o(), false, composer, 0);
        composer.G(-1323940314);
        Density density2 = (Density) composer.x(CompositionLocalsKt.e());
        LayoutDirection layoutDirection = (LayoutDirection) composer.x(CompositionLocalsKt.j());
        ViewConfiguration viewConfiguration = (ViewConfiguration) composer.x(CompositionLocalsKt.n());
        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
        a<ComposeUiNode> aVarA = companion2.a();
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
        Updater.e(composerA, measurePolicyH, companion2.d());
        Updater.e(composerA, density2, companion2.b());
        Updater.e(composerA, layoutDirection, companion2.c());
        Updater.e(composerA, viewConfiguration, companion2.f());
        composer.o();
        qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composer)), composer, 0);
        composer.G(2058660585);
        composer.G(-2137368960);
        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
        composer.G(-1660053078);
        pVar.invoke(composer, Integer.valueOf((i12 >> 27) & 14));
        DrawerKt.b(j6, new DrawerKt$BottomDrawer$1$1$1(z10, bottomDrawerState, o0Var), bottomDrawerState.v() != BottomDrawerValue.Closed, composer, (i12 >> 24) & 14);
        String strA = Strings_androidKt.a(Strings.Companion.e(), composer, 6);
        composer.G(1157296644);
        boolean zK2 = composer.k(bottomDrawerState);
        Object objH2 = composer.H();
        if (zK2 || objH2 == Composer.Companion.a()) {
            objH2 = new DrawerKt$BottomDrawer$1$1$2$1(bottomDrawerState);
            composer.z(objH2);
        }
        composer.Q();
        Modifier modifierA = OffsetKt.a(modifierC, (l) objH2);
        composer.G(1157296644);
        boolean zK3 = composer.k(mutableState);
        Object objH3 = composer.H();
        if (zK3 || objH3 == Composer.Companion.a()) {
            objH3 = new DrawerKt$BottomDrawer$1$1$3$1(mutableState);
            composer.z(objH3);
        }
        composer.Q();
        int i13 = i12 >> 12;
        SurfaceKt.b(SemanticsModifierKt.c(OnGloballyPositionedModifierKt.a(modifierA, (l) objH3), false, new DrawerKt$BottomDrawer$1$1$4(strA, bottomDrawerState, o0Var), 1, null), shape, j10, j11, null, f6, ComposableLambdaKt.b(composer, 457750254, true, new DrawerKt$BottomDrawer$1$1$5(qVar, i12)), composer, ((i12 >> 9) & 112) | 1572864 | (i13 & 896) | (i13 & 7168) | (458752 & i12), 16);
        composer.Q();
        composer.Q();
        composer.Q();
        composer.d();
        composer.Q();
        composer.Q();
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(BoxWithConstraintsScope boxWithConstraintsScope, Composer composer, Integer num) {
        b(boxWithConstraintsScope, composer, num.intValue());
        return l0.INSTANCE;
    }

    private static final float c(MutableState<Float> mutableState) {
        return mutableState.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(MutableState<Float> mutableState, float f) {
        mutableState.setValue(Float.valueOf(f));
    }
}
