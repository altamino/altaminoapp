package androidx.compose.runtime;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class OpaqueKey {

    @NotNull
    private final String key;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof OpaqueKey) && t.e(this.key, ((OpaqueKey) obj).key);
    }

    public int hashCode() {
        return this.key.hashCode();
    }

    @NotNull
    public String toString() {
        return "OpaqueKey(key=" + this.key + ')';
    }

    public OpaqueKey(@NotNull String key) {
        t.j(key, "key");
        this.key = key;
    }
}
