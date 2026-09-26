package androidx.compose.material;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.BoxWithConstraintsScope;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
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
import androidx.compose.runtime.internal.ComposableLambda;
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
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.a;
import e8.l;
import e8.p;
import e8.q;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
final class ModalBottomSheetKt$ModalBottomSheetLayout$1 extends v implements q<BoxWithConstraintsScope, Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ p<Composer, Integer, l0> $content;
    final /* synthetic */ o0 $scope;
    final /* synthetic */ long $scrimColor;
    final /* synthetic */ long $sheetBackgroundColor;
    final /* synthetic */ q<ColumnScope, Composer, Integer, l0> $sheetContent;
    final /* synthetic */ long $sheetContentColor;
    final /* synthetic */ float $sheetElevation;
    final /* synthetic */ Shape $sheetShape;
    final /* synthetic */ ModalBottomSheetState $sheetState;

    /* JADX INFO: renamed from: androidx.compose.material.ModalBottomSheetKt$ModalBottomSheetLayout$1$4, reason: invalid class name */
    static final class AnonymousClass4 extends v implements l<SemanticsPropertyReceiver, l0> {
        final /* synthetic */ o0 $scope;
        final /* synthetic */ ModalBottomSheetState $sheetState;

        /* JADX INFO: renamed from: androidx.compose.material.ModalBottomSheetKt$ModalBottomSheetLayout$1$4$1, reason: invalid class name */
        static final class AnonymousClass1 extends v implements a<Boolean> {
            final /* synthetic */ o0 $scope;
            final /* synthetic */ ModalBottomSheetState $sheetState;

            /* JADX INFO: renamed from: androidx.compose.material.ModalBottomSheetKt$ModalBottomSheetLayout$1$4$1$1, reason: invalid class name and collision with other inner class name */
            @f(c = "androidx.compose.material.ModalBottomSheetKt$ModalBottomSheetLayout$1$4$1$1", f = "ModalBottomSheet.kt", l = {363}, m = "invokeSuspend")
            static final class C00621 extends kotlin.coroutines.jvm.internal.l implements p<o0, d<? super l0>, Object> {
                final /* synthetic */ ModalBottomSheetState $sheetState;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C00621(ModalBottomSheetState modalBottomSheetState, d<? super C00621> dVar) {
                    super(2, dVar);
                    this.$sheetState = modalBottomSheetState;
                }

                @Override // kotlin.coroutines.jvm.internal.a
                @NotNull
                public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                    return new C00621(this.$sheetState, dVar);
                }

                @Override // e8.p
                @Nullable
                public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
                    return ((C00621) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.a
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    Object objE = kotlin.coroutines.intrinsics.d.e();
                    int i10 = this.label;
                    if (i10 != 0) {
                        if (i10 == 1) {
                            w.b(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        w.b(obj);
                        ModalBottomSheetState modalBottomSheetState = this.$sheetState;
                        this.label = 1;
                        if (modalBottomSheetState.N(this) == objE) {
                            return objE;
                        }
                    }
                    return l0.INSTANCE;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(ModalBottomSheetState modalBottomSheetState, o0 o0Var) {
                super(0);
                this.$sheetState = modalBottomSheetState;
                this.$scope = o0Var;
            }

            @Override // e8.a
            @NotNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final Boolean invoke() {
                if (this.$sheetState.o().invoke(ModalBottomSheetValue.Hidden).booleanValue()) {
                    k.d(this.$scope, null, null, new C00621(this.$sheetState, null), 3, null);
                }
                return Boolean.TRUE;
            }
        }

        /* JADX INFO: renamed from: androidx.compose.material.ModalBottomSheetKt$ModalBottomSheetLayout$1$4$2, reason: invalid class name */
        static final class AnonymousClass2 extends v implements a<Boolean> {
            final /* synthetic */ o0 $scope;
            final /* synthetic */ ModalBottomSheetState $sheetState;

            /* JADX INFO: renamed from: androidx.compose.material.ModalBottomSheetKt$ModalBottomSheetLayout$1$4$2$1, reason: invalid class name */
            @f(c = "androidx.compose.material.ModalBottomSheetKt$ModalBottomSheetLayout$1$4$2$1", f = "ModalBottomSheet.kt", l = {370}, m = "invokeSuspend")
            static final class AnonymousClass1 extends kotlin.coroutines.jvm.internal.l implements p<o0, d<? super l0>, Object> {
                final /* synthetic */ ModalBottomSheetState $sheetState;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(ModalBottomSheetState modalBottomSheetState, d<? super AnonymousClass1> dVar) {
                    super(2, dVar);
                    this.$sheetState = modalBottomSheetState;
                }

                @Override // kotlin.coroutines.jvm.internal.a
                @NotNull
                public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                    return new AnonymousClass1(this.$sheetState, dVar);
                }

                @Override // e8.p
                @Nullable
                public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
                    return ((AnonymousClass1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.a
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    Object objE = kotlin.coroutines.intrinsics.d.e();
                    int i10 = this.label;
                    if (i10 != 0) {
                        if (i10 == 1) {
                            w.b(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        w.b(obj);
                        ModalBottomSheetState modalBottomSheetState = this.$sheetState;
                        this.label = 1;
                        if (modalBottomSheetState.J(this) == objE) {
                            return objE;
                        }
                    }
                    return l0.INSTANCE;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass2(ModalBottomSheetState modalBottomSheetState, o0 o0Var) {
                super(0);
                this.$sheetState = modalBottomSheetState;
                this.$scope = o0Var;
            }

            @Override // e8.a
            @NotNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final Boolean invoke() {
                if (this.$sheetState.o().invoke(ModalBottomSheetValue.Expanded).booleanValue()) {
                    k.d(this.$scope, null, null, new AnonymousClass1(this.$sheetState, null), 3, null);
                }
                return Boolean.TRUE;
            }
        }

        /* JADX INFO: renamed from: androidx.compose.material.ModalBottomSheetKt$ModalBottomSheetLayout$1$4$3, reason: invalid class name */
        static final class AnonymousClass3 extends v implements a<Boolean> {
            final /* synthetic */ o0 $scope;
            final /* synthetic */ ModalBottomSheetState $sheetState;

            /* JADX INFO: renamed from: androidx.compose.material.ModalBottomSheetKt$ModalBottomSheetLayout$1$4$3$1, reason: invalid class name */
            @f(c = "androidx.compose.material.ModalBottomSheetKt$ModalBottomSheetLayout$1$4$3$1", f = "ModalBottomSheet.kt", l = {377}, m = "invokeSuspend")
            static final class AnonymousClass1 extends kotlin.coroutines.jvm.internal.l implements p<o0, d<? super l0>, Object> {
                final /* synthetic */ ModalBottomSheetState $sheetState;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(ModalBottomSheetState modalBottomSheetState, d<? super AnonymousClass1> dVar) {
                    super(2, dVar);
                    this.$sheetState = modalBottomSheetState;
                }

                @Override // kotlin.coroutines.jvm.internal.a
                @NotNull
                public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                    return new AnonymousClass1(this.$sheetState, dVar);
                }

                @Override // e8.p
                @Nullable
                public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
                    return ((AnonymousClass1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.a
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    Object objE = kotlin.coroutines.intrinsics.d.e();
                    int i10 = this.label;
                    if (i10 != 0) {
                        if (i10 == 1) {
                            w.b(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        w.b(obj);
                        ModalBottomSheetState modalBottomSheetState = this.$sheetState;
                        this.label = 1;
                        if (modalBottomSheetState.M(this) == objE) {
                            return objE;
                        }
                    }
                    return l0.INSTANCE;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass3(ModalBottomSheetState modalBottomSheetState, o0 o0Var) {
                super(0);
                this.$sheetState = modalBottomSheetState;
                this.$scope = o0Var;
            }

            @Override // e8.a
            @NotNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final Boolean invoke() {
                if (this.$sheetState.o().invoke(ModalBottomSheetValue.HalfExpanded).booleanValue()) {
                    k.d(this.$scope, null, null, new AnonymousClass1(this.$sheetState, null), 3, null);
                }
                return Boolean.TRUE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass4(ModalBottomSheetState modalBottomSheetState, o0 o0Var) {
            super(1);
            this.$sheetState = modalBottomSheetState;
            this.$scope = o0Var;
        }

        public final void a(@NotNull SemanticsPropertyReceiver semantics) {
            t.j(semantics, "$this$semantics");
            if (this.$sheetState.P()) {
                SemanticsPropertiesKt.j(semantics, null, new AnonymousClass1(this.$sheetState, this.$scope), 1, null);
                if (this.$sheetState.p() == ModalBottomSheetValue.HalfExpanded) {
                    SemanticsPropertiesKt.m(semantics, null, new AnonymousClass2(this.$sheetState, this.$scope), 1, null);
                } else if (this.$sheetState.K()) {
                    SemanticsPropertiesKt.b(semantics, null, new AnonymousClass3(this.$sheetState, this.$scope), 1, null);
                }
            }
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
            a(semanticsPropertyReceiver);
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material.ModalBottomSheetKt$ModalBottomSheetLayout$1$5, reason: invalid class name */
    static final class AnonymousClass5 extends v implements p<Composer, Integer, l0> {
        final /* synthetic */ int $$dirty;
        final /* synthetic */ q<ColumnScope, Composer, Integer, l0> $sheetContent;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass5(q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar, int i10) {
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
    ModalBottomSheetKt$ModalBottomSheetLayout$1(ModalBottomSheetState modalBottomSheetState, int i10, Shape shape, long j6, long j10, float f, p<? super Composer, ? super Integer, l0> pVar, long j11, o0 o0Var, q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar) {
        super(3);
        this.$sheetState = modalBottomSheetState;
        this.$$dirty = i10;
        this.$sheetShape = shape;
        this.$sheetBackgroundColor = j6;
        this.$sheetContentColor = j10;
        this.$sheetElevation = f;
        this.$content = pVar;
        this.$scrimColor = j11;
        this.$scope = o0Var;
        this.$sheetContent = qVar;
    }

    @ComposableTarget
    @Composable
    public final void a(@NotNull BoxWithConstraintsScope BoxWithConstraints, @Nullable Composer composer, int i10) {
        int i11;
        float f;
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
        composer.G(-492369756);
        Object objH = composer.H();
        Composer.Companion companion = Composer.Companion;
        if (objH == companion.a()) {
            objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
            composer.z(objH);
        }
        composer.Q();
        MutableState mutableState = (MutableState) objH;
        Modifier.Companion companion2 = Modifier.Companion;
        Modifier modifierL = SizeKt.l(companion2, 0.0f, 1, null);
        p<Composer, Integer, l0> pVar = this.$content;
        int i12 = this.$$dirty;
        long j6 = this.$scrimColor;
        ModalBottomSheetState modalBottomSheetState = this.$sheetState;
        o0 o0Var = this.$scope;
        composer.G(733328855);
        MeasurePolicy measurePolicyH = BoxKt.h(Alignment.Companion.o(), false, composer, 0);
        composer.G(-1323940314);
        Density density = (Density) composer.x(CompositionLocalsKt.e());
        LayoutDirection layoutDirection = (LayoutDirection) composer.x(CompositionLocalsKt.j());
        ViewConfiguration viewConfiguration = (ViewConfiguration) composer.x(CompositionLocalsKt.n());
        ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
        a<ComposeUiNode> aVarA = companion3.a();
        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierL);
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
        composer.G(-402723888);
        pVar.invoke(composer, Integer.valueOf((i12 >> 24) & 14));
        ModalBottomSheetKt.b(j6, new ModalBottomSheetKt$ModalBottomSheetLayout$1$1$1(modalBottomSheetState, o0Var), modalBottomSheetState.v() != ModalBottomSheetValue.Hidden, composer, (i12 >> 21) & 14);
        composer.Q();
        composer.Q();
        composer.Q();
        composer.d();
        composer.Q();
        composer.Q();
        Modifier modifierB = NestedScrollModifierKt.b(SizeKt.n(companion2, 0.0f, 1, null), this.$sheetState.L(), null, 2, null);
        Object obj = this.$sheetState;
        Object objValueOf = Float.valueOf(fM);
        ModalBottomSheetState modalBottomSheetState2 = this.$sheetState;
        composer.G(511388516);
        boolean zK = composer.k(obj) | composer.k(objValueOf);
        Object objH2 = composer.H();
        if (zK || objH2 == companion.a()) {
            f = fM;
            objH2 = new ModalBottomSheetKt$ModalBottomSheetLayout$1$2$1(modalBottomSheetState2, f);
            composer.z(objH2);
        } else {
            f = fM;
        }
        composer.Q();
        Modifier modifierG = ModalBottomSheetKt.g(OffsetKt.a(modifierB, (l) objH2), this.$sheetState, f, mutableState);
        composer.G(1157296644);
        boolean zK2 = composer.k(mutableState);
        Object objH3 = composer.H();
        if (zK2 || objH3 == companion.a()) {
            objH3 = new ModalBottomSheetKt$ModalBottomSheetLayout$1$3$1(mutableState);
            composer.z(objH3);
        }
        composer.Q();
        Modifier modifierC = SemanticsModifierKt.c(OnGloballyPositionedModifierKt.a(modifierG, (l) objH3), false, new AnonymousClass4(this.$sheetState, this.$scope), 1, null);
        Shape shape = this.$sheetShape;
        long j10 = this.$sheetBackgroundColor;
        long j11 = this.$sheetContentColor;
        float f6 = this.$sheetElevation;
        ComposableLambda composableLambdaB = ComposableLambdaKt.b(composer, -1793508390, true, new AnonymousClass5(this.$sheetContent, this.$$dirty));
        int i13 = this.$$dirty;
        SurfaceKt.b(modifierC, shape, j10, j11, null, f6, composableLambdaB, composer, ((i13 >> 6) & 112) | 1572864 | ((i13 >> 9) & 896) | ((i13 >> 9) & 7168) | ((i13 << 3) & 458752), 16);
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(BoxWithConstraintsScope boxWithConstraintsScope, Composer composer, Integer num) {
        a(boxWithConstraintsScope, composer, num.intValue());
        return l0.INSTANCE;
    }
}
