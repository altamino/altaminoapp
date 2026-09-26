package androidx.compose.foundation.lazy.grid;

import androidx.compose.runtime.saveable.SaverScope;
import e8.p;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class LazyGridState$Companion$Saver$1 extends v implements p<SaverScope, LazyGridState, List<? extends Integer>> {
    public static final LazyGridState$Companion$Saver$1 INSTANCE = new LazyGridState$Companion$Saver$1();

    LazyGridState$Companion$Saver$1() {
        super(2);
    }

    @Override // e8.p
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final List<Integer> invoke(@NotNull SaverScope listSaver, @NotNull LazyGridState it) {
        t.j(listSaver, "$this$listSaver");
        t.j(it, "it");
        return kotlin.collections.v.p(Integer.valueOf(it.j()), Integer.valueOf(it.k()));
    }
}
