package androidx.datastore.core;

import e8.p;
import kotlin.coroutines.d;
import kotlinx.coroutines.flow.g;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public interface DataStore<T> {
    @Nullable
    Object a(@NotNull p<? super T, ? super d<? super T>, ? extends Object> pVar, @NotNull d<? super T> dVar);

    @NotNull
    g<T> getData();
}
