package kotlin.collections;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class g0 implements Map, Serializable, f8.a {

    @NotNull
    public static final g0 INSTANCE = new g0();
    private static final long serialVersionUID = 8246714829545688274L;

    private final Object readResolve() {
        return INSTANCE;
    }

    public boolean a(@NotNull Void value) {
        kotlin.jvm.internal.t.j(value, "value");
        return false;
    }

    @Override // java.util.Map
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public boolean containsKey(@Nullable Object obj) {
        return false;
    }

    @Override // java.util.Map
    @Nullable
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public Void get(@Nullable Object obj) {
        return null;
    }

    public int h() {
        return 0;
    }

    @Override // java.util.Map
    public int hashCode() {
        return 0;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return true;
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public Void remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public void putAll(Map map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @NotNull
    public String toString() {
        return "{}";
    }

    @Override // java.util.Map
    public final /* bridge */ boolean containsValue(Object obj) {
        if (obj instanceof Void) {
            return a((Void) obj);
        }
        return false;
    }

    @Override // java.util.Map
    public boolean equals(@Nullable Object obj) {
        return (obj instanceof Map) && ((Map) obj).isEmpty();
    }

    @NotNull
    public Set<Map.Entry> f() {
        return h0.INSTANCE;
    }

    @NotNull
    public Set<Object> g() {
        return h0.INSTANCE;
    }

    @NotNull
    public Collection j() {
        return f0.INSTANCE;
    }

    private g0() {
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry> entrySet() {
        return f();
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Object> keySet() {
        return g();
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return h();
    }

    @Override // java.util.Map
    public final /* bridge */ Collection values() {
        return j();
    }
}
