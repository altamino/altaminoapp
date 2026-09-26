package androidx.datastore.preferences.core;

import java.util.Set;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class PreferencesKeys {
    @NotNull
    public static final Preferences.Key<Boolean> a(@NotNull String name) {
        t.j(name, "name");
        return new Preferences.Key<>(name);
    }

    @NotNull
    public static final Preferences.Key<Double> b(@NotNull String name) {
        t.j(name, "name");
        return new Preferences.Key<>(name);
    }

    @NotNull
    public static final Preferences.Key<Float> c(@NotNull String name) {
        t.j(name, "name");
        return new Preferences.Key<>(name);
    }

    @NotNull
    public static final Preferences.Key<Integer> d(@NotNull String name) {
        t.j(name, "name");
        return new Preferences.Key<>(name);
    }

    @NotNull
    public static final Preferences.Key<Long> e(@NotNull String name) {
        t.j(name, "name");
        return new Preferences.Key<>(name);
    }

    @NotNull
    public static final Preferences.Key<String> f(@NotNull String name) {
        t.j(name, "name");
        return new Preferences.Key<>(name);
    }

    @NotNull
    public static final Preferences.Key<Set<String>> g(@NotNull String name) {
        t.j(name, "name");
        return new Preferences.Key<>(name);
    }
}
