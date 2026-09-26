package androidx.compose.foundation.gestures;

import androidx.compose.foundation.interaction.DragInteraction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import com.narvii.account.ThirdPartyAccountBaseFragment;
import com.narvii.model.User;
import e8.l;
import e8.p;
import e8.q;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.k;
import kotlin.jvm.internal.p0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.channels.g;
import kotlinx.coroutines.o0;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
final class DraggableKt$draggable$9 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ l<PointerInputChange, Boolean> $canDrag;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ q<o0, Offset, d<? super l0>, Object> $onDragStarted;
    final /* synthetic */ q<o0, Float, d<? super l0>, Object> $onDragStopped;
    final /* synthetic */ Orientation $orientation;
    final /* synthetic */ boolean $reverseDirection;
    final /* synthetic */ e8.a<Boolean> $startDragImmediately;
    final /* synthetic */ p<Composer, Integer, PointerAwareDraggableState> $stateFactory;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DraggableKt$draggable$9$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<DisposableEffectScope, DisposableEffectResult> {
        final /* synthetic */ MutableState<DragInteraction.Start> $draggedInteraction;
        final /* synthetic */ MutableInteractionSource $interactionSource;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(MutableState<DragInteraction.Start> mutableState, MutableInteractionSource mutableInteractionSource) {
            super(1);
            this.$draggedInteraction = mutableState;
            this.$interactionSource = mutableInteractionSource;
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
            t.j(DisposableEffect, "$this$DisposableEffect");
            final MutableState<DragInteraction.Start> mutableState = this.$draggedInteraction;
            final MutableInteractionSource mutableInteractionSource = this.$interactionSource;
            return new DisposableEffectResult() { // from class: androidx.compose.foundation.gestures.DraggableKt$draggable$9$1$invoke$$inlined$onDispose$1
                @Override // androidx.compose.runtime.DisposableEffectResult
                public void t() {
                    DragInteraction.Start start = (DragInteraction.Start) mutableState.getValue();
                    if (start != null) {
                        MutableInteractionSource mutableInteractionSource2 = mutableInteractionSource;
                        if (mutableInteractionSource2 != null) {
                            mutableInteractionSource2.a(new DragInteraction.Cancel(start));
                        }
                        mutableState.setValue(null);
                    }
                }
            };
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DraggableKt$draggable$9$2, reason: invalid class name */
    @f(c = "androidx.compose.foundation.gestures.DraggableKt$draggable$9$2", f = "Draggable.kt", l = {237, 239, 241, ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD, User.USER_ROLE_NEWS_FEED, 257}, m = "invokeSuspend")
    static final class AnonymousClass2 extends kotlin.coroutines.jvm.internal.l implements p<o0, d<? super l0>, Object> {
        final /* synthetic */ kotlinx.coroutines.channels.d<DragEvent> $channel;
        final /* synthetic */ State<DragLogic> $dragLogic$delegate;
        final /* synthetic */ PointerAwareDraggableState $state;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(kotlinx.coroutines.channels.d<DragEvent> dVar, PointerAwareDraggableState pointerAwareDraggableState, State<DragLogic> state, d<? super AnonymousClass2> dVar2) {
            super(2, dVar2);
            this.$channel = dVar;
            this.$state = pointerAwareDraggableState;
            this.$dragLogic$delegate = state;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$channel, this.$state, this.$dragLogic$delegate, dVar);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DraggableKt$draggable$9$2$2, reason: invalid class name and collision with other inner class name */
        @f(c = "androidx.compose.foundation.gestures.DraggableKt$draggable$9$2$2", f = "Draggable.kt", l = {246}, m = "invokeSuspend")
        static final class C00322 extends kotlin.coroutines.jvm.internal.l implements p<PointerAwareDragScope, d<? super l0>, Object> {
            final /* synthetic */ kotlinx.coroutines.channels.d<DragEvent> $channel;
            final /* synthetic */ p0<DragEvent> $event;
            private /* synthetic */ Object L$0;
            Object L$1;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00322(p0<DragEvent> p0Var, kotlinx.coroutines.channels.d<DragEvent> dVar, d<? super C00322> dVar2) {
                super(2, dVar2);
                this.$event = p0Var;
                this.$channel = dVar;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                C00322 c00322 = new C00322(this.$event, this.$channel, dVar);
                c00322.L$0 = obj;
                return c00322;
            }

            @Override // e8.p
            @Nullable
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(@NotNull PointerAwareDragScope pointerAwareDragScope, @Nullable d<? super l0> dVar) {
                return ((C00322) create(pointerAwareDragScope, dVar)).invokeSuspend(l0.INSTANCE);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x005e -> B:23:0x0064). Please report as a decompilation issue!!! */
            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                PointerAwareDragScope pointerAwareDragScope;
                C00322 c00322;
                DragEvent dragEvent;
                DragEvent.DragDelta dragDelta;
                C00322 c00323;
                T t5;
                PointerAwareDragScope pointerAwareDragScope2;
                p0<DragEvent> p0Var;
                Object obj2;
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i10 = this.label;
                if (i10 != 0) {
                    if (i10 == 1) {
                        p0<DragEvent> p0Var2 = (p0) this.L$1;
                        PointerAwareDragScope pointerAwareDragScope3 = (PointerAwareDragScope) this.L$0;
                        w.b(obj);
                        pointerAwareDragScope2 = pointerAwareDragScope3;
                        p0Var = p0Var2;
                        obj2 = objE;
                        c00323 = this;
                        t5 = obj;
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    w.b(obj);
                    pointerAwareDragScope = (PointerAwareDragScope) this.L$0;
                    c00322 = this;
                    dragEvent = c00322.$event.element;
                    if ((dragEvent instanceof DragEvent.DragStopped) && !(dragEvent instanceof DragEvent.DragCancelled)) {
                        if (dragEvent instanceof DragEvent.DragDelta) {
                            dragDelta = (DragEvent.DragDelta) dragEvent;
                        } else {
                            dragDelta = null;
                        }
                        if (dragDelta != null) {
                            pointerAwareDragScope.a(dragDelta.a(), dragDelta.b());
                        }
                        p0<DragEvent> p0Var3 = c00322.$event;
                        kotlinx.coroutines.channels.d<DragEvent> dVar = c00322.$channel;
                        c00322.L$0 = pointerAwareDragScope;
                        c00322.L$1 = p0Var3;
                        c00322.label = 1;
                        Object objV = dVar.v(c00322);
                        if (objV == objE) {
                            return objE;
                        }
                        Object obj3 = objE;
                        c00323 = c00322;
                        t5 = objV;
                        pointerAwareDragScope2 = pointerAwareDragScope;
                        p0Var = p0Var3;
                        obj2 = obj3;
                    } else {
                        return l0.INSTANCE;
                    }
                }
                p0Var.element = t5;
                c00322 = c00323;
                objE = obj2;
                pointerAwareDragScope = pointerAwareDragScope2;
                dragEvent = c00322.$event.element;
                if (dragEvent instanceof DragEvent.DragStopped) {
                }
                return l0.INSTANCE;
            }
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
            return ((AnonymousClass2) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:24:0x006e  */
        /* JADX WARN: Code duplicated, block: B:26:0x0084 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:27:0x0085  */
        /* JADX WARN: Code duplicated, block: B:30:0x0093  */
        /* JADX WARN: Code duplicated, block: B:32:0x00ac A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:33:0x00ad  */
        /* JADX WARN: Code duplicated, block: B:36:0x00c6 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:37:0x00c7  */
        /* JADX WARN: Code duplicated, block: B:40:0x00d5 A[Catch: CancellationException -> 0x00eb, TryCatch #0 {CancellationException -> 0x00eb, blocks: (B:38:0x00c9, B:40:0x00d5, B:46:0x00ee, B:48:0x00f2), top: B:61:0x00c9 }] */
        /* JADX WARN: Code duplicated, block: B:42:0x00e4 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:46:0x00ee A[Catch: CancellationException -> 0x00eb, TryCatch #0 {CancellationException -> 0x00eb, blocks: (B:38:0x00c9, B:40:0x00d5, B:46:0x00ee, B:48:0x00f2), top: B:61:0x00c9 }] */
        /* JADX WARN: Code duplicated, block: B:48:0x00f2 A[Catch: CancellationException -> 0x00eb, TRY_LEAVE, TryCatch #0 {CancellationException -> 0x00eb, blocks: (B:38:0x00c9, B:40:0x00d5, B:46:0x00ee, B:48:0x00f2), top: B:61:0x00c9 }] */
        /* JADX WARN: Code duplicated, block: B:50:0x00ff A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:51:0x0100  */
        /* JADX WARN: Code duplicated, block: B:57:0x011d  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v11, types: [T] */
        /* JADX WARN: Type inference failed for: r10v14 */
        /* JADX WARN: Type inference failed for: r10v16, types: [androidx.compose.foundation.gestures.DragLogic] */
        /* JADX WARN: Type inference failed for: r10v18, types: [java.lang.Object, kotlinx.coroutines.o0] */
        /* JADX WARN: Type inference failed for: r10v2, types: [androidx.compose.foundation.gestures.DragLogic] */
        /* JADX WARN: Type inference failed for: r10v20 */
        /* JADX WARN: Type inference failed for: r10v25 */
        /* JADX WARN: Type inference failed for: r10v26 */
        /* JADX WARN: Type inference failed for: r10v27 */
        /* JADX WARN: Type inference failed for: r10v29 */
        /* JADX WARN: Type inference failed for: r10v30 */
        /* JADX WARN: Type inference failed for: r10v4 */
        /* JADX WARN: Type inference failed for: r10v6 */
        /* JADX WARN: Type inference failed for: r10v7 */
        /* JADX WARN: Type inference failed for: r1v0, types: [int] */
        /* JADX WARN: Type inference failed for: r1v1 */
        /* JADX WARN: Type inference failed for: r1v12 */
        /* JADX WARN: Type inference failed for: r1v17 */
        /* JADX WARN: Type inference failed for: r1v2 */
        /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, kotlinx.coroutines.o0] */
        /* JADX WARN: Type inference failed for: r1v31 */
        /* JADX WARN: Type inference failed for: r1v34 */
        /* JADX WARN: Type inference failed for: r1v41 */
        /* JADX WARN: Type inference failed for: r1v42 */
        /* JADX WARN: Type inference failed for: r1v43 */
        /* JADX WARN: Type inference failed for: r1v6 */
        /* JADX WARN: Type inference failed for: r3v18 */
        /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Object, kotlinx.coroutines.o0] */
        /* JADX WARN: Type inference failed for: r3v5 */
        /* JADX WARN: Type inference failed for: r4v10 */
        /* JADX WARN: Type inference failed for: r4v11 */
        /* JADX WARN: Type inference failed for: r4v12 */
        /* JADX WARN: Type inference failed for: r4v2, types: [androidx.compose.foundation.gestures.DragLogic] */
        /* JADX WARN: Type inference failed for: r4v3, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r4v4, types: [java.lang.Object, kotlinx.coroutines.o0] */
        /* JADX WARN: Type inference failed for: r4v7 */
        /* JADX WARN: Type inference failed for: r8v2 */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0100 -> B:22:0x0068). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x0119 -> B:22:0x0068). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x011d -> B:22:0x0068). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.a
        @org.jetbrains.annotations.Nullable
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r10) {
            /*
                Method dump skipped, instruction units count: 310
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DraggableKt$draggable$9.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    DraggableKt$draggable$9(p<? super Composer, ? super Integer, ? extends PointerAwareDraggableState> pVar, MutableInteractionSource mutableInteractionSource, e8.a<Boolean> aVar, l<? super PointerInputChange, Boolean> lVar, q<? super o0, ? super Offset, ? super d<? super l0>, ? extends Object> qVar, q<? super o0, ? super Float, ? super d<? super l0>, ? extends Object> qVar2, Orientation orientation, boolean z6, boolean z10) {
        super(3);
        this.$stateFactory = pVar;
        this.$interactionSource = mutableInteractionSource;
        this.$startDragImmediately = aVar;
        this.$canDrag = lVar;
        this.$onDragStarted = qVar;
        this.$onDragStopped = qVar2;
        this.$orientation = orientation;
        this.$enabled = z6;
        this.$reverseDirection = z10;
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DraggableKt$draggable$9$3, reason: invalid class name */
    @f(c = "androidx.compose.foundation.gestures.DraggableKt$draggable$9$3", f = "Draggable.kt", l = {TarConstants.VERSION_OFFSET}, m = "invokeSuspend")
    static final class AnonymousClass3 extends kotlin.coroutines.jvm.internal.l implements p<PointerInputScope, d<? super l0>, Object> {
        final /* synthetic */ State<l<PointerInputChange, Boolean>> $canDragState;
        final /* synthetic */ kotlinx.coroutines.channels.d<DragEvent> $channel;
        final /* synthetic */ boolean $enabled;
        final /* synthetic */ Orientation $orientation;
        final /* synthetic */ boolean $reverseDirection;
        final /* synthetic */ State<e8.a<Boolean>> $startImmediatelyState;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DraggableKt$draggable$9$3$1, reason: invalid class name */
        @f(c = "androidx.compose.foundation.gestures.DraggableKt$draggable$9$3$1", f = "Draggable.kt", l = {265}, m = "invokeSuspend")
        static final class AnonymousClass1 extends kotlin.coroutines.jvm.internal.l implements p<o0, d<? super l0>, Object> {
            final /* synthetic */ PointerInputScope $$this$pointerInput;
            final /* synthetic */ State<l<PointerInputChange, Boolean>> $canDragState;
            final /* synthetic */ kotlinx.coroutines.channels.d<DragEvent> $channel;
            final /* synthetic */ Orientation $orientation;
            final /* synthetic */ boolean $reverseDirection;
            final /* synthetic */ State<e8.a<Boolean>> $startImmediatelyState;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DraggableKt$draggable$9$3$1$1, reason: invalid class name and collision with other inner class name */
            @f(c = "androidx.compose.foundation.gestures.DraggableKt$draggable$9$3$1$1", f = "Draggable.kt", l = {268, 276}, m = "invokeSuspend")
            static final class C00331 extends k implements p<AwaitPointerEventScope, d<? super l0>, Object> {
                final /* synthetic */ o0 $$this$coroutineScope;
                final /* synthetic */ State<l<PointerInputChange, Boolean>> $canDragState;
                final /* synthetic */ kotlinx.coroutines.channels.d<DragEvent> $channel;
                final /* synthetic */ Orientation $orientation;
                final /* synthetic */ boolean $reverseDirection;
                final /* synthetic */ State<e8.a<Boolean>> $startImmediatelyState;
                int I$0;
                private /* synthetic */ Object L$0;
                Object L$1;
                Object L$2;
                Object L$3;
                Object L$4;
                boolean Z$0;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                C00331(o0 o0Var, State<? extends l<? super PointerInputChange, Boolean>> state, State<? extends e8.a<Boolean>> state2, Orientation orientation, kotlinx.coroutines.channels.d<DragEvent> dVar, boolean z6, d<? super C00331> dVar2) {
                    super(2, dVar2);
                    this.$$this$coroutineScope = o0Var;
                    this.$canDragState = state;
                    this.$startImmediatelyState = state2;
                    this.$orientation = orientation;
                    this.$channel = dVar;
                    this.$reverseDirection = z6;
                }

                @Override // kotlin.coroutines.jvm.internal.a
                @NotNull
                public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                    C00331 c00331 = new C00331(this.$$this$coroutineScope, this.$canDragState, this.$startImmediatelyState, this.$orientation, this.$channel, this.$reverseDirection, dVar);
                    c00331.L$0 = obj;
                    return c00331;
                }

                @Override // e8.p
                @Nullable
                /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
                public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable d<? super l0> dVar) {
                    return ((C00331) create(awaitPointerEventScope, dVar)).invokeSuspend(l0.INSTANCE);
                }

                /* JADX WARN: Code duplicated, block: B:19:0x006a  */
                /* JADX WARN: Code duplicated, block: B:21:0x008b A[RETURN] */
                /* JADX WARN: Code duplicated, block: B:22:0x008c  */
                /* JADX WARN: Code duplicated, block: B:25:0x0093  */
                /* JADX WARN: Code duplicated, block: B:30:0x00c2 A[RETURN] */
                /* JADX WARN: Code duplicated, block: B:31:0x00c3  */
                /* JADX WARN: Code duplicated, block: B:34:0x00d9  */
                /* JADX WARN: Code duplicated, block: B:36:0x00e5  */
                /* JADX WARN: Code duplicated, block: B:37:0x00e7  */
                /* JADX WARN: Code duplicated, block: B:39:0x00ee  */
                /* JADX WARN: Code duplicated, block: B:67:0x0158  */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00c3 -> B:75:0x00d1). Please report as a decompilation issue!!! */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x0132 -> B:41:0x00f3). Please report as a decompilation issue!!! */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:67:0x0158 -> B:17:0x0062). Please report as a decompilation issue!!! */
                /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
                    jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
                    	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
                    	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
                    	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
                    */
                @Override // kotlin.coroutines.jvm.internal.a
                @org.jetbrains.annotations.Nullable
                public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r22) {
                    /*
                        Method dump skipped, instruction units count: 353
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DraggableKt$draggable$9.AnonymousClass3.AnonymousClass1.C00331.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            AnonymousClass1(PointerInputScope pointerInputScope, State<? extends l<? super PointerInputChange, Boolean>> state, State<? extends e8.a<Boolean>> state2, Orientation orientation, kotlinx.coroutines.channels.d<DragEvent> dVar, boolean z6, d<? super AnonymousClass1> dVar2) {
                super(2, dVar2);
                this.$$this$pointerInput = pointerInputScope;
                this.$canDragState = state;
                this.$startImmediatelyState = state2;
                this.$orientation = orientation;
                this.$channel = dVar;
                this.$reverseDirection = z6;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$$this$pointerInput, this.$canDragState, this.$startImmediatelyState, this.$orientation, this.$channel, this.$reverseDirection, dVar);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // e8.p
            @Nullable
            public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
                return ((AnonymousClass1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
            }

            /* JADX WARN: Code duplicated, block: B:22:0x0050  */
            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                o0 o0Var;
                CancellationException e;
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i10 = this.label;
                if (i10 != 0) {
                    if (i10 == 1) {
                        o0Var = (o0) this.L$0;
                        try {
                            w.b(obj);
                        } catch (CancellationException e2) {
                            e = e2;
                            if (!kotlinx.coroutines.p0.h(o0Var)) {
                                throw e;
                            }
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    w.b(obj);
                    o0 o0Var2 = (o0) this.L$0;
                    try {
                        PointerInputScope pointerInputScope = this.$$this$pointerInput;
                        C00331 c00331 = new C00331(o0Var2, this.$canDragState, this.$startImmediatelyState, this.$orientation, this.$channel, this.$reverseDirection, null);
                        this.L$0 = o0Var2;
                        this.label = 1;
                        if (pointerInputScope.J(c00331, this) == objE) {
                            return objE;
                        }
                    } catch (CancellationException e6) {
                        o0Var = o0Var2;
                        e = e6;
                        if (!kotlinx.coroutines.p0.h(o0Var)) {
                            throw e;
                        }
                    }
                }
                return l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass3(boolean z6, State<? extends l<? super PointerInputChange, Boolean>> state, State<? extends e8.a<Boolean>> state2, Orientation orientation, kotlinx.coroutines.channels.d<DragEvent> dVar, boolean z10, d<? super AnonymousClass3> dVar2) {
            super(2, dVar2);
            this.$enabled = z6;
            this.$canDragState = state;
            this.$startImmediatelyState = state2;
            this.$orientation = orientation;
            this.$channel = dVar;
            this.$reverseDirection = z10;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$enabled, this.$canDragState, this.$startImmediatelyState, this.$orientation, this.$channel, this.$reverseDirection, dVar);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable d<? super l0> dVar) {
            return ((AnonymousClass3) create(pointerInputScope, dVar)).invokeSuspend(l0.INSTANCE);
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
                if (!this.$enabled) {
                    return l0.INSTANCE;
                }
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(pointerInputScope, this.$canDragState, this.$startImmediatelyState, this.$orientation, this.$channel, this.$reverseDirection, null);
                this.label = 1;
                if (kotlinx.coroutines.p0.f(anonymousClass1, this) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    @Composable
    @NotNull
    public final Modifier b(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(-1487259950);
        PointerAwareDraggableState pointerAwareDraggableStateInvoke = this.$stateFactory.invoke(composer, 0);
        composer.G(-492369756);
        Object objH = composer.H();
        Composer.Companion companion = Composer.Companion;
        if (objH == companion.a()) {
            objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
            composer.z(objH);
        }
        composer.Q();
        MutableState mutableState = (MutableState) objH;
        MutableInteractionSource mutableInteractionSource = this.$interactionSource;
        EffectsKt.a(mutableInteractionSource, new AnonymousClass1(mutableState, mutableInteractionSource), composer, 0);
        composer.G(-492369756);
        Object objH2 = composer.H();
        if (objH2 == companion.a()) {
            objH2 = g.b(Integer.MAX_VALUE, null, null, 6, null);
            composer.z(objH2);
        }
        composer.Q();
        kotlinx.coroutines.channels.d dVar = (kotlinx.coroutines.channels.d) objH2;
        State stateN = SnapshotStateKt.n(this.$startDragImmediately, composer, 0);
        State stateN2 = SnapshotStateKt.n(this.$canDrag, composer, 0);
        EffectsKt.d(pointerAwareDraggableStateInvoke, new AnonymousClass2(dVar, pointerAwareDraggableStateInvoke, SnapshotStateKt.n(new DragLogic(this.$onDragStarted, this.$onDragStopped, mutableState, this.$interactionSource), composer, 0), null), composer, 0);
        Modifier modifierD = SuspendingPointerInputFilterKt.d(Modifier.Companion, new Object[]{this.$orientation, Boolean.valueOf(this.$enabled), Boolean.valueOf(this.$reverseDirection)}, new AnonymousClass3(this.$enabled, stateN2, stateN, this.$orientation, dVar, this.$reverseDirection, null));
        composer.Q();
        return modifierD;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return b(modifier, composer, num.intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DragLogic c(State<DragLogic> state) {
        return state.getValue();
    }
}
