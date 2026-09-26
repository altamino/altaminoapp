package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import e8.p;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.k;
import kotlin.coroutines.jvm.internal.l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes6.dex */
@f(c = "androidx.compose.ui.input.pointer.PointerInteropFilter_androidKt$motionEventSpy$1", f = "PointerInteropFilter.android.kt", l = {343}, m = "invokeSuspend")
final class PointerInteropFilter_androidKt$motionEventSpy$1 extends l implements p<PointerInputScope, kotlin.coroutines.d<? super l0>, Object> {
    final /* synthetic */ e8.l<MotionEvent, l0> $watcher;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    PointerInteropFilter_androidKt$motionEventSpy$1(e8.l<? super MotionEvent, l0> lVar, kotlin.coroutines.d<? super PointerInteropFilter_androidKt$motionEventSpy$1> dVar) {
        super(2, dVar);
        this.$watcher = lVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        PointerInteropFilter_androidKt$motionEventSpy$1 pointerInteropFilter_androidKt$motionEventSpy$1 = new PointerInteropFilter_androidKt$motionEventSpy$1(this.$watcher, dVar);
        pointerInteropFilter_androidKt$motionEventSpy$1.L$0 = obj;
        return pointerInteropFilter_androidKt$motionEventSpy$1;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable kotlin.coroutines.d<? super l0> dVar) {
        return ((PointerInteropFilter_androidKt$motionEventSpy$1) create(pointerInputScope, dVar)).invokeSuspend(l0.INSTANCE);
    }

    /* JADX INFO: renamed from: androidx.compose.ui.input.pointer.PointerInteropFilter_androidKt$motionEventSpy$1$1, reason: invalid class name */
    @f(c = "androidx.compose.ui.input.pointer.PointerInteropFilter_androidKt$motionEventSpy$1$1", f = "PointerInteropFilter.android.kt", l = {345}, m = "invokeSuspend")
    static final class AnonymousClass1 extends k implements p<AwaitPointerEventScope, kotlin.coroutines.d<? super l0>, Object> {
        final /* synthetic */ e8.l<MotionEvent, l0> $watcher;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(e8.l<? super MotionEvent, l0> lVar, kotlin.coroutines.d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$watcher = lVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$watcher, dVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            return ((AnonymousClass1) create(awaitPointerEventScope, dVar)).invokeSuspend(l0.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0033 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:12:0x0034  */
        /* JADX WARN: Code duplicated, block: B:15:0x0041  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0034 -> B:13:0x0039). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:12:0x0034
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.a
        @org.jetbrains.annotations.Nullable
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r7) {
            /*
                r6 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.b.e()
                int r1 = r6.label
                r2 = 1
                if (r1 == 0) goto L1e
                if (r1 != r2) goto L16
                java.lang.Object r1 = r6.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                w7.w.b(r7)
                r3 = r1
                r1 = r0
                r0 = r6
                goto L39
            L16:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L1e:
                w7.w.b(r7)
                java.lang.Object r7 = r6.L$0
                androidx.compose.ui.input.pointer.AwaitPointerEventScope r7 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r7
                r1 = r7
                r7 = r6
            L27:
                androidx.compose.ui.input.pointer.PointerEventPass r3 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                r7.L$0 = r1
                r7.label = r2
                java.lang.Object r3 = r1.u0(r3, r7)
                if (r3 != r0) goto L34
                return r0
            L34:
                r5 = r0
                r0 = r7
                r7 = r3
                r3 = r1
                r1 = r5
            L39:
                androidx.compose.ui.input.pointer.PointerEvent r7 = (androidx.compose.ui.input.pointer.PointerEvent) r7
                android.view.MotionEvent r7 = r7.e()
                if (r7 == 0) goto L46
                e8.l<android.view.MotionEvent, w7.l0> r4 = r0.$watcher
                r4.invoke(r7)
            L46:
                r7 = r0
                r0 = r1
                r1 = r3
                goto L27
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.pointer.PointerInteropFilter_androidKt$motionEventSpy$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
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
            pointerInputScope.t0(true);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$watcher, null);
            this.label = 1;
            if (pointerInputScope.J(anonymousClass1, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
