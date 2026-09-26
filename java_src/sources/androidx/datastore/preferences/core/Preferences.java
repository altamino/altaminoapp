package androidx.datastore.preferences.core;

import java.util.Map;
import kotlin.collections.s0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Preferences {

    public static final class Key<T> {

        @NotNull
        private final String name;

        @NotNull
        public final String a() {
            return this.name;
        }

        @NotNull
        public String toString() {
            return this.name;
        }

        public Key(@NotNull String name) {
            t.j(name, "name");
            this.name = name;
        }

        public boolean equals(@Nullable Object obj) {
            if (obj instanceof Key) {
                return t.e(this.name, ((Key) obj).name);
            }
            return false;
        }

        public int hashCode() {
            return this.name.hashCode();
        }
    }

    public static final class Pair<T> {

        @NotNull
        private final Key<T> key;
        private final T value;

        @NotNull
        public final Key<T> a() {
            return this.key;
        }

        public final T b() {
            return this.value;
        }

        public Pair(@NotNull Key<T> key, T t5) {
            t.j(key, "key");
            this.key = key;
            this.value = t5;
        }
    }

    @NotNull
    public abstract Map<Key<?>, Object> a();

    @Nullable
    public abstract <T> T b(@NotNull Key<T> key);

    @NotNull
    public final MutablePreferences c() {
        return new MutablePreferences(s0.A(a()), false);
    }

    @NotNull
    public final Preferences d() {
        return new MutablePreferences(s0.A(a()), true);
    }
}
