package androidx.compose.animation;

import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import e8.l;
import e8.p;
import e8.r;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class AnimatedContentKt$AnimatedContent$8 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ r<AnimatedVisibilityScope, S, Composer, Integer, l0> $content;
    final /* synthetic */ Alignment $contentAlignment;
    final /* synthetic */ l<S, Object> $contentKey;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ Transition<S> $this_AnimatedContent;
    final /* synthetic */ l<AnimatedContentScope<S>, ContentTransform> $transitionSpec;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    AnimatedContentKt$AnimatedContent$8(Transition<S> transition, Modifier modifier, l<? super AnimatedContentScope<S>, ContentTransform> lVar, Alignment alignment, l<? super S, ? extends Object> lVar2, r<? super AnimatedVisibilityScope, ? super S, ? super Composer, ? super Integer, l0> rVar, int i10, int i11) {
        super(2);
        this.$this_AnimatedContent = transition;
        this.$modifier = modifier;
        this.$transitionSpec = lVar;
        this.$contentAlignment = alignment;
        this.$contentKey = lVar2;
        this.$content = rVar;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        AnimatedContentKt.a(this.$this_AnimatedContent, this.$modifier, this.$transitionSpec, this.$contentAlignment, this.$contentKey, this.$content, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
