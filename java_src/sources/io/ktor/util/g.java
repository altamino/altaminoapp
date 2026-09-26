package io.ktor.util;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class g<Value> implements Map<String, Value>, f8.e {

    @NotNull
    private final Map<h, Value> delegate = new LinkedHashMap();

    static final class a extends kotlin.jvm.internal.v implements e8.l<Map.Entry<h, Value>, Map.Entry<String, Value>> {
        public static final a INSTANCE = new a();

        a() {
            super(1);
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map.Entry<String, Value> invoke(@NotNull Map.Entry<h, Value> $receiver) {
            kotlin.jvm.internal.t.j($receiver, "$this$$receiver");
            return new o($receiver.getKey().a(), $receiver.getValue());
        }
    }

    static final class b extends kotlin.jvm.internal.v implements e8.l<Map.Entry<String, Value>, Map.Entry<h, Value>> {
        public static final b INSTANCE = new b();

        b() {
            super(1);
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map.Entry<h, Value> invoke(@NotNull Map.Entry<String, Value> $receiver) {
            kotlin.jvm.internal.t.j($receiver, "$this$$receiver");
            return new o(y.a($receiver.getKey()), $receiver.getValue());
        }
    }

    static final class c extends kotlin.jvm.internal.v implements e8.l<h, String> {
        public static final c INSTANCE = new c();

        c() {
            super(1);
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke(@NotNull h $receiver) {
            kotlin.jvm.internal.t.j($receiver, "$this$$receiver");
            return $receiver.a();
        }
    }

    static final class d extends kotlin.jvm.internal.v implements e8.l<String, h> {
        public static final d INSTANCE = new d();

        d() {
            super(1);
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final h invoke(@NotNull String $receiver) {
            kotlin.jvm.internal.t.j($receiver, "$this$$receiver");
            return y.a($receiver);
        }
    }

    public boolean a(@NotNull String key) {
        kotlin.jvm.internal.t.j(key, "key");
        return this.delegate.containsKey(new h(key));
    }

    @Override // java.util.Map
    public void clear() {
        this.delegate.clear();
    }

    @Override // java.util.Map
    public final /* bridge */ boolean containsKey(Object obj) {
        if (obj instanceof String) {
            return a((String) obj);
        }
        return false;
    }

    @Override // java.util.Map
    public boolean containsValue(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        return this.delegate.containsValue(obj);
    }

    @Nullable
    public Value e(@NotNull String key) {
        kotlin.jvm.internal.t.j(key, "key");
        return this.delegate.get(y.a(key));
    }

    @Override // java.util.Map
    public boolean equals(@Nullable Object obj) {
        if (obj == null || !(obj instanceof g)) {
            return false;
        }
        return kotlin.jvm.internal.t.e(((g) obj).delegate, this.delegate);
    }

    @NotNull
    public Set<Map.Entry<String, Value>> f() {
        return new n(this.delegate.entrySet(), a.INSTANCE, b.INSTANCE);
    }

    @NotNull
    public Set<String> g() {
        return new n(this.delegate.keySet(), c.INSTANCE, d.INSTANCE);
    }

    @Override // java.util.Map
    public final /* bridge */ Value get(Object obj) {
        if (obj instanceof String) {
            return e((String) obj);
        }
        return null;
    }

    public int h() {
        return this.delegate.size();
    }

    @Override // java.util.Map
    public int hashCode() {
        return this.delegate.hashCode();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.delegate.isEmpty();
    }

    @NotNull
    public Collection<Value> j() {
        return this.delegate.values();
    }

    @Override // java.util.Map
    @Nullable
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public Value put(@NotNull String key, @NotNull Value value) {
        kotlin.jvm.internal.t.j(key, "key");
        kotlin.jvm.internal.t.j(value, "value");
        return this.delegate.put(y.a(key), value);
    }

    @Nullable
    public Value l(@NotNull String key) {
        kotlin.jvm.internal.t.j(key, "key");
        return this.delegate.remove(y.a(key));
    }

    @Override // java.util.Map
    public void putAll(@NotNull Map<? extends String, ? extends Value> from) {
        kotlin.jvm.internal.t.j(from, "from");
        for (Map.Entry<? extends String, ? extends Value> entry : from.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public final /* bridge */ Value remove(Object obj) {
        if (obj instanceof String) {
            return l((String) obj);
        }
        return null;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<String, Value>> entrySet() {
        return f();
    }

    @Override // java.util.Map
    public final /* bridge */ Set<String> keySet() {
        return g();
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return h();
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<Value> values() {
        return j();
    }
}
