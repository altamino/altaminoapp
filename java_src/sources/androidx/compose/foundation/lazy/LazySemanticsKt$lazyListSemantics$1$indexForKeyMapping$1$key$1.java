package androidx.compose.foundation.lazy;

import e8.l;
import kotlin.jvm.internal.q;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
/* synthetic */ class LazySemanticsKt$lazyListSemantics$1$indexForKeyMapping$1$key$1 extends q implements l<Integer, Object> {
    LazySemanticsKt$lazyListSemantics$1$indexForKeyMapping$1$key$1(Object obj) {
        super(1, obj, LazyListItemProvider.class, "getKey", "getKey(I)Ljava/lang/Object;", 0);
    }

    @NotNull
    public final Object a(int i10) {
        return ((LazyListItemProvider) this.receiver).d(i10);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Object invoke(Integer num) {
        return a(num.intValue());
    }
}
