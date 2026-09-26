package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.PressGestureScope;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import e8.l;
import e8.p;
import e8.q;
import kotlin.coroutines.d;
import kotlin.coroutines.h;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
final class TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ l<Offset, l0> $onTap;

    /* JADX INFO: renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<DisposableEffectScope, DisposableEffectResult> {
        final /* synthetic */ MutableInteractionSource $interactionSource;
        final /* synthetic */ MutableState<PressInteraction.Press> $pressedInteraction;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(MutableState<PressInteraction.Press> mutableState, MutableInteractionSource mutableInteractionSource) {
            super(1);
            this.$pressedInteraction = mutableState;
            this.$interactionSource = mutableInteractionSource;
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
            t.j(DisposableEffect, "$this$DisposableEffect");
            final MutableState<PressInteraction.Press> mutableState = this.$pressedInteraction;
            final MutableInteractionSource mutableInteractionSource = this.$interactionSource;
            return new DisposableEffectResult() { // from class: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$1$invoke$$inlined$onDispose$1
                @Override // androidx.compose.runtime.DisposableEffectResult
                public void t() {
                    PressInteraction.Press press = (PressInteraction.Press) mutableState.getValue();
                    if (press != null) {
                        PressInteraction.Cancel cancel = new PressInteraction.Cancel(press);
                        MutableInteractionSource mutableInteractionSource2 = mutableInteractionSource;
                        if (mutableInteractionSource2 != null) {
                            mutableInteractionSource2.a(cancel);
                        }
                        mutableState.setValue(null);
                    }
                }
            };
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2, reason: invalid class name */
    @f(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2", f = "TextFieldPressGestureFilter.kt", l = {55}, m = "invokeSuspend")
    static final class AnonymousClass2 extends kotlin.coroutines.jvm.internal.l implements p<PointerInputScope, d<? super l0>, Object> {
        final /* synthetic */ MutableInteractionSource $interactionSource;
        final /* synthetic */ State<l<Offset, l0>> $onTapState;
        final /* synthetic */ MutableState<PressInteraction.Press> $pressedInteraction;
        final /* synthetic */ o0 $scope;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$2, reason: invalid class name and collision with other inner class name */
        static final class C00442 extends v implements l<Offset, l0> {
            final /* synthetic */ State<l<Offset, l0>> $onTapState;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C00442(State<? extends l<? super Offset, l0>> state) {
                super(1);
                this.$onTapState = state;
            }

            public final void a(long j6) {
                this.$onTapState.getValue().invoke(Offset.d(j6));
            }

            @Override // e8.l
            public /* bridge */ /* synthetic */ l0 invoke(Offset offset) {
                a(offset.u());
                return l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(o0 o0Var, MutableState<PressInteraction.Press> mutableState, MutableInteractionSource mutableInteractionSource, State<? extends l<? super Offset, l0>> state, d<? super AnonymousClass2> dVar) {
            super(2, dVar);
            this.$scope = o0Var;
            this.$pressedInteraction = mutableState;
            this.$interactionSource = mutableInteractionSource;
            this.$onTapState = state;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$scope, this.$pressedInteraction, this.$interactionSource, this.$onTapState, dVar);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable d<? super l0> dVar) {
            return ((AnonymousClass2) create(pointerInputScope, dVar)).invokeSuspend(l0.INSTANCE);
        }

        /* JADX INFO: renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1, reason: invalid class name */
        @f(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1", f = "TextFieldPressGestureFilter.kt", l = {68}, m = "invokeSuspend")
        static final class AnonymousClass1 extends kotlin.coroutines.jvm.internal.l implements q<PressGestureScope, Offset, d<? super l0>, Object> {
            final /* synthetic */ MutableInteractionSource $interactionSource;
            final /* synthetic */ MutableState<PressInteraction.Press> $pressedInteraction;
            final /* synthetic */ o0 $scope;
            /* synthetic */ long J$0;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX INFO: renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1, reason: invalid class name and collision with other inner class name */
            @f(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1", f = "TextFieldPressGestureFilter.kt", l = {61, 65}, m = "invokeSuspend")
            static final class C00421 extends kotlin.coroutines.jvm.internal.l implements p<o0, d<? super l0>, Object> {
                final /* synthetic */ MutableInteractionSource $interactionSource;
                final /* synthetic */ long $it;
                final /* synthetic */ MutableState<PressInteraction.Press> $pressedInteraction;
                Object L$0;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C00421(MutableState<PressInteraction.Press> mutableState, long j6, MutableInteractionSource mutableInteractionSource, d<? super C00421> dVar) {
                    super(2, dVar);
                    this.$pressedInteraction = mutableState;
                    this.$it = j6;
                    this.$interactionSource = mutableInteractionSource;
                }

                @Override // kotlin.coroutines.jvm.internal.a
                @NotNull
                public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                    return new C00421(this.$pressedInteraction, this.$it, this.$interactionSource, dVar);
                }

                @Override // e8.p
                @Nullable
                public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
                    return ((C00421) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
                }

                /* JADX WARN: Code duplicated, block: B:22:0x005a  */
                /* JADX WARN: Code duplicated, block: B:24:0x0064 A[RETURN] */
                /* JADX WARN: Code duplicated, block: B:25:0x0065  */
                @Override // kotlin.coroutines.jvm.internal.a
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    MutableState<PressInteraction.Press> mutableState;
                    MutableState<PressInteraction.Press> mutableState2;
                    PressInteraction.Press press;
                    MutableInteractionSource mutableInteractionSource;
                    PressInteraction.Press press2;
                    Object objE = kotlin.coroutines.intrinsics.d.e();
                    int i10 = this.label;
                    if (i10 != 0) {
                        if (i10 != 1) {
                            if (i10 == 2) {
                                press2 = (PressInteraction.Press) this.L$0;
                                w.b(obj);
                            } else {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                        } else {
                            mutableState2 = (MutableState) this.L$0;
                            w.b(obj);
                        }
                        press = press2;
                        this.$pressedInteraction.setValue(press);
                        return l0.INSTANCE;
                    }
                    w.b(obj);
                    PressInteraction.Press value = this.$pressedInteraction.getValue();
                    if (value != null) {
                        MutableInteractionSource mutableInteractionSource2 = this.$interactionSource;
                        mutableState = this.$pressedInteraction;
                        PressInteraction.Cancel cancel = new PressInteraction.Cancel(value);
                        if (mutableInteractionSource2 != null) {
                            this.L$0 = mutableState;
                            this.label = 1;
                            if (mutableInteractionSource2.b(cancel, this) == objE) {
                                return objE;
                            }
                            mutableState2 = mutableState;
                        }
                        mutableState.setValue(null);
                        press = new PressInteraction.Press(this.$it, null);
                        mutableInteractionSource = this.$interactionSource;
                        if (mutableInteractionSource != null) {
                            this.L$0 = press;
                            this.label = 2;
                            if (mutableInteractionSource.b(press, this) == objE) {
                                return objE;
                            }
                            press2 = press;
                            press = press2;
                        }
                    } else {
                        press = new PressInteraction.Press(this.$it, null);
                        mutableInteractionSource = this.$interactionSource;
                        if (mutableInteractionSource != null) {
                            this.L$0 = press;
                            this.label = 2;
                            if (mutableInteractionSource.b(press, this) == objE) {
                                return objE;
                            }
                            press2 = press;
                            press = press2;
                        }
                    }
                    this.$pressedInteraction.setValue(press);
                    return l0.INSTANCE;
                    mutableState = mutableState2;
                    mutableState.setValue(null);
                    press = new PressInteraction.Press(this.$it, null);
                    mutableInteractionSource = this.$interactionSource;
                    if (mutableInteractionSource != null) {
                        this.L$0 = press;
                        this.label = 2;
                        if (mutableInteractionSource.b(press, this) == objE) {
                            return objE;
                        }
                        press2 = press;
                        press = press2;
                    }
                    this.$pressedInteraction.setValue(press);
                    return l0.INSTANCE;
                }
            }

            /* JADX INFO: renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$2, reason: invalid class name and collision with other inner class name */
            @f(c = "androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$2", f = "TextFieldPressGestureFilter.kt", l = {77}, m = "invokeSuspend")
            static final class C00432 extends kotlin.coroutines.jvm.internal.l implements p<o0, d<? super l0>, Object> {
                final /* synthetic */ MutableInteractionSource $interactionSource;
                final /* synthetic */ MutableState<PressInteraction.Press> $pressedInteraction;
                final /* synthetic */ boolean $success;
                Object L$0;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C00432(MutableState<PressInteraction.Press> mutableState, boolean z6, MutableInteractionSource mutableInteractionSource, d<? super C00432> dVar) {
                    super(2, dVar);
                    this.$pressedInteraction = mutableState;
                    this.$success = z6;
                    this.$interactionSource = mutableInteractionSource;
                }

                @Override // kotlin.coroutines.jvm.internal.a
                @NotNull
                public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                    return new C00432(this.$pressedInteraction, this.$success, this.$interactionSource, dVar);
                }

                @Override // e8.p
                @Nullable
                public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
                    return ((C00432) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.a
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    MutableState<PressInteraction.Press> mutableState;
                    Interaction cancel;
                    MutableState<PressInteraction.Press> mutableState2;
                    Object objE = kotlin.coroutines.intrinsics.d.e();
                    int i10 = this.label;
                    if (i10 != 0) {
                        if (i10 == 1) {
                            mutableState2 = (MutableState) this.L$0;
                            w.b(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        w.b(obj);
                        PressInteraction.Press value = this.$pressedInteraction.getValue();
                        if (value != null) {
                            boolean z6 = this.$success;
                            MutableInteractionSource mutableInteractionSource = this.$interactionSource;
                            mutableState = this.$pressedInteraction;
                            if (z6) {
                                cancel = new PressInteraction.Release(value);
                            } else {
                                cancel = new PressInteraction.Cancel(value);
                            }
                            if (mutableInteractionSource != null) {
                                this.L$0 = mutableState;
                                this.label = 1;
                                if (mutableInteractionSource.b(cancel, this) == objE) {
                                    return objE;
                                }
                                mutableState2 = mutableState;
                            }
                            mutableState.setValue(null);
                        }
                        return l0.INSTANCE;
                    }
                    mutableState = mutableState2;
                    mutableState.setValue(null);
                    return l0.INSTANCE;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(o0 o0Var, MutableState<PressInteraction.Press> mutableState, MutableInteractionSource mutableInteractionSource, d<? super AnonymousClass1> dVar) {
                super(3, dVar);
                this.$scope = o0Var;
                this.$pressedInteraction = mutableState;
                this.$interactionSource = mutableInteractionSource;
            }

            @Nullable
            public final Object f(@NotNull PressGestureScope pressGestureScope, long j6, @Nullable d<? super l0> dVar) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$scope, this.$pressedInteraction, this.$interactionSource, dVar);
                anonymousClass1.L$0 = pressGestureScope;
                anonymousClass1.J$0 = j6;
                return anonymousClass1.invokeSuspend(l0.INSTANCE);
            }

            @Override // e8.q
            public /* bridge */ /* synthetic */ Object invoke(PressGestureScope pressGestureScope, Offset offset, d<? super l0> dVar) {
                return f(pressGestureScope, offset.u(), dVar);
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
                    PressGestureScope pressGestureScope = (PressGestureScope) this.L$0;
                    k.d(this.$scope, null, null, new C00421(this.$pressedInteraction, this.J$0, this.$interactionSource, null), 3, null);
                    this.label = 1;
                    obj = pressGestureScope.n0(this);
                    if (obj == objE) {
                        return objE;
                    }
                }
                k.d(this.$scope, null, null, new C00432(this.$pressedInteraction, ((Boolean) obj).booleanValue(), this.$interactionSource, null), 3, null);
                return l0.INSTANCE;
            }
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
                PointerInputScope pointerInputScope = (PointerInputScope) this.L$0;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$scope, this.$pressedInteraction, this.$interactionSource, null);
                C00442 c00442 = new C00442(this.$onTapState);
                this.label = 1;
                if (TapGestureDetectorKt.i(pointerInputScope, anonymousClass1, c00442, this) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1(l<? super Offset, l0> lVar, MutableInteractionSource mutableInteractionSource) {
        super(3);
        this.$onTap = lVar;
        this.$interactionSource = mutableInteractionSource;
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(-102778667);
        composer.G(773894976);
        composer.G(-492369756);
        Object objH = composer.H();
        Composer.Companion companion = Composer.Companion;
        if (objH == companion.a()) {
            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composer));
            composer.z(compositionScopedCoroutineScopeCanceller);
            objH = compositionScopedCoroutineScopeCanceller;
        }
        composer.Q();
        o0 o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
        composer.Q();
        composer.G(-492369756);
        Object objH2 = composer.H();
        if (objH2 == companion.a()) {
            objH2 = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
            composer.z(objH2);
        }
        composer.Q();
        MutableState mutableState = (MutableState) objH2;
        State stateN = SnapshotStateKt.n(this.$onTap, composer, 0);
        MutableInteractionSource mutableInteractionSource = this.$interactionSource;
        EffectsKt.a(mutableInteractionSource, new AnonymousClass1(mutableState, mutableInteractionSource), composer, 0);
        Modifier.Companion companion2 = Modifier.Companion;
        MutableInteractionSource mutableInteractionSource2 = this.$interactionSource;
        Modifier modifierB = SuspendingPointerInputFilterKt.b(companion2, mutableInteractionSource2, new AnonymousClass2(o0VarA, mutableState, mutableInteractionSource2, stateN, null));
        composer.Q();
        return modifierB;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
