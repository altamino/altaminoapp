package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.q;
import e8.s;
import java.util.List;
import kotlin.jvm.internal.n0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class RowColumnImplKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final int A(Placeable placeable, LayoutOrientation layoutOrientation) {
        return layoutOrientation == LayoutOrientation.Horizontal ? placeable.Q0() : placeable.B0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final q<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> a(LayoutOrientation layoutOrientation) {
        return layoutOrientation == LayoutOrientation.Horizontal ? IntrinsicMeasureBlocks.INSTANCE.a() : IntrinsicMeasureBlocks.INSTANCE.e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final q<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> b(LayoutOrientation layoutOrientation) {
        return layoutOrientation == LayoutOrientation.Horizontal ? IntrinsicMeasureBlocks.INSTANCE.b() : IntrinsicMeasureBlocks.INSTANCE.f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final q<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> c(LayoutOrientation layoutOrientation) {
        return layoutOrientation == LayoutOrientation.Horizontal ? IntrinsicMeasureBlocks.INSTANCE.c() : IntrinsicMeasureBlocks.INSTANCE.g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final q<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> d(LayoutOrientation layoutOrientation) {
        return layoutOrientation == LayoutOrientation.Horizontal ? IntrinsicMeasureBlocks.INSTANCE.d() : IntrinsicMeasureBlocks.INSTANCE.h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CrossAxisAlignment q(RowColumnParentData rowColumnParentData) {
        if (rowColumnParentData != null) {
            return rowColumnParentData.a();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean s(RowColumnParentData rowColumnParentData) {
        if (rowColumnParentData != null) {
            return rowColumnParentData.b();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float t(RowColumnParentData rowColumnParentData) {
        if (rowColumnParentData != null) {
            return rowColumnParentData.c();
        }
        return 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int w(List<? extends IntrinsicMeasurable> list, e8.p<? super IntrinsicMeasurable, ? super Integer, Integer> pVar, e8.p<? super IntrinsicMeasurable, ? super Integer, Integer> pVar2, int i10, int i11, LayoutOrientation layoutOrientation, LayoutOrientation layoutOrientation2) {
        return layoutOrientation == layoutOrientation2 ? v(list, pVar, i10, i11) : u(list, pVar2, pVar, i10, i11);
    }

    @NotNull
    public static final MeasurePolicy y(@NotNull final LayoutOrientation orientation, @NotNull final s<? super Integer, ? super int[], ? super LayoutDirection, ? super Density, ? super int[], l0> arrangement, final float f, @NotNull final SizeMode crossAxisSize, @NotNull final CrossAxisAlignment crossAxisAlignment) {
        t.j(orientation, "orientation");
        t.j(arrangement, "arrangement");
        t.j(crossAxisSize, "crossAxisSize");
        t.j(crossAxisAlignment, "crossAxisAlignment");
        return new MeasurePolicy() { // from class: androidx.compose.foundation.layout.RowColumnImplKt$rowColumnMeasurePolicy$1
            @Override // androidx.compose.ui.layout.MeasurePolicy
            @NotNull
            public MeasureResult a(@NotNull MeasureScope measure, @NotNull List<? extends Measurable> list, long j6) {
                int i10;
                int iJ;
                int iMax;
                int i11;
                List<? extends Measurable> measurables = list;
                t.j(measure, "$this$measure");
                t.j(measurables, "measurables");
                OrientationIndependentConstraints orientationIndependentConstraints = new OrientationIndependentConstraints(j6, orientation, null);
                int iJ0 = measure.j0(f);
                int size = list.size();
                Placeable[] placeableArr = new Placeable[size];
                int size2 = list.size();
                RowColumnParentData[] rowColumnParentDataArr = new RowColumnParentData[size2];
                for (int i12 = 0; i12 < size2; i12++) {
                    rowColumnParentDataArr[i12] = RowColumnImplKt.r(measurables.get(i12));
                }
                int size3 = list.size();
                int i13 = 0;
                int iMax2 = 0;
                int i14 = 0;
                int i15 = 0;
                int iA = 0;
                boolean z6 = false;
                float f6 = 0.0f;
                while (true) {
                    if (i14 >= size3) {
                        break;
                    }
                    Measurable measurable = measurables.get(i14);
                    RowColumnParentData rowColumnParentData = rowColumnParentDataArr[i14];
                    float fT = RowColumnImplKt.t(rowColumnParentData);
                    if (fT > 0.0f) {
                        f6 += fT;
                        i15++;
                        i11 = i14;
                    } else {
                        int iE = orientationIndependentConstraints.e();
                        i11 = i14;
                        Placeable placeableB0 = measurable.b0(OrientationIndependentConstraints.b(orientationIndependentConstraints, 0, iE != Integer.MAX_VALUE ? iE - iA : Integer.MAX_VALUE, 0, 0, 8, null).g(orientation));
                        int iMin = Math.min(iJ0, (iE - iA) - RowColumnImplKt.A(placeableB0, orientation));
                        iA += RowColumnImplKt.A(placeableB0, orientation) + iMin;
                        iMax2 = Math.max(iMax2, RowColumnImplKt.z(placeableB0, orientation));
                        boolean z10 = z6 || RowColumnImplKt.x(rowColumnParentData);
                        placeableArr[i11] = placeableB0;
                        i13 = iMin;
                        z6 = z10;
                    }
                    i14 = i11 + 1;
                    size3 = size3;
                    rowColumnParentDataArr = rowColumnParentDataArr;
                }
                int i16 = iMax2;
                RowColumnParentData[] rowColumnParentDataArr2 = rowColumnParentDataArr;
                if (i15 == 0) {
                    iA -= i13;
                    i10 = i16;
                    iJ = 0;
                } else {
                    int i17 = iJ0 * (i15 - 1);
                    int iF = (((f6 <= 0.0f || orientationIndependentConstraints.e() == Integer.MAX_VALUE) ? orientationIndependentConstraints.f() : orientationIndependentConstraints.e()) - iA) - i17;
                    float f7 = f6 > 0.0f ? iF / f6 : 0.0f;
                    int iC = 0;
                    for (int i18 = 0; i18 < size2; i18++) {
                        iC += g8.c.c(RowColumnImplKt.t(rowColumnParentDataArr2[i18]) * f7);
                    }
                    int size4 = list.size();
                    int i19 = iF - iC;
                    i10 = i16;
                    int i20 = 0;
                    int iA2 = 0;
                    while (i20 < size4) {
                        if (placeableArr[i20] == null) {
                            Measurable measurable2 = measurables.get(i20);
                            RowColumnParentData rowColumnParentData2 = rowColumnParentDataArr2[i20];
                            float fT2 = RowColumnImplKt.t(rowColumnParentData2);
                            if (fT2 <= 0.0f) {
                                throw new IllegalStateException("All weights <= 0 should have placeables".toString());
                            }
                            int iA3 = g8.c.a(i19);
                            int i21 = i19 - iA3;
                            int iMax3 = Math.max(0, g8.c.c(fT2 * f7) + iA3);
                            Placeable placeableB1 = measurable2.b0(new OrientationIndependentConstraints((!RowColumnImplKt.s(rowColumnParentData2) || iMax3 == Integer.MAX_VALUE) ? 0 : iMax3, iMax3, 0, orientationIndependentConstraints.c()).g(orientation));
                            iA2 += RowColumnImplKt.A(placeableB1, orientation);
                            int iMax4 = Math.max(i10, RowColumnImplKt.z(placeableB1, orientation));
                            boolean z11 = z6 || RowColumnImplKt.x(rowColumnParentData2);
                            placeableArr[i20] = placeableB1;
                            i10 = iMax4;
                            z6 = z11;
                            i19 = i21;
                        } else {
                            size4 = size4;
                        }
                        i20++;
                        measurables = list;
                        f7 = f7;
                        size4 = size4;
                    }
                    iJ = j8.o.j(iA2 + i17, orientationIndependentConstraints.e() - iA);
                }
                n0 n0Var = new n0();
                if (z6) {
                    iMax = 0;
                    for (int i22 = 0; i22 < size; i22++) {
                        Placeable placeable = placeableArr[i22];
                        t.g(placeable);
                        CrossAxisAlignment crossAxisAlignmentQ = RowColumnImplKt.q(rowColumnParentDataArr2[i22]);
                        Integer numB = crossAxisAlignmentQ != null ? crossAxisAlignmentQ.b(placeable) : null;
                        if (numB != null) {
                            int i23 = n0Var.element;
                            int iIntValue = numB.intValue();
                            if (iIntValue == Integer.MIN_VALUE) {
                                iIntValue = 0;
                            }
                            n0Var.element = Math.max(i23, iIntValue);
                            int iZ = RowColumnImplKt.z(placeable, orientation);
                            LayoutOrientation layoutOrientation = orientation;
                            int iIntValue2 = numB.intValue();
                            if (iIntValue2 == Integer.MIN_VALUE) {
                                iIntValue2 = RowColumnImplKt.z(placeable, layoutOrientation);
                            }
                            iMax = Math.max(iMax, iZ - iIntValue2);
                        }
                    }
                } else {
                    iMax = 0;
                }
                int iMax5 = Math.max(iA + iJ, orientationIndependentConstraints.f());
                int iMax6 = (orientationIndependentConstraints.c() == Integer.MAX_VALUE || crossAxisSize != SizeMode.Expand) ? Math.max(i10, Math.max(orientationIndependentConstraints.d(), n0Var.element + iMax)) : orientationIndependentConstraints.c();
                LayoutOrientation layoutOrientation2 = orientation;
                LayoutOrientation layoutOrientation3 = LayoutOrientation.Horizontal;
                int i24 = layoutOrientation2 == layoutOrientation3 ? iMax5 : iMax6;
                int i25 = layoutOrientation2 == layoutOrientation3 ? iMax6 : iMax5;
                int size5 = list.size();
                int[] iArr = new int[size5];
                for (int i26 = 0; i26 < size5; i26++) {
                    iArr[i26] = 0;
                }
                return MeasureScope.CC.b(measure, i24, i25, null, new RowColumnImplKt$rowColumnMeasurePolicy$1$measure$4(list, placeableArr, arrangement, iMax5, measure, iArr, orientation, rowColumnParentDataArr2, crossAxisAlignment, iMax6, n0Var), 4, null);
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int b(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
                t.j(intrinsicMeasureScope, "<this>");
                t.j(measurables, "measurables");
                return ((Number) RowColumnImplKt.c(orientation).invoke(measurables, Integer.valueOf(i10), Integer.valueOf(intrinsicMeasureScope.j0(f)))).intValue();
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int c(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
                t.j(intrinsicMeasureScope, "<this>");
                t.j(measurables, "measurables");
                return ((Number) RowColumnImplKt.d(orientation).invoke(measurables, Integer.valueOf(i10), Integer.valueOf(intrinsicMeasureScope.j0(f)))).intValue();
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int d(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
                t.j(intrinsicMeasureScope, "<this>");
                t.j(measurables, "measurables");
                return ((Number) RowColumnImplKt.a(orientation).invoke(measurables, Integer.valueOf(i10), Integer.valueOf(intrinsicMeasureScope.j0(f)))).intValue();
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public int e(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
                t.j(intrinsicMeasureScope, "<this>");
                t.j(measurables, "measurables");
                return ((Number) RowColumnImplKt.b(orientation).invoke(measurables, Integer.valueOf(i10), Integer.valueOf(intrinsicMeasureScope.j0(f)))).intValue();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int z(Placeable placeable, LayoutOrientation layoutOrientation) {
        return layoutOrientation == LayoutOrientation.Horizontal ? placeable.B0() : placeable.Q0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RowColumnParentData r(IntrinsicMeasurable intrinsicMeasurable) {
        Object objE = intrinsicMeasurable.e();
        if (objE instanceof RowColumnParentData) {
            return (RowColumnParentData) objE;
        }
        return null;
    }

    private static final int u(List<? extends IntrinsicMeasurable> list, e8.p<? super IntrinsicMeasurable, ? super Integer, Integer> pVar, e8.p<? super IntrinsicMeasurable, ? super Integer, Integer> pVar2, int i10, int i11) {
        int iC;
        int iC2;
        int iMin = Math.min((list.size() - 1) * i11, i10);
        int size = list.size();
        int iMax = 0;
        float f = 0.0f;
        for (int i12 = 0; i12 < size; i12++) {
            IntrinsicMeasurable intrinsicMeasurable = list.get(i12);
            float fT = t(r(intrinsicMeasurable));
            if (fT == 0.0f) {
                int iMin2 = Math.min(pVar.invoke(intrinsicMeasurable, Integer.MAX_VALUE).intValue(), i10 - iMin);
                iMin += iMin2;
                iMax = Math.max(iMax, pVar2.invoke(intrinsicMeasurable, Integer.valueOf(iMin2)).intValue());
            } else if (fT > 0.0f) {
                f += fT;
            }
        }
        if (f == 0.0f) {
            iC = 0;
        } else if (i10 != Integer.MAX_VALUE) {
            iC = g8.c.c(Math.max(i10 - iMin, 0) / f);
        } else {
            iC = Integer.MAX_VALUE;
        }
        int size2 = list.size();
        for (int i13 = 0; i13 < size2; i13++) {
            IntrinsicMeasurable intrinsicMeasurable2 = list.get(i13);
            float fT2 = t(r(intrinsicMeasurable2));
            if (fT2 > 0.0f) {
                if (iC != Integer.MAX_VALUE) {
                    iC2 = g8.c.c(iC * fT2);
                } else {
                    iC2 = Integer.MAX_VALUE;
                }
                iMax = Math.max(iMax, pVar2.invoke(intrinsicMeasurable2, Integer.valueOf(iC2)).intValue());
            }
        }
        return iMax;
    }

    private static final int v(List<? extends IntrinsicMeasurable> list, e8.p<? super IntrinsicMeasurable, ? super Integer, Integer> pVar, int i10, int i11) {
        int size = list.size();
        int iMax = 0;
        int i12 = 0;
        float f = 0.0f;
        for (int i13 = 0; i13 < size; i13++) {
            IntrinsicMeasurable intrinsicMeasurable = list.get(i13);
            float fT = t(r(intrinsicMeasurable));
            int iIntValue = pVar.invoke(intrinsicMeasurable, Integer.valueOf(i10)).intValue();
            if (fT == 0.0f) {
                i12 += iIntValue;
            } else if (fT > 0.0f) {
                f += fT;
                iMax = Math.max(iMax, g8.c.c(iIntValue / fT));
            }
        }
        return g8.c.c(iMax * f) + i12 + ((list.size() - 1) * i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean x(RowColumnParentData rowColumnParentData) {
        CrossAxisAlignment crossAxisAlignmentQ = q(rowColumnParentData);
        if (crossAxisAlignmentQ != null) {
            return crossAxisAlignmentQ.c();
        }
        return false;
    }
}
