package androidx.compose.ui.node;

import java.util.Comparator;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class TreeSet<E> extends java.util.TreeSet<E> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TreeSet(@NotNull Comparator<? super E> comparator) {
        super(comparator);
        t.j(comparator, "comparator");
    }

    public /* bridge */ int c() {
        return super.size();
    }

    @Override // java.util.TreeSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ int size() {
        return c();
    }
}
