package x7;

import java.util.Map;
import java.util.Map.Entry;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public abstract class a<E extends Map.Entry<? extends K, ? extends V>, K, V> extends kotlin.collections.h<E> {
    public abstract boolean f(@NotNull Map.Entry<? extends K, ? extends V> entry);

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            return e((Map.Entry) obj);
        }
        return false;
    }

    public final boolean e(@NotNull E element) {
        t.j(element, "element");
        return f(element);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ boolean remove(Object obj) {
        if (obj instanceof Map.Entry) {
            return g((Map.Entry) obj);
        }
        return false;
    }

    public /* bridge */ boolean g(Map.Entry<?, ?> entry) {
        return super.remove(entry);
    }
}
