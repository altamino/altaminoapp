package androidx.compose.foundation.lazy.grid;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class LazyGridSpanLayoutProvider$getLineIndexOfItem$lowerBoundBucket$1 extends v implements l<LazyGridSpanLayoutProvider.Bucket, Integer> {
    final /* synthetic */ int $itemIndex;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazyGridSpanLayoutProvider$getLineIndexOfItem$lowerBoundBucket$1(int i10) {
        super(1);
        this.$itemIndex = i10;
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Integer invoke(@NotNull LazyGridSpanLayoutProvider.Bucket it) {
        t.j(it, "it");
        return Integer.valueOf(it.a() - this.$itemIndex);
    }
}
