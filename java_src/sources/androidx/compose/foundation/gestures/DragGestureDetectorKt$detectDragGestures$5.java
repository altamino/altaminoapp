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
import kotlin.jvm.internal.o0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes2.dex */
@f(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGestures$5", f = "DragGestureDetector.kt", l = {224}, m = "invokeSuspend")
final class DragGestureDetectorKt$detectDragGestures$5 extends l implements p<PointerInputScope, d<? super l0>, Object> {
    final /* synthetic */ p<PointerInputChange, Offset, l0> $onDrag;
    final /* synthetic */ e8.a<l0> $onDragCancel;
    final /* synthetic */ e8.a<l0> $onDragEnd;
    final /* synthetic */ e8.l<Offset, l0> $onDragStart;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    DragGestureDetectorKt$detectDragGestures$5(e8.l<? super Offset, l0> lVar, p<? super PointerInputChange, ? super Offset, l0> pVar, e8.a<l0> aVar, e8.a<l0> aVar2, d<? super DragGestureDetectorKt$detectDragGestures$5> dVar) {
        super(2, dVar);
        this.$onDragStart = lVar;
        this.$onDrag = pVar;
        this.$onDragCancel = aVar;
        this.$onDragEnd = aVar2;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        DragGestureDetectorKt$detectDragGestures$5 dragGestureDetectorKt$detectDragGestures$5 = new DragGestureDetectorKt$detectDragGestures$5(this.$onDragStart, this.$onDrag, this.$onDragCancel, this.$onDragEnd, dVar);
        dragGestureDetectorKt$detectDragGestures$5.L$0 = obj;
        return dragGestureDetectorKt$detectDragGestures$5;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull PointerInputScope pointerInputScope, @Nullable d<? super l0> dVar) {
        return ((DragGestureDetectorKt$detectDragGestures$5) create(pointerInputScope, dVar)).invokeSuspend(l0.INSTANCE);
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGestures$5$1, reason: invalid class name */
    @f(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGestures$5$1", f = "DragGestureDetector.kt", l = {225, 229, 241}, m = "invokeSuspend")
    static final class AnonymousClass1 extends k implements p<AwaitPointerEventScope, d<? super l0>, Object> {
        final /* synthetic */ p<PointerInputChange, Offset, l0> $onDrag;
        final /* synthetic */ e8.a<l0> $onDragCancel;
        final /* synthetic */ e8.a<l0> $onDragEnd;
        final /* synthetic */ e8.l<Offset, l0> $onDragStart;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGestures$5$1$1, reason: invalid class name and collision with other inner class name */
        static final class C00281 extends v implements p<PointerInputChange, Offset, l0> {
            final /* synthetic */ o0 $overSlop;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00281(o0 o0Var) {
                super(2);
                this.$overSlop = o0Var;
            }

            public final void a(@NotNull PointerInputChange change, long j6) {
                t.j(change, "change");
                change.a();
                this.$overSlop.element = j6;
            }

            @Override // e8.p
            public /* bridge */ /* synthetic */ l0 invoke(PointerInputChange pointerInputChange, Offset offset) {
                a(pointerInputChange, offset.u());
                return l0.INSTANCE;
            }
        }

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGestures$5$1$2, reason: invalid class name */
        static final class AnonymousClass2 extends v implements e8.l<PointerInputChange, l0> {
            final /* synthetic */ p<PointerInputChange, Offset, l0> $onDrag;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            AnonymousClass2(p<? super PointerInputChange, ? super Offset, l0> pVar) {
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
        AnonymousClass1(e8.l<? super Offset, l0> lVar, p<? super PointerInputChange, ? super Offset, l0> pVar, e8.a<l0> aVar, e8.a<l0> aVar2, d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$onDragStart = lVar;
            this.$onDrag = pVar;
            this.$onDragCancel = aVar;
            this.$onDragEnd = aVar2;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$onDragStart, this.$onDrag, this.$onDragCancel, this.$onDragEnd, dVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable d<? super l0> dVar) {
            return ((AnonymousClass1) create(awaitPointerEventScope, dVar)).invokeSuspend(l0.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:18:0x007d A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:19:0x007e  */
        /* JADX WARN: Code duplicated, block: B:22:0x0085  */
        /* JADX WARN: Code duplicated, block: B:27:0x0090  */
        /* JADX WARN: Code duplicated, block: B:29:0x00c2 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:32:0x00cb  */
        /* JADX WARN: Code duplicated, block: B:33:0x00d1  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x007e -> B:20:0x0081). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            AwaitPointerEventScope awaitPointerEventScope;
            AnonymousClass1 anonymousClass1;
            PointerInputChange pointerInputChange;
            AwaitPointerEventScope awaitPointerEventScope2;
            o0 o0Var;
            Object objH;
            AwaitPointerEventScope awaitPointerEventScope3;
            PointerInputChange pointerInputChange2;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 == 3) {
                            w.b(obj);
                            anonymousClass1 = this;
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        o0Var = (o0) this.L$2;
                        pointerInputChange = (PointerInputChange) this.L$1;
                        awaitPointerEventScope3 = (AwaitPointerEventScope) this.L$0;
                        w.b(obj);
                        anonymousClass1 = this;
                        pointerInputChange2 = (PointerInputChange) obj;
                        if (pointerInputChange2 == null && !pointerInputChange2.m()) {
                            awaitPointerEventScope2 = awaitPointerEventScope3;
                            long jE = pointerInputChange.e();
                            int iK = pointerInputChange.k();
                            C00281 c00281 = new C00281(o0Var);
                            anonymousClass1.L$0 = awaitPointerEventScope2;
                            anonymousClass1.L$1 = pointerInputChange;
                            anonymousClass1.L$2 = o0Var;
                            anonymousClass1.label = 2;
                            objH = DragGestureDetectorKt.h(awaitPointerEventScope2, jE, iK, c00281, anonymousClass1);
                            if (objH == objE) {
                                return objE;
                            }
                            awaitPointerEventScope3 = awaitPointerEventScope2;
                            obj = objH;
                            pointerInputChange2 = (PointerInputChange) obj;
                            if (pointerInputChange2 == null) {
                            }
                            if (pointerInputChange2 != null) {
                                anonymousClass1.$onDragStart.invoke(Offset.d(pointerInputChange2.f()));
                                anonymousClass1.$onDrag.invoke(pointerInputChange2, Offset.d(o0Var.element));
                                long jE2 = pointerInputChange2.e();
                                AnonymousClass2 anonymousClass2 = new AnonymousClass2(anonymousClass1.$onDrag);
                                anonymousClass1.L$0 = null;
                                anonymousClass1.L$1 = null;
                                anonymousClass1.L$2 = null;
                                anonymousClass1.label = 3;
                                obj = DragGestureDetectorKt.n(awaitPointerEventScope3, jE2, anonymousClass2, anonymousClass1);
                                if (obj == objE) {
                                    return objE;
                                }
                            }
                        } else if (pointerInputChange2 != null) {
                            anonymousClass1.$onDragStart.invoke(Offset.d(pointerInputChange2.f()));
                            anonymousClass1.$onDrag.invoke(pointerInputChange2, Offset.d(o0Var.element));
                            long jE3 = pointerInputChange2.e();
                            AnonymousClass2 anonymousClass3 = new AnonymousClass2(anonymousClass1.$onDrag);
                            anonymousClass1.L$0 = null;
                            anonymousClass1.L$1 = null;
                            anonymousClass1.L$2 = null;
                            anonymousClass1.label = 3;
                            obj = DragGestureDetectorKt.n(awaitPointerEventScope3, jE3, anonymousClass3, anonymousClass1);
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
                if (!((Boolean) obj).booleanValue()) {
                    anonymousClass1.$onDragCancel.invoke();
                } else {
                    anonymousClass1.$onDragEnd.invoke();
                }
                return l0.INSTANCE;
            }
            w.b(obj);
            awaitPointerEventScope = (AwaitPointerEventScope) this.L$0;
            this.L$0 = awaitPointerEventScope;
            this.label = 1;
            obj = TapGestureDetectorKt.d(awaitPointerEventScope, false, this);
            if (obj == objE) {
                return objE;
            }
            o0 o0Var2 = new o0();
            o0Var2.element = Offset.Companion.c();
            anonymousClass1 = this;
            pointerInputChange = (PointerInputChange) obj;
            awaitPointerEventScope2 = awaitPointerEventScope;
            o0Var = o0Var2;
            long jE4 = pointerInputChange.e();
            int iK2 = pointerInputChange.k();
            C00281 c00282 = new C00281(o0Var);
            anonymousClass1.L$0 = awaitPointerEventScope2;
            anonymousClass1.L$1 = pointerInputChange;
            anonymousClass1.L$2 = o0Var;
            anonymousClass1.label = 2;
            objH = DragGestureDetectorKt.h(awaitPointerEventScope2, jE4, iK2, c00282, anonymousClass1);
            if (objH == objE) {
                return objE;
            }
            awaitPointerEventScope3 = awaitPointerEventScope2;
            obj = objH;
            pointerInputChange2 = (PointerInputChange) obj;
            if (pointerInputChange2 == null) {
            }
            if (pointerInputChange2 != null) {
                anonymousClass1.$onDragStart.invoke(Offset.d(pointerInputChange2.f()));
                anonymousClass1.$onDrag.invoke(pointerInputChange2, Offset.d(o0Var.element));
                long jE5 = pointerInputChange2.e();
                AnonymousClass2 anonymousClass4 = new AnonymousClass2(anonymousClass1.$onDrag);
                anonymousClass1.L$0 = null;
                anonymousClass1.L$1 = null;
                anonymousClass1.L$2 = null;
                anonymousClass1.label = 3;
                obj = DragGestureDetectorKt.n(awaitPointerEventScope3, jE5, anonymousClass4, anonymousClass1);
                if (obj == objE) {
                    return objE;
                }
                if (!((Boolean) obj).booleanValue()) {
                    anonymousClass1.$onDragCancel.invoke();
                } else {
                    anonymousClass1.$onDragEnd.invoke();
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
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$onDragStart, this.$onDrag, this.$onDragCancel, this.$onDragEnd, null);
            this.label = 1;
            if (pointerInputScope.J(anonymousClass1, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
