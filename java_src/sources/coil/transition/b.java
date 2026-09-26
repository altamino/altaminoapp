package coil.transition;

import coil.request.e;
import coil.request.i;
import coil.request.p;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class b implements c {

    @NotNull
    private final i result;

    @NotNull
    private final d target;

    public static final class a implements c.a {
        @Override // coil.transition.c.a
        @NotNull
        public c a(@NotNull d dVar, @NotNull i iVar) {
            return new b(dVar, iVar);
        }

        public boolean equals(@Nullable Object obj) {
            return obj instanceof a;
        }

        public int hashCode() {
            return a.class.hashCode();
        }
    }

    @Override // coil.transition.c
    public void a() {
        i iVar = this.result;
        if (iVar instanceof p) {
            this.target.a(((p) iVar).a());
        } else if (iVar instanceof e) {
            this.target.c(iVar.a());
        }
    }

    public b(@NotNull d dVar, @NotNull i iVar) {
        this.target = dVar;
        this.result = iVar;
    }
}
