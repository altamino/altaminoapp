package androidx.compose.foundation.lazy;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
final class LazySemanticsKt$lazyListSemantics$1$indexForKeyMapping$1 extends v implements l<Object, Integer> {
    final /* synthetic */ LazyListItemProvider $itemProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazySemanticsKt$lazyListSemantics$1$indexForKeyMapping$1(LazyListItemProvider lazyListItemProvider) {
        super(1);
        this.$itemProvider = lazyListItemProvider;
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Integer invoke(@NotNull Object needle) {
        t.j(needle, "needle");
        LazySemanticsKt$lazyListSemantics$1$indexForKeyMapping$1$key$1 lazySemanticsKt$lazyListSemantics$1$indexForKeyMapping$1$key$1 = new LazySemanticsKt$lazyListSemantics$1$indexForKeyMapping$1$key$1(this.$itemProvider);
        int iF = this.$itemProvider.f();
        int i10 = 0;
        while (i10 < iF) {
            if (t.e(lazySemanticsKt$lazyListSemantics$1$indexForKeyMapping$1$key$1.invoke(Integer.valueOf(i10)), needle)) {
                return Integer.valueOf(i10);
            }
            i10++;
        }
        i10 = -1;
        return Integer.valueOf(i10);
    }
}
