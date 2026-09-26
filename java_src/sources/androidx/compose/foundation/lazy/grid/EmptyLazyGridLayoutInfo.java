package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.unit.IntSize;
import java.util.List;
import kotlin.collections.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
final class EmptyLazyGridLayoutInfo implements LazyGridLayoutInfo {
    private static final int afterContentPadding = 0;
    private static final int beforeContentPadding = 0;
    private static final boolean reverseLayout = false;
    private static final int totalItemsCount = 0;
    private static final int viewportEndOffset = 0;
    private static final int viewportStartOffset = 0;

    @NotNull
    public static final EmptyLazyGridLayoutInfo INSTANCE = new EmptyLazyGridLayoutInfo();

    @NotNull
    private static final List<LazyGridItemInfo> visibleItemsInfo = v.m();
    private static final long viewportSize = IntSize.Companion.a();

    @NotNull
    private static final Orientation orientation = Orientation.Vertical;

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    public int a() {
        return totalItemsCount;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridLayoutInfo
    @NotNull
    public List<LazyGridItemInfo> b() {
        return visibleItemsInfo;
    }

    private EmptyLazyGridLayoutInfo() {
    }
}
