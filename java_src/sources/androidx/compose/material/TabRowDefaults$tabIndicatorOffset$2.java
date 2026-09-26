package androidx.compose.material;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.State;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Dp;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
final class TabRowDefaults$tabIndicatorOffset$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ TabPosition $currentTabPosition;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TabRowDefaults$tabIndicatorOffset$2(TabPosition tabPosition) {
        super(3);
        this.$currentTabPosition = tabPosition;
    }

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(-398757863);
        State<Dp> stateC = AnimateAsStateKt.c(this.$currentTabPosition.c(), AnimationSpecKt.k(250, 0, EasingKt.a(), 2, null), null, composer, 0, 4);
        Modifier modifierD = SizeKt.D(OffsetKt.c(SizeKt.H(SizeKt.n(composed, 0.0f, 1, null), Alignment.Companion.d(), false, 2, null), c(AnimateAsStateKt.c(this.$currentTabPosition.a(), AnimationSpecKt.k(250, 0, EasingKt.a(), 2, null), null, composer, 0, 4)), 0.0f, 2, null), b(stateC));
        composer.Q();
        return modifierD;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }

    private static final float b(State<Dp> state) {
        return state.getValue().l();
    }

    private static final float c(State<Dp> state) {
        return state.getValue().l();
    }
}
