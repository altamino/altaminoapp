package androidx.compose.foundation.lazy.grid;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import e8.a;
import e8.l;
import j8.i;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class LazyGridItemProviderImplKt$rememberItemProvider$2$1 extends v implements a<LazyGridItemsSnapshot> {
    final /* synthetic */ State<l<LazyGridScope, l0>> $latestContent;
    final /* synthetic */ MutableState<i> $nearestItemsRangeState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    LazyGridItemProviderImplKt$rememberItemProvider$2$1(State<? extends l<? super LazyGridScope, l0>> state, MutableState<i> mutableState) {
        super(0);
        this.$latestContent = state;
        this.$nearestItemsRangeState = mutableState;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final LazyGridItemsSnapshot invoke() {
        LazyGridScopeImpl lazyGridScopeImpl = new LazyGridScopeImpl();
        this.$latestContent.getValue().invoke(lazyGridScopeImpl);
        return new LazyGridItemsSnapshot(lazyGridScopeImpl.b(), lazyGridScopeImpl.a(), this.$nearestItemsRangeState.getValue());
    }
}
