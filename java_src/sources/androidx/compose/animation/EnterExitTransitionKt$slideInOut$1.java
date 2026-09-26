package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.IntOffset;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class EnterExitTransitionKt$slideInOut$1 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ String $labelPrefix;
    final /* synthetic */ State<Slide> $slideIn;
    final /* synthetic */ State<Slide> $slideOut;
    final /* synthetic */ Transition<EnterExitState> $transition;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    EnterExitTransitionKt$slideInOut$1(Transition<EnterExitState> transition, State<Slide> state, State<Slide> state2, String str) {
        super(3);
        this.$transition = transition;
        this.$slideIn = state;
        this.$slideOut = state2;
        this.$labelPrefix = str;
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(158379472);
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
        } else if (this.$slideIn.getValue() != null || this.$slideOut.getValue() != null) {
            c(mutableState, true);
        }
        if (b(mutableState)) {
            Transition<EnterExitState> transition2 = this.$transition;
            TwoWayConverter<IntOffset, AnimationVector2D> twoWayConverterG = VectorConvertersKt.g(IntOffset.Companion);
            String str = this.$labelPrefix;
            composer.G(-492369756);
            Object objH2 = composer.H();
            Composer.Companion companion = Composer.Companion;
            if (objH2 == companion.a()) {
                objH2 = str + " slide";
                composer.z(objH2);
            }
            composer.Q();
            Transition.DeferredAnimation deferredAnimationB = androidx.compose.animation.core.TransitionKt.b(transition2, twoWayConverterG, (String) objH2, composer, 448, 0);
            Transition<EnterExitState> transition3 = this.$transition;
            State<Slide> state = this.$slideIn;
            State<Slide> state2 = this.$slideOut;
            composer.G(1157296644);
            boolean zK2 = composer.k(transition3);
            Object objH3 = composer.H();
            if (zK2 || objH3 == companion.a()) {
                objH3 = new SlideModifier(deferredAnimationB, state, state2);
                composer.z(objH3);
            }
            composer.Q();
            composed = composed.B((SlideModifier) objH3);
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
