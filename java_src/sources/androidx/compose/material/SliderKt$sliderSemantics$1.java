package androidx.compose.material;

import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.util.MathHelpersKt;
import e8.l;
import j8.e;
import j8.o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.w;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class SliderKt$sliderSemantics$1 extends v implements l<SemanticsPropertyReceiver, l0> {
    final /* synthetic */ float $coerced;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ l<Float, l0> $onValueChange;
    final /* synthetic */ int $steps;
    final /* synthetic */ List<Float> $tickFractions;
    final /* synthetic */ e<Float> $valueRange;

    /* JADX INFO: renamed from: androidx.compose.material.SliderKt$sliderSemantics$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<Float, Boolean> {
        final /* synthetic */ float $coerced;
        final /* synthetic */ l<Float, l0> $onValueChange;
        final /* synthetic */ int $steps;
        final /* synthetic */ List<Float> $tickFractions;
        final /* synthetic */ e<Float> $valueRange;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(e<Float> eVar, int i10, List<Float> list, float f, l<? super Float, l0> lVar) {
            super(1);
            this.$valueRange = eVar;
            this.$steps = i10;
            this.$tickFractions = list;
            this.$coerced = f;
            this.$onValueChange = lVar;
        }

        @NotNull
        public final Boolean a(float f) {
            boolean z6;
            Object obj;
            float fM = o.m(f, this.$valueRange.getStart().floatValue(), this.$valueRange.c().floatValue());
            if (this.$steps > 0) {
                List<Float> list = this.$tickFractions;
                e<Float> eVar = this.$valueRange;
                ArrayList arrayList = new ArrayList(w.x(list, 10));
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(Float.valueOf(MathHelpersKt.a(eVar.getStart().floatValue(), eVar.c().floatValue(), ((Number) it.next()).floatValue())));
                }
                Iterator it2 = arrayList.iterator();
                if (it2.hasNext()) {
                    Object next = it2.next();
                    if (it2.hasNext()) {
                        float fAbs = Math.abs(((Number) next).floatValue() - fM);
                        do {
                            Object next2 = it2.next();
                            float fAbs2 = Math.abs(((Number) next2).floatValue() - fM);
                            if (Float.compare(fAbs, fAbs2) > 0) {
                                next = next2;
                                fAbs = fAbs2;
                            }
                        } while (it2.hasNext());
                    }
                    obj = next;
                } else {
                    obj = null;
                }
                Float f6 = (Float) obj;
                if (f6 != null) {
                    fM = f6.floatValue();
                }
            }
            if (fM == this.$coerced) {
                z6 = false;
            } else {
                this.$onValueChange.invoke(Float.valueOf(fM));
                z6 = true;
            }
            return Boolean.valueOf(z6);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ Boolean invoke(Float f) {
            return a(f.floatValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SliderKt$sliderSemantics$1(boolean z6, e<Float> eVar, int i10, List<Float> list, float f, l<? super Float, l0> lVar) {
        super(1);
        this.$enabled = z6;
        this.$valueRange = eVar;
        this.$steps = i10;
        this.$tickFractions = list;
        this.$coerced = f;
        this.$onValueChange = lVar;
    }

    public final void a(@NotNull SemanticsPropertyReceiver semantics) {
        t.j(semantics, "$this$semantics");
        if (!this.$enabled) {
            SemanticsPropertiesKt.h(semantics);
        }
        SemanticsPropertiesKt.O(semantics, null, new AnonymousClass1(this.$valueRange, this.$steps, this.$tickFractions, this.$coerced, this.$onValueChange), 1, null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        a(semanticsPropertyReceiver);
        return l0.INSTANCE;
    }
}
