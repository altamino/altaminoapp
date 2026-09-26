package b2;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class a {

    @NotNull
    private final String name;
    private final boolean value;

    @NotNull
    public final String a() {
        return this.name;
    }

    public final boolean b() {
        return this.value;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return t.e(this.name, aVar.name) && this.value == aVar.value;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    public int hashCode() {
        String str = this.name;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        boolean z6 = this.value;
        ?? r1 = z6;
        if (z6) {
            r1 = 1;
        }
        return iHashCode + r1;
    }

    @NotNull
    public String toString() {
        return "GateKeeper(name=" + this.name + ", value=" + this.value + ")";
    }

    public a(@NotNull String name, boolean z6) {
        t.j(name, "name");
        this.name = name;
        this.value = z6;
    }
}
