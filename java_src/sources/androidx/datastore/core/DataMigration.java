package androidx.datastore.core;

import kotlin.coroutines.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public interface DataMigration<T> {
    @Nullable
    Object cleanUp(@NotNull d<? super l0> dVar);

    @Nullable
    Object migrate(T t5, @NotNull d<? super T> dVar);

    @Nullable
    Object shouldMigrate(T t5, @NotNull d<? super Boolean> dVar);
}
