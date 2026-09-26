package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class n0 extends kotlin.coroutines.a {

    @NotNull
    public static final a Key = new a(null);

    @NotNull
    private final String name;

    public static final class a implements kotlin.coroutines.g.c<n0> {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    @NotNull
    public final String L() {
        return this.name;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof n0) && kotlin.jvm.internal.t.e(this.name, ((n0) obj).name);
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    public n0(@NotNull String str) {
        super(Key);
        this.name = str;
    }

    @NotNull
    public String toString() {
        return "CoroutineName(" + this.name + ')';
    }
}
