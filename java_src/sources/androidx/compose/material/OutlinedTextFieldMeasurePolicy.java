package androidx.compose.material;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
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
import e8.l;
import e8.p;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class OutlinedTextFieldMeasurePolicy implements MeasurePolicy {
    private final float animationProgress;

    @NotNull
    private final l<Size, l0> onLabelMeasured;

    @NotNull
    private final PaddingValues paddingValues;
    private final boolean singleLine;

    /* JADX WARN: Multi-variable type inference failed */
    public OutlinedTextFieldMeasurePolicy(@NotNull l<? super Size, l0> onLabelMeasured, boolean z6, float f, @NotNull PaddingValues paddingValues) {
        t.j(onLabelMeasured, "onLabelMeasured");
        t.j(paddingValues, "paddingValues");
        this.onLabelMeasured = onLabelMeasured;
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
                return OutlinedTextFieldKt.h(iIntValue4, iIntValue3, iIntValue, iIntValue2, intrinsicMeasurable4 != null ? pVar.invoke(intrinsicMeasurable4, Integer.valueOf(i10)).intValue() : 0, TextFieldImplKt.g(), intrinsicMeasureScope.getDensity(), this.paddingValues);
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
                return OutlinedTextFieldKt.i(iIntValue4, iIntValue3, iIntValue, iIntValue2, intrinsicMeasurable4 != null ? pVar.invoke(intrinsicMeasurable4, Integer.valueOf(i10)).intValue() : 0, TextFieldImplKt.g());
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
        Object next4;
        t.j(measure, "$this$measure");
        t.j(measurables, "measurables");
        int iJ0 = measure.j0(this.paddingValues.a());
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
        int i11 = -(i10 + TextFieldImplKt.i(placeableB1));
        int i12 = -iJ0;
        long jI = ConstraintsKt.i(jE, (i11 - measure.j0(this.paddingValues.b(measure.getLayoutDirection()))) - measure.j0(this.paddingValues.c(measure.getLayoutDirection())), i12);
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
            this.onLabelMeasured.invoke(Size.c(SizeKt.a(placeableB2.Q0(), placeableB2.B0())));
        }
        long jE2 = Constraints.e(ConstraintsKt.i(j6, i11, i12 - Math.max(TextFieldImplKt.h(placeableB2) / 2, measure.j0(this.paddingValues.d()))), 0, 0, 0, 0, 11, null);
        for (Measurable measurable4 : list) {
            if (t.e(LayoutIdKt.a(measurable4), TextFieldImplKt.TextFieldId)) {
                Placeable placeableB3 = measurable4.b0(jE2);
                long jE3 = Constraints.e(jE2, 0, 0, 0, 0, 14, null);
                Iterator<T> it4 = list.iterator();
                do {
                    if (!it4.hasNext()) {
                        next4 = null;
                        break;
                    }
                    next4 = it4.next();
                } while (!t.e(LayoutIdKt.a((Measurable) next4), TextFieldImplKt.PlaceholderId));
                Measurable measurable5 = (Measurable) next4;
                Placeable placeableB4 = measurable5 != null ? measurable5.b0(jE3) : null;
                int i13 = OutlinedTextFieldKt.i(TextFieldImplKt.i(placeableB0), TextFieldImplKt.i(placeableB1), placeableB3.Q0(), TextFieldImplKt.i(placeableB2), TextFieldImplKt.i(placeableB4), j6);
                int iH = OutlinedTextFieldKt.h(TextFieldImplKt.h(placeableB0), TextFieldImplKt.h(placeableB1), placeableB3.B0(), TextFieldImplKt.h(placeableB2), TextFieldImplKt.h(placeableB4), j6, measure.getDensity(), this.paddingValues);
                for (Measurable measurable6 : list) {
                    if (t.e(LayoutIdKt.a(measurable6), OutlinedTextFieldKt.BorderId)) {
                        return MeasureScope.CC.b(measure, i13, iH, null, new OutlinedTextFieldMeasurePolicy$measure$2(iH, i13, placeableB0, placeableB1, placeableB3, placeableB2, placeableB4, measurable6.b0(ConstraintsKt.a(i13 != Integer.MAX_VALUE ? i13 : 0, i13, iH != Integer.MAX_VALUE ? iH : 0, iH)), this, measure), 4, null);
                    }
                }
                throw new NoSuchElementException("Collection contains no element matching the predicate.");
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int b(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurables, "measurables");
        return i(intrinsicMeasureScope, measurables, i10, OutlinedTextFieldMeasurePolicy$minIntrinsicHeight$1.INSTANCE);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int c(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurables, "measurables");
        return j(measurables, i10, OutlinedTextFieldMeasurePolicy$minIntrinsicWidth$1.INSTANCE);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int d(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurables, "measurables");
        return i(intrinsicMeasureScope, measurables, i10, OutlinedTextFieldMeasurePolicy$maxIntrinsicHeight$1.INSTANCE);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public int e(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> measurables, int i10) {
        t.j(intrinsicMeasureScope, "<this>");
        t.j(measurables, "measurables");
        return j(measurables, i10, OutlinedTextFieldMeasurePolicy$maxIntrinsicWidth$1.INSTANCE);
    }
}
