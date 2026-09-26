package androidx.compose.foundation;

import android.view.View;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import e8.l;
import e8.p;
import e8.q;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.flow.d0;
import kotlinx.coroutines.flow.g;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.w;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class MagnifierKt$magnifier$4 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ l<Density, Offset> $magnifierCenter;
    final /* synthetic */ l<DpSize, l0> $onSizeChanged;
    final /* synthetic */ PlatformMagnifierFactory $platformMagnifierFactory;
    final /* synthetic */ l<Density, Offset> $sourceCenter;
    final /* synthetic */ MagnifierStyle $style;
    final /* synthetic */ float $zoom;

    /* JADX INFO: renamed from: androidx.compose.foundation.MagnifierKt$magnifier$4$1, reason: invalid class name */
    @f(c = "androidx.compose.foundation.MagnifierKt$magnifier$4$1", f = "Magnifier.kt", l = {365}, m = "invokeSuspend")
    static final class AnonymousClass1 extends kotlin.coroutines.jvm.internal.l implements p<o0, d<? super l0>, Object> {
        final /* synthetic */ MutableState<Offset> $anchorPositionInRoot$delegate;
        final /* synthetic */ Density $density;
        final /* synthetic */ State<Boolean> $isMagnifierShown$delegate;
        final /* synthetic */ w<l0> $onNeedsUpdate;
        final /* synthetic */ PlatformMagnifierFactory $platformMagnifierFactory;
        final /* synthetic */ State<Offset> $sourceCenterInRoot$delegate;
        final /* synthetic */ MagnifierStyle $style;
        final /* synthetic */ State<l<Density, Offset>> $updatedMagnifierCenter$delegate;
        final /* synthetic */ State<l<DpSize, l0>> $updatedOnSizeChanged$delegate;
        final /* synthetic */ State<Float> $updatedZoom$delegate;
        final /* synthetic */ View $view;
        final /* synthetic */ float $zoom;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.compose.foundation.MagnifierKt$magnifier$4$1$2, reason: invalid class name */
        static final class AnonymousClass2 extends v implements e8.a<l0> {
            final /* synthetic */ MutableState<Offset> $anchorPositionInRoot$delegate;
            final /* synthetic */ Density $density;
            final /* synthetic */ State<Boolean> $isMagnifierShown$delegate;
            final /* synthetic */ PlatformMagnifier $magnifier;
            final /* synthetic */ kotlin.jvm.internal.o0 $previousSize;
            final /* synthetic */ State<Offset> $sourceCenterInRoot$delegate;
            final /* synthetic */ State<l<Density, Offset>> $updatedMagnifierCenter$delegate;
            final /* synthetic */ State<l<DpSize, l0>> $updatedOnSizeChanged$delegate;
            final /* synthetic */ State<Float> $updatedZoom$delegate;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            AnonymousClass2(PlatformMagnifier platformMagnifier, Density density, State<Boolean> state, State<Offset> state2, State<? extends l<? super Density, Offset>> state3, MutableState<Offset> mutableState, State<Float> state4, kotlin.jvm.internal.o0 o0Var, State<? extends l<? super DpSize, l0>> state5) {
                super(0);
                this.$magnifier = platformMagnifier;
                this.$density = density;
                this.$isMagnifierShown$delegate = state;
                this.$sourceCenterInRoot$delegate = state2;
                this.$updatedMagnifierCenter$delegate = state3;
                this.$anchorPositionInRoot$delegate = mutableState;
                this.$updatedZoom$delegate = state4;
                this.$previousSize = o0Var;
                this.$updatedOnSizeChanged$delegate = state5;
            }

            @Override // e8.a
            public /* bridge */ /* synthetic */ l0 invoke() {
                invoke2();
                return l0.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (!MagnifierKt$magnifier$4.k(this.$isMagnifierShown$delegate)) {
                    this.$magnifier.dismiss();
                    return;
                }
                PlatformMagnifier platformMagnifier = this.$magnifier;
                long jR = MagnifierKt$magnifier$4.r(this.$sourceCenterInRoot$delegate);
                Object objInvoke = MagnifierKt$magnifier$4.n(this.$updatedMagnifierCenter$delegate).invoke(this.$density);
                MutableState<Offset> mutableState = this.$anchorPositionInRoot$delegate;
                long jU = ((Offset) objInvoke).u();
                platformMagnifier.b(jR, OffsetKt.c(jU) ? Offset.r(MagnifierKt$magnifier$4.j(mutableState), jU) : Offset.Companion.b(), MagnifierKt$magnifier$4.o(this.$updatedZoom$delegate));
                long jA = this.$magnifier.a();
                kotlin.jvm.internal.o0 o0Var = this.$previousSize;
                Density density = this.$density;
                State<l<DpSize, l0>> state = this.$updatedOnSizeChanged$delegate;
                if (IntSize.e(jA, o0Var.element)) {
                    return;
                }
                o0Var.element = jA;
                l lVarQ = MagnifierKt$magnifier$4.q(state);
                if (lVarQ != null) {
                    lVarQ.invoke(DpSize.c(density.q(IntSizeKt.b(jA))));
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(PlatformMagnifierFactory platformMagnifierFactory, MagnifierStyle magnifierStyle, View view, Density density, float f, w<l0> wVar, State<? extends l<? super DpSize, l0>> state, State<Boolean> state2, State<Offset> state3, State<? extends l<? super Density, Offset>> state4, MutableState<Offset> mutableState, State<Float> state5, d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$platformMagnifierFactory = platformMagnifierFactory;
            this.$style = magnifierStyle;
            this.$view = view;
            this.$density = density;
            this.$zoom = f;
            this.$onNeedsUpdate = wVar;
            this.$updatedOnSizeChanged$delegate = state;
            this.$isMagnifierShown$delegate = state2;
            this.$sourceCenterInRoot$delegate = state3;
            this.$updatedMagnifierCenter$delegate = state4;
            this.$anchorPositionInRoot$delegate = mutableState;
            this.$updatedZoom$delegate = state5;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$platformMagnifierFactory, this.$style, this.$view, this.$density, this.$zoom, this.$onNeedsUpdate, this.$updatedOnSizeChanged$delegate, this.$isMagnifierShown$delegate, this.$sourceCenterInRoot$delegate, this.$updatedMagnifierCenter$delegate, this.$anchorPositionInRoot$delegate, this.$updatedZoom$delegate, dVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX INFO: renamed from: androidx.compose.foundation.MagnifierKt$magnifier$4$1$1, reason: invalid class name and collision with other inner class name */
        @f(c = "androidx.compose.foundation.MagnifierKt$magnifier$4$1$1", f = "Magnifier.kt", l = {}, m = "invokeSuspend")
        static final class C00261 extends kotlin.coroutines.jvm.internal.l implements p<l0, d<? super l0>, Object> {
            final /* synthetic */ PlatformMagnifier $magnifier;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00261(PlatformMagnifier platformMagnifier, d<? super C00261> dVar) {
                super(2, dVar);
                this.$magnifier = platformMagnifier;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                return new C00261(this.$magnifier, dVar);
            }

            @Override // e8.p
            @Nullable
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(@NotNull l0 l0Var, @Nullable d<? super l0> dVar) {
                return ((C00261) create(l0Var, dVar)).invokeSuspend(l0.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                kotlin.coroutines.intrinsics.d.e();
                if (this.label == 0) {
                    w7.w.b(obj);
                    this.$magnifier.c();
                    return l0.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
            return ((AnonymousClass1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
            PlatformMagnifier platformMagnifier;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                platformMagnifier = (PlatformMagnifier) this.L$0;
                try {
                    w7.w.b(obj);
                    platformMagnifier.dismiss();
                    return l0.INSTANCE;
                } catch (Throwable th) {
                    th = th;
                    platformMagnifier.dismiss();
                    throw th;
                }
            }
            w7.w.b(obj);
            o0 o0Var = (o0) this.L$0;
            PlatformMagnifier platformMagnifierA = this.$platformMagnifierFactory.a(this.$style, this.$view, this.$density, this.$zoom);
            kotlin.jvm.internal.o0 o0Var2 = new kotlin.jvm.internal.o0();
            long jA = platformMagnifierA.a();
            Density density = this.$density;
            l lVarQ = MagnifierKt$magnifier$4.q(this.$updatedOnSizeChanged$delegate);
            if (lVarQ != null) {
                lVarQ.invoke(DpSize.c(density.q(IntSizeKt.b(jA))));
            }
            o0Var2.element = jA;
            i.C(i.F(this.$onNeedsUpdate, new C00261(platformMagnifierA, null)), o0Var);
            try {
                g gVarO = SnapshotStateKt.o(new AnonymousClass2(platformMagnifierA, this.$density, this.$isMagnifierShown$delegate, this.$sourceCenterInRoot$delegate, this.$updatedMagnifierCenter$delegate, this.$anchorPositionInRoot$delegate, this.$updatedZoom$delegate, o0Var2, this.$updatedOnSizeChanged$delegate));
                this.L$0 = platformMagnifierA;
                this.label = 1;
                if (i.k(gVarO, this) == objE) {
                    return objE;
                }
                platformMagnifier = platformMagnifierA;
                platformMagnifier.dismiss();
                return l0.INSTANCE;
            } catch (Throwable th2) {
                th = th2;
                platformMagnifier = platformMagnifierA;
                platformMagnifier.dismiss();
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.MagnifierKt$magnifier$4$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements l<LayoutCoordinates, l0> {
        final /* synthetic */ MutableState<Offset> $anchorPositionInRoot$delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(MutableState<Offset> mutableState) {
            super(1);
            this.$anchorPositionInRoot$delegate = mutableState;
        }

        public final void a(@NotNull LayoutCoordinates it) {
            t.j(it, "it");
            MagnifierKt$magnifier$4.l(this.$anchorPositionInRoot$delegate, LayoutCoordinatesKt.e(it));
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(LayoutCoordinates layoutCoordinates) {
            a(layoutCoordinates);
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.MagnifierKt$magnifier$4$3, reason: invalid class name */
    static final class AnonymousClass3 extends v implements l<DrawScope, l0> {
        final /* synthetic */ w<l0> $onNeedsUpdate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(w<l0> wVar) {
            super(1);
            this.$onNeedsUpdate = wVar;
        }

        public final void a(@NotNull DrawScope drawBehind) {
            t.j(drawBehind, "$this$drawBehind");
            this.$onNeedsUpdate.c(l0.INSTANCE);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(DrawScope drawScope) {
            a(drawScope);
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.MagnifierKt$magnifier$4$4, reason: invalid class name */
    static final class AnonymousClass4 extends v implements l<SemanticsPropertyReceiver, l0> {
        final /* synthetic */ State<Offset> $sourceCenterInRoot$delegate;

        /* JADX INFO: renamed from: androidx.compose.foundation.MagnifierKt$magnifier$4$4$1, reason: invalid class name */
        static final class AnonymousClass1 extends v implements e8.a<Offset> {
            final /* synthetic */ State<Offset> $sourceCenterInRoot$delegate;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(State<Offset> state) {
                super(0);
                this.$sourceCenterInRoot$delegate = state;
            }

            public final long b() {
                return MagnifierKt$magnifier$4.r(this.$sourceCenterInRoot$delegate);
            }

            @Override // e8.a
            public /* bridge */ /* synthetic */ Offset invoke() {
                return Offset.d(b());
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass4(State<Offset> state) {
            super(1);
            this.$sourceCenterInRoot$delegate = state;
        }

        public final void a(@NotNull SemanticsPropertyReceiver semantics) {
            t.j(semantics, "$this$semantics");
            semantics.a(MagnifierKt.a(), new AnonymousClass1(this.$sourceCenterInRoot$delegate));
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
            a(semanticsPropertyReceiver);
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    MagnifierKt$magnifier$4(l<? super Density, Offset> lVar, l<? super Density, Offset> lVar2, float f, l<? super DpSize, l0> lVar3, PlatformMagnifierFactory platformMagnifierFactory, MagnifierStyle magnifierStyle) {
        super(3);
        this.$sourceCenter = lVar;
        this.$magnifierCenter = lVar2;
        this.$zoom = f;
        this.$onSizeChanged = lVar3;
        this.$platformMagnifierFactory = platformMagnifierFactory;
        this.$style = magnifierStyle;
    }

    @Composable
    @NotNull
    public final Modifier i(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(-454877003);
        View view = (View) composer.x(AndroidCompositionLocals_androidKt.k());
        Density density = (Density) composer.x(CompositionLocalsKt.e());
        composer.G(-492369756);
        Object objH = composer.H();
        Composer.Companion companion = Composer.Companion;
        if (objH == companion.a()) {
            objH = SnapshotStateKt__SnapshotStateKt.e(Offset.d(Offset.Companion.b()), null, 2, null);
            composer.z(objH);
        }
        composer.Q();
        MutableState mutableState = (MutableState) objH;
        State stateN = SnapshotStateKt.n(this.$sourceCenter, composer, 0);
        State stateN2 = SnapshotStateKt.n(this.$magnifierCenter, composer, 0);
        State stateN3 = SnapshotStateKt.n(Float.valueOf(this.$zoom), composer, 0);
        State stateN4 = SnapshotStateKt.n(this.$onSizeChanged, composer, 0);
        composer.G(-492369756);
        Object objH2 = composer.H();
        if (objH2 == companion.a()) {
            objH2 = SnapshotStateKt.c(new MagnifierKt$magnifier$4$sourceCenterInRoot$2$1(density, stateN, mutableState));
            composer.z(objH2);
        }
        composer.Q();
        State state = (State) objH2;
        composer.G(-492369756);
        Object objH3 = composer.H();
        if (objH3 == companion.a()) {
            objH3 = SnapshotStateKt.c(new MagnifierKt$magnifier$4$isMagnifierShown$2$1(state));
            composer.z(objH3);
        }
        composer.Q();
        State state2 = (State) objH3;
        composer.G(-492369756);
        Object objH4 = composer.H();
        if (objH4 == companion.a()) {
            objH4 = d0.b(1, 0, kotlinx.coroutines.channels.a.DROP_OLDEST, 2, null);
            composer.z(objH4);
        }
        composer.Q();
        w wVar = (w) objH4;
        float f = this.$platformMagnifierFactory.b() ? 0.0f : this.$zoom;
        MagnifierStyle magnifierStyle = this.$style;
        EffectsKt.g(new Object[]{view, density, Float.valueOf(f), magnifierStyle, Boolean.valueOf(t.e(magnifierStyle, MagnifierStyle.Companion.b()))}, new AnonymousClass1(this.$platformMagnifierFactory, this.$style, view, density, this.$zoom, wVar, stateN4, state2, state, stateN2, mutableState, stateN3, null), composer, 8);
        Modifier modifierC = SemanticsModifierKt.c(DrawModifierKt.a(OnGloballyPositionedModifierKt.a(composed, new AnonymousClass2(mutableState)), new AnonymousClass3(wVar)), false, new AnonymousClass4(state), 1, null);
        composer.Q();
        return modifierC;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return i(modifier, composer, num.intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long j(MutableState<Offset> mutableState) {
        return mutableState.getValue().u();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean k(State<Boolean> state) {
        return state.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(MutableState<Offset> mutableState, long j6) {
        mutableState.setValue(Offset.d(j6));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final l<Density, Offset> m(State<? extends l<? super Density, Offset>> state) {
        return (l) state.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final l<Density, Offset> n(State<? extends l<? super Density, Offset>> state) {
        return (l) state.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float o(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final l<DpSize, l0> q(State<? extends l<? super DpSize, l0>> state) {
        return (l) state.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long r(State<Offset> state) {
        return state.getValue().u();
    }
}
