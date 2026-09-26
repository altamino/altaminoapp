package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.MeasureResult;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class LazyListMeasureResult implements LazyListLayoutInfo, MeasureResult {
    private final /* synthetic */ MeasureResult $$delegate_0;
    private final int afterContentPadding;
    private final boolean canScrollForward;
    private final float consumedScroll;

    @Nullable
    private final LazyMeasuredItem firstVisibleItem;
    private final int firstVisibleItemScrollOffset;

    @NotNull
    private final Orientation orientation;
    private final boolean reverseLayout;
    private final int totalItemsCount;
    private final int viewportEndOffset;
    private final int viewportStartOffset;

    @NotNull
    private final List<LazyListItemInfo> visibleItemsInfo;

    @Override // androidx.compose.foundation.lazy.LazyListLayoutInfo
    public int a() {
        return this.totalItemsCount;
    }

    @Override // androidx.compose.foundation.lazy.LazyListLayoutInfo
    @NotNull
    public List<LazyListItemInfo> b() {
        return this.visibleItemsInfo;
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    @NotNull
    public Map<AlignmentLine, Integer> c() {
        return this.$$delegate_0.c();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public void d() {
        this.$$delegate_0.d();
    }

    public final boolean e() {
        return this.canScrollForward;
    }

    public final float f() {
        return this.consumedScroll;
    }

    @Nullable
    public final LazyMeasuredItem g() {
        return this.firstVisibleItem;
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public int getHeight() {
        return this.$$delegate_0.getHeight();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public int getWidth() {
        return this.$$delegate_0.getWidth();
    }

    public final int h() {
        return this.firstVisibleItemScrollOffset;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LazyListMeasureResult(@Nullable LazyMeasuredItem lazyMeasuredItem, int i10, boolean z6, float f, @NotNull MeasureResult measureResult, @NotNull List<? extends LazyListItemInfo> visibleItemsInfo, int i11, int i12, int i13, boolean z10, @NotNull Orientation orientation, int i14) {
        t.j(measureResult, "measureResult");
        t.j(visibleItemsInfo, "visibleItemsInfo");
        t.j(orientation, "orientation");
        this.firstVisibleItem = lazyMeasuredItem;
        this.firstVisibleItemScrollOffset = i10;
        this.canScrollForward = z6;
        this.consumedScroll = f;
        this.visibleItemsInfo = visibleItemsInfo;
        this.viewportStartOffset = i11;
        this.viewportEndOffset = i12;
        this.totalItemsCount = i13;
        this.reverseLayout = z10;
        this.orientation = orientation;
        this.afterContentPadding = i14;
        this.$$delegate_0 = measureResult;
    }
}
