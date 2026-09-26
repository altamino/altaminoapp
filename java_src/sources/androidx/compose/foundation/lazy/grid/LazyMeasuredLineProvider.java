package androidx.compose.foundation.lazy.grid;

import androidx.compose.ui.unit.Constraints;
import e8.p;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class LazyMeasuredLineProvider {

    @NotNull
    private final p<Integer, Integer, Constraints> childConstraints;
    private final int gridItemsCount;
    private final boolean isVertical;

    @NotNull
    private final LazyMeasuredItemProvider measuredItemProvider;

    @NotNull
    private final MeasuredLineFactory measuredLineFactory;
    private final int spaceBetweenLines;

    @NotNull
    private final LazyGridSpanLayoutProvider spanLayoutProvider;

    @NotNull
    public final p<Integer, Integer, Constraints> c() {
        return this.childConstraints;
    }

    public LazyMeasuredLineProvider(boolean z6, @NotNull List<Integer> slotSizesSums, int i10, int i11, int i12, @NotNull LazyMeasuredItemProvider measuredItemProvider, @NotNull LazyGridSpanLayoutProvider spanLayoutProvider, @NotNull MeasuredLineFactory measuredLineFactory) {
        t.j(slotSizesSums, "slotSizesSums");
        t.j(measuredItemProvider, "measuredItemProvider");
        t.j(spanLayoutProvider, "spanLayoutProvider");
        t.j(measuredLineFactory, "measuredLineFactory");
        this.isVertical = z6;
        this.gridItemsCount = i11;
        this.spaceBetweenLines = i12;
        this.measuredItemProvider = measuredItemProvider;
        this.spanLayoutProvider = spanLayoutProvider;
        this.measuredLineFactory = measuredLineFactory;
        this.childConstraints = new LazyMeasuredLineProvider$childConstraints$1(slotSizesSums, i10, this);
    }

    @NotNull
    public final LazyMeasuredLine b(int i10) {
        LazyGridSpanLayoutProvider.LineConfiguration lineConfigurationC = this.spanLayoutProvider.c(i10);
        int size = lineConfigurationC.b().size();
        int i11 = (size == 0 || lineConfigurationC.a() + size == this.gridItemsCount) ? 0 : this.spaceBetweenLines;
        LazyMeasuredItem[] lazyMeasuredItemArr = new LazyMeasuredItem[size];
        int i12 = 0;
        for (int i13 = 0; i13 < size; i13++) {
            int iD = GridItemSpan.d(lineConfigurationC.b().get(i13).g());
            LazyMeasuredItem lazyMeasuredItemA = this.measuredItemProvider.a(ItemIndex.b(lineConfigurationC.a() + i13), i11, this.childConstraints.invoke(Integer.valueOf(i12), Integer.valueOf(iD)).t());
            i12 += iD;
            l0 l0Var = l0.INSTANCE;
            lazyMeasuredItemArr[i13] = lazyMeasuredItemA;
        }
        return this.measuredLineFactory.a(i10, lazyMeasuredItemArr, lineConfigurationC.b(), i11);
    }
}
