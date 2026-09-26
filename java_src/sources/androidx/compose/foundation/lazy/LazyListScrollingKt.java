package androidx.compose.foundation.lazy;

import androidx.compose.ui.unit.Dp;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
public final class LazyListScrollingKt {
    private static final boolean DEBUG = false;
    private static final float TargetDistance = Dp.f(2500);
    private static final float BoundDistance = Dp.f(1500);

    /* JADX INFO: Access modifiers changed from: private */
    public static final LazyListItemInfo d(LazyListState lazyListState, int i10) {
        LazyListItemInfo lazyListItemInfo;
        List<LazyListItemInfo> listB = lazyListState.m().b();
        int size = listB.size();
        for (int i11 = 0; i11 < size; i11++) {
            lazyListItemInfo = listB.get(i11);
            if (lazyListItemInfo.getIndex() == i10) {
                return lazyListItemInfo;
            }
        }
        lazyListItemInfo = null;
        return lazyListItemInfo;
    }
}
