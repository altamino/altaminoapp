package androidx.compose.foundation.lazy;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@ExperimentalFoundationApi
public interface LazyListItemProvider extends LazyLayoutItemProvider {
    @NotNull
    LazyItemScopeImpl e();

    @NotNull
    List<Integer> g();
}
