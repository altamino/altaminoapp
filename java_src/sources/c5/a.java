package c5;

import androidx.annotation.NonNull;
import java.util.Set;

/* JADX INFO: loaded from: classes7.dex */
final class a extends b {
    private final Set<String> updatedKeys;

    @Override // c5.b
    @NonNull
    public Set<String> b() {
        return this.updatedKeys;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b) {
            return this.updatedKeys.equals(((b) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.updatedKeys.hashCode() ^ 1000003;
    }

    public String toString() {
        return "ConfigUpdate{updatedKeys=" + this.updatedKeys + "}";
    }

    a(Set<String> set) {
        if (set != null) {
            this.updatedKeys = set;
            return;
        }
        throw new NullPointerException("Null updatedKeys");
    }
}
