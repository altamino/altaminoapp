package androidx.compose.runtime;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class JoinedKey {

    @Nullable
    private final Object left;

    @Nullable
    private final Object right;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof JoinedKey)) {
            return false;
        }
        JoinedKey joinedKey = (JoinedKey) obj;
        return t.e(this.left, joinedKey.left) && t.e(this.right, joinedKey.right);
    }

    @NotNull
    public String toString() {
        return "JoinedKey(left=" + this.left + ", right=" + this.right + ')';
    }

    private final int a(Object obj) {
        if (obj instanceof Enum) {
            return ((Enum) obj).ordinal();
        }
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public int hashCode() {
        return (a(this.left) * 31) + a(this.right);
    }

    public JoinedKey(@Nullable Object obj, @Nullable Object obj2) {
        this.left = obj;
        this.right = obj2;
    }
}
