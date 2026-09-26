package androidx.compose.foundation.text;

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

/* JADX INFO: loaded from: classes2.dex */
@f(c = "androidx.compose.foundation.text.LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2", f = "LongPressTextDragObserver.kt", l = {98}, m = "invokeSuspend")
final class LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2 extends l implements p<PointerInputScope, d<? super l0>, Object> {
    final /* synthetic */ TextDragObserver $observer;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: renamed from: androidx.compose.foundation.text.LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1, reason: invalid class name */
    @f(c = "androidx.compose.foundation.text.LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2$1", f = "LongPressTextDragObserver.kt", l = {99, 103}, m = "invokeSuspend")
    static final class AnonymousClass1 extends k implements p<AwaitPointerEventScope, d<? super l0>, Object> {
        final /* synthetic */ TextDragObserver $observer;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(TextDragObserver textDragObserver, d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$observer = textDragObserver;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$observer, dVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable d<? super l0> dVar) {
            return ((AnonymousClass1) create(awaitPointerEventScope, dVar)).invokeSuspend(l0.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0060 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:19:0x006e  */
        /* JADX WARN: Code duplicated, block: B:21:0x0082  */
        /* JADX WARN: Code duplicated, block: B:27:0x0090 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:29:0x008b A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x005e -> B:17:0x0061). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:27:0x0090
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.a
        @org.jetbrains.annotations.Nullable
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r17) {
            /*
                r16 = this;
                r0 = r16
                java.lang.Object r1 = kotlin.coroutines.intrinsics.b.e()
                int r2 = r0.label
                r3 = 0
                r4 = 2
                r5 = 0
                r6 = 1
                if (r2 == 0) goto L33
                if (r2 == r6) goto L29
                if (r2 != r4) goto L21
                java.lang.Object r2 = r0.L$1
                androidx.compose.ui.input.pointer.PointerInputChange r2 = (androidx.compose.ui.input.pointer.PointerInputChange) r2
                java.lang.Object r7 = r0.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r7 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r7
                w7.w.b(r17)
                r9 = r17
                r8 = r0
                goto L61
            L21:
                java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
                java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                r1.<init>(r2)
                throw r1
            L29:
                java.lang.Object r2 = r0.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r2 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r2
                w7.w.b(r17)
                r7 = r17
                goto L45
            L33:
                w7.w.b(r17)
                java.lang.Object r2 = r0.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r2 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r2
                r0.L$0 = r2
                r0.label = r6
                java.lang.Object r7 = androidx.compose.foundation.gestures.TapGestureDetectorKt.e(r2, r3, r0, r6, r5)
                if (r7 != r1) goto L45
                return r1
            L45:
                androidx.compose.ui.input.pointer.PointerInputChange r7 = (androidx.compose.ui.input.pointer.PointerInputChange) r7
                androidx.compose.foundation.text.TextDragObserver r8 = r0.$observer
                long r9 = r7.f()
                r8.a(r9)
                r8 = r0
                r15 = r7
                r7 = r2
                r2 = r15
            L54:
                r8.L$0 = r7
                r8.L$1 = r2
                r8.label = r4
                java.lang.Object r9 = androidx.compose.ui.input.pointer.b.a(r7, r5, r8, r6, r5)
                if (r9 != r1) goto L61
                return r1
            L61:
                androidx.compose.ui.input.pointer.PointerEvent r9 = (androidx.compose.ui.input.pointer.PointerEvent) r9
                java.util.List r9 = r9.c()
                int r10 = r9.size()
                r11 = r3
            L6c:
                if (r11 >= r10) goto L90
                java.lang.Object r12 = r9.get(r11)
                androidx.compose.ui.input.pointer.PointerInputChange r12 = (androidx.compose.ui.input.pointer.PointerInputChange) r12
                long r13 = r12.e()
                long r3 = r2.e()
                boolean r3 = androidx.compose.ui.input.pointer.PointerId.d(r13, r3)
                if (r3 == 0) goto L8b
                boolean r3 = r12.g()
                if (r3 == 0) goto L8b
                r3 = 0
                r4 = 2
                goto L54
            L8b:
                int r11 = r11 + 1
                r3 = 0
                r4 = 2
                goto L6c
            L90:
                androidx.compose.foundation.text.TextDragObserver r1 = r8.$observer
                r1.d()
                w7.l0 r1 = w7.l0.INSTANCE
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2(TextDragObserver textDragObserver, d<? super LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2> dVar) {
        super(2, dVar);
        this.$observer = textDragObserver;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2 longPressTextDragObserverKt$detectPreDragGesturesWithObserver$2 = new LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2(this.$observer, dVar);
        longPressTextDragObserverKt$detectPreDragGesturesWithObserver$2.L$0 = obj;
        return longPressTextDragObserverKt$detectPreDragGesturesWithObserver$2;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable d<? super l0> dVar) {
        return ((LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2) create(pointerInputScope, dVar)).invokeSuspend(l0.INSTANCE);
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
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$observer, null);
            this.label = 1;
            if (pointerInputScope.J(anonymousClass1, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
