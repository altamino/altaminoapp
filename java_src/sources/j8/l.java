package j8;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class l extends j implements f<Long> {

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private static final l EMPTY = new l(1, 0);

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    public l(long j6, long j10) {
        super(j6, j10, 1L);
    }

    @Override // j8.j
    public boolean equals(@Nullable Object obj) {
        if (obj instanceof l) {
            if (!isEmpty() || !((l) obj).isEmpty()) {
                l lVar = (l) obj;
                if (e() != lVar.e() || f() != lVar.f()) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // j8.j
    @NotNull
    public String toString() {
        return e() + ".." + f();
    }

    @Override // j8.j
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (int) ((((long) 31) * (e() ^ (e() >>> 32))) + (f() ^ (f() >>> 32)));
    }

    @Override // j8.j, j8.f
    public boolean isEmpty() {
        if (e() > f()) {
            return true;
        }
        return false;
    }

    public boolean j(long j6) {
        if (e() <= j6 && j6 <= f()) {
            return true;
        }
        return false;
    }

    @Override // j8.f
    @NotNull
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public Long c() {
        return Long.valueOf(f());
    }

    @Override // j8.f
    @NotNull
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public Long getStart() {
        return Long.valueOf(e());
    }
}
