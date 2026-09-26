package androidx.compose.material;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import e8.p;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
final class TextFieldMeasurePolicy implements MeasurePolicy {
    private final float animationProgress;

    @NotNull
    private final PaddingValues paddingValues;
    private final boolean singleLine;

    public TextFieldMeasurePolicy(boolean z6, float f, @NotNull PaddingValues paddingValues) {
        t.j(paddingValues, "paddingValues");
        this.singleLine = z6;
        this.animationProgress = f;
        this.paddingValues = paddingValues;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final int i(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> list, int i10, p<? super IntrinsicMeasurable, ? super Integer, Integer> pVar) {
        Object obj;
        Object next;
        Object next2;
        Object next3;
        List<? extends IntrinsicMeasurable> list2 = list;
        for (Object obj2 : list2) {
            if (t.e(TextFieldImplKt.e((IntrinsicMeasurable) obj2), TextFieldImplKt.TextFieldId)) {
                int iIntValue = pVar.invoke(obj2, Integer.valueOf(i10)).intValue();
                Iterator<T> it = list2.iterator();
                do {
                    obj = null;
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!t.e(TextFieldImplKt.e((IntrinsicMeasurable) next), TextFieldImplKt.LabelId));
                IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) next;
                int iIntValue2 = intrinsicMeasurable != null ? pVar.invoke(intrinsicMeasurable, Integer.valueOf(i10)).intValue() : 0;
                Iterator<T> it2 = list2.iterator();
                do {
                    if (!it2.hasNext()) {
                        next2 = null;
                        break;
                    }
                    next2 = it2.next();
                } while (!t.e(TextFieldImplKt.e((IntrinsicMeasurable) next2), TextFieldImplKt.TrailingId));
                IntrinsicMeasurable intrinsicMeasurable2 = (IntrinsicMeasurable) next2;
                int iIntValue3 = intrinsicMeasurable2 != null ? pVar.invoke(intrinsicMeasurable2, Integer.valueOf(i10)).intValue() : 0;
                Iterator<T> it3 = list2.iterator();
                do {
                    if (!it3.hasNext()) {
                        next3 = null;
                        break;
                    }
                    next3 = it3.next();
                } while (!t.e(TextFieldImplKt.e((IntrinsicMeasurable) next3), TextFieldImplKt.LeadingId));
                IntrinsicMeasurable intrinsicMeasurable3 = (IntrinsicMeasurable) next3;
                int iIntValue4 = intrinsicMeasurable3 != null ? pVar.invoke(intrinsicMeasurable3, Integer.valueOf(i10)).intValue() : 0;
                for (Object obj3 : list2) {
                    if (t.e(TextFieldImplKt.e((IntrinsicMeasurable) obj3), TextFieldImplKt.PlaceholderId)) {
                        obj = obj3;
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable4 = (IntrinsicMeasurable) obj;
                return TextFieldKt.h(iIntValue, iIntValue2 > 0, iIntValue2, iIntValue4, iIntValue3, intrinsicMeasurable4 != null ? pVar.invoke(intrinsicMeasurable4, Integer.valueOf(i10)).intValue() : 0, TextFieldImplKt.g(), intrinsicMeasureScope.getDensity(), this.paddingValues);
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final int j(List<? extends IntrinsicMeasurable> list, int i10, p<? super IntrinsicMeasurable, ? super Integer, Integer> pVar) {
        Object obj;
        Object next;
        Object next2;
        Object next3;
        List<? extends IntrinsicMeasurable> list2 = list;
        for (Object obj2 : list2) {
            if (t.e(TextFieldImplKt.e((IntrinsicMeasurable) obj2), TextFieldImplKt.TextFieldId)) {
                int iIntValue = pVar.invoke(obj2, Integer.valueOf(i10)).intValue();
                Iterator<T> it = list2.iterator();
                do {
                    obj = null;
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!t.e(TextFieldImplKt.e((IntrinsicMeasurable) next), TextFieldImplKt.LabelId));
                IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) next;
                int iIntValue2 = intrinsicMeasurable != null ? pVar.invoke(intrinsicMeasurable, Integer.valueOf(i10)).intValue() : 0;
                Iterator<T> it2 = list2.iterator();
                do {
                    if (!it2.hasNext()) {
                        next2 = null;
                        break;
                    }
                    next2 = it2.next();
                } while (!t.e(TextFieldImplKt.e((IntrinsicMeasurable) next2), TextFieldImplKt.TrailingId));
                IntrinsicMeasurable intrinsicMeasurable2 = (IntrinsicMeasurable) next2;
                int iIntValue3 = intrinsicMeasurable2 != null ? pVar.invoke(intrinsicMeasurable2, Integer.valueOf(i10)).intValue() : 0;
                Iterator<T> it3 = list2.iterator();
                do {
                    if (!it3.hasNext()) {
                        next3 = null;
                        break;
                    }
                    next3 = it3.next();
                } while (!t.e(TextFieldImplKt.e((IntrinsicMeasurable) next3), TextFieldImplKt.LeadingId));
                IntrinsicMeasurable intrinsicMeasurable3 = (IntrinsicMeasurable) next3;
                int iIntValue4 = intrinsicMeasurable3 != null ? pVar.invoke(intrinsicMeasurable3, Integer.valueOf(i10)).intValue() : 0;
                for (Object obj3 : list2) {
                    if (t.e(TextFieldImplKt.e((IntrinsicMeasurable) obj3), TextFieldImplKt.PlaceholderId)) {
                        obj = obj3;
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable4 = (IntrinsicMeasurable) obj;
                return TextFieldKt.i(iIntValue4, iIntValue3, iIntValue, iIntValue2, intrinsicMeasurable4 != null ? pVar.invoke(intrinsicMeasurable4, Integer.valueOf(i10)).intValue() : 0, TextFieldImplKt.g());
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    @NotNull
    public MeasureResult a(@NotNull MeasureScope measure, @NotNull List<? extends Measurable> measurables, long j6) {
        Object next;
        Object next2;
        Object next3;
        int iC0;
        Object next4;
        t.j(measure, "$this$measure");
        t.j(measurables, "measurables");
        int iJ0 = measure.j0(this.paddingValues.d());
        int iJ1 = measure.j0(this.paddingValues.a());
        int iJ2 = measure.j0(TextFieldKt.m());
        long jE = Constraints.e(j6, 0, 0, 0, 0, 10, null);
        List<? extends Measurable> list = measurables;
        Iterator<T> it = list.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!t.e(LayoutIdKt.a((Measurable) next), TextFieldImplKt.LeadingId));
        Measurable measurable = (Measurable) next;
        Placeable placeableB0 = measurable != null ? measurable.b0(jE) : null;
        int i10 = TextFieldImplKt.i(placeableB0);
        Iterator<T> it2 = list.iterator();
        do {
            if (!it2.hasNext()) {
                next2 = null;
                break;
            }
            next2 = it2.next();
        } while (!t.e(LayoutIdKt.a((Measurable) next2), TextFieldImplKt.TrailingId));
        Measurable measurable2 = (Measurable) next2;
        Placeable placeableB1 = measurable2 != null ? measurable2.b0(ConstraintsKt.j(jE, -i10, 0, 2, null)) : null;
        int i11 = -iJ1;
        int i12 = -(i10 + TextFieldImplKt.i(placeableB1));
        long jI = ConstraintsKt.i(jE, i12, i11);
        Iterator<T> it3 = list.iterator();
        do {
            if (!it3.hasNext()) {
                next3 = null;
                break;
            }
            next3 = it3.next();
        } while (!t.e(LayoutIdKt.a((Measurable) next3), TextFieldImplKt.LabelId));
        Measurable measurable3 = (Measurable) next3;
        Placeable placeableB2 = measurable3 != null ? measurable3.b0(jI) : null;
        if (placeableB2 != null) {
            iC0 = placeableB2.c0(AlignmentLineKt.b());
            if (iC0 == Integer.MIN_VALUE) {
                iC0 = placeableB2.B0();
            }
        } else {
            iC0 = 0;
        }
        int iMax = Math.max(iC0, iJ0);
        long jI2 = ConstraintsKt.i(Constraints.e(j6, 0, 0, 0, 0, 11, null), i12, placeableB2 != null ? (i11 - iJ2) - iMax : (-iJ0) - iJ1);
        for (Measurable measurable4 : list) {
            if (t.e(LayoutIdKt.a(measurable4), TextFieldImplKt.TextFieldId)) {
                Placeable placeableB3 = measurable4.b0(jI2);
                long jE2 = Constraints.e(jI2, 0, 0, 0, 0, 14, null);
                Iterator<T> it4 = list.iterator();
                do {
                    if (!it4.hasNext()) {
                        next4 = null;
                        break;
                    }
                    next4 = it4.next();
                } while (!t.e(LayoutIdKt.a((Measurable) next4), TextFieldImplKt.PlaceholderId));
                Measurable measurable5 = (Measurable) next4;
                Placeable placeableB4 = measurable5 != null ? measurable5.b0(jE2) : null;
                int i13 = TextFieldKt.i(TextFieldImplKt.i(placeableB0), TextFieldImplKt.i(placeableB1), placeableB3.Q0(), TextFieldImplKt.i(placeableB2), TextFieldImplKt.i(placeableB4), j6);
                int iH = TextFieldKt.h(placeableB3.B0(), placeableB2 != null, iMax, TextFieldImplKt.h(placeableB0), TextFieldImplKt.h(placeableB1), TextFieldImplKt.h(placeableB4), j6, measure.getDensity(), this.paddingValues);
                return MeasureScope.CC.b(measure, i13, iH, null, new TextFieldMeasurePolicy$measure$1(placeableB2, iJ0, iC0, i13, iH, placeableB3, placeableB4, placeableB0, placeableB1, this, iMax, iJ2, measure), 4, null);
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int b(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurables, "measurables");
        return i(intrinsicMeasureScope, measurables, i10, TextFieldMeasurePolicy$minIntrinsicHeight$1.INSTANCE);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int c(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurables, "measurables");
        return j(measurables, i10, TextFieldMeasurePolicy$minIntrinsicWidth$1.INSTANCE);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int d(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurables, "measurables");
        return i(intrinsicMeasureScope, measurables, i10, TextFieldMeasurePolicy$maxIntrinsicHeight$1.INSTANCE);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int e(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurables, "measurables");
        return j(measurables, i10, TextFieldMeasurePolicy$maxIntrinsicWidth$1.INSTANCE);
    }
}
