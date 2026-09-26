package androidx.compose.foundation.lazy.grid;

import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class LazyGridScrollingKt {
    private static final boolean DEBUG = false;
    private static final float TargetDistance = Dp.f(2500);
    private static final float BoundDistance = Dp.f(1500);

    /* JADX INFO: Access modifiers changed from: private */
    public static final int e(List<? extends LazyGridItemInfo> list, boolean z6) {
        LazyGridScrollingKt$calculateLineAverageMainAxisSize$lineOf$1 lazyGridScrollingKt$calculateLineAverageMainAxisSize$lineOf$1 = new LazyGridScrollingKt$calculateLineAverageMainAxisSize$lineOf$1(z6, list);
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i10 < list.size()) {
            int iIntValue = lazyGridScrollingKt$calculateLineAverageMainAxisSize$lineOf$1.invoke(Integer.valueOf(i10)).intValue();
            if (iIntValue == -1) {
                i10++;
            } else {
                int iMax = 0;
                while (i10 < list.size() && lazyGridScrollingKt$calculateLineAverageMainAxisSize$lineOf$1.invoke(Integer.valueOf(i10)).intValue() == iIntValue) {
                    iMax = Math.max(iMax, z6 ? IntSize.f(list.get(i10).a()) : IntSize.g(list.get(i10).a()));
                    i10++;
                }
                i11 += iMax;
                i12++;
            }
        }
        return i11 / i12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LazyGridItemInfo f(LazyGridState lazyGridState, int i10) {
        LazyGridItemInfo lazyGridItemInfo;
        List<LazyGridItemInfo> listB = lazyGridState.m().b();
        int size = listB.size();
        for (int i11 = 0; i11 < size; i11++) {
            lazyGridItemInfo = listB.get(i11);
            if (lazyGridItemInfo.getIndex() == i10) {
                return lazyGridItemInfo;
            }
        }
        lazyGridItemInfo = null;
        return lazyGridItemInfo;
    }
}
