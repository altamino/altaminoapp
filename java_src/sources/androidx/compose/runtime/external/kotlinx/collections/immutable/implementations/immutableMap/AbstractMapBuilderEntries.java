package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import java.util.Map;
import java.util.Map.Entry;
import kotlin.collections.h;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractMapBuilderEntries<E extends Map.Entry<? extends K, ? extends V>, K, V> extends h<E> {
    public abstract boolean f(@NotNull Map.Entry<? extends K, ? extends V> entry);

    public abstract boolean j(@NotNull Map.Entry<? extends K, ? extends V> entry);

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            return e((Map.Entry) obj);
        }
        return false;
    }

    public final boolean e(@NotNull E element) {
        t.j(element, "element");
        if ((element instanceof Object ? element : null) instanceof Map.Entry) {
            return f(element);
        }
        return false;
    }

    public final boolean g(@NotNull E element) {
        t.j(element, "element");
        if ((element instanceof Object ? element : null) instanceof Map.Entry) {
            return j(element);
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ boolean remove(Object obj) {
        if (obj instanceof Map.Entry) {
            return g((Map.Entry) obj);
        }
        return false;
    }
}
