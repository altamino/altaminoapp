package j8;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class c extends j8.a implements f<Character> {

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private static final c EMPTY = new c(1, 0);

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    public c(char c7, char c10) {
        super(c7, c10, 1);
    }

    @Override // j8.a
    public boolean equals(@Nullable Object obj) {
        if (obj instanceof c) {
            if (!isEmpty() || !((c) obj).isEmpty()) {
                c cVar = (c) obj;
                if (e() != cVar.e() || f() != cVar.f()) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // j8.a
    @NotNull
    public String toString() {
        return e() + ".." + f();
    }

    @Override // j8.a
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (e() * 31) + f();
    }

    @Override // j8.a, j8.f
    public boolean isEmpty() {
        if (t.l(e(), f()) > 0) {
            return true;
        }
        return false;
    }

    public boolean j(char c7) {
        if (t.l(e(), c7) <= 0 && t.l(c7, f()) <= 0) {
            return true;
        }
        return false;
    }

    @Override // j8.f
    @NotNull
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public Character c() {
        return Character.valueOf(f());
    }

    @Override // j8.f
    @NotNull
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public Character getStart() {
        return Character.valueOf(e());
    }
}
