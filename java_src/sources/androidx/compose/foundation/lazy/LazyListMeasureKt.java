package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import e8.q;
import g8.c;
import j8.g;
import j8.o;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.d0;
import kotlin.collections.p;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class LazyListMeasureKt {
    private static final List<LazyListPositionedItem> a(List<LazyMeasuredItem> list, List<LazyMeasuredItem> list2, List<LazyMeasuredItem> list3, int i10, int i11, int i12, int i13, int i14, boolean z6, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, boolean z10, Density density) {
        int i15 = z6 ? i11 : i10;
        boolean z11 = i12 < Math.min(i15, i13);
        if (z11 && i14 != 0) {
            throw new IllegalStateException("Check failed.".toString());
        }
        ArrayList arrayList = new ArrayList(list.size() + list2.size() + list3.size());
        if (!z11) {
            int size = list2.size();
            int iE = i14;
            for (int i16 = 0; i16 < size; i16++) {
                LazyMeasuredItem lazyMeasuredItem = list2.get(i16);
                iE -= lazyMeasuredItem.e();
                arrayList.add(lazyMeasuredItem.f(iE, i10, i11));
            }
            int size2 = list.size();
            int iE2 = i14;
            for (int i17 = 0; i17 < size2; i17++) {
                LazyMeasuredItem lazyMeasuredItem2 = list.get(i17);
                arrayList.add(lazyMeasuredItem2.f(iE2, i10, i11));
                iE2 += lazyMeasuredItem2.e();
            }
            int size3 = list3.size();
            for (int i18 = 0; i18 < size3; i18++) {
                LazyMeasuredItem lazyMeasuredItem3 = list3.get(i18);
                arrayList.add(lazyMeasuredItem3.f(iE2, i10, i11));
                iE2 += lazyMeasuredItem3.e();
            }
        } else {
            if (!list2.isEmpty() || !list3.isEmpty()) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            int size4 = list.size();
            int[] iArr = new int[size4];
            for (int i19 = 0; i19 < size4; i19++) {
                iArr[i19] = list.get(b(i19, z10, size4)).d();
            }
            int[] iArr2 = new int[size4];
            for (int i20 = 0; i20 < size4; i20++) {
                iArr2[i20] = 0;
            }
            if (z6) {
                if (vertical == null) {
                    throw new IllegalArgumentException("Required value was null.".toString());
                }
                vertical.c(density, i15, iArr, iArr2);
            } else {
                if (horizontal == null) {
                    throw new IllegalArgumentException("Required value was null.".toString());
                }
                horizontal.b(density, i15, iArr, LayoutDirection.Ltr, iArr2);
            }
            g gVarO = p.O(iArr2);
            if (z10) {
                gVarO = o.t(gVarO);
            }
            int iE3 = gVarO.e();
            int iF = gVarO.f();
            int iG = gVarO.g();
            if ((iG > 0 && iE3 <= iF) || (iG < 0 && iF <= iE3)) {
                while (true) {
                    int iD = iArr2[iE3];
                    LazyMeasuredItem lazyMeasuredItem4 = list.get(b(iE3, z10, size4));
                    if (z10) {
                        iD = (i15 - iD) - lazyMeasuredItem4.d();
                    }
                    arrayList.add(lazyMeasuredItem4.f(iD, i10, i11));
                    if (iE3 == iF) {
                        break;
                    }
                    iE3 += iG;
                }
            }
        }
        return arrayList;
    }

    private static final int b(int i10, boolean z6, int i11) {
        return !z6 ? i10 : (i11 - i10) - 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final LazyListMeasureResult c(int i10, @NotNull LazyMeasuredItemProvider itemProvider, int i11, int i12, int i13, int i14, int i15, float f, long j6, boolean z6, @NotNull List<Integer> headerIndexes, @Nullable Arrangement.Vertical vertical, @Nullable Arrangement.Horizontal horizontal, boolean z10, @NotNull Density density, @NotNull LazyListItemPlacementAnimator placementAnimator, @NotNull LazyListBeyondBoundsInfo beyondBoundsInfo, @NotNull q<? super Integer, ? super Integer, ? super l<? super Placeable.PlacementScope, l0>, ? extends MeasureResult> layout) {
        int i16;
        int i17;
        int iB;
        int i18;
        int i19;
        int i20;
        LazyMeasuredItem lazyMeasuredItem;
        List listM;
        List listM2;
        List<LazyListPositionedItem> list;
        t.j(itemProvider, "itemProvider");
        t.j(headerIndexes, "headerIndexes");
        t.j(density, "density");
        t.j(placementAnimator, "placementAnimator");
        t.j(beyondBoundsInfo, "beyondBoundsInfo");
        t.j(layout, "layout");
        if (i12 < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (i13 < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (i10 <= 0) {
            return new LazyListMeasureResult(null, 0, false, 0.0f, layout.invoke(Integer.valueOf(Constraints.p(j6)), Integer.valueOf(Constraints.o(j6)), LazyListMeasureKt$measureLazyList$1.INSTANCE), v.m(), -i12, i11 + i13, 0, z10, z6 ? Orientation.Vertical : Orientation.Horizontal, i13);
        }
        int iB2 = i14;
        if (iB2 >= i10) {
            iB2 = DataIndex.b(i10 - 1);
            i16 = 0;
        } else {
            i16 = i15;
        }
        int iC = c.c(f);
        int i21 = i16 - iC;
        if (DataIndex.d(iB2, DataIndex.b(0)) && i21 < 0) {
            iC += i21;
            i21 = 0;
        }
        ArrayList arrayList = new ArrayList();
        int iE = i21 - i12;
        int i22 = -i12;
        int iMax = 0;
        while (iE < 0 && iB2 - DataIndex.b(0) > 0) {
            int iB3 = DataIndex.b(iB2 - 1);
            LazyMeasuredItem lazyMeasuredItemA = itemProvider.a(iB3);
            arrayList.add(0, lazyMeasuredItemA);
            iMax = Math.max(iMax, lazyMeasuredItemA.a());
            iE += lazyMeasuredItemA.e();
            iB2 = iB3;
        }
        if (iE < i22) {
            iC += iE;
            iE = i22;
        }
        int i23 = iE + i12;
        int i24 = i11 + i13;
        int i25 = iB2;
        int i26 = iMax;
        int iE2 = o.e(i24, 0);
        int iE3 = -i23;
        int size = arrayList.size();
        int iB4 = i25;
        for (int i27 = 0; i27 < size; i27++) {
            LazyMeasuredItem lazyMeasuredItem2 = (LazyMeasuredItem) arrayList.get(i27);
            iB4 = DataIndex.b(iB4 + 1);
            iE3 += lazyMeasuredItem2.e();
        }
        int iE4 = i23;
        int i28 = i26;
        int iE5 = iE3;
        int iB5 = iB4;
        while (true) {
            if ((iE5 > iE2 && !arrayList.isEmpty()) || iB5 >= i10) {
                break;
            }
            int i29 = iE2;
            LazyMeasuredItem lazyMeasuredItemA2 = itemProvider.a(iB5);
            iE5 += lazyMeasuredItemA2.e();
            if (iE5 <= i22) {
                i17 = i22;
                if (iB5 != i10 - 1) {
                    iB = DataIndex.b(iB5 + 1);
                    iE4 -= lazyMeasuredItemA2.e();
                }
                iB5 = DataIndex.b(iB5 + 1);
                i25 = iB;
                iE2 = i29;
                i22 = i17;
            } else {
                i17 = i22;
            }
            int iMax2 = Math.max(i28, lazyMeasuredItemA2.a());
            arrayList.add(lazyMeasuredItemA2);
            i28 = iMax2;
            iB = i25;
            iB5 = DataIndex.b(iB5 + 1);
            i25 = iB;
            iE2 = i29;
            i22 = i17;
        }
        int i30 = i22;
        if (iE5 < i11) {
            int i31 = i11 - iE5;
            iE4 -= i31;
            iE5 += i31;
            int iMax3 = i28;
            int iB6 = i25;
            while (iE4 < i12 && iB6 - DataIndex.b(0) > 0) {
                iB6 = DataIndex.b(iB6 - 1);
                LazyMeasuredItem lazyMeasuredItemA3 = itemProvider.a(iB6);
                arrayList.add(0, lazyMeasuredItemA3);
                iMax3 = Math.max(iMax3, lazyMeasuredItemA3.a());
                iE4 += lazyMeasuredItemA3.e();
            }
            iC += i31;
            if (iE4 < 0) {
                iC += iE4;
                i28 = iMax3;
                i18 = iE5 + iE4;
                iE4 = 0;
            } else {
                i28 = iMax3;
                i18 = iE5;
            }
        } else {
            i18 = iE5;
        }
        float f6 = (c.a(c.c(f)) != c.a(iC) || Math.abs(c.c(f)) < Math.abs(iC)) ? f : iC;
        int i32 = -iE4;
        LazyMeasuredItem lazyMeasuredItem3 = (LazyMeasuredItem) d0.j0(arrayList);
        if (i12 > 0) {
            int size2 = arrayList.size();
            LazyMeasuredItem lazyMeasuredItem4 = lazyMeasuredItem3;
            int i33 = iE4;
            int i34 = 0;
            while (true) {
                if (i34 < size2) {
                    int iE6 = ((LazyMeasuredItem) arrayList.get(i34)).e();
                    if (i33 != 0 && iE6 <= i33) {
                        i19 = i28;
                        if (i34 == v.o(arrayList)) {
                            break;
                        }
                        i33 -= iE6;
                        i34++;
                        lazyMeasuredItem4 = (LazyMeasuredItem) arrayList.get(i34);
                        i28 = i19;
                    }
                }
                i19 = i28;
                break;
            }
            i20 = i33;
            lazyMeasuredItem = lazyMeasuredItem4;
        } else {
            i19 = i28;
            i20 = iE4;
            lazyMeasuredItem = lazyMeasuredItem3;
        }
        if (!beyondBoundsInfo.d() || ((LazyMeasuredItem) d0.j0(arrayList)).b() <= e(beyondBoundsInfo, i10)) {
            listM = v.m();
        } else {
            listM = new ArrayList();
            int iB7 = ((LazyMeasuredItem) d0.j0(arrayList)).b() - 1;
            int iE7 = e(beyondBoundsInfo, i10);
            if (iE7 <= iB7) {
                while (true) {
                    listM.add(itemProvider.a(DataIndex.b(iB7)));
                    if (iB7 == iE7) {
                        break;
                    }
                    iB7--;
                }
            }
            l0 l0Var = l0.INSTANCE;
        }
        List list2 = listM;
        if (!beyondBoundsInfo.d() || ((LazyMeasuredItem) d0.v0(arrayList)).b() >= d(beyondBoundsInfo, i10)) {
            listM2 = v.m();
        } else {
            ArrayList arrayList2 = new ArrayList();
            int iB8 = ((LazyMeasuredItem) d0.v0(arrayList)).b();
            int iD = d(beyondBoundsInfo, i10);
            while (iB8 < iD) {
                iB8++;
                arrayList2.add(itemProvider.a(DataIndex.b(iB8)));
            }
            l0 l0Var2 = l0.INSTANCE;
            listM2 = arrayList2;
        }
        boolean z11 = t.e(lazyMeasuredItem, d0.j0(arrayList)) && list2.isEmpty() && listM2.isEmpty();
        int iG = ConstraintsKt.g(j6, z6 ? i19 : i18);
        int iF = ConstraintsKt.f(j6, z6 ? i18 : i19);
        List<LazyListPositionedItem> listA = a(arrayList, list2, listM2, iG, iF, i18, i11, i32, z6, vertical, horizontal, z10, density);
        LazyListPositionedItem lazyListPositionedItemA = headerIndexes.isEmpty() ^ true ? LazyListHeadersKt.a(listA, itemProvider, headerIndexes, i12, iG, iF) : null;
        placementAnimator.e((int) f6, iG, iF, z10, listA, itemProvider);
        boolean z12 = i18 > i11 ? 1 : i;
        MeasureResult measureResultInvoke = layout.invoke(Integer.valueOf(iG), Integer.valueOf(iF), new LazyListMeasureKt$measureLazyList$3(listA, lazyListPositionedItemA));
        if (z11) {
            list = listA;
        } else {
            ArrayList arrayList3 = new ArrayList(listA.size());
            int size3 = listA.size();
            for (int i35 = 0; i35 < size3; i35++) {
                LazyListPositionedItem lazyListPositionedItem = listA.get(i35);
                LazyListPositionedItem lazyListPositionedItem2 = lazyListPositionedItem;
                if ((lazyListPositionedItem2.getIndex() >= ((LazyMeasuredItem) d0.j0(arrayList)).b() && lazyListPositionedItem2.getIndex() <= ((LazyMeasuredItem) d0.v0(arrayList)).b()) || lazyListPositionedItem2 == lazyListPositionedItemA) {
                    arrayList3.add(lazyListPositionedItem);
                }
            }
            list = arrayList3;
        }
        return new LazyListMeasureResult(lazyMeasuredItem, i20, z12, f6, measureResultInvoke, list, i30, i24, i10, z10, z6 ? Orientation.Vertical : Orientation.Horizontal, i13);
    }

    private static final int d(LazyListBeyondBoundsInfo lazyListBeyondBoundsInfo, int i10) {
        return Math.min(lazyListBeyondBoundsInfo.b(), i10 - 1);
    }

    private static final int e(LazyListBeyondBoundsInfo lazyListBeyondBoundsInfo, int i10) {
        return Math.min(lazyListBeyondBoundsInfo.c(), i10 - 1);
    }
}
