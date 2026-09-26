package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.unit.IntSize;
import java.util.List;
import kotlin.collections.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
final class EmptyLazyListLayoutInfo implements LazyListLayoutInfo {
    private static final int afterContentPadding = 0;
    private static final int beforeContentPadding = 0;
    private static final boolean reverseLayout = false;
    private static final int totalItemsCount = 0;
    private static final int viewportEndOffset = 0;
    private static final int viewportStartOffset = 0;

    @NotNull
    public static final EmptyLazyListLayoutInfo INSTANCE = new EmptyLazyListLayoutInfo();

    @NotNull
    private static final List<LazyListItemInfo> visibleItemsInfo = v.m();
    private static final long viewportSize = IntSize.Companion.a();

    @NotNull
    private static final Orientation orientation = Orientation.Vertical;

    @Override // androidx.compose.foundation.lazy.LazyListLayoutInfo
    public int a() {
        return totalItemsCount;
    }

    @Override // androidx.compose.foundation.lazy.LazyListLayoutInfo
    @NotNull
    public List<LazyListItemInfo> b() {
        return visibleItemsInfo;
    }

    private EmptyLazyListLayoutInfo() {
    }
}
