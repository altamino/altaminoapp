package androidx.compose.foundation.lazy;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import e8.r;
import e8.s;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
public final class LazyDslKt$itemsIndexed$8 extends v implements r<LazyItemScope, Integer, Composer, Integer, l0> {
    final /* synthetic */ s<LazyItemScope, Integer, Object, Composer, Integer, l0> $itemContent;
    final /* synthetic */ Object[] $items;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LazyDslKt$itemsIndexed$8(s<? super LazyItemScope, ? super Integer, Object, ? super Composer, ? super Integer, l0> sVar, Object[] objArr) {
        super(4);
        this.$itemContent = sVar;
        this.$items = objArr;
    }

    @Composable
    public final void a(@NotNull LazyItemScope items, int i10, @Nullable Composer composer, int i11) {
        int i12;
        t.j(items, "$this$items");
        if ((i11 & 14) == 0) {
            i12 = (composer.k(items) ? 4 : 2) | i11;
        } else {
            i12 = i11;
        }
        if ((i11 & 112) == 0) {
            i12 |= composer.p(i10) ? 32 : 16;
        }
        if ((i12 & 731) == 146 && composer.b()) {
            composer.g();
        } else {
            this.$itemContent.invoke(items, Integer.valueOf(i10), this.$items[i10], composer, Integer.valueOf((i12 & 14) | (i12 & 112)));
        }
    }

    @Override // e8.r
    public /* bridge */ /* synthetic */ l0 invoke(LazyItemScope lazyItemScope, Integer num, Composer composer, Integer num2) {
        a(lazyItemScope, num.intValue(), composer, num2.intValue());
        return l0.INSTANCE;
    }
}
