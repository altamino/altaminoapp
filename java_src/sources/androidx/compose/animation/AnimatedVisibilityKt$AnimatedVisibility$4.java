package androidx.compose.animation;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class AnimatedVisibilityKt$AnimatedVisibility$4 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ q<AnimatedVisibilityScope, Composer, Integer, l0> $content;
    final /* synthetic */ EnterTransition $enter;
    final /* synthetic */ ExitTransition $exit;
    final /* synthetic */ String $label;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ RowScope $this_AnimatedVisibility;
    final /* synthetic */ boolean $visible;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    AnimatedVisibilityKt$AnimatedVisibility$4(RowScope rowScope, boolean z6, Modifier modifier, EnterTransition enterTransition, ExitTransition exitTransition, String str, q<? super AnimatedVisibilityScope, ? super Composer, ? super Integer, l0> qVar, int i10, int i11) {
        super(2);
        this.$this_AnimatedVisibility = rowScope;
        this.$visible = z6;
        this.$modifier = modifier;
        this.$enter = enterTransition;
        this.$exit = exitTransition;
        this.$label = str;
        this.$content = qVar;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        AnimatedVisibilityKt.g(this.$this_AnimatedVisibility, this.$visible, this.$modifier, this.$enter, this.$exit, this.$label, this.$content, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
