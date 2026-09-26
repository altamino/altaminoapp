package androidx.compose.foundation.lazy.grid;

import e8.l;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class LazyGridState$Companion$Saver$2 extends v implements l<List<? extends Integer>, LazyGridState> {
    public static final LazyGridState$Companion$Saver$2 INSTANCE = new LazyGridState$Companion$Saver$2();

    LazyGridState$Companion$Saver$2() {
        super(1);
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final LazyGridState invoke(@NotNull List<Integer> it) {
        t.j(it, "it");
        return new LazyGridState(it.get(0).intValue(), it.get(1).intValue());
    }
}
