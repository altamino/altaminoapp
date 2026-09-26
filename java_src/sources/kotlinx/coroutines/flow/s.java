package kotlinx.coroutines.flow;

import androidx.renderscript.ScriptIntrinsicBLAS;
import java.util.NoSuchElementException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
final /* synthetic */ class s {

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class a<T> implements kotlinx.coroutines.flow.h<T> {
        final /* synthetic */ kotlin.jvm.internal.p0 $result$inlined;

        public a(kotlin.jvm.internal.p0 p0Var) {
            this.$result$inlined = p0Var;
        }

        @Override // kotlinx.coroutines.flow.h
        @Nullable
        public Object emit(T t5, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
            this.$result$inlined.element = t5;
            throw new kotlinx.coroutines.flow.internal.a(this);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class b<T> implements kotlinx.coroutines.flow.h<T> {
        final /* synthetic */ e8.p $predicate$inlined;
        final /* synthetic */ kotlin.jvm.internal.p0 $result$inlined;

        @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2", f = "Reduce.kt", l = {ScriptIntrinsicBLAS.RIGHT}, m = "emit")
        public static final class a extends kotlin.coroutines.jvm.internal.d {
            Object L$0;
            Object L$1;
            int label;
            /* synthetic */ Object result;

            public a(kotlin.coroutines.d dVar) {
                super(dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.result = obj;
                this.label |= Integer.MIN_VALUE;
                return b.this.emit(null, this);
            }
        }

        public b(e8.p pVar, kotlin.jvm.internal.p0 p0Var) {
            this.$predicate$inlined = pVar;
            this.$result$inlined = p0Var;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // kotlinx.coroutines.flow.h
        @Nullable
        public Object emit(T t5, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
            a aVar;
            b<T> bVar;
            if (dVar instanceof a) {
                aVar = (a) dVar;
                int i10 = aVar.label;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    aVar.label = i10 - Integer.MIN_VALUE;
                } else {
                    aVar = new a(dVar);
                }
            } else {
                aVar = new a(dVar);
            }
            Object objInvoke = aVar.result;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i11 = aVar.label;
            if (i11 == 0) {
                w7.w.b(objInvoke);
                e8.p pVar = this.$predicate$inlined;
                aVar.L$0 = this;
                aVar.L$1 = t5;
                aVar.label = 1;
                kotlin.jvm.internal.r.c(6);
                objInvoke = pVar.invoke(t5, aVar);
                kotlin.jvm.internal.r.c(7);
                if (objInvoke == objE) {
                    return objE;
                }
                bVar = this;
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                t5 = (T) aVar.L$1;
                bVar = (b) aVar.L$0;
                w7.w.b(objInvoke);
            }
            if (!((Boolean) objInvoke).booleanValue()) {
                return w7.l0.INSTANCE;
            }
            bVar.$result$inlined.element = t5;
            throw new kotlinx.coroutines.flow.internal.a(bVar);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", l = {183}, m = "first")
    static final class c<T> extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        c(kotlin.coroutines.d<? super c> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return kotlinx.coroutines.flow.i.v(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", l = {183}, m = "first")
    static final class d<T> extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        d(kotlin.coroutines.d<? super d> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return kotlinx.coroutines.flow.i.u(null, null, this);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class e<T> implements kotlinx.coroutines.flow.h<T> {
        final /* synthetic */ kotlin.jvm.internal.p0 $result$inlined;

        public e(kotlin.jvm.internal.p0 p0Var) {
            this.$result$inlined = p0Var;
        }

        @Override // kotlinx.coroutines.flow.h
        @Nullable
        public Object emit(T t5, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
            this.$result$inlined.element = t5;
            throw new kotlinx.coroutines.flow.internal.a(this);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class f<T> implements kotlinx.coroutines.flow.h<T> {
        final /* synthetic */ e8.p $predicate$inlined;
        final /* synthetic */ kotlin.jvm.internal.p0 $result$inlined;

        @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2", f = "Reduce.kt", l = {ScriptIntrinsicBLAS.RIGHT}, m = "emit")
        public static final class a extends kotlin.coroutines.jvm.internal.d {
            Object L$0;
            Object L$1;
            int label;
            /* synthetic */ Object result;

            public a(kotlin.coroutines.d dVar) {
                super(dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.result = obj;
                this.label |= Integer.MIN_VALUE;
                return f.this.emit(null, this);
            }
        }

        public f(e8.p pVar, kotlin.jvm.internal.p0 p0Var) {
            this.$predicate$inlined = pVar;
            this.$result$inlined = p0Var;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // kotlinx.coroutines.flow.h
        @Nullable
        public Object emit(T t5, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
            a aVar;
            f<T> fVar;
            if (dVar instanceof a) {
                aVar = (a) dVar;
                int i10 = aVar.label;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    aVar.label = i10 - Integer.MIN_VALUE;
                } else {
                    aVar = new a(dVar);
                }
            } else {
                aVar = new a(dVar);
            }
            Object objInvoke = aVar.result;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i11 = aVar.label;
            if (i11 == 0) {
                w7.w.b(objInvoke);
                e8.p pVar = this.$predicate$inlined;
                aVar.L$0 = this;
                aVar.L$1 = t5;
                aVar.label = 1;
                kotlin.jvm.internal.r.c(6);
                objInvoke = pVar.invoke(t5, aVar);
                kotlin.jvm.internal.r.c(7);
                if (objInvoke == objE) {
                    return objE;
                }
                fVar = this;
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                t5 = (T) aVar.L$1;
                fVar = (f) aVar.L$0;
                w7.w.b(objInvoke);
            }
            if (!((Boolean) objInvoke).booleanValue()) {
                return w7.l0.INSTANCE;
            }
            fVar.$result$inlined.element = t5;
            throw new kotlinx.coroutines.flow.internal.a(fVar);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", l = {183}, m = "firstOrNull")
    static final class g<T> extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        g(kotlin.coroutines.d<? super g> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return kotlinx.coroutines.flow.i.x(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", l = {183}, m = "firstOrNull")
    static final class h<T> extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        h(kotlin.coroutines.d<? super h> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return kotlinx.coroutines.flow.i.w(null, null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", l = {57}, m = "single")
    static final class i<T> extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        i(kotlin.coroutines.d<? super i> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return kotlinx.coroutines.flow.i.J(null, this);
        }
    }

    static final class j<T> implements kotlinx.coroutines.flow.h {
        final /* synthetic */ kotlin.jvm.internal.p0<Object> $result;

        j(kotlin.jvm.internal.p0<Object> p0Var) {
            this.$result = p0Var;
        }

        @Override // kotlinx.coroutines.flow.h
        @Nullable
        public final Object emit(T t5, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
            kotlin.jvm.internal.p0<Object> p0Var = this.$result;
            if (p0Var.element != kotlinx.coroutines.flow.internal.s.NULL) {
                throw new IllegalArgumentException("Flow has more than one element".toString());
            }
            p0Var.element = t5;
            return w7.l0.INSTANCE;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final <T> Object a(@NotNull kotlinx.coroutines.flow.g<? extends T> gVar, @NotNull e8.p<? super T, ? super kotlin.coroutines.d<? super Boolean>, ? extends Object> pVar, @NotNull kotlin.coroutines.d<? super T> dVar) {
        d dVar2;
        e8.p<? super T, ? super kotlin.coroutines.d<? super Boolean>, ? extends Object> pVar2;
        kotlin.jvm.internal.p0 p0Var;
        kotlinx.coroutines.flow.internal.a e2;
        kotlinx.coroutines.flow.h<? super Object> hVar;
        if (dVar instanceof d) {
            dVar2 = (d) dVar;
            int i10 = dVar2.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                dVar2.label = i10 - Integer.MIN_VALUE;
            } else {
                dVar2 = new d(dVar);
            }
        } else {
            dVar2 = new d(dVar);
        }
        Object obj = dVar2.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = dVar2.label;
        if (i11 == 0) {
            w7.w.b(obj);
            kotlin.jvm.internal.p0 p0Var2 = new kotlin.jvm.internal.p0();
            p0Var2.element = (T) kotlinx.coroutines.flow.internal.s.NULL;
            kotlinx.coroutines.flow.h<? super Object> bVar = new b<>(pVar, p0Var2);
            try {
                dVar2.L$0 = pVar;
                dVar2.L$1 = p0Var2;
                dVar2.L$2 = bVar;
                dVar2.label = 1;
                if (gVar.collect(bVar, dVar2) == objE) {
                    return objE;
                }
                pVar2 = pVar;
                p0Var = p0Var2;
            } catch (kotlinx.coroutines.flow.internal.a e6) {
                pVar2 = pVar;
                p0Var = p0Var2;
                e2 = e6;
                hVar = bVar;
                kotlinx.coroutines.flow.internal.o.a(e2, hVar);
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            hVar = (b) dVar2.L$2;
            p0Var = (kotlin.jvm.internal.p0) dVar2.L$1;
            pVar2 = (e8.p) dVar2.L$0;
            try {
                w7.w.b(obj);
            } catch (kotlinx.coroutines.flow.internal.a e7) {
                e2 = e7;
                kotlinx.coroutines.flow.internal.o.a(e2, hVar);
            }
        }
        T t5 = p0Var.element;
        if (t5 != kotlinx.coroutines.flow.internal.s.NULL) {
            return t5;
        }
        throw new NoSuchElementException("Expected at least one element matching the predicate " + pVar2);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final <T> Object b(@NotNull kotlinx.coroutines.flow.g<? extends T> gVar, @NotNull kotlin.coroutines.d<? super T> dVar) {
        c cVar;
        kotlin.jvm.internal.p0 p0Var;
        kotlinx.coroutines.flow.internal.a e2;
        kotlinx.coroutines.flow.h<? super Object> hVar;
        if (dVar instanceof c) {
            cVar = (c) dVar;
            int i10 = cVar.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                cVar.label = i10 - Integer.MIN_VALUE;
            } else {
                cVar = new c(dVar);
            }
        } else {
            cVar = new c(dVar);
        }
        Object obj = cVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = cVar.label;
        if (i11 == 0) {
            w7.w.b(obj);
            kotlin.jvm.internal.p0 p0Var2 = new kotlin.jvm.internal.p0();
            p0Var2.element = (T) kotlinx.coroutines.flow.internal.s.NULL;
            kotlinx.coroutines.flow.h<? super Object> aVar = new a<>(p0Var2);
            try {
                cVar.L$0 = p0Var2;
                cVar.L$1 = aVar;
                cVar.label = 1;
                if (gVar.collect(aVar, cVar) == objE) {
                    return objE;
                }
                p0Var = p0Var2;
            } catch (kotlinx.coroutines.flow.internal.a e6) {
                p0Var = p0Var2;
                e2 = e6;
                hVar = aVar;
                kotlinx.coroutines.flow.internal.o.a(e2, hVar);
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            hVar = (a) cVar.L$1;
            p0Var = (kotlin.jvm.internal.p0) cVar.L$0;
            try {
                w7.w.b(obj);
            } catch (kotlinx.coroutines.flow.internal.a e7) {
                e2 = e7;
                kotlinx.coroutines.flow.internal.o.a(e2, hVar);
            }
        }
        T t5 = p0Var.element;
        if (t5 != kotlinx.coroutines.flow.internal.s.NULL) {
            return t5;
        }
        throw new NoSuchElementException("Expected at least one element");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final <T> Object c(@NotNull kotlinx.coroutines.flow.g<? extends T> gVar, @NotNull e8.p<? super T, ? super kotlin.coroutines.d<? super Boolean>, ? extends Object> pVar, @NotNull kotlin.coroutines.d<? super T> dVar) {
        h hVar;
        kotlin.jvm.internal.p0 p0Var;
        kotlinx.coroutines.flow.internal.a e2;
        kotlinx.coroutines.flow.h<? super Object> hVar2;
        if (dVar instanceof h) {
            hVar = (h) dVar;
            int i10 = hVar.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                hVar.label = i10 - Integer.MIN_VALUE;
            } else {
                hVar = new h(dVar);
            }
        } else {
            hVar = new h(dVar);
        }
        Object obj = hVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = hVar.label;
        if (i11 == 0) {
            w7.w.b(obj);
            kotlin.jvm.internal.p0 p0Var2 = new kotlin.jvm.internal.p0();
            kotlinx.coroutines.flow.h<? super Object> fVar = new f<>(pVar, p0Var2);
            try {
                hVar.L$0 = p0Var2;
                hVar.L$1 = fVar;
                hVar.label = 1;
                if (gVar.collect(fVar, hVar) == objE) {
                    return objE;
                }
                p0Var = p0Var2;
            } catch (kotlinx.coroutines.flow.internal.a e6) {
                p0Var = p0Var2;
                e2 = e6;
                hVar2 = fVar;
                kotlinx.coroutines.flow.internal.o.a(e2, hVar2);
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            hVar2 = (f) hVar.L$1;
            p0Var = (kotlin.jvm.internal.p0) hVar.L$0;
            try {
                w7.w.b(obj);
            } catch (kotlinx.coroutines.flow.internal.a e7) {
                e2 = e7;
                kotlinx.coroutines.flow.internal.o.a(e2, hVar2);
            }
        }
        return p0Var.element;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final <T> Object d(@NotNull kotlinx.coroutines.flow.g<? extends T> gVar, @NotNull kotlin.coroutines.d<? super T> dVar) {
        g gVar2;
        kotlin.jvm.internal.p0 p0Var;
        kotlinx.coroutines.flow.internal.a e2;
        kotlinx.coroutines.flow.h<? super Object> hVar;
        if (dVar instanceof g) {
            gVar2 = (g) dVar;
            int i10 = gVar2.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                gVar2.label = i10 - Integer.MIN_VALUE;
            } else {
                gVar2 = new g(dVar);
            }
        } else {
            gVar2 = new g(dVar);
        }
        Object obj = gVar2.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = gVar2.label;
        if (i11 == 0) {
            w7.w.b(obj);
            kotlin.jvm.internal.p0 p0Var2 = new kotlin.jvm.internal.p0();
            kotlinx.coroutines.flow.h<? super Object> eVar = new e<>(p0Var2);
            try {
                gVar2.L$0 = p0Var2;
                gVar2.L$1 = eVar;
                gVar2.label = 1;
                if (gVar.collect(eVar, gVar2) == objE) {
                    return objE;
                }
                p0Var = p0Var2;
            } catch (kotlinx.coroutines.flow.internal.a e6) {
                p0Var = p0Var2;
                e2 = e6;
                hVar = eVar;
                kotlinx.coroutines.flow.internal.o.a(e2, hVar);
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            hVar = (e) gVar2.L$1;
            p0Var = (kotlin.jvm.internal.p0) gVar2.L$0;
            try {
                w7.w.b(obj);
            } catch (kotlinx.coroutines.flow.internal.a e7) {
                e2 = e7;
                kotlinx.coroutines.flow.internal.o.a(e2, hVar);
            }
        }
        return p0Var.element;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final <T> Object e(@NotNull kotlinx.coroutines.flow.g<? extends T> gVar, @NotNull kotlin.coroutines.d<? super T> dVar) {
        i iVar;
        kotlin.jvm.internal.p0 p0Var;
        if (dVar instanceof i) {
            iVar = (i) dVar;
            int i10 = iVar.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                iVar.label = i10 - Integer.MIN_VALUE;
            } else {
                iVar = new i(dVar);
            }
        } else {
            iVar = new i(dVar);
        }
        Object obj = iVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = iVar.label;
        if (i11 == 0) {
            w7.w.b(obj);
            kotlin.jvm.internal.p0 p0Var2 = new kotlin.jvm.internal.p0();
            p0Var2.element = (T) kotlinx.coroutines.flow.internal.s.NULL;
            kotlinx.coroutines.flow.h<? super Object> jVar = new j<>(p0Var2);
            iVar.L$0 = p0Var2;
            iVar.label = 1;
            if (gVar.collect(jVar, iVar) == objE) {
                return objE;
            }
            p0Var = p0Var2;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p0Var = (kotlin.jvm.internal.p0) iVar.L$0;
            w7.w.b(obj);
        }
        T t5 = p0Var.element;
        if (t5 != kotlinx.coroutines.flow.internal.s.NULL) {
            return t5;
        }
        throw new NoSuchElementException("Flow is empty");
    }
}
