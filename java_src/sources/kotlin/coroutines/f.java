package kotlin.coroutines;

import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;
import w7.v;

/* JADX INFO: loaded from: classes8.dex */
public final class f {
    @NotNull
    public static final <R, T> d<l0> a(@NotNull p<? super R, ? super d<? super T>, ? extends Object> pVar, R r, @NotNull d<? super T> completion) {
        t.j(pVar, "<this>");
        t.j(completion, "completion");
        return new i(kotlin.coroutines.intrinsics.c.c(kotlin.coroutines.intrinsics.c.a(pVar, r, completion)), kotlin.coroutines.intrinsics.d.e());
    }

    public static final <R, T> void b(@NotNull p<? super R, ? super d<? super T>, ? extends Object> pVar, R r, @NotNull d<? super T> completion) {
        t.j(pVar, "<this>");
        t.j(completion, "completion");
        d dVarC = kotlin.coroutines.intrinsics.c.c(kotlin.coroutines.intrinsics.c.a(pVar, r, completion));
        v.a aVar = v.Companion;
        dVarC.resumeWith(v.b(l0.INSTANCE));
    }
}
