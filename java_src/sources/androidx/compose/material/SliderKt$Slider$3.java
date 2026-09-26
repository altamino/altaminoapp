package androidx.compose.material;

import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.DraggableKt$draggable$1;
import androidx.compose.foundation.gestures.DraggableKt$draggable$2;
import androidx.compose.foundation.gestures.Orientation;
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
final class SliderKt$Slider$3 extends v implements q<BoxWithConstraintsScope, Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ SliderColors $colors;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ a<l0> $onValueChangeFinished;
    final /* synthetic */ State<l<Float, l0>> $onValueChangeState;
    final /* synthetic */ List<Float> $tickFractions;
    final /* synthetic */ float $value;
    final /* synthetic */ e<Float> $valueRange;

    /* JADX INFO: renamed from: androidx.compose.material.SliderKt$Slider$3$2, reason: invalid class name */
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
            return Float.valueOf(SliderKt$Slider$3.d(this.$valueRange, this.$minPx, this.$maxPx, f));
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ Float invoke(Float f) {
            return a(f.floatValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SliderKt$Slider$3(e<Float> eVar, int i10, float f, MutableInteractionSource mutableInteractionSource, boolean z6, List<Float> list, SliderColors sliderColors, State<? extends l<? super Float, l0>> state, a<l0> aVar) {
        super(3);
        this.$valueRange = eVar;
        this.$$dirty = i10;
        this.$value = f;
        this.$interactionSource = mutableInteractionSource;
        this.$enabled = z6;
        this.$tickFractions = list;
        this.$colors = sliderColors;
        this.$onValueChangeState = state;
        this.$onValueChangeFinished = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float e(m0 m0Var, m0 m0Var2, e<Float> eVar, float f) {
        return SliderKt.B(m0Var.element, m0Var2.element, f, eVar.getStart().floatValue(), eVar.c().floatValue());
    }

    @ComposableTarget
    @Composable
    public final void c(@NotNull BoxWithConstraintsScope BoxWithConstraints, @Nullable Composer composer, int i10) {
        int i11;
        t.j(BoxWithConstraints, "$this$BoxWithConstraints");
        if ((i10 & 14) == 0) {
            i11 = i10 | (composer.k(BoxWithConstraints) ? 4 : 2);
        } else {
            i11 = i10;
        }
        if ((i11 & 91) == 18 && composer.b()) {
            composer.g();
            return;
        }
        boolean z6 = composer.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl;
        float fN = Constraints.n(BoxWithConstraints.b());
        m0 m0Var = new m0();
        m0 m0Var2 = new m0();
        Density density = (Density) composer.x(CompositionLocalsKt.e());
        m0Var.element = Math.max(fN - density.H0(SliderKt.z()), 0.0f);
        m0Var2.element = Math.min(density.H0(SliderKt.z()), m0Var.element);
        composer.G(773894976);
        composer.G(-492369756);
        Object objH = composer.H();
        Composer.Companion companion = Composer.Companion;
        if (objH == companion.a()) {
            Object compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composer));
            composer.z(compositionScopedCoroutineScopeCanceller);
            objH = compositionScopedCoroutineScopeCanceller;
        }
        composer.Q();
        o0 o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
        composer.Q();
        float f = this.$value;
        e<Float> eVar = this.$valueRange;
        composer.G(-492369756);
        Object objH2 = composer.H();
        if (objH2 == companion.a()) {
            objH2 = SnapshotStateKt__SnapshotStateKt.e(Float.valueOf(d(eVar, m0Var2, m0Var, f)), null, 2, null);
            composer.z(objH2);
        }
        composer.Q();
        MutableState mutableState = (MutableState) objH2;
        composer.G(-492369756);
        Object objH3 = composer.H();
        if (objH3 == companion.a()) {
            objH3 = SnapshotStateKt__SnapshotStateKt.e(Float.valueOf(0.0f), null, 2, null);
            composer.z(objH3);
        }
        composer.Q();
        MutableState mutableState2 = (MutableState) objH3;
        Object objValueOf = Float.valueOf(m0Var2.element);
        Object objValueOf2 = Float.valueOf(m0Var.element);
        e<Float> eVar2 = this.$valueRange;
        State<l<Float, l0>> state = this.$onValueChangeState;
        composer.G(1618982084);
        boolean zK = composer.k(objValueOf) | composer.k(objValueOf2) | composer.k(eVar2);
        Object objH4 = composer.H();
        if (zK || objH4 == companion.a()) {
            objH4 = new SliderDraggableState(new SliderKt$Slider$3$draggableState$1$1(mutableState, mutableState2, m0Var2, m0Var, state, eVar2));
            composer.z(objH4);
        }
        composer.Q();
        SliderDraggableState sliderDraggableState = (SliderDraggableState) objH4;
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$valueRange, m0Var2, m0Var);
        e<Float> eVar3 = this.$valueRange;
        e eVarB = n.b(m0Var2.element, m0Var.element);
        float f6 = this.$value;
        int i12 = this.$$dirty;
        SliderKt.a(anonymousClass2, eVar3, eVarB, mutableState, f6, composer, ((i12 >> 9) & 112) | 3072 | ((i12 << 12) & 57344));
        State stateN = SnapshotStateKt.n(new SliderKt$Slider$3$gestureEndAction$1(mutableState, this.$tickFractions, m0Var2, m0Var, o0VarA, sliderDraggableState, this.$onValueChangeFinished), composer, 0);
        Modifier.Companion companion2 = Modifier.Companion;
        Modifier modifierE = SliderKt.E(companion2, sliderDraggableState, this.$interactionSource, fN, z6, mutableState, stateN, mutableState2, this.$enabled);
        Orientation orientation = Orientation.Horizontal;
        boolean zG = sliderDraggableState.g();
        boolean z10 = this.$enabled;
        MutableInteractionSource mutableInteractionSource = this.$interactionSource;
        composer.G(1157296644);
        boolean zK2 = composer.k(stateN);
        Object objH5 = composer.H();
        if (zK2 || objH5 == companion.a()) {
            objH5 = new SliderKt$Slider$3$drag$1$1(stateN, null);
            composer.z(objH5);
        }
        composer.Q();
        Modifier modifierH = DraggableKt.h(companion2, sliderDraggableState, orientation, (32 & 4) != 0 ? true : z10, (32 & 8) != 0 ? null : mutableInteractionSource, (32 & 16) != 0 ? false : zG, (32 & 32) != 0 ? new DraggableKt$draggable$1(null) : null, (32 & 64) != 0 ? new DraggableKt$draggable$2(null) : (q) objH5, (32 & 128) != 0 ? false : z6);
        float fY = SliderKt.y(this.$valueRange.getStart().floatValue(), this.$valueRange.c().floatValue(), o.m(this.$value, this.$valueRange.getStart().floatValue(), this.$valueRange.c().floatValue()));
        boolean z11 = this.$enabled;
        List<Float> list = this.$tickFractions;
        SliderColors sliderColors = this.$colors;
        float f7 = m0Var.element - m0Var2.element;
        MutableInteractionSource mutableInteractionSource2 = this.$interactionSource;
        Modifier modifierB = modifierE.B(modifierH);
        int i13 = this.$$dirty;
        SliderKt.e(z11, fY, list, sliderColors, f7, mutableInteractionSource2, modifierB, composer, ((i13 >> 9) & 14) | 512 | ((i13 >> 15) & 7168) | ((i13 >> 6) & 458752));
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
