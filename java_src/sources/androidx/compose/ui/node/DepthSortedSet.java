package androidx.compose.ui.node;

import java.util.Comparator;
import java.util.Map;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.m;
import w7.o;
import w7.q;

/* JADX INFO: loaded from: classes8.dex */
public final class DepthSortedSet {

    @NotNull
    private final Comparator<LayoutNode> DepthComparator;
    private final boolean extraAssertions;

    @NotNull
    private final m mapOfOriginalDepth$delegate;

    @NotNull
    private final TreeSet<LayoutNode> set;

    public DepthSortedSet() {
        this(false, 1, null);
    }

    public DepthSortedSet(boolean z6) {
        this.extraAssertions = z6;
        this.mapOfOriginalDepth$delegate = o.b(q.NONE, DepthSortedSet$mapOfOriginalDepth$2.INSTANCE);
        Comparator<LayoutNode> comparator = new Comparator<LayoutNode>() { // from class: androidx.compose.ui.node.DepthSortedSet$DepthComparator$1
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(@NotNull LayoutNode l1, @NotNull LayoutNode l6) {
                t.j(l1, "l1");
                t.j(l6, "l2");
                int iL = t.l(l1.U(), l6.U());
                return iL != 0 ? iL : t.l(l1.hashCode(), l6.hashCode());
            }
        };
        this.DepthComparator = comparator;
        this.set = new TreeSet<>(comparator);
    }

    private final Map<LayoutNode, Integer> c() {
        return (Map) this.mapOfOriginalDepth$delegate.getValue();
    }

    public final void a(@NotNull LayoutNode node) {
        t.j(node, "node");
        if (!node.K0()) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (this.extraAssertions) {
            Integer num = c().get(node);
            if (num == null) {
                c().put(node, Integer.valueOf(node.U()));
            } else {
                if (num.intValue() != node.U()) {
                    throw new IllegalStateException("Check failed.".toString());
                }
            }
        }
        this.set.add(node);
    }

    public final boolean b(@NotNull LayoutNode node) {
        t.j(node, "node");
        boolean zContains = this.set.contains(node);
        if (!this.extraAssertions || zContains == c().containsKey(node)) {
            return zContains;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    public final boolean d() {
        return this.set.isEmpty();
    }

    @NotNull
    public final LayoutNode e() {
        LayoutNode node = this.set.first();
        t.i(node, "node");
        f(node);
        return node;
    }

    public final boolean f(@NotNull LayoutNode node) {
        t.j(node, "node");
        if (!node.K0()) {
            throw new IllegalStateException("Check failed.".toString());
        }
        boolean zRemove = this.set.remove(node);
        if (this.extraAssertions) {
            Integer numRemove = c().remove(node);
            if (zRemove) {
                int iU = node.U();
                if (numRemove == null || numRemove.intValue() != iU) {
                    throw new IllegalStateException("Check failed.".toString());
                }
            } else if (numRemove != null) {
                throw new IllegalStateException("Check failed.".toString());
            }
        }
        return zRemove;
    }

    @NotNull
    public String toString() {
        String string = this.set.toString();
        t.i(string, "set.toString()");
        return string;
    }

    public /* synthetic */ DepthSortedSet(boolean z6, int i10, k kVar) {
        this((i10 & 1) != 0 ? true : z6);
    }
}
