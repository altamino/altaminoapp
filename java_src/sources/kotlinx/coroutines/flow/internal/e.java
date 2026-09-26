package kotlinx.coroutines.flow.internal;

import java.util.ArrayList;
import kotlin.collections.d0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.p0;
import kotlinx.coroutines.q0;
import kotlinx.coroutines.s0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public abstract class e<T> implements p<T> {
    public final int capacity;

    @NotNull
    public final kotlin.coroutines.g context;

    @NotNull
    public final kotlinx.coroutines.channels.a onBufferOverflow;

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.internal.ChannelFlow$collect$2", f = "ChannelFlow.kt", l = {123}, m = "invokeSuspend")
    static final class a extends kotlin.coroutines.jvm.internal.l implements e8.p<o0, kotlin.coroutines.d<? super l0>, Object> {
        final /* synthetic */ kotlinx.coroutines.flow.h<T> $collector;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ e<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(kotlinx.coroutines.flow.h<? super T> hVar, e<T> eVar, kotlin.coroutines.d<? super a> dVar) {
            super(2, dVar);
            this.$collector = hVar;
            this.this$0 = eVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            a aVar = new a(this.$collector, this.this$0, dVar);
            aVar.L$0 = obj;
            return aVar;
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            return ((a) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    w7.w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w7.w.b(obj);
                o0 o0Var = (o0) this.L$0;
                kotlinx.coroutines.flow.h<T> hVar = this.$collector;
                kotlinx.coroutines.channels.t<T> tVarM = this.this$0.m(o0Var);
                this.label = 1;
                if (kotlinx.coroutines.flow.i.q(hVar, tVarM, this) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.flow.internal.ChannelFlow$collectToFun$1", f = "ChannelFlow.kt", l = {60}, m = "invokeSuspend")
    static final class b extends kotlin.coroutines.jvm.internal.l implements e8.p<kotlinx.coroutines.channels.r<? super T>, kotlin.coroutines.d<? super l0>, Object> {
        /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ e<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(e<T> eVar, kotlin.coroutines.d<? super b> dVar) {
            super(2, dVar);
            this.this$0 = eVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            b bVar = new b(this.this$0, dVar);
            bVar.L$0 = obj;
            return bVar;
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull kotlinx.coroutines.channels.r<? super T> rVar, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            return ((b) create(rVar, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    w7.w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w7.w.b(obj);
                kotlinx.coroutines.channels.r<? super T> rVar = (kotlinx.coroutines.channels.r) this.L$0;
                e<T> eVar = this.this$0;
                this.label = 1;
                if (eVar.h(rVar, this) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    @Override // kotlinx.coroutines.flow.g
    @Nullable
    public Object collect(@NotNull kotlinx.coroutines.flow.h<? super T> hVar, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        return g(this, hVar, dVar);
    }

    @Nullable
    protected String f() {
        return null;
    }

    @Nullable
    protected abstract Object h(@NotNull kotlinx.coroutines.channels.r<? super T> rVar, @NotNull kotlin.coroutines.d<? super l0> dVar);

    @NotNull
    protected abstract e<T> i(@NotNull kotlin.coroutines.g gVar, int i10, @NotNull kotlinx.coroutines.channels.a aVar);

    @Nullable
    public kotlinx.coroutines.flow.g<T> j() {
        return null;
    }

    public final int l() {
        int i10 = this.capacity;
        if (i10 == -3) {
            return -2;
        }
        return i10;
    }

    static /* synthetic */ <T> Object g(e<T> eVar, kotlinx.coroutines.flow.h<? super T> hVar, kotlin.coroutines.d<? super l0> dVar) {
        Object objF = p0.f(new a(hVar, eVar, null), dVar);
        return objF == kotlin.coroutines.intrinsics.d.e() ? objF : l0.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0013  */
    @Override // kotlinx.coroutines.flow.internal.p
    @NotNull
    public kotlinx.coroutines.flow.g<T> e(@NotNull kotlin.coroutines.g gVar, int i10, @NotNull kotlinx.coroutines.channels.a aVar) {
        kotlin.coroutines.g gVarPlus = gVar.plus(this.context);
        if (aVar == kotlinx.coroutines.channels.a.SUSPEND) {
            int i11 = this.capacity;
            if (i11 != -3) {
                if (i10 == -3) {
                    i10 = i11;
                } else if (i11 != -2) {
                    if (i10 == -2) {
                        i10 = i11;
                    } else {
                        i10 += i11;
                        if (i10 < 0) {
                            i10 = Integer.MAX_VALUE;
                        }
                    }
                }
            }
            aVar = this.onBufferOverflow;
        }
        return (kotlin.jvm.internal.t.e(gVarPlus, this.context) && i10 == this.capacity && aVar == this.onBufferOverflow) ? this : i(gVarPlus, i10, aVar);
    }

    @NotNull
    public final e8.p<kotlinx.coroutines.channels.r<? super T>, kotlin.coroutines.d<? super l0>, Object> k() {
        return new b(this, null);
    }

    @NotNull
    public kotlinx.coroutines.channels.t<T> m(@NotNull o0 o0Var) {
        return kotlinx.coroutines.channels.p.c(o0Var, this.context, l(), this.onBufferOverflow, q0.ATOMIC, null, k(), 16, null);
    }

    @NotNull
    public String toString() {
        ArrayList arrayList = new ArrayList(4);
        String strF = f();
        if (strF != null) {
            arrayList.add(strF);
        }
        if (this.context != kotlin.coroutines.h.INSTANCE) {
            arrayList.add("context=" + this.context);
        }
        if (this.capacity != -3) {
            arrayList.add("capacity=" + this.capacity);
        }
        if (this.onBufferOverflow != kotlinx.coroutines.channels.a.SUSPEND) {
            arrayList.add("onBufferOverflow=" + this.onBufferOverflow);
        }
        return s0.a(this) + kotlinx.serialization.json.internal.b.BEGIN_LIST + d0.t0(arrayList, ", ", null, null, 0, null, null, 62, null) + kotlinx.serialization.json.internal.b.END_LIST;
    }

    public e(@NotNull kotlin.coroutines.g gVar, int i10, @NotNull kotlinx.coroutines.channels.a aVar) {
        this.context = gVar;
        this.capacity = i10;
        this.onBufferOverflow = aVar;
    }
}
