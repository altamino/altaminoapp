package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes11.dex */
@ExperimentalFoundationApi
public final class LazyLayoutMeasureScopeImpl implements LazyLayoutMeasureScope, MeasureScope {

    @NotNull
    private final LazyLayoutItemContentFactory itemContentFactory;

    @NotNull
    private final HashMap<Integer, Placeable[]> placeablesCache;

    @NotNull
    private final SubcomposeMeasureScope subcomposeMeasureScope;

    @Override // androidx.compose.ui.unit.Density
    public float E0() {
        return this.subcomposeMeasureScope.E0();
    }

    @Override // androidx.compose.ui.layout.MeasureScope
    @NotNull
    public MeasureResult G0(int i10, int i11, @NotNull Map<AlignmentLine, Integer> alignmentLines, @NotNull l<? super Placeable.PlacementScope, l0> placementBlock) {
        t.j(alignmentLines, "alignmentLines");
        t.j(placementBlock, "placementBlock");
        return this.subcomposeMeasureScope.G0(i10, i11, alignmentLines, placementBlock);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public float H0(float f) {
        return this.subcomposeMeasureScope.H0(f);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public int L0(long j6) {
        return this.subcomposeMeasureScope.L0(j6);
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.subcomposeMeasureScope.getDensity();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    @NotNull
    public LayoutDirection getLayoutDirection() {
        return this.subcomposeMeasureScope.getLayoutDirection();
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public int j0(float f) {
        return this.subcomposeMeasureScope.j0(f);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public float p0(long j6) {
        return this.subcomposeMeasureScope.p0(j6);
    }

    public LazyLayoutMeasureScopeImpl(@NotNull LazyLayoutItemContentFactory itemContentFactory, @NotNull SubcomposeMeasureScope subcomposeMeasureScope) {
        t.j(itemContentFactory, "itemContentFactory");
        t.j(subcomposeMeasureScope, "subcomposeMeasureScope");
        this.itemContentFactory = itemContentFactory;
        this.subcomposeMeasureScope = subcomposeMeasureScope;
        this.placeablesCache = new HashMap<>();
    }

    @Override // androidx.compose.ui.unit.Density
    public float P(float f) {
        return this.subcomposeMeasureScope.P(f);
    }

    @Override // androidx.compose.ui.unit.Density
    public long X(long j6) {
        return this.subcomposeMeasureScope.X(j6);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope, androidx.compose.ui.unit.Density
    public float j(int i10) {
        return this.subcomposeMeasureScope.j(i10);
    }

    @Override // androidx.compose.ui.unit.Density
    public long q(long j6) {
        return this.subcomposeMeasureScope.q(j6);
    }

    @Override // androidx.compose.ui.unit.Density
    public float s(long j6) {
        return this.subcomposeMeasureScope.s(j6);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope
    @NotNull
    public Placeable[] t(int i10, long j6) {
        Placeable[] placeableArr = this.placeablesCache.get(Integer.valueOf(i10));
        if (placeableArr != null) {
            return placeableArr;
        }
        Object objD = this.itemContentFactory.d().invoke().d(i10);
        List<Measurable> listV = this.subcomposeMeasureScope.v(objD, this.itemContentFactory.b(i10, objD));
        int size = listV.size();
        Placeable[] placeableArr2 = new Placeable[size];
        for (int i11 = 0; i11 < size; i11++) {
            placeableArr2[i11] = listV.get(i11).b0(j6);
        }
        this.placeablesCache.put(Integer.valueOf(i10), placeableArr2);
        return placeableArr2;
    }
}
