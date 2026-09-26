package androidx.compose.foundation.gestures;

import androidx.compose.runtime.State;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputScope;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.k;
import kotlin.coroutines.jvm.internal.l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes3.dex */
@f(c = "androidx.compose.foundation.gestures.ScrollableKt$mouseWheelScroll$1", f = "Scrollable.kt", l = {271}, m = "invokeSuspend")
final class ScrollableKt$mouseWheelScroll$1 extends l implements p<PointerInputScope, d<? super l0>, Object> {
    final /* synthetic */ ScrollConfig $mouseWheelScrollConfig;
    final /* synthetic */ State<ScrollingLogic> $scrollingLogicState;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ScrollableKt$mouseWheelScroll$1(ScrollConfig scrollConfig, State<ScrollingLogic> state, d<? super ScrollableKt$mouseWheelScroll$1> dVar) {
        super(2, dVar);
        this.$mouseWheelScrollConfig = scrollConfig;
        this.$scrollingLogicState = state;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        ScrollableKt$mouseWheelScroll$1 scrollableKt$mouseWheelScroll$1 = new ScrollableKt$mouseWheelScroll$1(this.$mouseWheelScrollConfig, this.$scrollingLogicState, dVar);
        scrollableKt$mouseWheelScroll$1.L$0 = obj;
        return scrollableKt$mouseWheelScroll$1;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable d<? super l0> dVar) {
        return ((ScrollableKt$mouseWheelScroll$1) create(pointerInputScope, dVar)).invokeSuspend(l0.INSTANCE);
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.ScrollableKt$mouseWheelScroll$1$1, reason: invalid class name */
    @f(c = "androidx.compose.foundation.gestures.ScrollableKt$mouseWheelScroll$1$1", f = "Scrollable.kt", l = {273}, m = "invokeSuspend")
    static final class AnonymousClass1 extends k implements p<AwaitPointerEventScope, d<? super l0>, Object> {
        final /* synthetic */ ScrollConfig $mouseWheelScrollConfig;
        final /* synthetic */ State<ScrollingLogic> $scrollingLogicState;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ScrollConfig scrollConfig, State<ScrollingLogic> state, d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$mouseWheelScrollConfig = scrollConfig;
            this.$scrollingLogicState = state;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$mouseWheelScrollConfig, this.$scrollingLogicState, dVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable d<? super l0> dVar) {
            return ((AnonymousClass1) create(awaitPointerEventScope, dVar)).invokeSuspend(l0.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:15:0x0045  */
        /* JADX WARN: Code duplicated, block: B:18:0x0053 A[LOOP:0: B:14:0x0043->B:18:0x0053, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:22:0x007e  */
        /* JADX WARN: Code duplicated, block: B:24:0x0088 A[LOOP:1: B:23:0x0086->B:24:0x0088, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:26:0x0094 A[EDGE_INSN: B:26:0x0094->B:25:0x0094 BREAK  A[LOOP:0: B:14:0x0043->B:18:0x0053], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:27:0x0056 A[SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0032 -> B:13:0x0037). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:22:0x007e
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.a
        @org.jetbrains.annotations.Nullable
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r11) {
            /*
                r10 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.b.e()
                int r1 = r10.label
                r2 = 1
                if (r1 == 0) goto L1e
                if (r1 != r2) goto L16
                java.lang.Object r1 = r10.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                w7.w.b(r11)
                r3 = r1
                r1 = r0
                r0 = r10
                goto L37
            L16:
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r11.<init>(r0)
                throw r11
            L1e:
                w7.w.b(r11)
                java.lang.Object r11 = r10.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r11 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r11
                r1 = r11
                r11 = r10
            L27:
                r11.L$0 = r1
                r11.label = r2
                java.lang.Object r3 = androidx.compose.foundation.gestures.ScrollableKt.a(r1, r11)
                if (r3 != r0) goto L32
                return r0
            L32:
                r9 = r0
                r0 = r11
                r11 = r3
                r3 = r1
                r1 = r9
            L37:
                androidx.compose.ui.input.pointer.PointerEvent r11 = (androidx.compose.ui.input.pointer.PointerEvent) r11
                java.util.List r4 = r11.c()
                int r5 = r4.size()
                r6 = 0
                r7 = r6
            L43:
                if (r7 >= r5) goto L56
                java.lang.Object r8 = r4.get(r7)
                androidx.compose.ui.input.pointer.PointerInputChange r8 = (androidx.compose.ui.input.pointer.PointerInputChange) r8
                boolean r8 = r8.m()
                r8 = r8 ^ r2
                if (r8 != 0) goto L53
                goto L94
            L53:
                int r7 = r7 + 1
                goto L43
            L56:
                androidx.compose.foundation.gestures.ScrollConfig r4 = r0.$mouseWheelScrollConfig
                androidx.compose.runtime.State<androidx.compose.foundation.gestures.ScrollingLogic> r5 = r0.$scrollingLogicState
                long r7 = r3.a()
                long r7 = r4.a(r3, r11, r7)
                java.lang.Object r4 = r5.getValue()
                androidx.compose.foundation.gestures.ScrollingLogic r4 = (androidx.compose.foundation.gestures.ScrollingLogic) r4
                float r5 = r4.k(r7)
                float r5 = r4.g(r5)
                androidx.compose.foundation.gestures.ScrollableState r4 = r4.d()
                float r4 = r4.a(r5)
                r5 = 0
                int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
                if (r4 != 0) goto L7e
                goto L94
            L7e:
                java.util.List r11 = r11.c()
                int r4 = r11.size()
            L86:
                if (r6 >= r4) goto L94
                java.lang.Object r5 = r11.get(r6)
                androidx.compose.ui.input.pointer.PointerInputChange r5 = (androidx.compose.ui.input.pointer.PointerInputChange) r5
                r5.a()
                int r6 = r6 + 1
                goto L86
            L94:
                r11 = r0
                r0 = r1
                r1 = r3
                goto L27
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ScrollableKt$mouseWheelScroll$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
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
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$mouseWheelScrollConfig, this.$scrollingLogicState, null);
            this.label = 1;
            if (pointerInputScope.J(anonymousClass1, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
