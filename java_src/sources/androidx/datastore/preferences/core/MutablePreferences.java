package androidx.datastore.preferences.core;

import e8.l;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.collections.d0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class MutablePreferences extends Preferences {

    @NotNull
    private final AtomicBoolean frozen;

    @NotNull
    private final Map<Preferences.Key<?>, Object> preferencesMap;

    /* JADX INFO: renamed from: androidx.datastore.preferences.core.MutablePreferences$toString$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<Map.Entry<Preferences.Key<?>, Object>, CharSequence> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1);
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CharSequence invoke(@NotNull Map.Entry<Preferences.Key<?>, Object> entry) {
            t.j(entry, "entry");
            return "  " + entry.getKey().a() + " = " + entry.getValue();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MutablePreferences() {
        this(null, false, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ MutablePreferences(Map map, boolean z6, int i10, k kVar) {
        this((i10 & 1) != 0 ? new LinkedHashMap() : map, (i10 & 2) != 0 ? true : z6);
    }

    @Override // androidx.datastore.preferences.core.Preferences
    @NotNull
    public Map<Preferences.Key<?>, Object> a() {
        Map<Preferences.Key<?>, Object> mapUnmodifiableMap = Collections.unmodifiableMap(this.preferencesMap);
        t.i(mapUnmodifiableMap, "unmodifiableMap(preferencesMap)");
        return mapUnmodifiableMap;
    }

    @Override // androidx.datastore.preferences.core.Preferences
    @Nullable
    public <T> T b(@NotNull Preferences.Key<T> key) {
        t.j(key, "key");
        return (T) this.preferencesMap.get(key);
    }

    public final void e() {
        if (!(!this.frozen.get())) {
            throw new IllegalStateException("Do mutate preferences once returned to DataStore.".toString());
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof MutablePreferences) {
            return t.e(this.preferencesMap, ((MutablePreferences) obj).preferencesMap);
        }
        return false;
    }

    public final void f() {
        this.frozen.set(true);
    }

    public final void g(@NotNull Preferences.Pair<?>... pairs) {
        t.j(pairs, "pairs");
        e();
        for (Preferences.Pair<?> pair : pairs) {
            j(pair.a(), pair.b());
        }
    }

    public final <T> T h(@NotNull Preferences.Key<T> key) {
        t.j(key, "key");
        e();
        return (T) this.preferencesMap.remove(key);
    }

    public int hashCode() {
        return this.preferencesMap.hashCode();
    }

    public final <T> void i(@NotNull Preferences.Key<T> key, T t5) {
        t.j(key, "key");
        j(key, t5);
    }

    public final void j(@NotNull Preferences.Key<?> key, @Nullable Object obj) {
        t.j(key, "key");
        e();
        if (obj == null) {
            h(key);
            return;
        }
        if (!(obj instanceof Set)) {
            this.preferencesMap.put(key, obj);
            return;
        }
        Map<Preferences.Key<?>, Object> map = this.preferencesMap;
        Set setUnmodifiableSet = Collections.unmodifiableSet(d0.Y0((Iterable) obj));
        t.i(setUnmodifiableSet, "unmodifiableSet(value.toSet())");
        map.put(key, setUnmodifiableSet);
    }

    @NotNull
    public String toString() {
        return d0.t0(this.preferencesMap.entrySet(), ",\n", "{\n", "\n}", 0, null, AnonymousClass1.INSTANCE, 24, null);
    }

    public MutablePreferences(@NotNull Map<Preferences.Key<?>, Object> preferencesMap, boolean z6) {
        t.j(preferencesMap, "preferencesMap");
        this.preferencesMap = preferencesMap;
        this.frozen = new AtomicBoolean(z6);
    }
}
