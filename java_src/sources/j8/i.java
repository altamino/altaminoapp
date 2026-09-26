package j8;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class i extends g implements f<Integer> {

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private static final i EMPTY = new i(1, 0);

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }

        @NotNull
        public final i a() {
            return i.EMPTY;
        }
    }

    public i(int i10, int i11) {
        super(i10, i11, 1);
    }

    @Override // j8.g
    public boolean equals(@Nullable Object obj) {
        if (obj instanceof i) {
            if (!isEmpty() || !((i) obj).isEmpty()) {
                i iVar = (i) obj;
                if (e() != iVar.e() || f() != iVar.f()) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // j8.g
    @NotNull
    public String toString() {
        return e() + ".." + f();
    }

    @Override // j8.g
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (e() * 31) + f();
    }

    @Override // j8.g, j8.f
    public boolean isEmpty() {
        if (e() > f()) {
            return true;
        }
        return false;
    }

    public boolean p(int i10) {
        if (e() <= i10 && i10 <= f()) {
            return true;
        }
        return false;
    }

    @Override // j8.f
    @NotNull
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public Integer c() {
        return Integer.valueOf(f());
    }

    @Override // j8.f
    @NotNull
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public Integer getStart() {
        return Integer.valueOf(e());
    }
}
