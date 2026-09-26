package androidx.compose.foundation.lazy;

import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class LazyDslKt$itemsIndexed$$inlined$itemsIndexed$default$2 extends v implements l<Integer, Object> {
    final /* synthetic */ Object[] $items;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyDslKt$itemsIndexed$$inlined$itemsIndexed$default$2(Object[] objArr) {
        super(1);
        this.$items = objArr;
    }

    @Nullable
    public final Object b(int i10) {
        Object obj = this.$items[i10];
        return null;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Object invoke(Integer num) {
        return b(num.intValue());
    }
}
