package androidx.compose.foundation;

import androidx.compose.foundation.gestures.PressGestureScope;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import e8.p;
import e8.q;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes2.dex */
@f(c = "androidx.compose.foundation.ClickableKt$combinedClickable$4$gesture$1", f = "Clickable.kt", l = {TypedValues.AttributesType.TYPE_PIVOT_TARGET}, m = "invokeSuspend")
final class ClickableKt$combinedClickable$4$gesture$1 extends l implements p<PointerInputScope, d<? super l0>, Object> {
    final /* synthetic */ State<e8.a<Boolean>> $delayPressInteraction;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ boolean $hasDoubleClick;
    final /* synthetic */ boolean $hasLongClick;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ State<e8.a<l0>> $onClickState;
    final /* synthetic */ State<e8.a<l0>> $onDoubleClickState;
    final /* synthetic */ State<e8.a<l0>> $onLongClickState;
    final /* synthetic */ MutableState<PressInteraction.Press> $pressedInteraction;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: renamed from: androidx.compose.foundation.ClickableKt$combinedClickable$4$gesture$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements e8.l<Offset, l0> {
        final /* synthetic */ State<e8.a<l0>> $onDoubleClickState;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(State<? extends e8.a<l0>> state) {
            super(1);
            this.$onDoubleClickState = state;
        }

        public final void a(long j6) {
            e8.a<l0> value = this.$onDoubleClickState.getValue();
            if (value != null) {
                value.invoke();
            }
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Offset offset) {
            a(offset.u());
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.ClickableKt$combinedClickable$4$gesture$1$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements e8.l<Offset, l0> {
        final /* synthetic */ State<e8.a<l0>> $onLongClickState;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(State<? extends e8.a<l0>> state) {
            super(1);
            this.$onLongClickState = state;
        }

        public final void a(long j6) {
            e8.a<l0> value = this.$onLongClickState.getValue();
            if (value != null) {
                value.invoke();
            }
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Offset offset) {
            a(offset.u());
            return l0.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.ClickableKt$combinedClickable$4$gesture$1$4, reason: invalid class name */
    static final class AnonymousClass4 extends v implements e8.l<Offset, l0> {
        final /* synthetic */ boolean $enabled;
        final /* synthetic */ State<e8.a<l0>> $onClickState;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass4(boolean z6, State<? extends e8.a<l0>> state) {
            super(1);
            this.$enabled = z6;
            this.$onClickState = state;
        }

        public final void a(long j6) {
            if (this.$enabled) {
                this.$onClickState.getValue().invoke();
            }
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Offset offset) {
            a(offset.u());
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ClickableKt$combinedClickable$4$gesture$1(boolean z6, boolean z10, boolean z11, State<? extends e8.a<l0>> state, State<? extends e8.a<l0>> state2, MutableInteractionSource mutableInteractionSource, MutableState<PressInteraction.Press> mutableState, State<? extends e8.a<Boolean>> state3, State<? extends e8.a<l0>> state4, d<? super ClickableKt$combinedClickable$4$gesture$1> dVar) {
        super(2, dVar);
        this.$hasDoubleClick = z6;
        this.$enabled = z10;
        this.$hasLongClick = z11;
        this.$onDoubleClickState = state;
        this.$onLongClickState = state2;
        this.$interactionSource = mutableInteractionSource;
        this.$pressedInteraction = mutableState;
        this.$delayPressInteraction = state3;
        this.$onClickState = state4;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        ClickableKt$combinedClickable$4$gesture$1 clickableKt$combinedClickable$4$gesture$1 = new ClickableKt$combinedClickable$4$gesture$1(this.$hasDoubleClick, this.$enabled, this.$hasLongClick, this.$onDoubleClickState, this.$onLongClickState, this.$interactionSource, this.$pressedInteraction, this.$delayPressInteraction, this.$onClickState, dVar);
        clickableKt$combinedClickable$4$gesture$1.L$0 = obj;
        return clickableKt$combinedClickable$4$gesture$1;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable d<? super l0> dVar) {
        return ((ClickableKt$combinedClickable$4$gesture$1) create(pointerInputScope, dVar)).invokeSuspend(l0.INSTANCE);
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.ClickableKt$combinedClickable$4$gesture$1$3, reason: invalid class name */
    @f(c = "androidx.compose.foundation.ClickableKt$combinedClickable$4$gesture$1$3", f = "Clickable.kt", l = {331}, m = "invokeSuspend")
    static final class AnonymousClass3 extends l implements q<PressGestureScope, Offset, d<? super l0>, Object> {
        final /* synthetic */ State<e8.a<Boolean>> $delayPressInteraction;
        final /* synthetic */ boolean $enabled;
        final /* synthetic */ MutableInteractionSource $interactionSource;
        final /* synthetic */ MutableState<PressInteraction.Press> $pressedInteraction;
        /* synthetic */ long J$0;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass3(boolean z6, MutableInteractionSource mutableInteractionSource, MutableState<PressInteraction.Press> mutableState, State<? extends e8.a<Boolean>> state, d<? super AnonymousClass3> dVar) {
            super(3, dVar);
            this.$enabled = z6;
            this.$interactionSource = mutableInteractionSource;
            this.$pressedInteraction = mutableState;
            this.$delayPressInteraction = state;
        }

        @Nullable
        public final Object f(@NotNull PressGestureScope pressGestureScope, long j6, @Nullable d<? super l0> dVar) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$enabled, this.$interactionSource, this.$pressedInteraction, this.$delayPressInteraction, dVar);
            anonymousClass3.L$0 = pressGestureScope;
            anonymousClass3.J$0 = j6;
            return anonymousClass3.invokeSuspend(l0.INSTANCE);
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
                long j6 = this.J$0;
                if (this.$enabled) {
                    MutableInteractionSource mutableInteractionSource = this.$interactionSource;
                    MutableState<PressInteraction.Press> mutableState = this.$pressedInteraction;
                    State<e8.a<Boolean>> state = this.$delayPressInteraction;
                    this.label = 1;
                    if (ClickableKt.j(pressGestureScope, j6, mutableInteractionSource, mutableState, state, this) == objE) {
                        return objE;
                    }
                }
            }
            return l0.INSTANCE;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        AnonymousClass1 anonymousClass1;
        AnonymousClass2 anonymousClass2;
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
            if (this.$hasDoubleClick && this.$enabled) {
                anonymousClass1 = new AnonymousClass1(this.$onDoubleClickState);
            } else {
                anonymousClass1 = null;
            }
            if (this.$hasLongClick && this.$enabled) {
                anonymousClass2 = new AnonymousClass2(this.$onLongClickState);
            } else {
                anonymousClass2 = null;
            }
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$enabled, this.$interactionSource, this.$pressedInteraction, this.$delayPressInteraction, null);
            AnonymousClass4 anonymousClass4 = new AnonymousClass4(this.$enabled, this.$onClickState);
            this.label = 1;
            if (TapGestureDetectorKt.j(pointerInputScope, anonymousClass1, anonymousClass2, anonymousClass3, anonymousClass4, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
