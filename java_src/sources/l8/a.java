package l8;

import e8.l;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.intrinsics.c;
import kotlinx.coroutines.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.v;
import w7.w;

/* JADX INFO: loaded from: classes8.dex */
public final class a {
    private static final void a(d<?> dVar, Throwable th) throws Throwable {
        v.a aVar = v.Companion;
        dVar.resumeWith(v.b(w.a(th)));
        throw th;
    }

    public static /* synthetic */ void d(p pVar, Object obj, d dVar, l lVar, int i10, Object obj2) throws Throwable {
        if ((i10 & 4) != 0) {
            lVar = null;
        }
        b(pVar, obj, dVar, lVar);
    }

    public static final <R, T> void b(@NotNull p<? super R, ? super d<? super T>, ? extends Object> pVar, R r, @NotNull d<? super T> dVar, @Nullable l<? super Throwable, l0> lVar) throws Throwable {
        try {
            d dVarC = c.c(c.a(pVar, r, dVar));
            v.a aVar = v.Companion;
            k.b(dVarC, v.b(l0.INSTANCE), lVar);
        } catch (Throwable th) {
            a(dVar, th);
        }
    }

    public static final void c(@NotNull d<? super l0> dVar, @NotNull d<?> dVar2) throws Throwable {
        try {
            d dVarC = c.c(dVar);
            v.a aVar = v.Companion;
            k.c(dVarC, v.b(l0.INSTANCE), null, 2, null);
        } catch (Throwable th) {
            a(dVar2, th);
        }
    }
}
