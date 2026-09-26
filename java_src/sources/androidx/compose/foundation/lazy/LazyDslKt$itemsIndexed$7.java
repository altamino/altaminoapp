package androidx.compose.foundation.lazy;

import e8.l;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class LazyDslKt$itemsIndexed$7 extends v implements l<Integer, Object> {
    final /* synthetic */ p<Integer, Object, Object> $contentType;
    final /* synthetic */ Object[] $items;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LazyDslKt$itemsIndexed$7(p<? super Integer, Object, ? extends Object> pVar, Object[] objArr) {
        super(1);
        this.$contentType = pVar;
        this.$items = objArr;
    }

    @Nullable
    public final Object b(int i10) {
        return this.$contentType.invoke(Integer.valueOf(i10), this.$items[i10]);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Object invoke(Integer num) {
        return b(num.intValue());
    }
}
