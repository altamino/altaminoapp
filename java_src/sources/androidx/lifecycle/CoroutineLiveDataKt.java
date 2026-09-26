package androidx.lifecycle;

import kotlinx.coroutines.e1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class CoroutineLiveDataKt {
    public static final long DEFAULT_TIMEOUT = 5000;

    @Nullable
    public static final <T> Object a(@NotNull MediatorLiveData<T> mediatorLiveData, @NotNull LiveData<T> liveData, @NotNull kotlin.coroutines.d<? super EmittedSource> dVar) {
        return kotlinx.coroutines.i.g(e1.c().getImmediate(), new CoroutineLiveDataKt$addDisposableSource$2(mediatorLiveData, liveData, null), dVar);
    }
}
