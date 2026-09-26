package androidx.compose.foundation.lazy;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import e8.a;
import e8.l;
import j8.i;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class LazyListItemProviderImplKt$rememberItemProvider$2$1 extends v implements a<LazyListItemsSnapshot> {
    final /* synthetic */ State<l<LazyListScope, l0>> $latestContent;
    final /* synthetic */ MutableState<i> $nearestItemsRangeState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    LazyListItemProviderImplKt$rememberItemProvider$2$1(State<? extends l<? super LazyListScope, l0>> state, MutableState<i> mutableState) {
        super(0);
        this.$latestContent = state;
        this.$nearestItemsRangeState = mutableState;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final LazyListItemsSnapshot invoke() {
        LazyListScopeImpl lazyListScopeImpl = new LazyListScopeImpl();
        this.$latestContent.getValue().invoke(lazyListScopeImpl);
        return new LazyListItemsSnapshot(lazyListScopeImpl.b(), lazyListScopeImpl.a(), this.$nearestItemsRangeState.getValue());
    }
}
