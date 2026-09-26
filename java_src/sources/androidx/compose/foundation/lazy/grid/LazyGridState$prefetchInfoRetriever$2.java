package androidx.compose.foundation.lazy.grid;

import androidx.compose.ui.unit.Constraints;
import e8.l;
import java.util.List;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.u;

/* JADX INFO: loaded from: classes2.dex */
final class LazyGridState$prefetchInfoRetriever$2 extends v implements l<LineIndex, List<? extends u<? extends Integer, ? extends Constraints>>> {
    public static final LazyGridState$prefetchInfoRetriever$2 INSTANCE = new LazyGridState$prefetchInfoRetriever$2();

    LazyGridState$prefetchInfoRetriever$2() {
        super(1);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ List<? extends u<? extends Integer, ? extends Constraints>> invoke(LineIndex lineIndex) {
        return b(lineIndex.g());
    }

    @NotNull
    public final List<u<Integer, Constraints>> b(int i10) {
        return kotlin.collections.v.m();
    }
}
