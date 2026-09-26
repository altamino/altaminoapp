package androidx.compose.foundation.lazy.grid;

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

/* JADX INFO: loaded from: classes9.dex */
public final class LazyGridMeasureKt {
    private static final List<LazyGridPositionedItem> a(List<LazyMeasuredLine> list, int i10, int i11, int i12, int i13, int i14, boolean z6, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, boolean z10, Density density) {
        int i15 = z6 ? i11 : i10;
        boolean z11 = i12 < Math.min(i15, i13);
        if (z11 && i14 != 0) {
            throw new IllegalStateException("Check failed.".toString());
        }
        int size = list.size();
        int length = 0;
        for (int i16 = 0; i16 < size; i16++) {
            length += list.get(i16).b().length;
        }
        ArrayList arrayList = new ArrayList(length);
        if (z11) {
            int size2 = list.size();
            int[] iArr = new int[size2];
            for (int i17 = 0; i17 < size2; i17++) {
                iArr[i17] = list.get(b(i17, z10, size2)).c();
            }
            int[] iArr2 = new int[size2];
            for (int i18 = 0; i18 < size2; i18++) {
                iArr2[i18] = 0;
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
            int iE = gVarO.e();
            int iF = gVarO.f();
            int iG = gVarO.g();
            if ((iG > 0 && iE <= iF) || (iG < 0 && iF <= iE)) {
                while (true) {
                    int iC = iArr2[iE];
                    LazyMeasuredLine lazyMeasuredLine = list.get(b(iE, z10, size2));
                    if (z10) {
                        iC = (i15 - iC) - lazyMeasuredLine.c();
                    }
                    arrayList.addAll(lazyMeasuredLine.f(iC, i10, i11));
                    if (iE == iF) {
                        break;
                    }
                    iE += iG;
                }
            }
        } else {
            int size3 = list.size();
            int iD = i14;
            for (int i19 = 0; i19 < size3; i19++) {
                LazyMeasuredLine lazyMeasuredLine2 = list.get(i19);
                arrayList.addAll(lazyMeasuredLine2.f(iD, i10, i11));
                iD += lazyMeasuredLine2.d();
            }
        }
        return arrayList;
    }

    private static final int b(int i10, boolean z6, int i11) {
        return !z6 ? i10 : (i11 - i10) - 1;
    }

    @NotNull
    public static final LazyGridMeasureResult c(int i10, @NotNull LazyMeasuredLineProvider lazyMeasuredLineProvider, @NotNull LazyMeasuredItemProvider measuredItemProvider, int i11, int i12, int i13, int i14, int i15, int i16, float f, long j6, boolean z6, @Nullable Arrangement.Vertical vertical, @Nullable Arrangement.Horizontal horizontal, boolean z10, @NotNull Density density, @NotNull LazyGridItemPlacementAnimator placementAnimator, @NotNull q<? super Integer, ? super Integer, ? super l<? super Placeable.PlacementScope, l0>, ? extends MeasureResult> layout) {
        int i17;
        int i18;
        int iB;
        int i19;
        LazyMeasuredLine lazyMeasuredLine;
        int i20;
        LazyMeasuredLineProvider measuredLineProvider = lazyMeasuredLineProvider;
        t.j(measuredLineProvider, "measuredLineProvider");
        t.j(measuredItemProvider, "measuredItemProvider");
        t.j(density, "density");
        t.j(placementAnimator, "placementAnimator");
        t.j(layout, "layout");
        if (i13 < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (i14 < 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (i10 <= 0) {
            return new LazyGridMeasureResult(null, 0, false, 0.0f, layout.invoke(Integer.valueOf(Constraints.p(j6)), Integer.valueOf(Constraints.o(j6)), LazyGridMeasureKt$measureLazyGrid$1.INSTANCE), v.m(), -i13, i11 + i14, 0, z10, z6 ? Orientation.Vertical : Orientation.Horizontal, i14);
        }
        int iC = c.c(f);
        int i21 = i16 - iC;
        int iB2 = i15;
        if (LineIndex.d(iB2, LineIndex.b(0)) && i21 < 0) {
            iC += i21;
            i21 = 0;
        }
        ArrayList arrayList = new ArrayList();
        int iD = i21 - i13;
        int i22 = -i13;
        while (iD < 0 && iB2 - LineIndex.b(0) > 0) {
            iB2 = LineIndex.b(iB2 - 1);
            LazyMeasuredLine lazyMeasuredLineB = measuredLineProvider.b(iB2);
            arrayList.add(0, lazyMeasuredLineB);
            iD += lazyMeasuredLineB.d();
        }
        if (iD < i22) {
            i17 = iC + iD;
            i18 = i22;
        } else {
            int i23 = iD;
            i17 = iC;
            i18 = i23;
        }
        int i24 = i18 + i13;
        int i25 = i11 + i14;
        int i26 = iB2;
        int iE = o.e(i25, 0);
        int iD2 = -i24;
        int size = arrayList.size();
        int iB3 = i26;
        int i27 = i25;
        for (int i28 = 0; i28 < size; i28++) {
            LazyMeasuredLine lazyMeasuredLine2 = (LazyMeasuredLine) arrayList.get(i28);
            iB3 = LineIndex.b(iB3 + 1);
            iD2 += lazyMeasuredLine2.d();
        }
        int iD3 = i24;
        int iB4 = iB3;
        while (true) {
            if (iD2 > iE && !arrayList.isEmpty()) {
                break;
            }
            int i29 = iE;
            LazyMeasuredLine lazyMeasuredLineB2 = measuredLineProvider.b(iB4);
            if (lazyMeasuredLineB2.e()) {
                LineIndex.b(iB4 - 1);
                break;
            }
            int i30 = i22;
            int i31 = i27;
            iD2 += lazyMeasuredLineB2.d();
            if (iD2 > i30 || ((LazyMeasuredItem) p.h0(lazyMeasuredLineB2.b())).b() == i10 - 1) {
                arrayList.add(lazyMeasuredLineB2);
                iB = i26;
            } else {
                iB = LineIndex.b(iB4 + 1);
                iD3 -= lazyMeasuredLineB2.d();
            }
            iB4 = LineIndex.b(iB4 + 1);
            i26 = iB;
            i22 = i30;
            iE = i29;
            i27 = i31;
            measuredLineProvider = lazyMeasuredLineProvider;
        }
        if (iD2 < i11) {
            int i32 = i11 - iD2;
            iD3 -= i32;
            iD2 += i32;
            int iB5 = i26;
            while (true) {
                if (iD3 >= i13) {
                    i19 = 0;
                    break;
                }
                if (iB5 - LineIndex.b(0) <= 0) {
                    i19 = 0;
                    break;
                }
                iB5 = LineIndex.b(iB5 - 1);
                int i33 = i22;
                LazyMeasuredLine lazyMeasuredLineB3 = measuredLineProvider.b(iB5);
                arrayList.add(0, lazyMeasuredLineB3);
                iD3 += lazyMeasuredLineB3.d();
                i22 = i33;
            }
            i17 += i32;
            if (iD3 < 0) {
                i17 += iD3;
                iD2 += iD3;
                iD3 = i19;
            }
        } else {
            i22 = i22;
            i19 = 0;
        }
        float f6 = (c.a(c.c(f)) != c.a(i17) || Math.abs(c.c(f)) < Math.abs(i17)) ? f : i17;
        int i34 = -iD3;
        LazyMeasuredLine lazyMeasuredLine3 = (LazyMeasuredLine) d0.j0(arrayList);
        if (i13 > 0) {
            int size2 = arrayList.size();
            int i35 = iD3;
            LazyMeasuredLine lazyMeasuredLine4 = lazyMeasuredLine3;
            int i36 = i19;
            while (i36 < size2) {
                int iD4 = ((LazyMeasuredLine) arrayList.get(i36)).d();
                if (i35 == 0 || iD4 > i35 || i36 == v.o(arrayList)) {
                    break;
                }
                i35 -= iD4;
                i36++;
                lazyMeasuredLine4 = (LazyMeasuredLine) arrayList.get(i36);
            }
            lazyMeasuredLine = lazyMeasuredLine4;
            i20 = i35;
        } else {
            lazyMeasuredLine = lazyMeasuredLine3;
            i20 = iD3;
        }
        int iN = z6 ? Constraints.n(j6) : ConstraintsKt.g(j6, iD2);
        int iF = z6 ? ConstraintsKt.f(j6, iD2) : Constraints.m(j6);
        int i37 = i27;
        float f7 = f6;
        int i38 = i22;
        List<LazyGridPositionedItem> listA = a(arrayList, iN, iF, iD2, i11, i34, z6, vertical, horizontal, z10, density);
        int i39 = iD2;
        placementAnimator.e((int) f7, iN, iF, i12, z10, listA, measuredItemProvider);
        return new LazyGridMeasureResult(lazyMeasuredLine, i20, i39 > i11, f7, layout.invoke(Integer.valueOf(iN), Integer.valueOf(iF), new LazyGridMeasureKt$measureLazyGrid$3(listA)), listA, i38, i37, i10, z10, z6 ? Orientation.Vertical : Orientation.Horizontal, i14);
    }
}
