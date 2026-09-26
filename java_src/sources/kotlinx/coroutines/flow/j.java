package kotlinx.coroutines.flow;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class j {

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class a<T> implements g<T> {
        final /* synthetic */ Iterable $this_asFlow$inlined;

        /* JADX INFO: renamed from: kotlinx.coroutines.flow.j$a$a, reason: collision with other inner class name */
        @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$3", f = "Builders.kt", l = {116}, m = "collect")
        public static final class C0440a extends kotlin.coroutines.jvm.internal.d {
            Object L$0;
            Object L$1;
            int label;
            /* synthetic */ Object result;

            public C0440a(kotlin.coroutines.d dVar) {
                super(dVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                this.result = obj;
                this.label |= Integer.MIN_VALUE;
                return a.this.collect(null, this);
            }
        }

        public a(Iterable iterable) {
            this.$this_asFlow$inlined = iterable;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // kotlinx.coroutines.flow.g
        @Nullable
        public Object collect(@NotNull h<? super T> hVar, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
            C0440a c0440a;
            h hVar2;
            Iterator<T> it;
            if (dVar instanceof C0440a) {
                c0440a = (C0440a) dVar;
                int i10 = c0440a.label;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    c0440a.label = i10 - Integer.MIN_VALUE;
                } else {
                    c0440a = new C0440a(dVar);
                }
            } else {
                c0440a = new C0440a(dVar);
            }
            Object obj = c0440a.result;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i11 = c0440a.label;
            if (i11 == 0) {
                w7.w.b(obj);
                hVar2 = hVar;
                it = this.$this_asFlow$inlined.iterator();
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                it = (Iterator) c0440a.L$1;
                h hVar3 = (h) c0440a.L$0;
                w7.w.b(obj);
                hVar2 = hVar3;
            }
            while (it.hasNext()) {
                T next = it.next();
                c0440a.L$0 = hVar2;
                c0440a.L$1 = it;
                c0440a.label = 1;
                if (hVar2.emit(next, c0440a) == objE) {
                    return objE;
                }
            }
            return w7.l0.INSTANCE;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class b<T> implements g<T> {
        final /* synthetic */ Object $value$inlined;

        public b(Object obj) {
            this.$value$inlined = obj;
        }

        @Override // kotlinx.coroutines.flow.g
        @Nullable
        public Object collect(@NotNull h<? super T> hVar, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
            Object objEmit = hVar.emit((Object) this.$value$inlined, dVar);
            return objEmit == kotlin.coroutines.intrinsics.d.e() ? objEmit : w7.l0.INSTANCE;
        }
    }

    @NotNull
    public static final <T> g<T> a(@NotNull Iterable<? extends T> iterable) {
        return new a(iterable);
    }

    @NotNull
    public static final <T> g<T> b(@NotNull e8.p<? super kotlinx.coroutines.channels.r<? super T>, ? super kotlin.coroutines.d<? super w7.l0>, ? extends Object> pVar) {
        return new kotlinx.coroutines.flow.b(pVar, null, 0, null, 14, null);
    }

    @NotNull
    public static final <T> g<T> c(@NotNull e8.p<? super kotlinx.coroutines.channels.r<? super T>, ? super kotlin.coroutines.d<? super w7.l0>, ? extends Object> pVar) {
        return new e(pVar, null, 0, null, 14, null);
    }

    @NotNull
    public static final <T> g<T> d(@NotNull e8.p<? super h<? super T>, ? super kotlin.coroutines.d<? super w7.l0>, ? extends Object> pVar) {
        return new a0(pVar);
    }

    @NotNull
    public static final <T> g<T> e(T t5) {
        return new b(t5);
    }
}
