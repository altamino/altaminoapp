package kotlinx.coroutines.flow;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public interface h0 {

    @NotNull
    public static final a Companion = a.$$INSTANCE;

    public static final class a {
        static final /* synthetic */ a $$INSTANCE = new a();

        @NotNull
        private static final h0 Eagerly = new i0();

        @NotNull
        private static final h0 Lazily = new j0();

        @NotNull
        public final h0 c() {
            return Eagerly;
        }

        @NotNull
        public final h0 d() {
            return Lazily;
        }

        public static /* synthetic */ h0 b(a aVar, long j6, long j10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                j6 = 0;
            }
            if ((i10 & 2) != 0) {
                j10 = Long.MAX_VALUE;
            }
            return aVar.a(j6, j10);
        }

        @NotNull
        public final h0 a(long j6, long j10) {
            return new k0(j6, j10);
        }

        private a() {
        }
    }

    @NotNull
    g<f0> a(@NotNull l0<Integer> l0Var);
}
