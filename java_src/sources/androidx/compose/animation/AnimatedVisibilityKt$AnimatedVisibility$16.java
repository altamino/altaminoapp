package androidx.compose.animation;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import e8.p;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class AnimatedVisibilityKt$AnimatedVisibility$16 extends v implements q<AnimatedVisibilityScope, Composer, Integer, l0> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ p<Composer, Integer, l0> $content;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    AnimatedVisibilityKt$AnimatedVisibility$16(p<? super Composer, ? super Integer, l0> pVar, int i10) {
        super(3);
        this.$content = pVar;
        this.$$dirty = i10;
    }

    @Composable
    public final void a(@NotNull AnimatedVisibilityScope AnimatedVisibility, @Nullable Composer composer, int i10) {
        t.j(AnimatedVisibility, "$this$AnimatedVisibility");
        if ((i10 & 81) == 16 && composer.b()) {
            composer.g();
        } else {
            this.$content.invoke(composer, Integer.valueOf((this.$$dirty >> 15) & 14));
        }
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(AnimatedVisibilityScope animatedVisibilityScope, Composer composer, Integer num) {
        a(animatedVisibilityScope, composer, num.intValue());
        return l0.INSTANCE;
    }
}
