package androidx.compose.material;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import e8.a;
import e8.l;
import e8.p;
import e8.q;
import e8.r;
import java.util.Map;
import kotlin.collections.s0;
import kotlin.coroutines.h;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.Nullable;
import w7.a0;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class BackdropScaffoldKt$BackdropScaffold$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ int $$dirty1;
    final /* synthetic */ p<Composer, Integer, l0> $backLayer;
    final /* synthetic */ l<Constraints, Constraints> $calculateBackLayerConstraints;
    final /* synthetic */ long $frontLayerBackgroundColor;
    final /* synthetic */ p<Composer, Integer, l0> $frontLayerContent;
    final /* synthetic */ long $frontLayerContentColor;
    final /* synthetic */ float $frontLayerElevation;
    final /* synthetic */ long $frontLayerScrimColor;
    final /* synthetic */ Shape $frontLayerShape;
    final /* synthetic */ boolean $gesturesEnabled;
    final /* synthetic */ float $headerHeight;
    final /* synthetic */ float $headerHeightPx;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ float $peekHeight;
    final /* synthetic */ float $peekHeightPx;
    final /* synthetic */ BackdropScaffoldState $scaffoldState;
    final /* synthetic */ q<SnackbarHostState, Composer, Integer, l0> $snackbarHost;
    final /* synthetic */ boolean $stickyFrontLayer;

    /* JADX INFO: renamed from: androidx.compose.material.BackdropScaffoldKt$BackdropScaffold$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements r<Constraints, Float, Composer, Integer, l0> {
        final /* synthetic */ int $$dirty;
        final /* synthetic */ int $$dirty1;
        final /* synthetic */ long $frontLayerBackgroundColor;
        final /* synthetic */ p<Composer, Integer, l0> $frontLayerContent;
        final /* synthetic */ long $frontLayerContentColor;
        final /* synthetic */ float $frontLayerElevation;
        final /* synthetic */ long $frontLayerScrimColor;
        final /* synthetic */ Shape $frontLayerShape;
        final /* synthetic */ boolean $gesturesEnabled;
        final /* synthetic */ float $headerHeight;
        final /* synthetic */ float $headerHeightPx;
        final /* synthetic */ float $peekHeight;
        final /* synthetic */ float $peekHeightPx;
        final /* synthetic */ BackdropScaffoldState $scaffoldState;
        final /* synthetic */ o0 $scope;
        final /* synthetic */ q<SnackbarHostState, Composer, Integer, l0> $snackbarHost;
        final /* synthetic */ boolean $stickyFrontLayer;

        /* JADX INFO: renamed from: androidx.compose.material.BackdropScaffoldKt$BackdropScaffold$1$1$2, reason: invalid class name */
        static final class AnonymousClass2 extends v implements p<Composer, Integer, l0> {
            final /* synthetic */ int $$dirty;
            final /* synthetic */ int $$dirty1;
            final /* synthetic */ p<Composer, Integer, l0> $frontLayerContent;
            final /* synthetic */ long $frontLayerScrimColor;
            final /* synthetic */ boolean $gesturesEnabled;
            final /* synthetic */ float $peekHeight;
            final /* synthetic */ BackdropScaffoldState $scaffoldState;
            final /* synthetic */ o0 $scope;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            AnonymousClass2(float f, p<? super Composer, ? super Integer, l0> pVar, int i10, long j6, BackdropScaffoldState backdropScaffoldState, int i11, boolean z6, o0 o0Var) {
                super(2);
                this.$peekHeight = f;
                this.$frontLayerContent = pVar;
                this.$$dirty = i10;
                this.$frontLayerScrimColor = j6;
                this.$scaffoldState = backdropScaffoldState;
                this.$$dirty1 = i11;
                this.$gesturesEnabled = z6;
                this.$scope = o0Var;
            }

            @ComposableTarget
            @Composable
            public final void a(@Nullable Composer composer, int i10) {
                if ((i10 & 11) == 2 && composer.b()) {
                    composer.g();
                    return;
                }
                Modifier modifierM = PaddingKt.m(Modifier.Companion, 0.0f, 0.0f, 0.0f, this.$peekHeight, 7, null);
                p<Composer, Integer, l0> pVar = this.$frontLayerContent;
                int i11 = this.$$dirty;
                long j6 = this.$frontLayerScrimColor;
                BackdropScaffoldState backdropScaffoldState = this.$scaffoldState;
                int i12 = this.$$dirty1;
                boolean z6 = this.$gesturesEnabled;
                o0 o0Var = this.$scope;
                composer.G(733328855);
                MeasurePolicy measurePolicyH = BoxKt.h(Alignment.Companion.o(), false, composer, 0);
                composer.G(-1323940314);
                Density density = (Density) composer.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection = (LayoutDirection) composer.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration = (ViewConfiguration) composer.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                a<ComposeUiNode> aVarA = companion.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierM);
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
                Updater.e(composerA, measurePolicyH, companion.d());
                Updater.e(composerA, density, companion.b());
                Updater.e(composerA, layoutDirection, companion.c());
                Updater.e(composerA, viewConfiguration, companion.f());
                composer.o();
                qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composer)), composer, 0);
                composer.G(2058660585);
                composer.G(-2137368960);
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                composer.G(-1889954677);
                pVar.invoke(composer, Integer.valueOf((i11 >> 6) & 14));
                BackdropScaffoldKt.e(j6, new BackdropScaffoldKt$BackdropScaffold$1$1$2$1$1(z6, backdropScaffoldState, o0Var), backdropScaffoldState.v() == BackdropValue.Revealed, composer, (i12 >> 18) & 14);
                composer.Q();
                composer.Q();
                composer.Q();
                composer.d();
                composer.Q();
                composer.Q();
            }

            @Override // e8.p
            public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
                a(composer, num.intValue());
                return l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(float f, boolean z6, boolean z10, BackdropScaffoldState backdropScaffoldState, float f6, int i10, Shape shape, long j6, long j10, float f7, int i11, float f10, o0 o0Var, float f11, p<? super Composer, ? super Integer, l0> pVar, long j11, q<? super SnackbarHostState, ? super Composer, ? super Integer, l0> qVar) {
            super(4);
            this.$headerHeightPx = f;
            this.$stickyFrontLayer = z6;
            this.$gesturesEnabled = z10;
            this.$scaffoldState = backdropScaffoldState;
            this.$peekHeightPx = f6;
            this.$$dirty = i10;
            this.$frontLayerShape = shape;
            this.$frontLayerBackgroundColor = j6;
            this.$frontLayerContentColor = j10;
            this.$frontLayerElevation = f7;
            this.$$dirty1 = i11;
            this.$headerHeight = f10;
            this.$scope = o0Var;
            this.$peekHeight = f11;
            this.$frontLayerContent = pVar;
            this.$frontLayerScrimColor = j11;
            this.$snackbarHost = qVar;
        }

        @ComposableTarget
        @Composable
        public final void a(long j6, float f, @Nullable Composer composer, int i10) {
            int i11;
            if ((i10 & 14) == 0) {
                i11 = i10 | (composer.q(j6) ? 4 : 2);
            } else {
                i11 = i10;
            }
            if ((i10 & 112) == 0) {
                i11 |= composer.n(f) ? 32 : 16;
            }
            if ((i11 & 731) == 146 && composer.b()) {
                composer.g();
                return;
            }
            float fM = Constraints.m(j6);
            float fMin = fM - this.$headerHeightPx;
            if (this.$stickyFrontLayer) {
                fMin = Math.min(fMin, f);
            }
            float f6 = fMin;
            Modifier modifierB = this.$gesturesEnabled ? NestedScrollModifierKt.b(Modifier.Companion, this.$scaffoldState.K(), null, 2, null) : Modifier.Companion;
            Modifier.Companion companion = Modifier.Companion;
            Modifier modifierB2 = companion.B(modifierB);
            BackdropScaffoldState backdropScaffoldState = this.$scaffoldState;
            Map mapL = s0.l(a0.a(Float.valueOf(this.$peekHeightPx), BackdropValue.Concealed), a0.a(Float.valueOf(f6), BackdropValue.Revealed));
            Modifier modifierC = SemanticsModifierKt.c(SwipeableKt.h(modifierB2, backdropScaffoldState, mapL, Orientation.Vertical, (288 & 8) != 0 ? true : this.$gesturesEnabled, (288 & 16) != 0 ? false : false, (288 & 32) != 0 ? null : null, (288 & 64) != 0 ? SwipeableKt$swipeable$1.INSTANCE : null, (288 & 128) != 0 ? SwipeableDefaults.d(SwipeableDefaults.INSTANCE, mapL.keySet(), 0.0f, 0.0f, 6, null) : null, (288 & 256) != 0 ? SwipeableDefaults.INSTANCE.b() : 0.0f), false, new BackdropScaffoldKt$BackdropScaffold$1$1$swipeable$1(this.$scaffoldState, this.$scope), 1, null);
            BackdropScaffoldState backdropScaffoldState2 = this.$scaffoldState;
            composer.G(1157296644);
            boolean zK = composer.k(backdropScaffoldState2);
            Object objH = composer.H();
            if (zK || objH == Composer.Companion.a()) {
                objH = new BackdropScaffoldKt$BackdropScaffold$1$1$1$1(backdropScaffoldState2);
                composer.z(objH);
            }
            composer.Q();
            Modifier modifierB3 = OffsetKt.a(companion, (l) objH).B(modifierC);
            Shape shape = this.$frontLayerShape;
            long j10 = this.$frontLayerBackgroundColor;
            long j11 = this.$frontLayerContentColor;
            float f7 = this.$frontLayerElevation;
            ComposableLambda composableLambdaB = ComposableLambdaKt.b(composer, -1065299503, true, new AnonymousClass2(this.$peekHeight, this.$frontLayerContent, this.$$dirty, this.$frontLayerScrimColor, this.$scaffoldState, this.$$dirty1, this.$gesturesEnabled, this.$scope));
            int i12 = this.$$dirty1;
            SurfaceKt.b(modifierB3, shape, j10, j11, null, f7, composableLambdaB, composer, ((i12 >> 3) & 112) | 1572864 | ((i12 >> 6) & 896) | ((i12 >> 6) & 7168) | ((i12 << 6) & 458752), 16);
            Modifier modifierM = PaddingKt.m(companion, 0.0f, 0.0f, 0.0f, (this.$scaffoldState.N() && f6 == fM - this.$headerHeightPx) ? this.$headerHeight : Dp.f(0), 7, null);
            Alignment alignmentB = Alignment.Companion.b();
            q<SnackbarHostState, Composer, Integer, l0> qVar = this.$snackbarHost;
            BackdropScaffoldState backdropScaffoldState3 = this.$scaffoldState;
            int i13 = this.$$dirty1;
            composer.G(733328855);
            MeasurePolicy measurePolicyH = BoxKt.h(alignmentB, false, composer, 6);
            composer.G(-1323940314);
            Density density = (Density) composer.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection = (LayoutDirection) composer.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration = (ViewConfiguration) composer.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
            a<ComposeUiNode> aVarA = companion2.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierM);
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
            Updater.e(composerA, density, companion2.b());
            Updater.e(composerA, layoutDirection, companion2.c());
            Updater.e(composerA, viewConfiguration, companion2.f());
            composer.o();
            qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composer)), composer, 0);
            composer.G(2058660585);
            composer.G(-2137368960);
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            composer.G(1815906203);
            qVar.invoke(backdropScaffoldState3.L(), composer, Integer.valueOf((i13 >> 18) & 112));
            composer.Q();
            composer.Q();
            composer.Q();
            composer.d();
            composer.Q();
            composer.Q();
        }

        @Override // e8.r
        public /* bridge */ /* synthetic */ l0 invoke(Constraints constraints, Float f, Composer composer, Integer num) {
            a(constraints.t(), f.floatValue(), composer, num.intValue());
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BackdropScaffoldKt$BackdropScaffold$1(Modifier modifier, p<? super Composer, ? super Integer, l0> pVar, l<? super Constraints, Constraints> lVar, float f, boolean z6, boolean z10, BackdropScaffoldState backdropScaffoldState, float f6, int i10, Shape shape, long j6, long j10, float f7, int i11, float f10, float f11, p<? super Composer, ? super Integer, l0> pVar2, long j11, q<? super SnackbarHostState, ? super Composer, ? super Integer, l0> qVar) {
        super(2);
        this.$modifier = modifier;
        this.$backLayer = pVar;
        this.$calculateBackLayerConstraints = lVar;
        this.$headerHeightPx = f;
        this.$stickyFrontLayer = z6;
        this.$gesturesEnabled = z10;
        this.$scaffoldState = backdropScaffoldState;
        this.$peekHeightPx = f6;
        this.$$dirty = i10;
        this.$frontLayerShape = shape;
        this.$frontLayerBackgroundColor = j6;
        this.$frontLayerContentColor = j10;
        this.$frontLayerElevation = f7;
        this.$$dirty1 = i11;
        this.$headerHeight = f10;
        this.$peekHeight = f11;
        this.$frontLayerContent = pVar2;
        this.$frontLayerScrimColor = j11;
        this.$snackbarHost = qVar;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
            return;
        }
        composer.G(773894976);
        composer.G(-492369756);
        Object objH = composer.H();
        if (objH == Composer.Companion.a()) {
            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composer));
            composer.z(compositionScopedCoroutineScopeCanceller);
            objH = compositionScopedCoroutineScopeCanceller;
        }
        composer.Q();
        o0 o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
        composer.Q();
        BackdropScaffoldKt.d(SizeKt.l(this.$modifier, 0.0f, 1, null), this.$backLayer, this.$calculateBackLayerConstraints, ComposableLambdaKt.b(composer, 1800047509, true, new AnonymousClass1(this.$headerHeightPx, this.$stickyFrontLayer, this.$gesturesEnabled, this.$scaffoldState, this.$peekHeightPx, this.$$dirty, this.$frontLayerShape, this.$frontLayerBackgroundColor, this.$frontLayerContentColor, this.$frontLayerElevation, this.$$dirty1, this.$headerHeight, o0VarA, this.$peekHeight, this.$frontLayerContent, this.$frontLayerScrimColor, this.$snackbarHost)), composer, 3120);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
