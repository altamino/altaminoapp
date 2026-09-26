package androidx.compose.material;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxWithConstraintsScope;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.a;
import e8.l;
import e8.q;
import j8.e;
import j8.n;
import j8.o;
import java.util.List;
import kotlin.coroutines.h;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class SliderKt$RangeSlider$2 extends v implements q<BoxWithConstraintsScope, Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ SliderColors $colors;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ MutableInteractionSource $endInteractionSource;
    final /* synthetic */ a<l0> $onValueChangeFinished;
    final /* synthetic */ State<l<e<Float>, l0>> $onValueChangeState;
    final /* synthetic */ MutableInteractionSource $startInteractionSource;
    final /* synthetic */ int $steps;
    final /* synthetic */ List<Float> $tickFractions;
    final /* synthetic */ e<Float> $valueRange;
    final /* synthetic */ e<Float> $values;

    /* JADX INFO: renamed from: androidx.compose.material.SliderKt$RangeSlider$2$2, reason: invalid class name */
    /* synthetic */ class AnonymousClass2 extends kotlin.jvm.internal.q implements l<Float, Float> {
        final /* synthetic */ m0 $maxPx;
        final /* synthetic */ m0 $minPx;
        final /* synthetic */ e<Float> $valueRange;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(e<Float> eVar, m0 m0Var, m0 m0Var2) {
            super(1, t.a.class, "scaleToOffset", "invoke$scaleToOffset(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;F)F", 0);
            this.$valueRange = eVar;
            this.$minPx = m0Var;
            this.$maxPx = m0Var2;
        }

        @NotNull
        public final Float a(float f) {
            return Float.valueOf(SliderKt$RangeSlider$2.d(this.$valueRange, this.$minPx, this.$maxPx, f));
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ Float invoke(Float f) {
            return a(f.floatValue());
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material.SliderKt$RangeSlider$2$3, reason: invalid class name */
    /* synthetic */ class AnonymousClass3 extends kotlin.jvm.internal.q implements l<Float, Float> {
        final /* synthetic */ m0 $maxPx;
        final /* synthetic */ m0 $minPx;
        final /* synthetic */ e<Float> $valueRange;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(e<Float> eVar, m0 m0Var, m0 m0Var2) {
            super(1, t.a.class, "scaleToOffset", "invoke$scaleToOffset(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;F)F", 0);
            this.$valueRange = eVar;
            this.$minPx = m0Var;
            this.$maxPx = m0Var2;
        }

        @NotNull
        public final Float a(float f) {
            return Float.valueOf(SliderKt$RangeSlider$2.d(this.$valueRange, this.$minPx, this.$maxPx, f));
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ Float invoke(Float f) {
            return a(f.floatValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SliderKt$RangeSlider$2(e<Float> eVar, e<Float> eVar2, int i10, State<? extends l<? super e<Float>, l0>> state, MutableInteractionSource mutableInteractionSource, MutableInteractionSource mutableInteractionSource2, boolean z6, List<Float> list, int i11, SliderColors sliderColors, a<l0> aVar) {
        super(3);
        this.$valueRange = eVar;
        this.$values = eVar2;
        this.$$dirty = i10;
        this.$onValueChangeState = state;
        this.$startInteractionSource = mutableInteractionSource;
        this.$endInteractionSource = mutableInteractionSource2;
        this.$enabled = z6;
        this.$tickFractions = list;
        this.$steps = i11;
        this.$colors = sliderColors;
        this.$onValueChangeFinished = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final e<Float> e(m0 m0Var, m0 m0Var2, e<Float> eVar, e<Float> eVar2) {
        return SliderKt.C(m0Var.element, m0Var2.element, eVar2, eVar.getStart().floatValue(), eVar.c().floatValue());
    }

    @ComposableTarget
    @Composable
    public final void c(@NotNull BoxWithConstraintsScope BoxWithConstraints, @Nullable Composer composer, int i10) {
        t.j(BoxWithConstraints, "$this$BoxWithConstraints");
        if ((((i10 & 14) == 0 ? i10 | (composer.k(BoxWithConstraints) ? 4 : 2) : i10) & 91) == 18 && composer.b()) {
            composer.g();
            return;
        }
        boolean z6 = composer.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl;
        float fN = Constraints.n(BoxWithConstraints.b());
        m0 m0Var = new m0();
        m0 m0Var2 = new m0();
        Density density = (Density) composer.x(CompositionLocalsKt.e());
        m0Var.element = fN - density.H0(SliderKt.z());
        m0Var2.element = density.H0(SliderKt.z());
        l0 l0Var = l0.INSTANCE;
        e<Float> eVar = this.$values;
        e<Float> eVar2 = this.$valueRange;
        composer.G(-492369756);
        Object objH = composer.H();
        Composer.Companion companion = Composer.Companion;
        if (objH == companion.a()) {
            objH = SnapshotStateKt__SnapshotStateKt.e(Float.valueOf(d(eVar2, m0Var2, m0Var, eVar.getStart().floatValue())), null, 2, null);
            composer.z(objH);
        }
        composer.Q();
        MutableState mutableState = (MutableState) objH;
        e<Float> eVar3 = this.$values;
        e<Float> eVar4 = this.$valueRange;
        composer.G(-492369756);
        Object objH2 = composer.H();
        if (objH2 == companion.a()) {
            objH2 = SnapshotStateKt__SnapshotStateKt.e(Float.valueOf(d(eVar4, m0Var2, m0Var, eVar3.c().floatValue())), null, 2, null);
            composer.z(objH2);
        }
        composer.Q();
        MutableState mutableState2 = (MutableState) objH2;
        SliderKt.a(new AnonymousClass2(this.$valueRange, m0Var2, m0Var), this.$valueRange, n.b(m0Var2.element, m0Var.element), mutableState, this.$values.getStart().floatValue(), composer, ((this.$$dirty >> 9) & 112) | 3072);
        SliderKt.a(new AnonymousClass3(this.$valueRange, m0Var2, m0Var), this.$valueRange, n.b(m0Var2.element, m0Var.element), mutableState2, this.$values.c().floatValue(), composer, ((this.$$dirty >> 9) & 112) | 3072);
        composer.G(773894976);
        composer.G(-492369756);
        Object objH3 = composer.H();
        if (objH3 == companion.a()) {
            Object compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composer));
            composer.z(compositionScopedCoroutineScopeCanceller);
            objH3 = compositionScopedCoroutineScopeCanceller;
        }
        composer.Q();
        o0 o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH3).a();
        composer.Q();
        State stateN = SnapshotStateKt.n(new SliderKt$RangeSlider$2$gestureEndAction$1(mutableState, mutableState2, this.$tickFractions, m0Var2, m0Var, this.$onValueChangeFinished, o0VarA, this.$onValueChangeState, this.$valueRange), composer, 0);
        e<Float> eVar5 = this.$values;
        State<l<e<Float>, l0>> state = this.$onValueChangeState;
        Object[] objArr = {mutableState, mutableState2, this.$valueRange, Float.valueOf(m0Var2.element), Float.valueOf(m0Var.element), eVar5, state};
        e<Float> eVar6 = this.$valueRange;
        composer.G(-568225417);
        boolean zK = false;
        for (int i11 = 0; i11 < 7; i11++) {
            zK |= composer.k(objArr[i11]);
        }
        Object objH4 = composer.H();
        if (zK || objH4 == Composer.Companion.a()) {
            objH4 = new SliderKt$RangeSlider$2$onDrag$1$1(mutableState, mutableState2, eVar5, m0Var2, m0Var, state, eVar6);
            composer.z(objH4);
        }
        composer.Q();
        State stateN2 = SnapshotStateKt.n(objH4, composer, 0);
        Modifier.Companion companion2 = Modifier.Companion;
        Modifier modifierA = SliderKt.A(companion2, this.$startInteractionSource, this.$endInteractionSource, mutableState, mutableState2, this.$enabled, z6, fN, this.$valueRange, stateN, stateN2);
        float fM = o.m(this.$values.getStart().floatValue(), this.$valueRange.getStart().floatValue(), this.$values.c().floatValue());
        float fM2 = o.m(this.$values.c().floatValue(), this.$values.getStart().floatValue(), this.$valueRange.c().floatValue());
        float fY = SliderKt.y(this.$valueRange.getStart().floatValue(), this.$valueRange.c().floatValue(), fM);
        float fY2 = SliderKt.y(this.$valueRange.getStart().floatValue(), this.$valueRange.c().floatValue(), fM2);
        List<Float> list = this.$tickFractions;
        boolean z10 = this.$enabled;
        Object obj = this.$onValueChangeState;
        Object objValueOf = Float.valueOf(fM2);
        State<l<e<Float>, l0>> state2 = this.$onValueChangeState;
        composer.G(511388516);
        boolean zK2 = composer.k(obj) | composer.k(objValueOf);
        Object objH5 = composer.H();
        if (zK2 || objH5 == Composer.Companion.a()) {
            objH5 = new SliderKt$RangeSlider$2$startThumbSemantics$1$1(state2, fM2);
            composer.z(objH5);
        }
        composer.Q();
        Modifier modifierD = SliderKt.D(companion2, fM, list, z10, (l) objH5, n.b(this.$valueRange.getStart().floatValue(), fM2), this.$steps);
        List<Float> list2 = this.$tickFractions;
        boolean z11 = this.$enabled;
        Object obj2 = this.$onValueChangeState;
        Object objValueOf2 = Float.valueOf(fM);
        State<l<e<Float>, l0>> state3 = this.$onValueChangeState;
        composer.G(511388516);
        boolean zK3 = composer.k(obj2) | composer.k(objValueOf2);
        Object objH6 = composer.H();
        if (zK3 || objH6 == Composer.Companion.a()) {
            objH6 = new SliderKt$RangeSlider$2$endThumbSemantics$1$1(state3, fM);
            composer.z(objH6);
        }
        composer.Q();
        Modifier modifierD2 = SliderKt.D(companion2, fM2, list2, z11, (l) objH6, n.b(fM, this.$valueRange.c().floatValue()), this.$steps);
        boolean z12 = this.$enabled;
        List<Float> list3 = this.$tickFractions;
        SliderColors sliderColors = this.$colors;
        float f = m0Var.element - m0Var2.element;
        MutableInteractionSource mutableInteractionSource = this.$startInteractionSource;
        MutableInteractionSource mutableInteractionSource2 = this.$endInteractionSource;
        int i12 = this.$$dirty;
        SliderKt.c(z12, fY, fY2, list3, sliderColors, f, mutableInteractionSource, mutableInteractionSource2, modifierA, modifierD, modifierD2, composer, ((i12 >> 9) & 14) | 14159872 | ((i12 >> 9) & 57344), 0);
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(BoxWithConstraintsScope boxWithConstraintsScope, Composer composer, Integer num) {
        c(boxWithConstraintsScope, composer, num.intValue());
        return l0.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float d(e<Float> eVar, m0 m0Var, m0 m0Var2, float f) {
        return SliderKt.B(eVar.getStart().floatValue(), eVar.c().floatValue(), f, m0Var.element, m0Var2.element);
    }
}
