package androidx.compose.material;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.a;
import e8.l;
import e8.p;
import e8.q;
import g8.c;
import java.util.Map;
import kotlin.collections.r0;
import kotlin.collections.s0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.a0;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class BottomSheetScaffoldKt$BottomSheetScaffold$child$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ int $$dirty1;
    final /* synthetic */ int $$dirty2;
    final /* synthetic */ MutableState<Float> $bottomSheetHeight$delegate;
    final /* synthetic */ q<PaddingValues, Composer, Integer, l0> $content;
    final /* synthetic */ p<Composer, Integer, l0> $floatingActionButton;
    final /* synthetic */ int $floatingActionButtonPosition;
    final /* synthetic */ float $peekHeightPx;
    final /* synthetic */ BottomSheetScaffoldState $scaffoldState;
    final /* synthetic */ Modifier $semantics;
    final /* synthetic */ long $sheetBackgroundColor;
    final /* synthetic */ q<ColumnScope, Composer, Integer, l0> $sheetContent;
    final /* synthetic */ long $sheetContentColor;
    final /* synthetic */ float $sheetElevation;
    final /* synthetic */ boolean $sheetGesturesEnabled;
    final /* synthetic */ float $sheetPeekHeight;
    final /* synthetic */ Shape $sheetShape;
    final /* synthetic */ q<SnackbarHostState, Composer, Integer, l0> $snackbarHost;
    final /* synthetic */ p<Composer, Integer, l0> $topBar;

    /* JADX INFO: renamed from: androidx.compose.material.BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements q<Integer, Composer, Integer, l0> {
        final /* synthetic */ int $$dirty;
        final /* synthetic */ int $$dirty1;
        final /* synthetic */ MutableState<Float> $bottomSheetHeight$delegate;
        final /* synthetic */ float $peekHeightPx;
        final /* synthetic */ BottomSheetScaffoldState $scaffoldState;
        final /* synthetic */ Modifier $semantics;
        final /* synthetic */ long $sheetBackgroundColor;
        final /* synthetic */ q<ColumnScope, Composer, Integer, l0> $sheetContent;
        final /* synthetic */ long $sheetContentColor;
        final /* synthetic */ float $sheetElevation;
        final /* synthetic */ boolean $sheetGesturesEnabled;
        final /* synthetic */ float $sheetPeekHeight;
        final /* synthetic */ Shape $sheetShape;

        /* JADX INFO: renamed from: androidx.compose.material.BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1$2, reason: invalid class name */
        static final class AnonymousClass2 extends v implements p<Composer, Integer, l0> {
            final /* synthetic */ int $$dirty;
            final /* synthetic */ q<ColumnScope, Composer, Integer, l0> $sheetContent;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            AnonymousClass2(q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar, int i10) {
                super(2);
                this.$sheetContent = qVar;
                this.$$dirty = i10;
            }

            @ComposableTarget
            @Composable
            public final void a(@Nullable Composer composer, int i10) {
                if ((i10 & 11) == 2 && composer.b()) {
                    composer.g();
                    return;
                }
                q<ColumnScope, Composer, Integer, l0> qVar = this.$sheetContent;
                int i11 = (this.$$dirty << 9) & 7168;
                composer.G(-483455358);
                Modifier.Companion companion = Modifier.Companion;
                int i12 = i11 >> 3;
                MeasurePolicy measurePolicyA = ColumnKt.a(Arrangement.INSTANCE.f(), Alignment.Companion.k(), composer, (i12 & 112) | (i12 & 14));
                composer.G(-1323940314);
                Density density = (Density) composer.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection = (LayoutDirection) composer.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration = (ViewConfiguration) composer.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                a<ComposeUiNode> aVarA = companion2.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(companion);
                int i13 = ((((i11 << 3) & 112) << 9) & 7168) | 6;
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
                Updater.e(composerA, measurePolicyA, companion2.d());
                Updater.e(composerA, density, companion2.b());
                Updater.e(composerA, layoutDirection, companion2.c());
                Updater.e(composerA, viewConfiguration, companion2.f());
                composer.o();
                qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composer)), composer, Integer.valueOf((i13 >> 3) & 112));
                composer.G(2058660585);
                composer.G(-1163856341);
                if (((i13 >> 9) & 10) == 2 && composer.b()) {
                    composer.g();
                } else {
                    qVar.invoke(ColumnScopeInstance.INSTANCE, composer, Integer.valueOf(((i11 >> 6) & 112) | 6));
                }
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
        AnonymousClass1(float f, BottomSheetScaffoldState bottomSheetScaffoldState, boolean z6, Modifier modifier, float f6, MutableState<Float> mutableState, Shape shape, long j6, long j10, float f7, int i10, int i11, q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar) {
            super(3);
            this.$peekHeightPx = f;
            this.$scaffoldState = bottomSheetScaffoldState;
            this.$sheetGesturesEnabled = z6;
            this.$semantics = modifier;
            this.$sheetPeekHeight = f6;
            this.$bottomSheetHeight$delegate = mutableState;
            this.$sheetShape = shape;
            this.$sheetBackgroundColor = j6;
            this.$sheetContentColor = j10;
            this.$sheetElevation = f7;
            this.$$dirty = i10;
            this.$$dirty1 = i11;
            this.$sheetContent = qVar;
        }

        @ComposableTarget
        @Composable
        public final void a(int i10, @Nullable Composer composer, int i11) {
            int i12;
            Map mapL;
            Modifier modifierH;
            if ((i11 & 14) == 0) {
                i12 = i11 | (composer.p(i10) ? 4 : 2);
            } else {
                i12 = i11;
            }
            if ((i12 & 91) == 18 && composer.b()) {
                composer.g();
                return;
            }
            Float fC = BottomSheetScaffoldKt.c(this.$bottomSheetHeight$delegate);
            if (fC == null) {
                modifierH = Modifier.Companion;
            } else {
                if (c.c(fC.floatValue()) == c.c(this.$peekHeightPx)) {
                    mapL = r0.f(a0.a(Float.valueOf(i10 - fC.floatValue()), BottomSheetValue.Collapsed));
                } else {
                    float f = i10;
                    Float fC2 = BottomSheetScaffoldKt.c(this.$bottomSheetHeight$delegate);
                    t.g(fC2);
                    mapL = s0.l(a0.a(Float.valueOf(f - fC2.floatValue()), BottomSheetValue.Expanded), a0.a(Float.valueOf(f - this.$peekHeightPx), BottomSheetValue.Collapsed));
                }
                Map map = mapL;
                modifierH = SwipeableKt.h(Modifier.Companion, this.$scaffoldState.a(), map, Orientation.Vertical, (288 & 8) != 0 ? true : this.$sheetGesturesEnabled, (288 & 16) != 0 ? false : false, (288 & 32) != 0 ? null : null, (288 & 64) != 0 ? SwipeableKt$swipeable$1.INSTANCE : null, (288 & 128) != 0 ? SwipeableDefaults.d(SwipeableDefaults.INSTANCE, map.keySet(), 0.0f, 0.0f, 6, null) : null, (288 & 256) != 0 ? SwipeableDefaults.INSTANCE.b() : 0.0f);
            }
            Modifier modifierS = SizeKt.s(SizeKt.n(NestedScrollModifierKt.b(Modifier.Companion, this.$scaffoldState.a().M(), null, 2, null).B(modifierH).B(this.$semantics), 0.0f, 1, null), this.$sheetPeekHeight, 0.0f, 2, null);
            MutableState<Float> mutableState = this.$bottomSheetHeight$delegate;
            composer.G(1157296644);
            boolean zK = composer.k(mutableState);
            Object objH = composer.H();
            if (zK || objH == Composer.Companion.a()) {
                objH = new BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1$1$1(mutableState);
                composer.z(objH);
            }
            composer.Q();
            Modifier modifierA = OnRemeasuredModifierKt.a(modifierS, (l) objH);
            Shape shape = this.$sheetShape;
            long j6 = this.$sheetBackgroundColor;
            long j10 = this.$sheetContentColor;
            float f6 = this.$sheetElevation;
            ComposableLambda composableLambdaB = ComposableLambdaKt.b(composer, -698903261, true, new AnonymousClass2(this.$sheetContent, this.$$dirty));
            int i13 = this.$$dirty;
            int i14 = this.$$dirty1;
            SurfaceKt.b(modifierA, shape, j6, j10, null, f6, composableLambdaB, composer, ((i13 >> 21) & 112) | 1572864 | ((i14 << 6) & 896) | ((i14 << 6) & 7168) | ((i13 >> 12) & 458752), 16);
        }

        @Override // e8.q
        public /* bridge */ /* synthetic */ l0 invoke(Integer num, Composer composer, Integer num2) {
            a(num.intValue(), composer, num2.intValue());
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material.BottomSheetScaffoldKt$BottomSheetScaffold$child$1$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $$dirty;
        final /* synthetic */ BottomSheetScaffoldState $scaffoldState;
        final /* synthetic */ q<SnackbarHostState, Composer, Integer, l0> $snackbarHost;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(q<? super SnackbarHostState, ? super Composer, ? super Integer, l0> qVar, BottomSheetScaffoldState bottomSheetScaffoldState, int i10) {
            super(2);
            this.$snackbarHost = qVar;
            this.$scaffoldState = bottomSheetScaffoldState;
            this.$$dirty = i10;
        }

        @ComposableTarget
        @Composable
        public final void a(@Nullable Composer composer, int i10) {
            if ((i10 & 11) == 2 && composer.b()) {
                composer.g();
            } else {
                this.$snackbarHost.invoke(this.$scaffoldState.c(), composer, Integer.valueOf((this.$$dirty >> 9) & 112));
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
    BottomSheetScaffoldKt$BottomSheetScaffold$child$1(BottomSheetScaffoldState bottomSheetScaffoldState, p<? super Composer, ? super Integer, l0> pVar, q<? super PaddingValues, ? super Composer, ? super Integer, l0> qVar, p<? super Composer, ? super Integer, l0> pVar2, float f, int i10, int i11, int i12, int i13, float f6, boolean z6, Modifier modifier, MutableState<Float> mutableState, Shape shape, long j6, long j10, float f7, q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar2, q<? super SnackbarHostState, ? super Composer, ? super Integer, l0> qVar3) {
        super(2);
        this.$scaffoldState = bottomSheetScaffoldState;
        this.$topBar = pVar;
        this.$content = qVar;
        this.$floatingActionButton = pVar2;
        this.$sheetPeekHeight = f;
        this.$floatingActionButtonPosition = i10;
        this.$$dirty = i11;
        this.$$dirty2 = i12;
        this.$$dirty1 = i13;
        this.$peekHeightPx = f6;
        this.$sheetGesturesEnabled = z6;
        this.$semantics = modifier;
        this.$bottomSheetHeight$delegate = mutableState;
        this.$sheetShape = shape;
        this.$sheetBackgroundColor = j6;
        this.$sheetContentColor = j10;
        this.$sheetElevation = f7;
        this.$sheetContent = qVar2;
        this.$snackbarHost = qVar3;
    }

    @ComposableTarget
    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
            return;
        }
        State<Float> stateT = this.$scaffoldState.a().t();
        BottomSheetState bottomSheetStateA = this.$scaffoldState.a();
        p<Composer, Integer, l0> pVar = this.$topBar;
        q<PaddingValues, Composer, Integer, l0> qVar = this.$content;
        ComposableLambda composableLambdaB = ComposableLambdaKt.b(composer, -1378534681, true, new AnonymousClass1(this.$peekHeightPx, this.$scaffoldState, this.$sheetGesturesEnabled, this.$semantics, this.$sheetPeekHeight, this.$bottomSheetHeight$delegate, this.$sheetShape, this.$sheetBackgroundColor, this.$sheetContentColor, this.$sheetElevation, this.$$dirty, this.$$dirty1, this.$sheetContent));
        p<Composer, Integer, l0> pVar2 = this.$floatingActionButton;
        ComposableLambda composableLambdaB2 = ComposableLambdaKt.b(composer, -486138068, true, new AnonymousClass2(this.$snackbarHost, this.$scaffoldState, this.$$dirty));
        float f = this.$sheetPeekHeight;
        int i11 = this.$floatingActionButtonPosition;
        int i12 = this.$$dirty;
        BottomSheetScaffoldKt.b(pVar, qVar, composableLambdaB, pVar2, composableLambdaB2, f, i11, stateT, bottomSheetStateA, composer, ((i12 >> 9) & 14) | 24960 | ((this.$$dirty2 >> 3) & 112) | ((i12 >> 6) & 7168) | ((this.$$dirty1 << 9) & 458752) | (i12 & 3670016));
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
