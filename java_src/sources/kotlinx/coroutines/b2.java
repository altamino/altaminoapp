package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public interface b2 extends kotlin.coroutines.g.b {

    @NotNull
    public static final b Key = b.$$INSTANCE;

    public static final class a {
        public static /* synthetic */ void a(b2 b2Var, CancellationException cancellationException, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i10 & 1) != 0) {
                cancellationException = null;
            }
            b2Var.b(cancellationException);
        }

        public static /* synthetic */ g1 d(b2 b2Var, boolean z6, boolean z10, e8.l lVar, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invokeOnCompletion");
            }
            if ((i10 & 1) != 0) {
                z6 = false;
            }
            if ((i10 & 2) != 0) {
                z10 = true;
            }
            return b2Var.O(z6, z10, lVar);
        }

        public static <R> R b(@NotNull b2 b2Var, R r, @NotNull e8.p<? super R, ? super kotlin.coroutines.g.b, ? extends R> pVar) {
            return (R) kotlin.coroutines.g.b.a.a(b2Var, r, pVar);
        }

        @Nullable
        public static <E extends kotlin.coroutines.g.b> E c(@NotNull b2 b2Var, @NotNull kotlin.coroutines.g.c<E> cVar) {
            return (E) kotlin.coroutines.g.b.a.b(b2Var, cVar);
        }

        @NotNull
        public static kotlin.coroutines.g e(@NotNull b2 b2Var, @NotNull kotlin.coroutines.g.c<?> cVar) {
            return kotlin.coroutines.g.b.a.c(b2Var, cVar);
        }

        @NotNull
        public static kotlin.coroutines.g f(@NotNull b2 b2Var, @NotNull kotlin.coroutines.g gVar) {
            return kotlin.coroutines.g.b.a.d(b2Var, gVar);
        }
    }

    @NotNull
    g1 O(boolean z6, boolean z10, @NotNull e8.l<? super Throwable, w7.l0> lVar);

    @NotNull
    u Q(@NotNull w wVar);

    @NotNull
    g1 U(@NotNull e8.l<? super Throwable, w7.l0> lVar);

    void b(@Nullable CancellationException cancellationException);

    @NotNull
    CancellationException b0();

    @NotNull
    kotlin.sequences.g<b2> getChildren();

    @Nullable
    b2 getParent();

    boolean isActive();

    boolean isCancelled();

    boolean m();

    boolean start();

    @Nullable
    Object t0(@NotNull kotlin.coroutines.d<? super w7.l0> dVar);

    public static final class b implements kotlin.coroutines.g.c<b2> {
        static final /* synthetic */ b $$INSTANCE = new b();

        private b() {
        }
    }
}
