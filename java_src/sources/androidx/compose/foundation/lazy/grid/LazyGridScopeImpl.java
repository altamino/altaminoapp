package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.lazy.layout.MutableIntervalList;
import e8.p;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class LazyGridScopeImpl implements LazyGridScope {
    private boolean hasCustomSpans;

    @NotNull
    private final MutableIntervalList<LazyGridIntervalContent> intervals = new MutableIntervalList<>();

    @NotNull
    private final p<LazyGridItemSpanScope, Integer, GridItemSpan> DefaultSpan = LazyGridScopeImpl$DefaultSpan$1.INSTANCE;

    public final boolean a() {
        return this.hasCustomSpans;
    }

    @NotNull
    public final MutableIntervalList<LazyGridIntervalContent> b() {
        return this.intervals;
    }
}
