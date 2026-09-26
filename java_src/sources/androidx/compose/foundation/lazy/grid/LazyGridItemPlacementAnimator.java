package androidx.compose.foundation.lazy.grid;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.a0;
import kotlin.collections.d0;
import kotlin.collections.s0;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class LazyGridItemPlacementAnimator {
    private final boolean isVertical;

    @NotNull
    private Map<Object, Integer> keyToIndexMap;

    @NotNull
    private final Map<Object, ItemInfo> keyToItemInfoMap;

    @NotNull
    private final Set<Object> positionedKeys;

    @NotNull
    private final o0 scope;
    private int slotsPerLine;
    private int viewportEndItemIndex;
    private int viewportEndItemNotVisiblePartSize;
    private int viewportStartItemIndex;
    private int viewportStartItemNotVisiblePartSize;

    public LazyGridItemPlacementAnimator(@NotNull o0 scope, boolean z6) {
        t.j(scope, "scope");
        this.scope = scope;
        this.isVertical = z6;
        this.keyToItemInfoMap = new LinkedHashMap();
        this.keyToIndexMap = s0.h();
        this.viewportStartItemIndex = -1;
        this.viewportEndItemIndex = -1;
        this.positionedKeys = new LinkedHashSet();
    }

    private final int b(int i10, int i11, int i12, long j6, boolean z6, int i13, int i14) {
        if (this.slotsPerLine == 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        boolean z10 = false;
        int i15 = this.viewportEndItemIndex;
        boolean z11 = z6 ? i15 > i10 : i15 < i10;
        if (z6 ? this.viewportStartItemIndex < i10 : this.viewportStartItemIndex > i10) {
            z10 = true;
        }
        if (z11) {
            int iAbs = Math.abs(i10 - this.viewportEndItemIndex);
            int i16 = this.slotsPerLine;
            return i13 + this.viewportEndItemNotVisiblePartSize + (i12 * ((((iAbs + i16) - 1) / i16) - 1)) + d(j6);
        }
        if (!z10) {
            return i14;
        }
        int iAbs2 = Math.abs(this.viewportStartItemIndex - i10);
        int i17 = this.slotsPerLine;
        return ((this.viewportStartItemNotVisiblePartSize - i11) - (i12 * ((((iAbs2 + i17) - 1) / i17) - 1))) + d(j6);
    }

    private final int d(long j6) {
        return this.isVertical ? IntOffset.k(j6) : IntOffset.j(j6);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x00d7  */
    private final void g(LazyGridPositionedItem lazyGridPositionedItem, ItemInfo itemInfo) {
        while (itemInfo.d().size() > lazyGridPositionedItem.q()) {
            a0.M(itemInfo.d());
        }
        while (itemInfo.d().size() < lazyGridPositionedItem.q()) {
            int size = itemInfo.d().size();
            long jC = lazyGridPositionedItem.c();
            List<PlaceableInfo> listD = itemInfo.d();
            long jC2 = itemInfo.c();
            listD.add(new PlaceableInfo(IntOffsetKt.a(IntOffset.j(jC) - IntOffset.j(jC2), IntOffset.k(jC) - IntOffset.k(jC2)), lazyGridPositionedItem.m(size), null));
        }
        List<PlaceableInfo> listD2 = itemInfo.d();
        int size2 = listD2.size();
        for (int i10 = 0; i10 < size2; i10++) {
            PlaceableInfo placeableInfo = listD2.get(i10);
            long jD = placeableInfo.d();
            long jC3 = itemInfo.c();
            long jA = IntOffsetKt.a(IntOffset.j(jD) + IntOffset.j(jC3), IntOffset.k(jD) + IntOffset.k(jC3));
            long jP = lazyGridPositionedItem.p();
            placeableInfo.f(lazyGridPositionedItem.m(i10));
            FiniteAnimationSpec<IntOffset> finiteAnimationSpecE = lazyGridPositionedItem.e(i10);
            if (!IntOffset.i(jA, jP)) {
                long jC4 = itemInfo.c();
                placeableInfo.g(IntOffsetKt.a(IntOffset.j(jP) - IntOffset.j(jC4), IntOffset.k(jP) - IntOffset.k(jC4)));
                if (finiteAnimationSpecE != null) {
                    placeableInfo.e(true);
                    k.d(this.scope, null, null, new LazyGridItemPlacementAnimator$startAnimationsIfNeeded$1$1(placeableInfo, finiteAnimationSpecE, null), 3, null);
                }
            }
        }
    }

    private final long h(int i10) {
        boolean z6 = this.isVertical;
        int i11 = z6 ? 0 : i10;
        if (!z6) {
            i10 = 0;
        }
        return IntOffsetKt.a(i11, i10);
    }

    public final long c(@NotNull Object key, int i10, int i11, int i12, long j6) {
        t.j(key, "key");
        ItemInfo itemInfo = this.keyToItemInfoMap.get(key);
        if (itemInfo == null) {
            return j6;
        }
        PlaceableInfo placeableInfo = itemInfo.d().get(i10);
        long jN = placeableInfo.a().n().n();
        long jC = itemInfo.c();
        long jA = IntOffsetKt.a(IntOffset.j(jN) + IntOffset.j(jC), IntOffset.k(jN) + IntOffset.k(jC));
        long jD = placeableInfo.d();
        long jC2 = itemInfo.c();
        long jA2 = IntOffsetKt.a(IntOffset.j(jD) + IntOffset.j(jC2), IntOffset.k(jD) + IntOffset.k(jC2));
        if (placeableInfo.b() && ((d(jA2) < i11 && d(jA) < i11) || (d(jA2) > i12 && d(jA) > i12))) {
            k.d(this.scope, null, null, new LazyGridItemPlacementAnimator$getAnimatedOffset$1(placeableInfo, null), 3, null);
        }
        return jA;
    }

    public final void e(int i10, int i11, int i12, int i13, boolean z6, @NotNull List<LazyGridPositionedItem> positionedItems, @NotNull LazyMeasuredItemProvider measuredItemProvider) {
        boolean z10;
        boolean z11;
        int iB;
        t.j(positionedItems, "positionedItems");
        t.j(measuredItemProvider, "measuredItemProvider");
        int size = positionedItems.size();
        for (int i14 = 0; i14 < size; i14++) {
            if (positionedItems.get(i14).h()) {
                this.slotsPerLine = i13;
                int i15 = this.isVertical ? i12 : i11;
                long jH = h(z6 ? -i10 : i10);
                LazyGridPositionedItem lazyGridPositionedItem = (LazyGridPositionedItem) d0.j0(positionedItems);
                LazyGridPositionedItem lazyGridPositionedItem2 = (LazyGridPositionedItem) d0.v0(positionedItems);
                int size2 = positionedItems.size();
                for (int i16 = 0; i16 < size2; i16++) {
                    LazyGridPositionedItem lazyGridPositionedItem3 = positionedItems.get(i16);
                    ItemInfo itemInfo = this.keyToItemInfoMap.get(lazyGridPositionedItem3.i());
                    if (itemInfo != null) {
                        itemInfo.g(lazyGridPositionedItem3.getIndex());
                        itemInfo.f(lazyGridPositionedItem3.g());
                        itemInfo.e(lazyGridPositionedItem3.f());
                    }
                }
                LazyGridItemPlacementAnimator$onMeasured$averageLineMainAxisSize$1$lineOf$1 lazyGridItemPlacementAnimator$onMeasured$averageLineMainAxisSize$1$lineOf$1 = new LazyGridItemPlacementAnimator$onMeasured$averageLineMainAxisSize$1$lineOf$1(this, positionedItems);
                int i17 = 0;
                int i18 = 0;
                int i19 = 0;
                while (i17 < positionedItems.size()) {
                    int iIntValue = lazyGridItemPlacementAnimator$onMeasured$averageLineMainAxisSize$1$lineOf$1.invoke(Integer.valueOf(i17)).intValue();
                    if (iIntValue == -1) {
                        i17++;
                    } else {
                        int iMax = 0;
                        while (i17 < positionedItems.size() && lazyGridItemPlacementAnimator$onMeasured$averageLineMainAxisSize$1$lineOf$1.invoke(Integer.valueOf(i17)).intValue() == iIntValue) {
                            iMax = Math.max(iMax, positionedItems.get(i17).o());
                            i17++;
                        }
                        i18 += iMax;
                        i19++;
                    }
                }
                int i20 = i18 / i19;
                this.positionedKeys.clear();
                int size3 = positionedItems.size();
                int i21 = 0;
                while (i21 < size3) {
                    LazyGridPositionedItem lazyGridPositionedItem4 = positionedItems.get(i21);
                    this.positionedKeys.add(lazyGridPositionedItem4.i());
                    ItemInfo itemInfo2 = this.keyToItemInfoMap.get(lazyGridPositionedItem4.i());
                    if (itemInfo2 != null) {
                        i21 = i21;
                        size3 = size3;
                        if (lazyGridPositionedItem4.h()) {
                            long jC = itemInfo2.c();
                            itemInfo2.h(IntOffsetKt.a(IntOffset.j(jC) + IntOffset.j(jH), IntOffset.k(jC) + IntOffset.k(jH)));
                            g(lazyGridPositionedItem4, itemInfo2);
                        } else {
                            this.keyToItemInfoMap.remove(lazyGridPositionedItem4.i());
                        }
                    } else if (lazyGridPositionedItem4.h()) {
                        ItemInfo itemInfo3 = new ItemInfo(lazyGridPositionedItem4.getIndex(), lazyGridPositionedItem4.g(), lazyGridPositionedItem4.f());
                        Integer num = this.keyToIndexMap.get(lazyGridPositionedItem4.i());
                        long jP = lazyGridPositionedItem4.p();
                        if (num == null) {
                            iB = d(jP);
                        } else {
                            iB = b(num.intValue(), lazyGridPositionedItem4.o(), i20, jH, z6, i15, !z6 ? d(jP) : d(jP) - lazyGridPositionedItem4.o());
                        }
                        long jG = this.isVertical ? IntOffset.g(jP, 0, iB, 1, null) : IntOffset.g(jP, iB, 0, 2, null);
                        int iQ = lazyGridPositionedItem4.q();
                        for (int i22 = 0; i22 < iQ; i22++) {
                            itemInfo3.d().add(new PlaceableInfo(jG, lazyGridPositionedItem4.m(i22), null));
                            l0 l0Var = l0.INSTANCE;
                        }
                        this.keyToItemInfoMap.put(lazyGridPositionedItem4.i(), itemInfo3);
                        g(lazyGridPositionedItem4, itemInfo3);
                    } else {
                        i21 = i21;
                        size3 = size3;
                    }
                    i21++;
                    size3 = size3;
                }
                if (z6) {
                    this.viewportStartItemIndex = lazyGridPositionedItem2.getIndex();
                    this.viewportStartItemNotVisiblePartSize = (i15 - d(lazyGridPositionedItem2.c())) - lazyGridPositionedItem2.j();
                    this.viewportEndItemIndex = lazyGridPositionedItem.getIndex();
                    this.viewportEndItemNotVisiblePartSize = (-d(lazyGridPositionedItem.c())) + (lazyGridPositionedItem.k() - (this.isVertical ? IntSize.f(lazyGridPositionedItem.a()) : IntSize.g(lazyGridPositionedItem.a())));
                } else {
                    this.viewportStartItemIndex = lazyGridPositionedItem.getIndex();
                    this.viewportStartItemNotVisiblePartSize = d(lazyGridPositionedItem.c());
                    this.viewportEndItemIndex = lazyGridPositionedItem2.getIndex();
                    this.viewportEndItemNotVisiblePartSize = (d(lazyGridPositionedItem2.c()) + lazyGridPositionedItem2.k()) - i15;
                }
                Iterator<Map.Entry<Object, ItemInfo>> it = this.keyToItemInfoMap.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<Object, ItemInfo> next = it.next();
                    if (!this.positionedKeys.contains(next.getKey())) {
                        ItemInfo value = next.getValue();
                        long jC2 = value.c();
                        value.h(IntOffsetKt.a(IntOffset.j(jC2) + IntOffset.j(jH), IntOffset.k(jC2) + IntOffset.k(jH)));
                        Integer num2 = measuredItemProvider.c().get(next.getKey());
                        List<PlaceableInfo> listD = value.d();
                        int size4 = listD.size();
                        int i23 = 0;
                        while (true) {
                            if (i23 >= size4) {
                                z10 = false;
                                break;
                            }
                            PlaceableInfo placeableInfo = listD.get(i23);
                            long jD = placeableInfo.d();
                            long jC3 = value.c();
                            long jA = IntOffsetKt.a(IntOffset.j(jD) + IntOffset.j(jC3), IntOffset.k(jD) + IntOffset.k(jC3));
                            if (d(jA) + placeableInfo.c() > 0 && d(jA) < i15) {
                                z10 = true;
                                break;
                            }
                            i23++;
                        }
                        List<PlaceableInfo> listD2 = value.d();
                        int size5 = listD2.size();
                        int i24 = 0;
                        while (true) {
                            if (i24 >= size5) {
                                z11 = false;
                                break;
                            } else {
                                if (listD2.get(i24).b()) {
                                    z11 = true;
                                    break;
                                }
                                i24++;
                            }
                        }
                        boolean z12 = !z11;
                        if ((!z10 && z12) || num2 == null || value.d().isEmpty()) {
                            it.remove();
                        } else {
                            LazyMeasuredItem lazyMeasuredItemB = LazyMeasuredItemProvider.b(measuredItemProvider, ItemIndex.b(num2.intValue()), 0, this.isVertical ? Constraints.Companion.e(value.b()) : Constraints.Companion.d(value.b()), 2, null);
                            int iB2 = b(num2.intValue(), lazyMeasuredItemB.e(), i20, jH, z6, i15, i15);
                            if (z6) {
                                iB2 = (i15 - iB2) - lazyMeasuredItemB.d();
                            }
                            LazyGridPositionedItem lazyGridPositionedItemF = lazyMeasuredItemB.f(iB2, value.a(), i11, i12, -1, -1, lazyMeasuredItemB.d());
                            positionedItems.add(lazyGridPositionedItemF);
                            g(lazyGridPositionedItemF, value);
                        }
                    }
                }
                this.keyToIndexMap = measuredItemProvider.c();
                return;
            }
        }
        f();
    }

    public final void f() {
        this.keyToItemInfoMap.clear();
        this.keyToIndexMap = s0.h();
        this.viewportStartItemIndex = -1;
        this.viewportStartItemNotVisiblePartSize = 0;
        this.viewportEndItemIndex = -1;
        this.viewportEndItemNotVisiblePartSize = 0;
    }
}
