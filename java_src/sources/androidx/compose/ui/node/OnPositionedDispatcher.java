package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import java.util.Comparator;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public final class OnPositionedDispatcher {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private final MutableVector<LayoutNode> layoutNodes = new MutableVector<>(new LayoutNode[16], 0);

    public static final class Companion {

        private static final class DepthComparator implements Comparator<LayoutNode> {

            @NotNull
            public static final DepthComparator INSTANCE = new DepthComparator();

            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(@NotNull LayoutNode a7, @NotNull LayoutNode b7) {
                t.j(a7, "a");
                t.j(b7, "b");
                int iL = t.l(b7.U(), a7.U());
                return iL != 0 ? iL : t.l(a7.hashCode(), b7.hashCode());
            }

            private DepthComparator() {
            }
        }

        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final void a() {
        this.layoutNodes.z(Companion.DepthComparator.INSTANCE);
        MutableVector<LayoutNode> mutableVector = this.layoutNodes;
        int iN = mutableVector.n();
        if (iN > 0) {
            int i10 = iN - 1;
            LayoutNode[] layoutNodeArrM = mutableVector.m();
            do {
                LayoutNode layoutNode = layoutNodeArrM[i10];
                if (layoutNode.p0()) {
                    b(layoutNode);
                }
                i10--;
            } while (i10 >= 0);
        }
        this.layoutNodes.h();
    }

    public final void c(@NotNull LayoutNode node) {
        t.j(node, "node");
        this.layoutNodes.b(node);
        node.s1(true);
    }

    public final void d(@NotNull LayoutNode rootNode) {
        t.j(rootNode, "rootNode");
        this.layoutNodes.h();
        this.layoutNodes.b(rootNode);
        rootNode.s1(true);
    }

    private final void b(LayoutNode layoutNode) {
        layoutNode.N();
        int i10 = 0;
        layoutNode.s1(false);
        MutableVector<LayoutNode> mutableVectorZ0 = layoutNode.z0();
        int iN = mutableVectorZ0.n();
        if (iN > 0) {
            LayoutNode[] layoutNodeArrM = mutableVectorZ0.m();
            do {
                b(layoutNodeArrM[i10]);
                i10++;
            } while (i10 < iN);
        }
    }
}
