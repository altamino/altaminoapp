package androidx.compose.runtime.external.kotlinx.collections.immutable;

import e8.l;
import f8.d;
import java.util.Collection;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public interface PersistentList<E> extends ImmutableList<E>, PersistentCollection<E> {

    public interface Builder<E> extends List<E>, PersistentCollection.Builder<E>, d {
        @NotNull
        PersistentList<E> build();
    }

    @Override // java.util.List
    @NotNull
    PersistentList<E> add(int i10, E e);

    @Override // java.util.List, java.util.Collection
    @NotNull
    PersistentList<E> add(E e);

    @Override // java.util.List, java.util.Collection
    @NotNull
    PersistentList<E> addAll(@NotNull Collection<? extends E> collection);

    @NotNull
    Builder<E> builder();

    @NotNull
    PersistentList<E> i(@NotNull l<? super E, Boolean> lVar);

    @NotNull
    PersistentList<E> n(int i10);

    @Override // java.util.List, java.util.Collection
    @NotNull
    PersistentList<E> remove(E e);

    @Override // java.util.List, java.util.Collection
    @NotNull
    PersistentList<E> removeAll(@NotNull Collection<? extends E> collection);

    @Override // java.util.List
    @NotNull
    PersistentList<E> set(int i10, E e);
}
