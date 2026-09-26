package androidx.compose.runtime.external.kotlinx.collections.immutable;

import f8.f;
import java.util.Set;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public interface PersistentSet<E> extends ImmutableSet<E>, PersistentCollection<E> {

    public interface Builder<E> extends Set<E>, PersistentCollection.Builder<E>, f {
    }

    @Override // java.util.Set, java.util.Collection
    @NotNull
    PersistentSet<E> add(E e);

    @Override // java.util.Set, java.util.Collection
    @NotNull
    PersistentSet<E> remove(E e);
}
