package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.k;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
@f(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$detectVerticalDragGestures$5", f = "DragGestureDetector.kt", l = {431}, m = "invokeSuspend")
final class DragGestureDetectorKt$detectVerticalDragGestures$5 extends l implements p<PointerInputScope, d<? super l0>, Object> {
    final /* synthetic */ e8.a<l0> $onDragCancel;
    final /* synthetic */ e8.a<l0> $onDragEnd;
    final /* synthetic */ e8.l<Offset, l0> $onDragStart;
    final /* synthetic */ p<PointerInputChange, Float, l0> $onVerticalDrag;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    DragGestureDetectorKt$detectVerticalDragGestures$5(e8.l<? super Offset, l0> lVar, p<? super PointerInputChange, ? super Float, l0> pVar, e8.a<l0> aVar, e8.a<l0> aVar2, d<? super DragGestureDetectorKt$detectVerticalDragGestures$5> dVar) {
        super(2, dVar);
        this.$onDragStart = lVar;
        this.$onVerticalDrag = pVar;
        this.$onDragEnd = aVar;
        this.$onDragCancel = aVar2;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        DragGestureDetectorKt$detectVerticalDragGestures$5 dragGestureDetectorKt$detectVerticalDragGestures$5 = new DragGestureDetectorKt$detectVerticalDragGestures$5(this.$onDragStart, this.$onVerticalDrag, this.$onDragEnd, this.$onDragCancel, dVar);
        dragGestureDetectorKt$detectVerticalDragGestures$5.L$0 = obj;
        return dragGestureDetectorKt$detectVerticalDragGestures$5;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable d<? super l0> dVar) {
        return ((DragGestureDetectorKt$detectVerticalDragGestures$5) create(pointerInputScope, dVar)).invokeSuspend(l0.INSTANCE);
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectVerticalDragGestures$5$1, reason: invalid class name */
    @f(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$detectVerticalDragGestures$5$1", f = "DragGestureDetector.kt", l = {432, 434, 442}, m = "invokeSuspend")
    static final class AnonymousClass1 extends k implements p<AwaitPointerEventScope, d<? super l0>, Object> {
        final /* synthetic */ e8.a<l0> $onDragCancel;
        final /* synthetic */ e8.a<l0> $onDragEnd;
        final /* synthetic */ e8.l<Offset, l0> $onDragStart;
        final /* synthetic */ p<PointerInputChange, Float, l0> $onVerticalDrag;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectVerticalDragGestures$5$1$1, reason: invalid class name and collision with other inner class name */
        static final class C00311 extends v implements e8.l<PointerInputChange, l0> {
            final /* synthetic */ p<PointerInputChange, Float, l0> $onVerticalDrag;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C00311(p<? super PointerInputChange, ? super Float, l0> pVar) {
                super(1);
                this.$onVerticalDrag = pVar;
            }

            public final void a(@NotNull PointerInputChange it) {
                t.j(it, "it");
                this.$onVerticalDrag.invoke(it, Float.valueOf(Offset.n(PointerEventKt.g(it))));
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
        AnonymousClass1(e8.l<? super Offset, l0> lVar, p<? super PointerInputChange, ? super Float, l0> pVar, e8.a<l0> aVar, e8.a<l0> aVar2, d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$onDragStart = lVar;
            this.$onVerticalDrag = pVar;
            this.$onDragEnd = aVar;
            this.$onDragCancel = aVar2;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$onDragStart, this.$onVerticalDrag, this.$onDragEnd, this.$onDragCancel, dVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable d<? super l0> dVar) {
            return ((AnonymousClass1) create(awaitPointerEventScope, dVar)).invokeSuspend(l0.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:22:0x0071  */
        /* JADX WARN: Code duplicated, block: B:24:0x00a1 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:27:0x00aa  */
        /* JADX WARN: Code duplicated, block: B:28:0x00b0  */
        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            AwaitPointerEventScope awaitPointerEventScope;
            AwaitPointerEventScope awaitPointerEventScope2;
            m0 m0Var;
            PointerInputChange pointerInputChange;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 == 3) {
                            w.b(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        m0Var = (m0) this.L$1;
                        awaitPointerEventScope2 = (AwaitPointerEventScope) this.L$0;
                        w.b(obj);
                        pointerInputChange = (PointerInputChange) obj;
                        if (pointerInputChange != null) {
                            this.$onDragStart.invoke(Offset.d(pointerInputChange.f()));
                            this.$onVerticalDrag.invoke(pointerInputChange, kotlin.coroutines.jvm.internal.b.c(m0Var.element));
                            long jE = pointerInputChange.e();
                            C00311 c00311 = new C00311(this.$onVerticalDrag);
                            this.L$0 = null;
                            this.L$1 = null;
                            this.label = 3;
                            obj = DragGestureDetectorKt.r(awaitPointerEventScope2, jE, c00311, this);
                            if (obj == objE) {
                                return objE;
                            }
                        }
                        return l0.INSTANCE;
                    }
                } else {
                    awaitPointerEventScope = (AwaitPointerEventScope) this.L$0;
                    w.b(obj);
                }
                if (((Boolean) obj).booleanValue()) {
                    this.$onDragEnd.invoke();
                } else {
                    this.$onDragCancel.invoke();
                }
                return l0.INSTANCE;
            }
            w.b(obj);
            AwaitPointerEventScope awaitPointerEventScope3 = (AwaitPointerEventScope) this.L$0;
            this.L$0 = awaitPointerEventScope3;
            this.label = 1;
            Object objD = TapGestureDetectorKt.d(awaitPointerEventScope3, false, this);
            if (objD == objE) {
                return objE;
            }
            awaitPointerEventScope = awaitPointerEventScope3;
            obj = objD;
            PointerInputChange pointerInputChange2 = (PointerInputChange) obj;
            m0 m0Var2 = new m0();
            long jE2 = pointerInputChange2.e();
            int iK = pointerInputChange2.k();
            DragGestureDetectorKt$detectVerticalDragGestures$5$1$drag$1 dragGestureDetectorKt$detectVerticalDragGestures$5$1$drag$1 = new DragGestureDetectorKt$detectVerticalDragGestures$5$1$drag$1(m0Var2);
            this.L$0 = awaitPointerEventScope;
            this.L$1 = m0Var2;
            this.label = 2;
            obj = DragGestureDetectorKt.j(awaitPointerEventScope, jE2, iK, dragGestureDetectorKt$detectVerticalDragGestures$5$1$drag$1, this);
            if (obj == objE) {
                return objE;
            }
            awaitPointerEventScope2 = awaitPointerEventScope;
            m0Var = m0Var2;
            pointerInputChange = (PointerInputChange) obj;
            if (pointerInputChange != null) {
                this.$onDragStart.invoke(Offset.d(pointerInputChange.f()));
                this.$onVerticalDrag.invoke(pointerInputChange, kotlin.coroutines.jvm.internal.b.c(m0Var.element));
                long jE3 = pointerInputChange.e();
                C00311 c00312 = new C00311(this.$onVerticalDrag);
                this.L$0 = null;
                this.L$1 = null;
                this.label = 3;
                obj = DragGestureDetectorKt.r(awaitPointerEventScope2, jE3, c00312, this);
                if (obj == objE) {
                    return objE;
                }
                if (((Boolean) obj).booleanValue()) {
                    this.$onDragEnd.invoke();
                } else {
                    this.$onDragCancel.invoke();
                }
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
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$onDragStart, this.$onVerticalDrag, this.$onDragEnd, this.$onDragCancel, null);
            this.label = 1;
            if (pointerInputScope.J(anonymousClass1, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
