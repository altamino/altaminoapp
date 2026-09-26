package androidx.compose.material;

import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.interaction.DragInteraction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import e8.p;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.b;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.k;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.k0;
import kotlin.jvm.internal.m0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.u;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
@f(c = "androidx.compose.material.SliderKt$rangeSliderPressDragModifier$1", f = "Slider.kt", l = {955}, m = "invokeSuspend")
final class SliderKt$rangeSliderPressDragModifier$1 extends l implements p<PointerInputScope, d<? super l0>, Object> {
    final /* synthetic */ MutableInteractionSource $endInteractionSource;
    final /* synthetic */ State<e8.l<Boolean, l0>> $gestureEndAction;
    final /* synthetic */ boolean $isRtl;
    final /* synthetic */ float $maxPx;
    final /* synthetic */ State<p<Boolean, Float, l0>> $onDrag;
    final /* synthetic */ State<Float> $rawOffsetEnd;
    final /* synthetic */ State<Float> $rawOffsetStart;
    final /* synthetic */ MutableInteractionSource $startInteractionSource;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: renamed from: androidx.compose.material.SliderKt$rangeSliderPressDragModifier$1$1, reason: invalid class name */
    @f(c = "androidx.compose.material.SliderKt$rangeSliderPressDragModifier$1$1", f = "Slider.kt", l = {956}, m = "invokeSuspend")
    static final class AnonymousClass1 extends l implements p<o0, d<? super l0>, Object> {
        final /* synthetic */ PointerInputScope $$this$pointerInput;
        final /* synthetic */ State<e8.l<Boolean, l0>> $gestureEndAction;
        final /* synthetic */ boolean $isRtl;
        final /* synthetic */ float $maxPx;
        final /* synthetic */ State<p<Boolean, Float, l0>> $onDrag;
        final /* synthetic */ RangeSliderLogic $rangeSliderLogic;
        final /* synthetic */ State<Float> $rawOffsetEnd;
        final /* synthetic */ State<Float> $rawOffsetStart;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(PointerInputScope pointerInputScope, boolean z6, float f, RangeSliderLogic rangeSliderLogic, State<Float> state, State<? extends e8.l<? super Boolean, l0>> state2, State<Float> state3, State<? extends p<? super Boolean, ? super Float, l0>> state4, d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$$this$pointerInput = pointerInputScope;
            this.$isRtl = z6;
            this.$maxPx = f;
            this.$rangeSliderLogic = rangeSliderLogic;
            this.$rawOffsetStart = state;
            this.$gestureEndAction = state2;
            this.$rawOffsetEnd = state3;
            this.$onDrag = state4;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$$this$pointerInput, this.$isRtl, this.$maxPx, this.$rangeSliderLogic, this.$rawOffsetStart, this.$gestureEndAction, this.$rawOffsetEnd, this.$onDrag, dVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX INFO: renamed from: androidx.compose.material.SliderKt$rangeSliderPressDragModifier$1$1$1, reason: invalid class name and collision with other inner class name */
        @f(c = "androidx.compose.material.SliderKt$rangeSliderPressDragModifier$1$1$1", f = "Slider.kt", l = {957}, m = "invokeSuspend")
        static final class C00651 extends l implements p<PointerInputScope, d<? super l0>, Object> {
            final /* synthetic */ o0 $$this$coroutineScope;
            final /* synthetic */ State<e8.l<Boolean, l0>> $gestureEndAction;
            final /* synthetic */ boolean $isRtl;
            final /* synthetic */ float $maxPx;
            final /* synthetic */ State<p<Boolean, Float, l0>> $onDrag;
            final /* synthetic */ RangeSliderLogic $rangeSliderLogic;
            final /* synthetic */ State<Float> $rawOffsetEnd;
            final /* synthetic */ State<Float> $rawOffsetStart;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX INFO: renamed from: androidx.compose.material.SliderKt$rangeSliderPressDragModifier$1$1$1$1, reason: invalid class name and collision with other inner class name */
            @f(c = "androidx.compose.material.SliderKt$rangeSliderPressDragModifier$1$1$1$1", f = "Slider.kt", l = {958, 968, 987}, m = "invokeSuspend")
            static final class C00661 extends k implements p<AwaitPointerEventScope, d<? super l0>, Object> {
                final /* synthetic */ o0 $$this$coroutineScope;
                final /* synthetic */ State<e8.l<Boolean, l0>> $gestureEndAction;
                final /* synthetic */ boolean $isRtl;
                final /* synthetic */ float $maxPx;
                final /* synthetic */ State<p<Boolean, Float, l0>> $onDrag;
                final /* synthetic */ RangeSliderLogic $rangeSliderLogic;
                final /* synthetic */ State<Float> $rawOffsetEnd;
                final /* synthetic */ State<Float> $rawOffsetStart;
                private /* synthetic */ Object L$0;
                Object L$1;
                Object L$2;
                Object L$3;
                Object L$4;
                int label;

                /* JADX INFO: renamed from: androidx.compose.material.SliderKt$rangeSliderPressDragModifier$1$1$1$1$2, reason: invalid class name */
                @f(c = "androidx.compose.material.SliderKt$rangeSliderPressDragModifier$1$1$1$1$2", f = "Slider.kt", l = {1004}, m = "invokeSuspend")
                static final class AnonymousClass2 extends l implements p<o0, d<? super l0>, Object> {
                    final /* synthetic */ k0 $draggingStart;
                    final /* synthetic */ DragInteraction $finishInteraction;
                    final /* synthetic */ RangeSliderLogic $rangeSliderLogic;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass2(RangeSliderLogic rangeSliderLogic, k0 k0Var, DragInteraction dragInteraction, d<? super AnonymousClass2> dVar) {
                        super(2, dVar);
                        this.$rangeSliderLogic = rangeSliderLogic;
                        this.$draggingStart = k0Var;
                        this.$finishInteraction = dragInteraction;
                    }

                    @Override // kotlin.coroutines.jvm.internal.a
                    @NotNull
                    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                        return new AnonymousClass2(this.$rangeSliderLogic, this.$draggingStart, this.$finishInteraction, dVar);
                    }

                    @Override // e8.p
                    @Nullable
                    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
                        return ((AnonymousClass2) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
                            MutableInteractionSource mutableInteractionSourceA = this.$rangeSliderLogic.a(this.$draggingStart.element);
                            DragInteraction dragInteraction = this.$finishInteraction;
                            this.label = 1;
                            if (mutableInteractionSourceA.b(dragInteraction, this) == objE) {
                                return objE;
                            }
                        }
                        return l0.INSTANCE;
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                C00661(boolean z6, float f, RangeSliderLogic rangeSliderLogic, State<Float> state, o0 o0Var, State<? extends e8.l<? super Boolean, l0>> state2, State<Float> state3, State<? extends p<? super Boolean, ? super Float, l0>> state4, d<? super C00661> dVar) {
                    super(2, dVar);
                    this.$isRtl = z6;
                    this.$maxPx = f;
                    this.$rangeSliderLogic = rangeSliderLogic;
                    this.$rawOffsetStart = state;
                    this.$$this$coroutineScope = o0Var;
                    this.$gestureEndAction = state2;
                    this.$rawOffsetEnd = state3;
                    this.$onDrag = state4;
                }

                @Override // kotlin.coroutines.jvm.internal.a
                @NotNull
                public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                    C00661 c00661 = new C00661(this.$isRtl, this.$maxPx, this.$rangeSliderLogic, this.$rawOffsetStart, this.$$this$coroutineScope, this.$gestureEndAction, this.$rawOffsetEnd, this.$onDrag, dVar);
                    c00661.L$0 = obj;
                    return c00661;
                }

                @Override // e8.p
                @Nullable
                /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
                public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable d<? super l0> dVar) {
                    return ((C00661) create(awaitPointerEventScope, dVar)).invokeSuspend(l0.INSTANCE);
                }

                /* JADX WARN: Code duplicated, block: B:36:0x00da  */
                /* JADX WARN: Code duplicated, block: B:53:0x016f A[RETURN] */
                /* JADX WARN: Code duplicated, block: B:54:0x0170  */
                /* JADX WARN: Code duplicated, block: B:57:0x017a A[Catch: CancellationException -> 0x0188, TryCatch #0 {CancellationException -> 0x0188, blocks: (B:8:0x001d, B:55:0x0172, B:57:0x017a, B:58:0x0180), top: B:65:0x001d }] */
                /* JADX WARN: Code duplicated, block: B:58:0x0180 A[Catch: CancellationException -> 0x0188, TRY_LEAVE, TryCatch #0 {CancellationException -> 0x0188, blocks: (B:8:0x001d, B:55:0x0172, B:57:0x017a, B:58:0x0180), top: B:65:0x001d }] */
                @Override // kotlin.coroutines.jvm.internal.a
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) {
                    AwaitPointerEventScope awaitPointerEventScope;
                    Object objD;
                    Object objX;
                    AwaitPointerEventScope awaitPointerEventScope2;
                    PointerInputChange pointerInputChange;
                    m0 m0Var;
                    DragInteraction.Start start;
                    k0 k0Var;
                    u uVar;
                    k0 k0Var2;
                    DragInteraction.Start start2;
                    Object objO;
                    State<Float> state;
                    boolean z6;
                    float fC;
                    DragInteraction cancel;
                    Object objE = kotlin.coroutines.intrinsics.d.e();
                    int i10 = this.label;
                    if (i10 == 0) {
                        w.b(obj);
                        awaitPointerEventScope = (AwaitPointerEventScope) this.L$0;
                        this.L$0 = awaitPointerEventScope;
                        this.label = 1;
                        objD = TapGestureDetectorKt.d(awaitPointerEventScope, false, this);
                        if (objD == objE) {
                            return objE;
                        }
                    } else if (i10 == 1) {
                        awaitPointerEventScope = (AwaitPointerEventScope) this.L$0;
                        w.b(obj);
                        objD = obj;
                    } else {
                        if (i10 != 2) {
                            if (i10 != 3) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            k0Var2 = (k0) this.L$1;
                            start2 = (DragInteraction.Start) this.L$0;
                            try {
                                w.b(obj);
                                objO = obj;
                                if (((Boolean) objO).booleanValue()) {
                                    cancel = new DragInteraction.Stop(start2);
                                } else {
                                    cancel = new DragInteraction.Cancel(start2);
                                }
                            } catch (CancellationException unused) {
                                cancel = new DragInteraction.Cancel(start2);
                            }
                            this.$gestureEndAction.getValue().invoke(b.a(k0Var2.element));
                            kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass2(this.$rangeSliderLogic, k0Var2, cancel, null), 3, null);
                            return l0.INSTANCE;
                        }
                        k0Var = (k0) this.L$4;
                        m0 m0Var2 = (m0) this.L$3;
                        start = (DragInteraction.Start) this.L$2;
                        PointerInputChange pointerInputChange2 = (PointerInputChange) this.L$1;
                        AwaitPointerEventScope awaitPointerEventScope3 = (AwaitPointerEventScope) this.L$0;
                        w.b(obj);
                        awaitPointerEventScope2 = awaitPointerEventScope3;
                        pointerInputChange = pointerInputChange2;
                        m0Var = m0Var2;
                        objX = obj;
                        uVar = (u) objX;
                        if (uVar != null) {
                            state = this.$rawOffsetEnd;
                            State<Float> state2 = this.$rawOffsetStart;
                            z6 = this.$isRtl;
                            fC = DragGestureDetectorCopyKt.c(awaitPointerEventScope2.getViewConfiguration(), pointerInputChange.k());
                            if (Math.abs(state.getValue().floatValue() - m0Var.element) < fC && Math.abs(state2.getValue().floatValue() - m0Var.element) < fC) {
                                float fFloatValue = ((Number) uVar.d()).floatValue();
                                k0Var.element = z6 ? fFloatValue < 0.0f : fFloatValue >= 0.0f;
                                m0Var.element += Offset.m(PointerEventKt.g((PointerInputChange) uVar.c()));
                            }
                        }
                        this.$rangeSliderLogic.b(k0Var.element, m0Var.element, start, this.$$this$coroutineScope);
                        try {
                            long jE = pointerInputChange.e();
                            SliderKt$rangeSliderPressDragModifier$1$1$1$1$finishInteraction$success$1 sliderKt$rangeSliderPressDragModifier$1$1$1$1$finishInteraction$success$1 = new SliderKt$rangeSliderPressDragModifier$1$1$1$1$finishInteraction$success$1(this.$onDrag, k0Var, this.$isRtl);
                            this.L$0 = start;
                            this.L$1 = k0Var;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.L$4 = null;
                            this.label = 3;
                            objO = DragGestureDetectorKt.o(awaitPointerEventScope2, jE, sliderKt$rangeSliderPressDragModifier$1$1$1$1$finishInteraction$success$1, this);
                            if (objO == objE) {
                                return objE;
                            }
                            k0Var2 = k0Var;
                            start2 = start;
                            if (((Boolean) objO).booleanValue()) {
                                cancel = new DragInteraction.Stop(start2);
                            } else {
                                cancel = new DragInteraction.Cancel(start2);
                            }
                            this.$gestureEndAction.getValue().invoke(b.a(k0Var2.element));
                            kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass2(this.$rangeSliderLogic, k0Var2, cancel, null), 3, null);
                            return l0.INSTANCE;
                        } catch (CancellationException unused2) {
                            k0Var2 = k0Var;
                            start2 = start;
                            cancel = new DragInteraction.Cancel(start2);
                        }
                    }
                    AwaitPointerEventScope awaitPointerEventScope4 = awaitPointerEventScope;
                    PointerInputChange pointerInputChange3 = (PointerInputChange) objD;
                    DragInteraction.Start start3 = new DragInteraction.Start();
                    m0 m0Var3 = new m0();
                    float fM = this.$isRtl ? this.$maxPx - Offset.m(pointerInputChange3.f()) : Offset.m(pointerInputChange3.f());
                    m0Var3.element = fM;
                    int iC = this.$rangeSliderLogic.c(fM);
                    k0 k0Var3 = new k0();
                    k0Var3.element = iC == 0 ? this.$rawOffsetStart.getValue().floatValue() > m0Var3.element : iC < 0;
                    long jE2 = pointerInputChange3.e();
                    int iK = pointerInputChange3.k();
                    this.L$0 = awaitPointerEventScope4;
                    this.L$1 = pointerInputChange3;
                    this.L$2 = start3;
                    this.L$3 = m0Var3;
                    this.L$4 = k0Var3;
                    this.label = 2;
                    objX = SliderKt.x(awaitPointerEventScope4, jE2, iK, this);
                    if (objX == objE) {
                        return objE;
                    }
                    awaitPointerEventScope2 = awaitPointerEventScope4;
                    pointerInputChange = pointerInputChange3;
                    m0Var = m0Var3;
                    start = start3;
                    k0Var = k0Var3;
                    uVar = (u) objX;
                    if (uVar != null) {
                        state = this.$rawOffsetEnd;
                        State<Float> state3 = this.$rawOffsetStart;
                        z6 = this.$isRtl;
                        fC = DragGestureDetectorCopyKt.c(awaitPointerEventScope2.getViewConfiguration(), pointerInputChange.k());
                        if (Math.abs(state.getValue().floatValue() - m0Var.element) < fC) {
                            float fFloatValue2 = ((Number) uVar.d()).floatValue();
                            k0Var.element = z6 ? fFloatValue2 < 0.0f : fFloatValue2 >= 0.0f;
                            m0Var.element += Offset.m(PointerEventKt.g((PointerInputChange) uVar.c()));
                        }
                    }
                    this.$rangeSliderLogic.b(k0Var.element, m0Var.element, start, this.$$this$coroutineScope);
                    long jE3 = pointerInputChange.e();
                    SliderKt$rangeSliderPressDragModifier$1$1$1$1$finishInteraction$success$1 sliderKt$rangeSliderPressDragModifier$1$1$1$1$finishInteraction$success$2 = new SliderKt$rangeSliderPressDragModifier$1$1$1$1$finishInteraction$success$1(this.$onDrag, k0Var, this.$isRtl);
                    this.L$0 = start;
                    this.L$1 = k0Var;
                    this.L$2 = null;
                    this.L$3 = null;
                    this.L$4 = null;
                    this.label = 3;
                    objO = DragGestureDetectorKt.o(awaitPointerEventScope2, jE3, sliderKt$rangeSliderPressDragModifier$1$1$1$1$finishInteraction$success$2, this);
                    if (objO == objE) {
                        return objE;
                    }
                    k0Var2 = k0Var;
                    start2 = start;
                    if (((Boolean) objO).booleanValue()) {
                        cancel = new DragInteraction.Stop(start2);
                    } else {
                        cancel = new DragInteraction.Cancel(start2);
                    }
                    this.$gestureEndAction.getValue().invoke(b.a(k0Var2.element));
                    kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass2(this.$rangeSliderLogic, k0Var2, cancel, null), 3, null);
                    return l0.INSTANCE;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C00651(boolean z6, float f, RangeSliderLogic rangeSliderLogic, State<Float> state, o0 o0Var, State<? extends e8.l<? super Boolean, l0>> state2, State<Float> state3, State<? extends p<? super Boolean, ? super Float, l0>> state4, d<? super C00651> dVar) {
                super(2, dVar);
                this.$isRtl = z6;
                this.$maxPx = f;
                this.$rangeSliderLogic = rangeSliderLogic;
                this.$rawOffsetStart = state;
                this.$$this$coroutineScope = o0Var;
                this.$gestureEndAction = state2;
                this.$rawOffsetEnd = state3;
                this.$onDrag = state4;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                C00651 c00651 = new C00651(this.$isRtl, this.$maxPx, this.$rangeSliderLogic, this.$rawOffsetStart, this.$$this$coroutineScope, this.$gestureEndAction, this.$rawOffsetEnd, this.$onDrag, dVar);
                c00651.L$0 = obj;
                return c00651;
            }

            @Override // e8.p
            @Nullable
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable d<? super l0> dVar) {
                return ((C00651) create(pointerInputScope, dVar)).invokeSuspend(l0.INSTANCE);
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
                    C00661 c00661 = new C00661(this.$isRtl, this.$maxPx, this.$rangeSliderLogic, this.$rawOffsetStart, this.$$this$coroutineScope, this.$gestureEndAction, this.$rawOffsetEnd, this.$onDrag, null);
                    this.label = 1;
                    if (pointerInputScope.J(c00661, this) == objE) {
                        return objE;
                    }
                }
                return l0.INSTANCE;
            }
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
                o0 o0Var = (o0) this.L$0;
                PointerInputScope pointerInputScope = this.$$this$pointerInput;
                C00651 c00651 = new C00651(this.$isRtl, this.$maxPx, this.$rangeSliderLogic, this.$rawOffsetStart, o0Var, this.$gestureEndAction, this.$rawOffsetEnd, this.$onDrag, null);
                this.label = 1;
                if (ForEachGestureKt.d(pointerInputScope, c00651, this) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SliderKt$rangeSliderPressDragModifier$1(MutableInteractionSource mutableInteractionSource, MutableInteractionSource mutableInteractionSource2, State<Float> state, State<Float> state2, State<? extends p<? super Boolean, ? super Float, l0>> state3, boolean z6, float f, State<? extends e8.l<? super Boolean, l0>> state4, d<? super SliderKt$rangeSliderPressDragModifier$1> dVar) {
        super(2, dVar);
        this.$startInteractionSource = mutableInteractionSource;
        this.$endInteractionSource = mutableInteractionSource2;
        this.$rawOffsetStart = state;
        this.$rawOffsetEnd = state2;
        this.$onDrag = state3;
        this.$isRtl = z6;
        this.$maxPx = f;
        this.$gestureEndAction = state4;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        SliderKt$rangeSliderPressDragModifier$1 sliderKt$rangeSliderPressDragModifier$1 = new SliderKt$rangeSliderPressDragModifier$1(this.$startInteractionSource, this.$endInteractionSource, this.$rawOffsetStart, this.$rawOffsetEnd, this.$onDrag, this.$isRtl, this.$maxPx, this.$gestureEndAction, dVar);
        sliderKt$rangeSliderPressDragModifier$1.L$0 = obj;
        return sliderKt$rangeSliderPressDragModifier$1;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable d<? super l0> dVar) {
        return ((SliderKt$rangeSliderPressDragModifier$1) create(pointerInputScope, dVar)).invokeSuspend(l0.INSTANCE);
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
            AnonymousClass1 anonymousClass1 = new AnonymousClass1((PointerInputScope) this.L$0, this.$isRtl, this.$maxPx, new RangeSliderLogic(this.$startInteractionSource, this.$endInteractionSource, this.$rawOffsetStart, this.$rawOffsetEnd, this.$onDrag), this.$rawOffsetStart, this.$gestureEndAction, this.$rawOffsetEnd, this.$onDrag, null);
            this.label = 1;
            if (p0.f(anonymousClass1, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
