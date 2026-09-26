package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class CrossfadeKt$Crossfade$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ FiniteAnimationSpec<Float> $animationSpec;
    final /* synthetic */ q<T, Composer, Integer, l0> $content;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ T $targetState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    CrossfadeKt$Crossfade$1(T t5, Modifier modifier, FiniteAnimationSpec<Float> finiteAnimationSpec, q<? super T, ? super Composer, ? super Integer, l0> qVar, int i10, int i11) {
        super(2);
        this.$targetState = t5;
        this.$modifier = modifier;
        this.$animationSpec = finiteAnimationSpec;
        this.$content = qVar;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        CrossfadeKt.b(this.$targetState, this.$modifier, this.$animationSpec, this.$content, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
