package androidx.compose.foundation.gestures;

import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.ui.Modifier;
import e8.q;
import kotlin.coroutines.h;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
final class ScrollableKt$scrollable$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ FlingBehavior $flingBehavior;
    final /* synthetic */ MutableInteractionSource $interactionSource;
    final /* synthetic */ Orientation $orientation;
    final /* synthetic */ OverscrollEffect $overscrollEffect;
    final /* synthetic */ boolean $reverseDirection;
    final /* synthetic */ ScrollableState $state;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ScrollableKt$scrollable$2(Orientation orientation, ScrollableState scrollableState, boolean z6, MutableInteractionSource mutableInteractionSource, FlingBehavior flingBehavior, OverscrollEffect overscrollEffect, boolean z10) {
        super(3);
        this.$orientation = orientation;
        this.$state = scrollableState;
        this.$reverseDirection = z6;
        this.$interactionSource = mutableInteractionSource;
        this.$flingBehavior = flingBehavior;
        this.$overscrollEffect = overscrollEffect;
        this.$enabled = z10;
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(-629830927);
        composer.G(773894976);
        composer.G(-492369756);
        Object objH = composer.H();
        if (objH == Composer.Companion.a()) {
            Object compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composer));
            composer.z(compositionScopedCoroutineScopeCanceller);
            objH = compositionScopedCoroutineScopeCanceller;
        }
        composer.Q();
        o0 o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
        composer.Q();
        Object[] objArr = {o0VarA, this.$orientation, this.$state, Boolean.valueOf(this.$reverseDirection)};
        Orientation orientation = this.$orientation;
        ScrollableState scrollableState = this.$state;
        boolean z6 = this.$reverseDirection;
        composer.G(-568225417);
        boolean zK = false;
        for (int i11 = 0; i11 < 4; i11++) {
            zK |= composer.k(objArr[i11]);
        }
        Object objH2 = composer.H();
        if (zK || objH2 == Composer.Companion.a()) {
            objH2 = new ContentInViewModifier(o0VarA, orientation, scrollableState, z6);
            composer.z(objH2);
        }
        composer.Q();
        Modifier modifier = Modifier.Companion;
        Modifier modifierG = ScrollableKt.g(FocusableKt.b(modifier).B(((ContentInViewModifier) objH2).g()), this.$interactionSource, this.$orientation, this.$reverseDirection, this.$state, this.$flingBehavior, this.$overscrollEffect, this.$enabled, composer, 0);
        if (this.$enabled) {
            modifier = ModifierLocalScrollableContainerProvider.INSTANCE;
        }
        Modifier modifierB = modifierG.B(modifier);
        composer.Q();
        return modifierB;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
