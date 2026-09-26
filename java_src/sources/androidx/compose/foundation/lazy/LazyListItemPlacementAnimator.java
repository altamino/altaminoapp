package androidx.compose.foundation.lazy;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import j8.i;
import j8.o;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.a0;
import kotlin.collections.d0;
import kotlin.collections.s0;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class LazyListItemPlacementAnimator {
    private final boolean isVertical;

    @NotNull
    private Map<Object, Integer> keyToIndexMap;

    @NotNull
    private final Map<Object, ItemInfo> keyToItemInfoMap;

    @NotNull
    private final Set<Object> positionedKeys;

    @NotNull
    private final o0 scope;
    private int viewportEndItemIndex;
    private int viewportEndItemNotVisiblePartSize;
    private int viewportStartItemIndex;
    private int viewportStartItemNotVisiblePartSize;

    private final int a(int i10, int i11, int i12, long j6, boolean z6, int i13, int i14, List<LazyListPositionedItem> list) {
        int iC = 0;
        int i15 = this.viewportEndItemIndex;
        boolean z10 = z6 ? i15 > i10 : i15 < i10;
        int i16 = this.viewportStartItemIndex;
        boolean z11 = z6 ? i16 < i10 : i16 > i10;
        if (z10) {
            i iVarV = !z6 ? o.v(this.viewportEndItemIndex + 1, i10) : o.v(i10 + 1, this.viewportEndItemIndex);
            int iE = iVarV.e();
            int iF = iVarV.f();
            if (iE <= iF) {
                while (true) {
                    iC += c(list, iE, i12);
                    if (iE == iF) {
                        break;
                    }
                    iE++;
                }
            }
            return i13 + this.viewportEndItemNotVisiblePartSize + iC + d(j6);
        }
        if (!z11) {
            return i14;
        }
        i iVarV2 = !z6 ? o.v(i10 + 1, this.viewportStartItemIndex) : o.v(this.viewportStartItemIndex + 1, i10);
        int iE2 = iVarV2.e();
        int iF2 = iVarV2.f();
        if (iE2 <= iF2) {
            while (true) {
                i11 += c(list, iE2, i12);
                if (iE2 == iF2) {
                    break;
                }
                iE2++;
            }
        }
        return (this.viewportStartItemNotVisiblePartSize - i11) + d(j6);
    }

    public final void e(int i10, int i11, int i12, boolean z6, @NotNull List<LazyListPositionedItem> positionedItems, @NotNull LazyMeasuredItemProvider lazyMeasuredItemProvider) {
        boolean z10;
        boolean z11;
        LazyListPositionedItem lazyListPositionedItem;
        int iA;
        LazyMeasuredItemProvider itemProvider = lazyMeasuredItemProvider;
        t.j(positionedItems, "positionedItems");
        t.j(itemProvider, "itemProvider");
        int size = positionedItems.size();
        int i13 = 0;
        int i14 = 0;
        while (i14 < size) {
            if (positionedItems.get(i14).c()) {
                int i15 = this.isVertical ? i12 : i11;
                long jH = h(z6 ? -i10 : i10);
                LazyListPositionedItem lazyListPositionedItem2 = (LazyListPositionedItem) d0.j0(positionedItems);
                LazyListPositionedItem lazyListPositionedItem3 = (LazyListPositionedItem) d0.v0(positionedItems);
                int size2 = positionedItems.size();
                int i16 = i13;
                int i17 = i16;
                while (i16 < size2) {
                    LazyListPositionedItem lazyListPositionedItem4 = positionedItems.get(i16);
                    ItemInfo itemInfo = this.keyToItemInfoMap.get(lazyListPositionedItem4.d());
                    if (itemInfo != null) {
                        itemInfo.c(lazyListPositionedItem4.getIndex());
                    }
                    i17 += lazyListPositionedItem4.i();
                    i16++;
                }
                int size3 = i17 / positionedItems.size();
                this.positionedKeys.clear();
                int size4 = positionedItems.size();
                int i18 = i13;
                while (i18 < size4) {
                    LazyListPositionedItem lazyListPositionedItem5 = positionedItems.get(i18);
                    this.positionedKeys.add(lazyListPositionedItem5.d());
                    ItemInfo itemInfo2 = this.keyToItemInfoMap.get(lazyListPositionedItem5.d());
                    if (itemInfo2 != null) {
                        i18 = i18;
                        size4 = size4;
                        if (lazyListPositionedItem5.c()) {
                            long jA = itemInfo2.a();
                            itemInfo2.d(IntOffsetKt.a(IntOffset.j(jA) + IntOffset.j(jH), IntOffset.k(jA) + IntOffset.k(jH)));
                            g(lazyListPositionedItem5, itemInfo2);
                        } else {
                            this.keyToItemInfoMap.remove(lazyListPositionedItem5.d());
                        }
                    } else if (lazyListPositionedItem5.c()) {
                        ItemInfo itemInfo3 = new ItemInfo(lazyListPositionedItem5.getIndex());
                        Integer num = this.keyToIndexMap.get(lazyListPositionedItem5.d());
                        long jG = lazyListPositionedItem5.g(i13);
                        int iE = lazyListPositionedItem5.e(i13);
                        if (num == null) {
                            iA = d(jG);
                            lazyListPositionedItem = lazyListPositionedItem5;
                        } else {
                            lazyListPositionedItem = lazyListPositionedItem5;
                            iA = a(num.intValue(), lazyListPositionedItem5.i(), size3, jH, z6, i15, !z6 ? d(jG) : (d(jG) - lazyListPositionedItem5.i()) + iE, positionedItems) + (z6 ? lazyListPositionedItem.getSize() - iE : i13);
                        }
                        long jG2 = this.isVertical ? IntOffset.g(jG, 0, iA, 1, null) : IntOffset.g(jG, iA, 0, 2, null);
                        int iH = lazyListPositionedItem.h();
                        for (int i19 = i13; i19 < iH; i19++) {
                            LazyListPositionedItem lazyListPositionedItem6 = lazyListPositionedItem;
                            long jG3 = lazyListPositionedItem6.g(i19);
                            long jA2 = IntOffsetKt.a(IntOffset.j(jG3) - IntOffset.j(jG), IntOffset.k(jG3) - IntOffset.k(jG));
                            itemInfo3.b().add(new PlaceableInfo(IntOffsetKt.a(IntOffset.j(jG2) + IntOffset.j(jA2), IntOffset.k(jG2) + IntOffset.k(jA2)), lazyListPositionedItem6.e(i19), null));
                            l0 l0Var = l0.INSTANCE;
                        }
                        LazyListPositionedItem lazyListPositionedItem7 = lazyListPositionedItem;
                        this.keyToItemInfoMap.put(lazyListPositionedItem7.d(), itemInfo3);
                        g(lazyListPositionedItem7, itemInfo3);
                    } else {
                        i18 = i18;
                        size4 = size4;
                    }
                    i18++;
                    size4 = size4;
                    i13 = 0;
                }
                if (z6) {
                    this.viewportStartItemIndex = lazyListPositionedItem3.getIndex();
                    this.viewportStartItemNotVisiblePartSize = (i15 - lazyListPositionedItem3.a()) - lazyListPositionedItem3.getSize();
                    this.viewportEndItemIndex = lazyListPositionedItem2.getIndex();
                    this.viewportEndItemNotVisiblePartSize = (-lazyListPositionedItem2.a()) + (lazyListPositionedItem2.i() - lazyListPositionedItem2.getSize());
                } else {
                    this.viewportStartItemIndex = lazyListPositionedItem2.getIndex();
                    this.viewportStartItemNotVisiblePartSize = lazyListPositionedItem2.a();
                    this.viewportEndItemIndex = lazyListPositionedItem3.getIndex();
                    this.viewportEndItemNotVisiblePartSize = (lazyListPositionedItem3.a() + lazyListPositionedItem3.i()) - i15;
                }
                Iterator<Map.Entry<Object, ItemInfo>> it = this.keyToItemInfoMap.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<Object, ItemInfo> next = it.next();
                    if (!this.positionedKeys.contains(next.getKey())) {
                        ItemInfo value = next.getValue();
                        long jA3 = value.a();
                        value.d(IntOffsetKt.a(IntOffset.j(jA3) + IntOffset.j(jH), IntOffset.k(jA3) + IntOffset.k(jH)));
                        Integer num2 = lazyMeasuredItemProvider.c().get(next.getKey());
                        List<PlaceableInfo> listB = value.b();
                        int size5 = listB.size();
                        int i20 = 0;
                        while (true) {
                            if (i20 >= size5) {
                                z10 = false;
                                break;
                            }
                            PlaceableInfo placeableInfo = listB.get(i20);
                            long jD = placeableInfo.d();
                            long jA4 = value.a();
                            long jA5 = IntOffsetKt.a(IntOffset.j(jD) + IntOffset.j(jA4), IntOffset.k(jD) + IntOffset.k(jA4));
                            if (d(jA5) + placeableInfo.c() > 0 && d(jA5) < i15) {
                                z10 = true;
                                break;
                            }
                            i20++;
                        }
                        List<PlaceableInfo> listB2 = value.b();
                        int size6 = listB2.size();
                        int i21 = 0;
                        while (true) {
                            if (i21 >= size6) {
                                z11 = false;
                                break;
                            } else {
                                if (listB2.get(i21).b()) {
                                    z11 = true;
                                    break;
                                }
                                i21++;
                            }
                        }
                        boolean z12 = !z11;
                        if ((!z10 && z12) || num2 == null || value.b().isEmpty()) {
                            it.remove();
                        } else {
                            LazyMeasuredItem lazyMeasuredItemA = itemProvider.a(DataIndex.b(num2.intValue()));
                            int iA2 = a(num2.intValue(), lazyMeasuredItemA.e(), size3, jH, z6, i15, i15, positionedItems);
                            if (z6) {
                                iA2 = (i15 - iA2) - lazyMeasuredItemA.d();
                            }
                            LazyListPositionedItem lazyListPositionedItemF = lazyMeasuredItemA.f(iA2, i11, i12);
                            positionedItems.add(lazyListPositionedItemF);
                            g(lazyListPositionedItemF, value);
                        }
                    }
                    itemProvider = lazyMeasuredItemProvider;
                }
                this.keyToIndexMap = lazyMeasuredItemProvider.c();
                return;
            }
            i14++;
            itemProvider = lazyMeasuredItemProvider;
            i13 = 0;
        }
        f();
    }

    public LazyListItemPlacementAnimator(@NotNull o0 scope, boolean z6) {
        t.j(scope, "scope");
        this.scope = scope;
        this.isVertical = z6;
        this.keyToItemInfoMap = new LinkedHashMap();
        this.keyToIndexMap = s0.h();
        this.viewportStartItemIndex = -1;
        this.viewportEndItemIndex = -1;
        this.positionedKeys = new LinkedHashSet();
    }

    private final int d(long j6) {
        return this.isVertical ? IntOffset.k(j6) : IntOffset.j(j6);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x00d7  */
    private final void g(LazyListPositionedItem lazyListPositionedItem, ItemInfo itemInfo) {
        while (itemInfo.b().size() > lazyListPositionedItem.h()) {
            a0.M(itemInfo.b());
        }
        while (itemInfo.b().size() < lazyListPositionedItem.h()) {
            int size = itemInfo.b().size();
            long jG = lazyListPositionedItem.g(size);
            List<PlaceableInfo> listB = itemInfo.b();
            long jA = itemInfo.a();
            listB.add(new PlaceableInfo(IntOffsetKt.a(IntOffset.j(jG) - IntOffset.j(jA), IntOffset.k(jG) - IntOffset.k(jA)), lazyListPositionedItem.e(size), null));
        }
        List<PlaceableInfo> listB2 = itemInfo.b();
        int size2 = listB2.size();
        for (int i10 = 0; i10 < size2; i10++) {
            PlaceableInfo placeableInfo = listB2.get(i10);
            long jD = placeableInfo.d();
            long jA2 = itemInfo.a();
            long jA3 = IntOffsetKt.a(IntOffset.j(jD) + IntOffset.j(jA2), IntOffset.k(jD) + IntOffset.k(jA2));
            long jG2 = lazyListPositionedItem.g(i10);
            placeableInfo.f(lazyListPositionedItem.e(i10));
            FiniteAnimationSpec<IntOffset> finiteAnimationSpecB = lazyListPositionedItem.b(i10);
            if (!IntOffset.i(jA3, jG2)) {
                long jA4 = itemInfo.a();
                placeableInfo.g(IntOffsetKt.a(IntOffset.j(jG2) - IntOffset.j(jA4), IntOffset.k(jG2) - IntOffset.k(jA4)));
                if (finiteAnimationSpecB != null) {
                    placeableInfo.e(true);
                    k.d(this.scope, null, null, new LazyListItemPlacementAnimator$startAnimationsIfNeeded$1$1(placeableInfo, finiteAnimationSpecB, null), 3, null);
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

    public final long b(@NotNull Object key, int i10, int i11, int i12, long j6) {
        t.j(key, "key");
        ItemInfo itemInfo = this.keyToItemInfoMap.get(key);
        if (itemInfo == null) {
            return j6;
        }
        PlaceableInfo placeableInfo = itemInfo.b().get(i10);
        long jN = placeableInfo.a().n().n();
        long jA = itemInfo.a();
        long jA2 = IntOffsetKt.a(IntOffset.j(jN) + IntOffset.j(jA), IntOffset.k(jN) + IntOffset.k(jA));
        long jD = placeableInfo.d();
        long jA3 = itemInfo.a();
        long jA4 = IntOffsetKt.a(IntOffset.j(jD) + IntOffset.j(jA3), IntOffset.k(jD) + IntOffset.k(jA3));
        if (placeableInfo.b() && ((d(jA4) < i11 && d(jA2) < i11) || (d(jA4) > i12 && d(jA2) > i12))) {
            k.d(this.scope, null, null, new LazyListItemPlacementAnimator$getAnimatedOffset$1(placeableInfo, null), 3, null);
        }
        return jA2;
    }

    public final void f() {
        this.keyToItemInfoMap.clear();
        this.keyToIndexMap = s0.h();
        this.viewportStartItemIndex = -1;
        this.viewportStartItemNotVisiblePartSize = 0;
        this.viewportEndItemIndex = -1;
        this.viewportEndItemNotVisiblePartSize = 0;
    }

    private final int c(List<LazyListPositionedItem> list, int i10, int i11) {
        if (!list.isEmpty() && i10 >= ((LazyListPositionedItem) d0.j0(list)).getIndex() && i10 <= ((LazyListPositionedItem) d0.v0(list)).getIndex()) {
            if (i10 - ((LazyListPositionedItem) d0.j0(list)).getIndex() >= ((LazyListPositionedItem) d0.v0(list)).getIndex() - i10) {
                for (int iO = v.o(list); -1 < iO; iO--) {
                    LazyListPositionedItem lazyListPositionedItem = list.get(iO);
                    if (lazyListPositionedItem.getIndex() == i10) {
                        return lazyListPositionedItem.i();
                    }
                    if (lazyListPositionedItem.getIndex() < i10) {
                        break;
                    }
                }
            } else {
                int size = list.size();
                for (int i12 = 0; i12 < size; i12++) {
                    LazyListPositionedItem lazyListPositionedItem2 = list.get(i12);
                    if (lazyListPositionedItem2.getIndex() == i10) {
                        return lazyListPositionedItem2.i();
                    }
                    if (lazyListPositionedItem2.getIndex() > i10) {
                        break;
                    }
                }
            }
        }
        return i11;
    }
}
