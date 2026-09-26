package io.ktor.client.engine;

import io.ktor.http.o;
import io.ktor.http.o0;
import java.util.ArrayList;
import java.util.Set;
import kotlinx.coroutines.a0;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.f2;
import kotlinx.coroutines.n0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class i {

    @NotNull
    private static final n0 CALL_COROUTINE = new n0("call-context");

    @NotNull
    private static final io.ktor.util.a<io.ktor.client.b<?>> CLIENT_CONFIG = new io.ktor.util.a<>("client-config");

    @NotNull
    public static final io.ktor.util.a<io.ktor.client.b<?>> c() {
        return CLIENT_CONFIG;
    }

    @Nullable
    public static final Object b(@NotNull b bVar, @NotNull b2 b2Var, @NotNull kotlin.coroutines.d<? super kotlin.coroutines.g> dVar) {
        a0 a0VarA = f2.a(b2Var);
        kotlin.coroutines.g gVarPlus = bVar.getCoroutineContext().plus(a0VarA).plus(CALL_COROUTINE);
        b2 b2Var2 = (b2) dVar.getContext().get(b2.Key);
        if (b2Var2 != null) {
            a0VarA.U(new k(b2.a.d(b2Var2, true, false, new l(a0VarA), 2, null)));
        }
        return gVarPlus;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(i7.e eVar) {
        Set<String> setNames = eVar.e().names();
        ArrayList arrayList = new ArrayList();
        for (Object obj : setNames) {
            if (o.INSTANCE.v().contains((String) obj)) {
                arrayList.add(obj);
            }
        }
        if (!arrayList.isEmpty()) {
            throw new o0(arrayList.toString());
        }
    }
}
