package f2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class b {
    private final String name;

    public String a() {
        return this.name;
    }

    public static b b(@NonNull String str) {
        return new b(str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            return this.name.equals(((b) obj).name);
        }
        return false;
    }

    public int hashCode() {
        return this.name.hashCode() ^ 1000003;
    }

    @NonNull
    public String toString() {
        return "Encoding{name=\"" + this.name + "\"}";
    }

    private b(@NonNull String str) {
        if (str != null) {
            this.name = str;
            return;
        }
        throw new NullPointerException("name is null");
    }
}
