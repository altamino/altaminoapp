package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class EnterExitTransitionKt$shrinkExpand$1 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ State<ChangeSize> $expand;
    final /* synthetic */ String $labelPrefix;
    final /* synthetic */ State<ChangeSize> $shrink;
    final /* synthetic */ Transition<EnterExitState> $transition;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    EnterExitTransitionKt$shrinkExpand$1(Transition<EnterExitState> transition, State<ChangeSize> state, State<ChangeSize> state2, String str) {
        super(3);
        this.$transition = transition;
        this.$expand = state;
        this.$shrink = state2;
        this.$labelPrefix = str;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x009f  */
    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier modifier, @Nullable Composer composer, int i10) {
        Alignment alignmentA;
        ChangeSize value;
        Modifier composed = modifier;
        t.j(composed, "$this$composed");
        composer.G(-140634085);
        Transition<EnterExitState> transition = this.$transition;
        composer.G(1157296644);
        boolean zK = composer.k(transition);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = SnapshotStateKt__SnapshotStateKt.e(Boolean.FALSE, null, 2, null);
            composer.z(objH);
        }
        composer.Q();
        MutableState mutableState = (MutableState) objH;
        if (this.$transition.g() == this.$transition.m() && !this.$transition.q()) {
            c(mutableState, false);
        } else if (this.$expand.getValue() != null || this.$shrink.getValue() != null) {
            c(mutableState, true);
        }
        if (b(mutableState)) {
            boolean zA = this.$transition.k().a(EnterExitState.PreEnter, EnterExitState.Visible);
            State<ChangeSize> state = this.$expand;
            State<ChangeSize> state2 = this.$shrink;
            if (zA) {
                ChangeSize value2 = state.getValue();
                if (value2 == null || (alignmentA = value2.a()) == null) {
                    ChangeSize value3 = state2.getValue();
                    if (value3 != null) {
                        alignmentA = value3.a();
                    } else {
                        alignmentA = null;
                    }
                }
            } else {
                ChangeSize value4 = state2.getValue();
                if (value4 == null || (alignmentA = value4.a()) == null) {
                    ChangeSize value5 = state.getValue();
                    if (value5 != null) {
                        alignmentA = value5.a();
                    } else {
                        alignmentA = null;
                    }
                }
            }
            State stateN = SnapshotStateKt.n(alignmentA, composer, 0);
            Transition<EnterExitState> transition2 = this.$transition;
            TwoWayConverter<IntSize, AnimationVector2D> twoWayConverterH = VectorConvertersKt.h(IntSize.Companion);
            String str = this.$labelPrefix;
            composer.G(-492369756);
            Object objH2 = composer.H();
            Composer.Companion companion = Composer.Companion;
            if (objH2 == companion.a()) {
                objH2 = str + " shrink/expand";
                composer.z(objH2);
            }
            composer.Q();
            Transition.DeferredAnimation deferredAnimationB = androidx.compose.animation.core.TransitionKt.b(transition2, twoWayConverterH, (String) objH2, composer, 448, 0);
            composer.K(-1553214637, Boolean.valueOf(this.$transition.g() == this.$transition.m()));
            Transition<EnterExitState> transition3 = this.$transition;
            TwoWayConverter<IntOffset, AnimationVector2D> twoWayConverterG = VectorConvertersKt.g(IntOffset.Companion);
            String str2 = this.$labelPrefix;
            composer.G(-492369756);
            Object objH3 = composer.H();
            if (objH3 == companion.a()) {
                objH3 = str2 + " InterruptionHandlingOffset";
                composer.z(objH3);
            }
            composer.Q();
            Transition.DeferredAnimation deferredAnimationB2 = androidx.compose.animation.core.TransitionKt.b(transition3, twoWayConverterG, (String) objH3, composer, 448, 0);
            composer.P();
            Transition<EnterExitState> transition4 = this.$transition;
            State<ChangeSize> state3 = this.$expand;
            State<ChangeSize> state4 = this.$shrink;
            composer.G(1157296644);
            boolean zK2 = composer.k(transition4);
            Object objH4 = composer.H();
            if (zK2 || objH4 == companion.a()) {
                objH4 = new ExpandShrinkModifier(deferredAnimationB, deferredAnimationB2, state3, state4, stateN);
                composer.z(objH4);
            }
            composer.Q();
            ExpandShrinkModifier expandShrinkModifier = (ExpandShrinkModifier) objH4;
            if (this.$transition.g() == this.$transition.m()) {
                expandShrinkModifier.d(null);
            } else if (expandShrinkModifier.a() == null) {
                Alignment alignmentO = (Alignment) stateN.getValue();
                if (alignmentO == null) {
                    alignmentO = Alignment.Companion.o();
                }
                expandShrinkModifier.d(alignmentO);
            }
            ChangeSize value6 = this.$expand.getValue();
            composed = composed.B(((value6 == null || value6.c()) && ((value = this.$shrink.getValue()) == null || value.c())) ? ClipKt.b(Modifier.Companion) : Modifier.Companion).B(expandShrinkModifier);
        }
        composer.Q();
        return composed;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }

    private static final boolean b(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    private static final void c(MutableState<Boolean> mutableState, boolean z6) {
        mutableState.setValue(Boolean.valueOf(z6));
    }
}
