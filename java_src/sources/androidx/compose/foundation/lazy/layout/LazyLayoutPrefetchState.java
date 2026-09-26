package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Stable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
@Stable
@ExperimentalFoundationApi
public final class LazyLayoutPrefetchState {

    @NotNull
    private final MutableState prefetcher$delegate = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);

    public interface PrefetchHandle {
        void cancel();
    }

    public interface Prefetcher {
        @NotNull
        PrefetchHandle a(int i10, long j6);
    }

    @Nullable
    public final Prefetcher a() {
        return (Prefetcher) this.prefetcher$delegate.getValue();
    }

    public final void c(@Nullable Prefetcher prefetcher) {
        this.prefetcher$delegate.setValue(prefetcher);
    }

    @NotNull
    public final PrefetchHandle b(int i10, long j6) {
        PrefetchHandle prefetchHandleA;
        Prefetcher prefetcherA = a();
        if (prefetcherA == null || (prefetchHandleA = prefetcherA.a(i10, j6)) == null) {
            return DummyHandle.INSTANCE;
        }
        return prefetchHandleA;
    }
}
