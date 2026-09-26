package androidx.compose.material;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.DragScope;
import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.foundation.gestures.GestureCancellationException;
import androidx.compose.foundation.gestures.PressGestureScope;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
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
import kotlin.coroutines.jvm.internal.b;
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
final class SliderKt$sliderTapModifier$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ DraggableState $draggableState;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ State<l<Float, l0>> $gestureEndAction;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ boolean $isRtl;
    final /* synthetic */ float $maxPx;
    final /* synthetic */ MutableState<Float> $pressOffset;
    final /* synthetic */ State<Float> $rawOffset;

    /* JADX INFO: renamed from: androidx.compose.material.SliderKt$sliderTapModifier$2$1, reason: invalid class name */
    @f(c = "androidx.compose.material.SliderKt$sliderTapModifier$2$1", f = "Slider.kt", l = {882}, m = "invokeSuspend")
    static final class AnonymousClass1 extends kotlin.coroutines.jvm.internal.l implements p<PointerInputScope, d<? super l0>, Object> {
        final /* synthetic */ DraggableState $draggableState;
        final /* synthetic */ State<l<Float, l0>> $gestureEndAction;
        final /* synthetic */ boolean $isRtl;
        final /* synthetic */ float $maxPx;
        final /* synthetic */ MutableState<Float> $pressOffset;
        final /* synthetic */ State<Float> $rawOffset;
        final /* synthetic */ o0 $scope;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.compose.material.SliderKt$sliderTapModifier$2$1$2, reason: invalid class name */
        static final class AnonymousClass2 extends v implements l<Offset, l0> {
            final /* synthetic */ DraggableState $draggableState;
            final /* synthetic */ State<l<Float, l0>> $gestureEndAction;
            final /* synthetic */ o0 $scope;

            /* JADX INFO: renamed from: androidx.compose.material.SliderKt$sliderTapModifier$2$1$2$1, reason: invalid class name and collision with other inner class name */
            @f(c = "androidx.compose.material.SliderKt$sliderTapModifier$2$1$2$1", f = "Slider.kt", l = {894}, m = "invokeSuspend")
            static final class C00681 extends kotlin.coroutines.jvm.internal.l implements p<o0, d<? super l0>, Object> {
                final /* synthetic */ DraggableState $draggableState;
                final /* synthetic */ State<l<Float, l0>> $gestureEndAction;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                C00681(DraggableState draggableState, State<? extends l<? super Float, l0>> state, d<? super C00681> dVar) {
                    super(2, dVar);
                    this.$draggableState = draggableState;
                    this.$gestureEndAction = state;
                }

                @Override // kotlin.coroutines.jvm.internal.a
                @NotNull
                public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                    return new C00681(this.$draggableState, this.$gestureEndAction, dVar);
                }

                /* JADX INFO: renamed from: androidx.compose.material.SliderKt$sliderTapModifier$2$1$2$1$1, reason: invalid class name and collision with other inner class name */
                @f(c = "androidx.compose.material.SliderKt$sliderTapModifier$2$1$2$1$1", f = "Slider.kt", l = {}, m = "invokeSuspend")
                static final class C00691 extends kotlin.coroutines.jvm.internal.l implements p<DragScope, d<? super l0>, Object> {
                    private /* synthetic */ Object L$0;
                    int label;

                    C00691(d<? super C00691> dVar) {
                        super(2, dVar);
                    }

                    @Override // kotlin.coroutines.jvm.internal.a
                    @NotNull
                    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                        C00691 c00691 = new C00691(dVar);
                        c00691.L$0 = obj;
                        return c00691;
                    }

                    @Override // e8.p
                    @Nullable
                    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
                    public final Object invoke(@NotNull DragScope dragScope, @Nullable d<? super l0> dVar) {
                        return ((C00691) create(dragScope, dVar)).invokeSuspend(l0.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.a
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        kotlin.coroutines.intrinsics.d.e();
                        if (this.label == 0) {
                            w.b(obj);
                            ((DragScope) this.L$0).a(0.0f);
                            return l0.INSTANCE;
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }

                @Override // e8.p
                @Nullable
                public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
                    return ((C00681) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
                        DraggableState draggableState = this.$draggableState;
                        MutatePriority mutatePriority = MutatePriority.UserInput;
                        C00691 c00691 = new C00691(null);
                        this.label = 1;
                        if (draggableState.b(mutatePriority, c00691, this) == objE) {
                            return objE;
                        }
                    }
                    this.$gestureEndAction.getValue().invoke(b.c(0.0f));
                    return l0.INSTANCE;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            AnonymousClass2(o0 o0Var, DraggableState draggableState, State<? extends l<? super Float, l0>> state) {
                super(1);
                this.$scope = o0Var;
                this.$draggableState = draggableState;
                this.$gestureEndAction = state;
            }

            public final void a(long j6) {
                k.d(this.$scope, null, null, new C00681(this.$draggableState, this.$gestureEndAction, null), 3, null);
            }

            @Override // e8.l
            public /* bridge */ /* synthetic */ l0 invoke(Offset offset) {
                a(offset.u());
                return l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(boolean z6, float f, MutableState<Float> mutableState, State<Float> state, o0 o0Var, DraggableState draggableState, State<? extends l<? super Float, l0>> state2, d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$isRtl = z6;
            this.$maxPx = f;
            this.$pressOffset = mutableState;
            this.$rawOffset = state;
            this.$scope = o0Var;
            this.$draggableState = draggableState;
            this.$gestureEndAction = state2;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$isRtl, this.$maxPx, this.$pressOffset, this.$rawOffset, this.$scope, this.$draggableState, this.$gestureEndAction, dVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable d<? super l0> dVar) {
            return ((AnonymousClass1) create(pointerInputScope, dVar)).invokeSuspend(l0.INSTANCE);
        }

        /* JADX INFO: renamed from: androidx.compose.material.SliderKt$sliderTapModifier$2$1$1, reason: invalid class name and collision with other inner class name */
        @f(c = "androidx.compose.material.SliderKt$sliderTapModifier$2$1$1", f = "Slider.kt", l = {887}, m = "invokeSuspend")
        static final class C00671 extends kotlin.coroutines.jvm.internal.l implements q<PressGestureScope, Offset, d<? super l0>, Object> {
            final /* synthetic */ boolean $isRtl;
            final /* synthetic */ float $maxPx;
            final /* synthetic */ MutableState<Float> $pressOffset;
            final /* synthetic */ State<Float> $rawOffset;
            /* synthetic */ long J$0;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00671(boolean z6, float f, MutableState<Float> mutableState, State<Float> state, d<? super C00671> dVar) {
                super(3, dVar);
                this.$isRtl = z6;
                this.$maxPx = f;
                this.$pressOffset = mutableState;
                this.$rawOffset = state;
            }

            @Nullable
            public final Object f(@NotNull PressGestureScope pressGestureScope, long j6, @Nullable d<? super l0> dVar) {
                C00671 c00671 = new C00671(this.$isRtl, this.$maxPx, this.$pressOffset, this.$rawOffset, dVar);
                c00671.L$0 = pressGestureScope;
                c00671.J$0 = j6;
                return c00671.invokeSuspend(l0.INSTANCE);
            }

            @Override // e8.q
            public /* bridge */ /* synthetic */ Object invoke(PressGestureScope pressGestureScope, Offset offset, d<? super l0> dVar) {
                return f(pressGestureScope, offset.u(), dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                float fM;
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i10 = this.label;
                try {
                    if (i10 != 0) {
                        if (i10 == 1) {
                            w.b(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        w.b(obj);
                        PressGestureScope pressGestureScope = (PressGestureScope) this.L$0;
                        long j6 = this.J$0;
                        if (this.$isRtl) {
                            fM = this.$maxPx - Offset.m(j6);
                        } else {
                            fM = Offset.m(j6);
                        }
                        this.$pressOffset.setValue(b.c(fM - this.$rawOffset.getValue().floatValue()));
                        this.label = 1;
                        if (pressGestureScope.A0(this) == objE) {
                            return objE;
                        }
                    }
                } catch (GestureCancellationException unused) {
                    this.$pressOffset.setValue(b.c(0.0f));
                }
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
                C00671 c00671 = new C00671(this.$isRtl, this.$maxPx, this.$pressOffset, this.$rawOffset, null);
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$scope, this.$draggableState, this.$gestureEndAction);
                this.label = 1;
                if (TapGestureDetectorKt.k(pointerInputScope, null, null, c00671, anonymousClass2, this, 3, null) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SliderKt$sliderTapModifier$2(boolean z6, DraggableState draggableState, MutableInteractionSource mutableInteractionSource, float f, boolean z10, MutableState<Float> mutableState, State<Float> state, State<? extends l<? super Float, l0>> state2) {
        super(3);
        this.$enabled = z6;
        this.$draggableState = draggableState;
        this.$interactionSource = mutableInteractionSource;
        this.$maxPx = f;
        this.$isRtl = z10;
        this.$pressOffset = mutableState;
        this.$rawOffset = state;
        this.$gestureEndAction = state2;
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(1945228890);
        if (this.$enabled) {
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
            composed = SuspendingPointerInputFilterKt.d(composed, new Object[]{this.$draggableState, this.$interactionSource, Float.valueOf(this.$maxPx), Boolean.valueOf(this.$isRtl)}, new AnonymousClass1(this.$isRtl, this.$maxPx, this.$pressOffset, this.$rawOffset, o0VarA, this.$draggableState, this.$gestureEndAction, null));
        }
        composer.Q();
        return composed;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
