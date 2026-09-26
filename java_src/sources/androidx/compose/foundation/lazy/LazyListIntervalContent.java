package androidx.compose.foundation.lazy;

import androidx.compose.runtime.Composer;
import e8.l;
import e8.r;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
public final class LazyListIntervalContent {

    @NotNull
    private final r<LazyItemScope, Integer, Composer, Integer, l0> item;

    @Nullable
    private final l<Integer, Object> key;

    @NotNull
    private final l<Integer, Object> type;

    @NotNull
    public final r<LazyItemScope, Integer, Composer, Integer, l0> a() {
        return this.item;
    }

    @Nullable
    public final l<Integer, Object> b() {
        return this.key;
    }

    @NotNull
    public final l<Integer, Object> c() {
        return this.type;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LazyListIntervalContent(@Nullable l<? super Integer, ? extends Object> lVar, @NotNull l<? super Integer, ? extends Object> type, @NotNull r<? super LazyItemScope, ? super Integer, ? super Composer, ? super Integer, l0> item) {
        t.j(type, "type");
        t.j(item, "item");
        this.key = lVar;
        this.type = type;
        this.item = item;
    }
}
