package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.ExperimentalFoundationApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@ExperimentalFoundationApi
final class DummyHandle implements LazyLayoutPrefetchState.PrefetchHandle {

    @NotNull
    public static final DummyHandle INSTANCE = new DummyHandle();

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState.PrefetchHandle
    public void cancel() {
    }

    private DummyHandle() {
    }
}
