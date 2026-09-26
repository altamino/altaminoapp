package androidx.compose.runtime.external.kotlinx.collections.immutable;

import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.UtilsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSet;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class ExtensionsKt {
    @NotNull
    public static final <K, V> PersistentMap<K, V> a() {
        return PersistentHashMap.Companion.a();
    }

    @NotNull
    public static final <E> PersistentSet<E> c() {
        return PersistentOrderedSet.Companion.a();
    }

    @NotNull
    public static final <E> PersistentList<E> b() {
        return UtilsKt.b();
    }
}
