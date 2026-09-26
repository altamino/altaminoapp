package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.State;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.s;

/* JADX INFO: loaded from: classes.dex */
final class SlideModifier extends LayoutModifierWithPassThroughIntrinsics {

    @NotNull
    private final Transition<EnterExitState>.DeferredAnimation<IntOffset, AnimationVector2D> lazyAnimation;

    @NotNull
    private final State<Slide> slideIn;

    @NotNull
    private final State<Slide> slideOut;

    @NotNull
    private final l<Transition.Segment<EnterExitState>, FiniteAnimationSpec<IntOffset>> transitionSpec;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[EnterExitState.values().length];
            iArr[EnterExitState.Visible.ordinal()] = 1;
            iArr[EnterExitState.PreEnter.ordinal()] = 2;
            iArr[EnterExitState.PostExit.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @NotNull
    public final Transition<EnterExitState>.DeferredAnimation<IntOffset, AnimationVector2D> a() {
        return this.lazyAnimation;
    }

    @NotNull
    public final State<Slide> b() {
        return this.slideIn;
    }

    @NotNull
    public final State<Slide> c() {
        return this.slideOut;
    }

    @NotNull
    public final l<Transition.Segment<EnterExitState>, FiniteAnimationSpec<IntOffset>> d() {
        return this.transitionSpec;
    }

    public SlideModifier(@NotNull Transition<EnterExitState>.DeferredAnimation<IntOffset, AnimationVector2D> lazyAnimation, @NotNull State<Slide> slideIn, @NotNull State<Slide> slideOut) {
        t.j(lazyAnimation, "lazyAnimation");
        t.j(slideIn, "slideIn");
        t.j(slideOut, "slideOut");
        this.lazyAnimation = lazyAnimation;
        this.slideIn = slideIn;
        this.slideOut = slideOut;
        this.transitionSpec = new SlideModifier$transitionSpec$1(this);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    public MeasureResult N0(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j6) {
        t.j(measure, "$this$measure");
        t.j(measurable, "measurable");
        Placeable placeableB0 = measurable.b0(j6);
        return MeasureScope.CC.b(measure, placeableB0.Q0(), placeableB0.B0(), null, new SlideModifier$measure$1(this, placeableB0, IntSizeKt.a(placeableB0.Q0(), placeableB0.B0())), 4, null);
    }

    public final long f(@NotNull EnterExitState targetState, long j6) {
        l<IntSize, IntOffset> lVarB;
        l<IntSize, IntOffset> lVarB2;
        t.j(targetState, "targetState");
        Slide value = this.slideIn.getValue();
        long jA = (value == null || (lVarB2 = value.b()) == null) ? IntOffset.Companion.a() : lVarB2.invoke(IntSize.b(j6)).n();
        Slide value2 = this.slideOut.getValue();
        long jA2 = (value2 == null || (lVarB = value2.b()) == null) ? IntOffset.Companion.a() : lVarB.invoke(IntSize.b(j6)).n();
        int i10 = WhenMappings.$EnumSwitchMapping$0[targetState.ordinal()];
        if (i10 == 1) {
            return IntOffset.Companion.a();
        }
        if (i10 == 2) {
            return jA;
        }
        if (i10 == 3) {
            return jA2;
        }
        throw new s();
    }
}
