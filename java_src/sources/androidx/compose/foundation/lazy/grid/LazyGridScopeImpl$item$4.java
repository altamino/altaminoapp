package androidx.compose.foundation.lazy.grid;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import e8.q;
import e8.r;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
final class LazyGridScopeImpl$item$4 extends v implements r<LazyGridItemScope, Integer, Composer, Integer, l0> {
    final /* synthetic */ q<LazyGridItemScope, Composer, Integer, l0> $content;

    @Composable
    public final void a(@NotNull LazyGridItemScope $receiver, int i10, @Nullable Composer composer, int i11) {
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
    public /* bridge */ /* synthetic */ l0 invoke(LazyGridItemScope lazyGridItemScope, Integer num, Composer composer, Integer num2) {
        a(lazyGridItemScope, num.intValue(), composer, num2.intValue());
        return l0.INSTANCE;
    }
}
