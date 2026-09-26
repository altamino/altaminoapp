package kotlinx.coroutines.flow.internal;

import kotlin.jvm.internal.v0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
public final class u {

    @NotNull
    private static final e8.q<kotlinx.coroutines.flow.h<Object>, Object, kotlin.coroutines.d<? super l0>, Object> emitFun;

    /* synthetic */ class a extends kotlin.jvm.internal.q implements e8.q<kotlinx.coroutines.flow.h<? super Object>, Object, kotlin.coroutines.d<? super l0>, Object> {
        public static final a INSTANCE = new a();

        a() {
            super(3, kotlinx.coroutines.flow.h.class, "emit", "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
        }

        @Override // e8.q
        @Nullable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull kotlinx.coroutines.flow.h<Object> hVar, @Nullable Object obj, @NotNull kotlin.coroutines.d<? super l0> dVar) {
            return hVar.emit(obj, dVar);
        }
    }

    static {
        a aVar = a.INSTANCE;
        kotlin.jvm.internal.t.h(aVar, "null cannot be cast to non-null type kotlin.Function3<kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>, kotlin.Any?, kotlin.coroutines.Continuation<kotlin.Unit>, kotlin.Any?>");
        emitFun = (e8.q) v0.e(aVar, 3);
    }
}
