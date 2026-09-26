package kotlinx.coroutines.internal;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class d {

    @NotNull
    private static final i0 CLOSED = new i0("CLOSED");
    private static final int POINTERS_SHIFT = 16;

    @NotNull
    public static final <S extends f0<S>> Object c(@NotNull S s, long j6, @NotNull e8.p<? super Long, ? super S, ? extends S> pVar) {
        while (true) {
            if (s.id >= j6 && !s.h()) {
                return g0.a(s);
            }
            Object objF = s.f();
            if (objF == CLOSED) {
                return g0.a(CLOSED);
            }
            S sInvoke = (S) ((e) objF);
            if (sInvoke == null) {
                sInvoke = pVar.invoke(Long.valueOf(s.id + 1), s);
                if (s.l(sInvoke)) {
                    if (s.h()) {
                        s.k();
                    }
                }
            }
            s = (Object) sInvoke;
        }
    }

    @NotNull
    public static final <N extends e<N>> N b(@NotNull N n) {
        while (true) {
            Object objF = n.f();
            if (objF == CLOSED) {
                return n;
            }
            e eVar = (e) objF;
            if (eVar == null) {
                if (n.j()) {
                    return n;
                }
            } else {
                n = (N) eVar;
            }
        }
    }
}
