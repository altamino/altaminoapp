package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class LazyMeasuredItemProvider {
    private final int defaultMainAxisSpacing;

    @NotNull
    private final LazyGridItemProvider itemProvider;

    @NotNull
    private final LazyLayoutMeasureScope measureScope;

    @NotNull
    private final MeasuredItemFactory measuredItemFactory;

    @ExperimentalFoundationApi
    public LazyMeasuredItemProvider(@NotNull LazyGridItemProvider itemProvider, @NotNull LazyLayoutMeasureScope measureScope, int i10, @NotNull MeasuredItemFactory measuredItemFactory) {
        t.j(itemProvider, "itemProvider");
        t.j(measureScope, "measureScope");
        t.j(measuredItemFactory, "measuredItemFactory");
        this.itemProvider = itemProvider;
        this.measureScope = measureScope;
        this.defaultMainAxisSpacing = i10;
        this.measuredItemFactory = measuredItemFactory;
    }

    public static /* synthetic */ LazyMeasuredItem b(LazyMeasuredItemProvider lazyMeasuredItemProvider, int i10, int i11, long j6, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = lazyMeasuredItemProvider.defaultMainAxisSpacing;
        }
        return lazyMeasuredItemProvider.a(i10, i11, j6);
    }

    @NotNull
    public final LazyMeasuredItem a(int i10, int i11, long j6) {
        int iO;
        Object objD = this.itemProvider.d(i10);
        Placeable[] placeableArrT = this.measureScope.t(i10, j6);
        if (Constraints.l(j6)) {
            iO = Constraints.p(j6);
        } else {
            if (!Constraints.k(j6)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            iO = Constraints.o(j6);
        }
        return this.measuredItemFactory.a(i10, objD, iO, i11, placeableArrT);
    }

    @NotNull
    public final Map<Object, Integer> c() {
        return this.itemProvider.c();
    }
}
