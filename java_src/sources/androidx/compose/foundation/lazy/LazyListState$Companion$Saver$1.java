package androidx.compose.foundation.lazy;

import androidx.compose.runtime.saveable.SaverScope;
import e8.p;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
final class LazyListState$Companion$Saver$1 extends v implements p<SaverScope, LazyListState, List<? extends Integer>> {
    public static final LazyListState$Companion$Saver$1 INSTANCE = new LazyListState$Companion$Saver$1();

    LazyListState$Companion$Saver$1() {
        super(2);
    }

    @Override // e8.p
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final List<Integer> invoke(@NotNull SaverScope listSaver, @NotNull LazyListState it) {
        t.j(listSaver, "$this$listSaver");
        t.j(it, "it");
        return kotlin.collections.v.p(Integer.valueOf(it.j()), Integer.valueOf(it.k()));
    }
}
