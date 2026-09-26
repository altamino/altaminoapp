package kotlin.coroutines.intrinsics;

import e8.p;
import e8.q;
import kotlin.coroutines.g;
import kotlin.coroutines.jvm.internal.h;
import kotlin.coroutines.jvm.internal.j;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public class c {

    public static final class a extends j {
        final /* synthetic */ Object $receiver$inlined;
        final /* synthetic */ p $this_createCoroutineUnintercepted$inlined;
        private int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(kotlin.coroutines.d dVar, p pVar, Object obj) {
            super(dVar);
            this.$this_createCoroutineUnintercepted$inlined = pVar;
            this.$receiver$inlined = obj;
            t.h(dVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        protected Object invokeSuspend(@NotNull Object obj) {
            int i10 = this.label;
            if (i10 == 0) {
                this.label = 1;
                w.b(obj);
                t.h(this.$this_createCoroutineUnintercepted$inlined, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>");
                return ((p) v0.e(this.$this_createCoroutineUnintercepted$inlined, 2)).invoke(this.$receiver$inlined, this);
            }
            if (i10 != 1) {
                throw new IllegalStateException("This coroutine had already completed".toString());
            }
            this.label = 2;
            w.b(obj);
            return obj;
        }
    }

    public static final class b extends kotlin.coroutines.jvm.internal.d {
        final /* synthetic */ Object $receiver$inlined;
        final /* synthetic */ p $this_createCoroutineUnintercepted$inlined;
        private int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(kotlin.coroutines.d dVar, g gVar, p pVar, Object obj) {
            super(dVar, gVar);
            this.$this_createCoroutineUnintercepted$inlined = pVar;
            this.$receiver$inlined = obj;
            t.h(dVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        protected Object invokeSuspend(@NotNull Object obj) {
            int i10 = this.label;
            if (i10 == 0) {
                this.label = 1;
                w.b(obj);
                t.h(this.$this_createCoroutineUnintercepted$inlined, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>");
                return ((p) v0.e(this.$this_createCoroutineUnintercepted$inlined, 2)).invoke(this.$receiver$inlined, this);
            }
            if (i10 != 1) {
                throw new IllegalStateException("This coroutine had already completed".toString());
            }
            this.label = 2;
            w.b(obj);
            return obj;
        }
    }

    /* JADX INFO: renamed from: kotlin.coroutines.intrinsics.c$c, reason: collision with other inner class name */
    public static final class C0429c extends j {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0429c(kotlin.coroutines.d<? super T> dVar) {
            super(dVar);
            t.h(dVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        protected Object invokeSuspend(@NotNull Object obj) {
            w.b(obj);
            return obj;
        }
    }

    public static final class d extends kotlin.coroutines.jvm.internal.d {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(kotlin.coroutines.d<? super T> dVar, g gVar) {
            super(dVar, gVar);
            t.h(dVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        protected Object invokeSuspend(@NotNull Object obj) {
            w.b(obj);
            return obj;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static <R, T> kotlin.coroutines.d<l0> a(@NotNull p<? super R, ? super kotlin.coroutines.d<? super T>, ? extends Object> pVar, R r, @NotNull kotlin.coroutines.d<? super T> completion) {
        t.j(pVar, "<this>");
        t.j(completion, "completion");
        kotlin.coroutines.d<?> dVarA = h.a(completion);
        if (pVar instanceof kotlin.coroutines.jvm.internal.a) {
            return ((kotlin.coroutines.jvm.internal.a) pVar).create(r, dVarA);
        }
        g context = dVarA.getContext();
        return context == kotlin.coroutines.h.INSTANCE ? new a(dVarA, pVar, r) : new b(dVarA, context, pVar, r);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static <T> kotlin.coroutines.d<T> c(@NotNull kotlin.coroutines.d<? super T> dVar) {
        kotlin.coroutines.d<T> dVar2;
        t.j(dVar, "<this>");
        kotlin.coroutines.jvm.internal.d dVar3 = dVar instanceof kotlin.coroutines.jvm.internal.d ? (kotlin.coroutines.jvm.internal.d) dVar : null;
        return (dVar3 == null || (dVar2 = (kotlin.coroutines.d<T>) dVar3.intercepted()) == null) ? dVar : dVar2;
    }

    @Nullable
    public static <R, P, T> Object d(@NotNull q<? super R, ? super P, ? super kotlin.coroutines.d<? super T>, ? extends Object> qVar, R r, P p, @NotNull kotlin.coroutines.d<? super T> completion) {
        t.j(qVar, "<this>");
        t.j(completion, "completion");
        return ((q) v0.e(qVar, 3)).invoke(r, p, b(h.a(completion)));
    }

    private static final <T> kotlin.coroutines.d<T> b(kotlin.coroutines.d<? super T> dVar) {
        g context = dVar.getContext();
        if (context == kotlin.coroutines.h.INSTANCE) {
            return new C0429c(dVar);
        }
        return new d(dVar, context);
    }
}
