package androidx.compose.runtime;

import e8.q;
import e8.r;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.u;

/* JADX INFO: loaded from: classes.dex */
final class MovableContentKt$movableContentOf$movableContent$2 extends v implements q<u<Object, Object>, Composer, Integer, l0> {
    final /* synthetic */ r<Object, Object, Composer, Integer, l0> $content;

    @Composable
    public final void a(@NotNull u<Object, Object> it, @Nullable Composer composer, int i10) {
        t.j(it, "it");
        if ((i10 & 14) == 0) {
            i10 |= composer.k(it) ? 4 : 2;
        }
        if ((i10 & 91) == 18 && composer.b()) {
            composer.g();
        } else {
            this.$content.invoke(it.c(), it.d(), composer, 0);
        }
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(u<Object, Object> uVar, Composer composer, Integer num) {
        a(uVar, composer, num.intValue());
        return l0.INSTANCE;
    }
}
