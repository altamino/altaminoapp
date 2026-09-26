package androidx.compose.animation;

import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.l;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class AnimatedVisibilityKt$AnimatedEnterExitImpl$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ q<AnimatedVisibilityScope, Composer, Integer, l0> $content;
    final /* synthetic */ EnterTransition $enter;
    final /* synthetic */ ExitTransition $exit;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ Transition<T> $transition;
    final /* synthetic */ l<T, Boolean> $visible;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    AnimatedVisibilityKt$AnimatedEnterExitImpl$2(Transition<T> transition, l<? super T, Boolean> lVar, Modifier modifier, EnterTransition enterTransition, ExitTransition exitTransition, q<? super AnimatedVisibilityScope, ? super Composer, ? super Integer, l0> qVar, int i10) {
        super(2);
        this.$transition = transition;
        this.$visible = lVar;
        this.$modifier = modifier;
        this.$enter = enterTransition;
        this.$exit = exitTransition;
        this.$content = qVar;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        AnimatedVisibilityKt.a(this.$transition, this.$visible, this.$modifier, this.$enter, this.$exit, this.$content, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
