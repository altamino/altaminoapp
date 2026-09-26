package androidx.compose.foundation;

import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableDefaults;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.LayoutDirection;
import e8.q;
import kotlin.coroutines.h;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
final class ScrollKt$scroll$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ FlingBehavior $flingBehavior;
    final /* synthetic */ boolean $isScrollable;
    final /* synthetic */ boolean $isVertical;
    final /* synthetic */ boolean $reverseScrolling;
    final /* synthetic */ ScrollState $state;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ScrollKt$scroll$2(boolean z6, ScrollState scrollState, boolean z10, FlingBehavior flingBehavior, boolean z11) {
        super(3);
        this.$isVertical = z6;
        this.$state = scrollState;
        this.$isScrollable = z10;
        this.$flingBehavior = flingBehavior;
        this.$reverseScrolling = z11;
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(1478351300);
        OverscrollEffect overscrollEffectB = ScrollableDefaults.INSTANCE.b(composer, 6);
        composer.G(773894976);
        composer.G(-492369756);
        Object objH = composer.H();
        if (objH == Composer.Companion.a()) {
            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composer));
            composer.z(compositionScopedCoroutineScopeCanceller);
            objH = compositionScopedCoroutineScopeCanceller;
        }
        composer.Q();
        o0 o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
        composer.Q();
        Modifier.Companion companion = Modifier.Companion;
        Modifier modifierC = SemanticsModifierKt.c(companion, false, new ScrollKt$scroll$2$semantics$1(this.$reverseScrolling, this.$isVertical, this.$isScrollable, this.$state, o0VarA), 1, null);
        boolean z6 = this.$isVertical;
        Orientation orientation = z6 ? Orientation.Vertical : Orientation.Horizontal;
        boolean z10 = this.$reverseScrolling;
        Modifier modifierB = OverscrollKt.a(ClipScrollableContainerKt.a(modifierC, orientation), overscrollEffectB).B(ScrollableKt.h(companion, this.$state, orientation, overscrollEffectB, this.$isScrollable, (composer.x(CompositionLocalsKt.j()) != LayoutDirection.Rtl || z6) ? !z10 : z10, this.$flingBehavior, this.$state.i())).B(new ScrollingLayoutModifier(this.$state, this.$reverseScrolling, this.$isVertical, overscrollEffectB));
        composer.Q();
        return modifierB;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
