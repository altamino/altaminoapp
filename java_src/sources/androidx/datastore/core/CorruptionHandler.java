package androidx.datastore.core;

import kotlin.coroutines.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public interface CorruptionHandler<T> {
    @Nullable
    Object a(@NotNull CorruptionException corruptionException, @NotNull d<? super T> dVar);
}
