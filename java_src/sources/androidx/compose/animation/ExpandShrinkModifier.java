package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.State;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.s;

/* JADX INFO: loaded from: classes6.dex */
final class ExpandShrinkModifier extends LayoutModifierWithPassThroughIntrinsics {

    @NotNull
    private final State<Alignment> alignment;

    @Nullable
    private Alignment currentAlignment;

    @NotNull
    private final State<ChangeSize> expand;

    @NotNull
    private final Transition<EnterExitState>.DeferredAnimation<IntOffset, AnimationVector2D> offsetAnimation;

    @NotNull
    private final State<ChangeSize> shrink;

    @NotNull
    private final Transition<EnterExitState>.DeferredAnimation<IntSize, AnimationVector2D> sizeAnimation;

    @NotNull
    private final l<Transition.Segment<EnterExitState>, FiniteAnimationSpec<IntSize>> sizeTransitionSpec;

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

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    public MeasureResult N0(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j6) {
        t.j(measure, "$this$measure");
        t.j(measurable, "measurable");
        Placeable placeableB0 = measurable.b0(j6);
        long jA = IntSizeKt.a(placeableB0.Q0(), placeableB0.B0());
        long j10 = this.sizeAnimation.a(this.sizeTransitionSpec, new ExpandShrinkModifier$measure$currentSize$1(this, jA)).getValue().j();
        long jN = this.offsetAnimation.a(ExpandShrinkModifier$measure$offsetDelta$1.INSTANCE, new ExpandShrinkModifier$measure$offsetDelta$2(this, jA)).getValue().n();
        Alignment alignment = this.currentAlignment;
        return MeasureScope.CC.b(measure, IntSize.g(j10), IntSize.f(j10), null, new ExpandShrinkModifier$measure$1(placeableB0, alignment != null ? alignment.a(jA, j10, LayoutDirection.Ltr) : IntOffset.Companion.a(), jN), 4, null);
    }

    @Nullable
    public final Alignment a() {
        return this.currentAlignment;
    }

    @NotNull
    public final State<ChangeSize> b() {
        return this.expand;
    }

    @NotNull
    public final State<ChangeSize> c() {
        return this.shrink;
    }

    public final void d(@Nullable Alignment alignment) {
        this.currentAlignment = alignment;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ExpandShrinkModifier(@NotNull Transition<EnterExitState>.DeferredAnimation<IntSize, AnimationVector2D> sizeAnimation, @NotNull Transition<EnterExitState>.DeferredAnimation<IntOffset, AnimationVector2D> offsetAnimation, @NotNull State<ChangeSize> expand, @NotNull State<ChangeSize> shrink, @NotNull State<? extends Alignment> alignment) {
        t.j(sizeAnimation, "sizeAnimation");
        t.j(offsetAnimation, "offsetAnimation");
        t.j(expand, "expand");
        t.j(shrink, "shrink");
        t.j(alignment, "alignment");
        this.sizeAnimation = sizeAnimation;
        this.offsetAnimation = offsetAnimation;
        this.expand = expand;
        this.shrink = shrink;
        this.alignment = alignment;
        this.sizeTransitionSpec = new ExpandShrinkModifier$sizeTransitionSpec$1(this);
    }

    public final long f(@NotNull EnterExitState targetState, long j6) {
        t.j(targetState, "targetState");
        ChangeSize value = this.expand.getValue();
        long j10 = value != null ? value.d().invoke(IntSize.b(j6)).j() : j6;
        ChangeSize value2 = this.shrink.getValue();
        long j11 = value2 != null ? value2.d().invoke(IntSize.b(j6)).j() : j6;
        int i10 = WhenMappings.$EnumSwitchMapping$0[targetState.ordinal()];
        if (i10 == 1) {
            return j6;
        }
        if (i10 == 2) {
            return j10;
        }
        if (i10 == 3) {
            return j11;
        }
        throw new s();
    }

    public final long g(@NotNull EnterExitState targetState, long j6) {
        t.j(targetState, "targetState");
        if (this.currentAlignment == null) {
            return IntOffset.Companion.a();
        }
        if (this.alignment.getValue() == null) {
            return IntOffset.Companion.a();
        }
        if (t.e(this.currentAlignment, this.alignment.getValue())) {
            return IntOffset.Companion.a();
        }
        int i10 = WhenMappings.$EnumSwitchMapping$0[targetState.ordinal()];
        if (i10 == 1) {
            return IntOffset.Companion.a();
        }
        if (i10 == 2) {
            return IntOffset.Companion.a();
        }
        if (i10 != 3) {
            throw new s();
        }
        ChangeSize value = this.shrink.getValue();
        if (value == null) {
            return IntOffset.Companion.a();
        }
        long j10 = value.d().invoke(IntSize.b(j6)).j();
        Alignment value2 = this.alignment.getValue();
        t.g(value2);
        Alignment alignment = value2;
        LayoutDirection layoutDirection = LayoutDirection.Ltr;
        long jA = alignment.a(j6, j10, layoutDirection);
        Alignment alignment2 = this.currentAlignment;
        t.g(alignment2);
        long jA2 = alignment2.a(j6, j10, layoutDirection);
        return IntOffsetKt.a(IntOffset.j(jA) - IntOffset.j(jA2), IntOffset.k(jA) - IntOffset.k(jA2));
    }
}
