package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.IntervalList;
import e8.l;
import java.util.HashMap;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class LazyListItemProviderImplKt$generateKeyToIndexMap$1$1 extends v implements l<IntervalList.Interval<LazyListIntervalContent>, l0> {
    final /* synthetic */ int $first;
    final /* synthetic */ int $last;
    final /* synthetic */ HashMap<Object, Integer> $map;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazyListItemProviderImplKt$generateKeyToIndexMap$1$1(int i10, int i11, HashMap<Object, Integer> map) {
        super(1);
        this.$first = i10;
        this.$last = i11;
        this.$map = map;
    }

    public final void a(@NotNull IntervalList.Interval<LazyListIntervalContent> it) {
        t.j(it, "it");
        if (it.c().b() == null) {
            return;
        }
        l<Integer, Object> lVarB = it.c().b();
        if (lVarB == null) {
            throw new IllegalArgumentException("Required value was null.".toString());
        }
        int iMax = Math.max(this.$first, it.b());
        int iMin = Math.min(this.$last, (it.b() + it.a()) - 1);
        if (iMax > iMin) {
            return;
        }
        while (true) {
            this.$map.put(lVarB.invoke(Integer.valueOf(iMax - it.b())), Integer.valueOf(iMax));
            if (iMax == iMin) {
                return;
            } else {
                iMax++;
            }
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(IntervalList.Interval<LazyListIntervalContent> interval) {
        a(interval);
        return l0.INSTANCE;
    }
}
