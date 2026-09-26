package androidx.compose.runtime;

import e8.q;
import e8.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.u;

/* JADX INFO: loaded from: classes10.dex */
final class MovableContentKt$movableContentWithReceiverOf$movableContent$4 extends v implements q<u<? extends u<Object, Object>, ? extends u<Object, Object>>, Composer, Integer, l0> {
    final /* synthetic */ t<Object, Object, Object, Object, Composer, Integer, l0> $content;

    @Composable
    public final void a(@NotNull u<? extends u<Object, Object>, ? extends u<Object, Object>> it, @Nullable Composer composer, int i10) {
        kotlin.jvm.internal.t.j(it, "it");
        this.$content.invoke(it.c().c(), it.c().d(), it.d().c(), it.d().d(), composer, 0);
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(u<? extends u<Object, Object>, ? extends u<Object, Object>> uVar, Composer composer, Integer num) {
        a(uVar, composer, num.intValue());
        return l0.INSTANCE;
    }
}
