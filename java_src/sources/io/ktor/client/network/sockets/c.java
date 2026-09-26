package io.ktor.client.network.sockets;

import e8.p;
import i7.e;
import io.ktor.util.r;
import io.ktor.utils.io.g;
import io.ktor.utils.io.i;
import io.ktor.utils.io.q;
import io.ktor.utils.io.w;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class c {

    @f(c = "io.ktor.client.network.sockets.TimeoutExceptionsCommonKt$mapEngineExceptions$1", f = "TimeoutExceptionsCommon.kt", l = {39}, m = "invokeSuspend")
    static final class a extends l implements p<w, kotlin.coroutines.d<? super l0>, Object> {
        final /* synthetic */ g $input;
        final /* synthetic */ io.ktor.utils.io.c $replacementChannel;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(g gVar, io.ktor.utils.io.c cVar, kotlin.coroutines.d<? super a> dVar) {
            super(2, dVar);
            this.$input = gVar;
            this.$replacementChannel = cVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            return new a(this.$input, this.$replacementChannel, dVar);
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull w wVar, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            return ((a) create(wVar, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            try {
                if (i10 != 0) {
                    if (i10 == 1) {
                        w7.w.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    w7.w.b(obj);
                    g gVar = this.$input;
                    io.ktor.utils.io.c cVar = this.$replacementChannel;
                    this.label = 1;
                    if (i.c(gVar, cVar, 0L, this, 2, null) == objE) {
                        return objE;
                    }
                }
            } catch (Throwable th) {
                this.$input.e(th);
            }
            return l0.INSTANCE;
        }
    }

    @NotNull
    public static final g a(@NotNull o0 o0Var, @NotNull g input, @NotNull e request) {
        t.j(o0Var, "<this>");
        t.j(input, "input");
        t.j(request, "request");
        if (r.INSTANCE.c()) {
            return input;
        }
        io.ktor.utils.io.c cVarA = d.a(request);
        q.e(o0Var, null, cVarA, new a(input, cVarA, null), 1, null);
        return cVarA;
    }
}
