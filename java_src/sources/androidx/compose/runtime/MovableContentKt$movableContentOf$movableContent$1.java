package androidx.compose.runtime;

import e8.p;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class MovableContentKt$movableContentOf$movableContent$1 extends v implements q<l0, Composer, Integer, l0> {
    final /* synthetic */ p<Composer, Integer, l0> $content;

    @Composable
    public final void a(@NotNull l0 it, @Nullable Composer composer, int i10) {
        t.j(it, "it");
        if ((i10 & 81) == 16 && composer.b()) {
            composer.g();
        } else {
            this.$content.invoke(composer, 0);
        }
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(l0 l0Var, Composer composer, Integer num) {
        a(l0Var, composer, num.intValue());
        return l0.INSTANCE;
    }
}
