package androidx.compose.foundation.lazy;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import e8.q;
import e8.r;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class LazyListScopeImpl$item$3 extends v implements r<LazyItemScope, Integer, Composer, Integer, l0> {
    final /* synthetic */ q<LazyItemScope, Composer, Integer, l0> $content;

    @Composable
    public final void a(@NotNull LazyItemScope $receiver, int i10, @Nullable Composer composer, int i11) {
        t.j($receiver, "$this$$receiver");
        if ((i11 & 14) == 0) {
            i11 |= composer.k($receiver) ? 4 : 2;
        }
        if ((i11 & 651) == 130 && composer.b()) {
            composer.g();
        } else {
            this.$content.invoke($receiver, composer, Integer.valueOf(i11 & 14));
        }
    }

    @Override // e8.r
    public /* bridge */ /* synthetic */ l0 invoke(LazyItemScope lazyItemScope, Integer num, Composer composer, Integer num2) {
        a(lazyItemScope, num.intValue(), composer, num2.intValue());
        return l0.INSTANCE;
    }
}
