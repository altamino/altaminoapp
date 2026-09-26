package androidx.lifecycle.viewmodel;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public abstract class CreationExtras {

    @NotNull
    private final Map<Key<?>, Object> map = new LinkedHashMap();

    public interface Key<T> {
    }

    @Nullable
    public abstract <T> T a(@NotNull Key<T> key);

    @NotNull
    public final Map<Key<?>, Object> b() {
        return this.map;
    }

    public static final class Empty extends CreationExtras {

        @NotNull
        public static final Empty INSTANCE = new Empty();

        @Override // androidx.lifecycle.viewmodel.CreationExtras
        @Nullable
        public <T> T a(@NotNull Key<T> key) {
            t.j(key, "key");
            return null;
        }

        private Empty() {
        }
    }
}
