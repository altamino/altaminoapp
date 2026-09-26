package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import e8.p;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.k;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes2.dex */
@f(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGesturesAfterLongPress$5", f = "DragGestureDetector.kt", l = {276, 280, 284}, m = "invokeSuspend")
final class DragGestureDetectorKt$detectDragGesturesAfterLongPress$5 extends l implements p<PointerInputScope, d<? super l0>, Object> {
    final /* synthetic */ p<PointerInputChange, Offset, l0> $onDrag;
    final /* synthetic */ e8.a<l0> $onDragCancel;
    final /* synthetic */ e8.a<l0> $onDragEnd;
    final /* synthetic */ e8.l<Offset, l0> $onDragStart;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    DragGestureDetectorKt$detectDragGesturesAfterLongPress$5(e8.l<? super Offset, l0> lVar, e8.a<l0> aVar, e8.a<l0> aVar2, p<? super PointerInputChange, ? super Offset, l0> pVar, d<? super DragGestureDetectorKt$detectDragGesturesAfterLongPress$5> dVar) {
        super(2, dVar);
        this.$onDragStart = lVar;
        this.$onDragCancel = aVar;
        this.$onDragEnd = aVar2;
        this.$onDrag = pVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        DragGestureDetectorKt$detectDragGesturesAfterLongPress$5 dragGestureDetectorKt$detectDragGesturesAfterLongPress$5 = new DragGestureDetectorKt$detectDragGesturesAfterLongPress$5(this.$onDragStart, this.$onDragCancel, this.$onDragEnd, this.$onDrag, dVar);
        dragGestureDetectorKt$detectDragGesturesAfterLongPress$5.L$0 = obj;
        return dragGestureDetectorKt$detectDragGesturesAfterLongPress$5;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable d<? super l0> dVar) {
        return ((DragGestureDetectorKt$detectDragGesturesAfterLongPress$5) create(pointerInputScope, dVar)).invokeSuspend(l0.INSTANCE);
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGesturesAfterLongPress$5$1, reason: invalid class name */
    @f(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGesturesAfterLongPress$5$1", f = "DragGestureDetector.kt", l = {286}, m = "invokeSuspend")
    static final class AnonymousClass1 extends k implements p<AwaitPointerEventScope, d<? super l0>, Object> {
        final /* synthetic */ PointerInputChange $drag;
        final /* synthetic */ p<PointerInputChange, Offset, l0> $onDrag;
        final /* synthetic */ e8.a<l0> $onDragCancel;
        final /* synthetic */ e8.a<l0> $onDragEnd;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGesturesAfterLongPress$5$1$1, reason: invalid class name and collision with other inner class name */
        static final class C00291 extends v implements e8.l<PointerInputChange, l0> {
            final /* synthetic */ p<PointerInputChange, Offset, l0> $onDrag;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C00291(p<? super PointerInputChange, ? super Offset, l0> pVar) {
                super(1);
                this.$onDrag = pVar;
            }

            public final void a(@NotNull PointerInputChange it) {
                t.j(it, "it");
                this.$onDrag.invoke(it, Offset.d(PointerEventKt.g(it)));
                it.a();
            }

            @Override // e8.l
            public /* bridge */ /* synthetic */ l0 invoke(PointerInputChange pointerInputChange) {
                a(pointerInputChange);
                return l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(PointerInputChange pointerInputChange, e8.a<l0> aVar, e8.a<l0> aVar2, p<? super PointerInputChange, ? super Offset, l0> pVar, d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$drag = pointerInputChange;
            this.$onDragEnd = aVar;
            this.$onDragCancel = aVar2;
            this.$onDrag = pVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$drag, this.$onDragEnd, this.$onDragCancel, this.$onDrag, dVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable d<? super l0> dVar) {
            return ((AnonymousClass1) create(awaitPointerEventScope, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            AwaitPointerEventScope awaitPointerEventScope;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    awaitPointerEventScope = (AwaitPointerEventScope) this.L$0;
                    w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w.b(obj);
                AwaitPointerEventScope awaitPointerEventScope2 = (AwaitPointerEventScope) this.L$0;
                long jE = this.$drag.e();
                C00291 c00291 = new C00291(this.$onDrag);
                this.L$0 = awaitPointerEventScope2;
                this.label = 1;
                Object objN = DragGestureDetectorKt.n(awaitPointerEventScope2, jE, c00291, this);
                if (objN == objE) {
                    return objE;
                }
                awaitPointerEventScope = awaitPointerEventScope2;
                obj = objN;
            }
            if (((Boolean) obj).booleanValue()) {
                List<PointerInputChange> listC = awaitPointerEventScope.v0().c();
                int size = listC.size();
                for (int i11 = 0; i11 < size; i11++) {
                    PointerInputChange pointerInputChange = listC.get(i11);
                    if (PointerEventKt.c(pointerInputChange)) {
                        pointerInputChange.a();
                    }
                }
                this.$onDragEnd.invoke();
            } else {
                this.$onDragCancel.invoke();
            }
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x005d A[Catch: CancellationException -> 0x0017, TRY_LEAVE, TryCatch #0 {CancellationException -> 0x0017, blocks: (B:7:0x0012, B:14:0x0025, B:25:0x0058, B:27:0x005d, B:22:0x004d), top: B:34:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:29:0x0081 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        PointerInputScope pointerInputScope;
        PointerInputChange pointerInputChange;
        AnonymousClass1 anonymousClass1;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        try {
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 == 3) {
                            w.b(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        pointerInputScope = (PointerInputScope) this.L$0;
                        w.b(obj);
                        pointerInputChange = (PointerInputChange) obj;
                        if (pointerInputChange != null) {
                            this.$onDragStart.invoke(Offset.d(pointerInputChange.f()));
                            anonymousClass1 = new AnonymousClass1(pointerInputChange, this.$onDragEnd, this.$onDragCancel, this.$onDrag, null);
                            this.L$0 = null;
                            this.label = 3;
                            if (pointerInputScope.J(anonymousClass1, this) == objE) {
                                return objE;
                            }
                        }
                    }
                } else {
                    pointerInputScope = (PointerInputScope) this.L$0;
                    w.b(obj);
                }
                return l0.INSTANCE;
            }
            w.b(obj);
            PointerInputScope pointerInputScope2 = (PointerInputScope) this.L$0;
            DragGestureDetectorKt$detectDragGesturesAfterLongPress$5$down$1 dragGestureDetectorKt$detectDragGesturesAfterLongPress$5$down$1 = new DragGestureDetectorKt$detectDragGesturesAfterLongPress$5$down$1(null);
            this.L$0 = pointerInputScope2;
            this.label = 1;
            Object objJ = pointerInputScope2.J(dragGestureDetectorKt$detectDragGesturesAfterLongPress$5$down$1, this);
            if (objJ == objE) {
                return objE;
            }
            pointerInputScope = pointerInputScope2;
            obj = objJ;
            PointerInputChange pointerInputChange2 = (PointerInputChange) obj;
            this.L$0 = pointerInputScope;
            this.label = 2;
            obj = DragGestureDetectorKt.g(pointerInputScope, pointerInputChange2, this);
            if (obj == objE) {
                return objE;
            }
            pointerInputChange = (PointerInputChange) obj;
            if (pointerInputChange != null) {
                this.$onDragStart.invoke(Offset.d(pointerInputChange.f()));
                anonymousClass1 = new AnonymousClass1(pointerInputChange, this.$onDragEnd, this.$onDragCancel, this.$onDrag, null);
                this.L$0 = null;
                this.label = 3;
                if (pointerInputScope.J(anonymousClass1, this) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        } catch (CancellationException e) {
            this.$onDragCancel.invoke();
            throw e;
        }
    }
}
