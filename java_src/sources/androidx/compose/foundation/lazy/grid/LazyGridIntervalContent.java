package androidx.compose.foundation.lazy.grid;

import androidx.compose.runtime.Composer;
import e8.l;
import e8.p;
import e8.r;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class LazyGridIntervalContent {

    @NotNull
    private final r<LazyGridItemScope, Integer, Composer, Integer, l0> item;

    @Nullable
    private final l<Integer, Object> key;

    @NotNull
    private final p<LazyGridItemSpanScope, Integer, GridItemSpan> span;

    @NotNull
    private final l<Integer, Object> type;

    @NotNull
    public final r<LazyGridItemScope, Integer, Composer, Integer, l0> a() {
        return this.item;
    }

    @Nullable
    public final l<Integer, Object> b() {
        return this.key;
    }

    @NotNull
    public final p<LazyGridItemSpanScope, Integer, GridItemSpan> c() {
        return this.span;
    }

    @NotNull
    public final l<Integer, Object> d() {
        return this.type;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LazyGridIntervalContent(@Nullable l<? super Integer, ? extends Object> lVar, @NotNull p<? super LazyGridItemSpanScope, ? super Integer, GridItemSpan> span, @NotNull l<? super Integer, ? extends Object> type, @NotNull r<? super LazyGridItemScope, ? super Integer, ? super Composer, ? super Integer, l0> item) {
        t.j(span, "span");
        t.j(type, "type");
        t.j(item, "item");
        this.key = lVar;
        this.span = span;
        this.type = type;
        this.item = item;
    }
}
