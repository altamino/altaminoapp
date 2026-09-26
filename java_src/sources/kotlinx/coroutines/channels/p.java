package kotlinx.coroutines.channels;

import io.agora.rtc.Constants;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.q0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes3.dex */
public final class p {

    @kotlin.coroutines.jvm.internal.f(c = "kotlinx.coroutines.channels.ProduceKt", f = "Produce.kt", l = {Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED}, m = "awaitClose")
    static final class a extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        a(kotlin.coroutines.d<? super a> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return p.a(null, null, this);
        }
    }

    static final class b extends kotlin.jvm.internal.v implements e8.l<Throwable, l0> {
        final /* synthetic */ kotlinx.coroutines.o<l0> $cont;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        b(kotlinx.coroutines.o<? super l0> oVar) {
            super(1);
            this.$cont = oVar;
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
            invoke2(th);
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@Nullable Throwable th) {
            kotlinx.coroutines.o<l0> oVar = this.$cont;
            w7.v.a aVar = w7.v.Companion;
            oVar.resumeWith(w7.v.b(l0.INSTANCE));
        }
    }

    @NotNull
    public static final <E> t<E> b(@NotNull o0 o0Var, @NotNull kotlin.coroutines.g gVar, int i10, @NotNull kotlinx.coroutines.channels.a aVar, @NotNull q0 q0Var, @Nullable e8.l<? super Throwable, l0> lVar, @NotNull e8.p<? super r<? super E>, ? super kotlin.coroutines.d<? super l0>, ? extends Object> pVar) {
        q qVar = new q(j0.e(o0Var, gVar), g.b(i10, aVar, null, 4, null));
        if (lVar != null) {
            qVar.U(lVar);
        }
        qVar.Z0(q0Var, qVar, pVar);
        return qVar;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final Object a(@NotNull r<?> rVar, @NotNull e8.a<l0> aVar, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        a aVar2;
        if (dVar instanceof a) {
            aVar2 = (a) dVar;
            int i10 = aVar2.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                aVar2.label = i10 - Integer.MIN_VALUE;
            } else {
                aVar2 = new a(dVar);
            }
        } else {
            aVar2 = new a(dVar);
        }
        Object obj = aVar2.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = aVar2.label;
        try {
            if (i11 == 0) {
                w.b(obj);
                if (aVar2.getContext().get(b2.Key) != rVar) {
                    throw new IllegalStateException("awaitClose() can only be invoked from the producer context".toString());
                }
                aVar2.L$0 = rVar;
                aVar2.L$1 = aVar;
                aVar2.label = 1;
                kotlinx.coroutines.p pVar = new kotlinx.coroutines.p(kotlin.coroutines.intrinsics.c.c(aVar2), 1);
                pVar.x();
                rVar.u(new b(pVar));
                Object objU = pVar.u();
                if (objU == kotlin.coroutines.intrinsics.d.e()) {
                    kotlin.coroutines.jvm.internal.h.c(aVar2);
                }
                if (objU == objE) {
                    return objE;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                aVar = (e8.a) aVar2.L$1;
                w.b(obj);
            }
            aVar.invoke();
            return l0.INSTANCE;
        } catch (Throwable th) {
            aVar.invoke();
            throw th;
        }
    }

    public static /* synthetic */ t c(o0 o0Var, kotlin.coroutines.g gVar, int i10, kotlinx.coroutines.channels.a aVar, q0 q0Var, e8.l lVar, e8.p pVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            gVar = kotlin.coroutines.h.INSTANCE;
        }
        kotlin.coroutines.g gVar2 = gVar;
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        int i12 = i10;
        if ((i11 & 4) != 0) {
            aVar = kotlinx.coroutines.channels.a.SUSPEND;
        }
        kotlinx.coroutines.channels.a aVar2 = aVar;
        if ((i11 & 8) != 0) {
            q0Var = q0.DEFAULT;
        }
        q0 q0Var2 = q0Var;
        if ((i11 & 16) != 0) {
            lVar = null;
        }
        return b(o0Var, gVar2, i12, aVar2, q0Var2, lVar, pVar);
    }
}
