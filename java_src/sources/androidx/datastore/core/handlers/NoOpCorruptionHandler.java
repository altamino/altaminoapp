package androidx.datastore.core.handlers;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.CorruptionHandler;
import kotlin.coroutines.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class NoOpCorruptionHandler<T> implements CorruptionHandler<T> {
    @Override // androidx.datastore.core.CorruptionHandler
    @Nullable
    public Object a(@NotNull CorruptionException corruptionException, @NotNull d<? super T> dVar) throws CorruptionException {
        throw corruptionException;
    }
}
