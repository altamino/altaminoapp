package androidx.compose.animation;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
final class AnimatedVisibilityScope$animateEnterExit$2 extends v implements q<Modifier, Composer, Integer, Modifier> {
    final /* synthetic */ EnterTransition $enter;
    final /* synthetic */ ExitTransition $exit;
    final /* synthetic */ String $label;
    final /* synthetic */ AnimatedVisibilityScope this$0;

    @Composable
    @NotNull
    public final Modifier a(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
        t.j(composed, "$this$composed");
        composer.G(1840112047);
        Modifier modifierB = composed.B(EnterExitTransitionKt.g(this.this$0.a(), this.$enter, this.$exit, this.$label, composer, 0));
        composer.Q();
        return modifierB;
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
        return a(modifier, composer, num.intValue());
    }
}
