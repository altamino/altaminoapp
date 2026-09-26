package androidx.compose.ui.semantics;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeWrapper;
import e8.l;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.d0;
import kotlin.collections.z;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class SemanticsSortKt {
    @Nullable
    public static final LayoutNode a(@NotNull LayoutNode layoutNode, @NotNull l<? super LayoutNode, Boolean> predicate) {
        t.j(layoutNode, "<this>");
        t.j(predicate, "predicate");
        if (predicate.invoke(layoutNode).booleanValue()) {
            return layoutNode;
        }
        List<LayoutNode> listS = layoutNode.S();
        int size = listS.size();
        for (int i10 = 0; i10 < size; i10++) {
            LayoutNode layoutNodeA = a(listS.get(i10), predicate);
            if (layoutNodeA != null) {
                return layoutNodeA;
            }
        }
        return null;
    }

    @NotNull
    public static final List<SemanticsEntity> b(@NotNull LayoutNode layoutNode, @NotNull List<SemanticsEntity> list) {
        t.j(layoutNode, "<this>");
        t.j(list, "list");
        if (!layoutNode.K0()) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        List<LayoutNode> listS = layoutNode.S();
        int size = listS.size();
        for (int i10 = 0; i10 < size; i10++) {
            LayoutNode layoutNode2 = listS.get(i10);
            if (layoutNode2.K0()) {
                arrayList.add(new NodeLocationHolder(layoutNode, layoutNode2));
            }
        }
        List<NodeLocationHolder> listD = d(arrayList);
        ArrayList arrayList2 = new ArrayList(listD.size());
        int size2 = listD.size();
        for (int i11 = 0; i11 < size2; i11++) {
            arrayList2.add(listD.get(i11).c());
        }
        int size3 = arrayList2.size();
        for (int i12 = 0; i12 < size3; i12++) {
            LayoutNode layoutNode3 = (LayoutNode) arrayList2.get(i12);
            SemanticsEntity semanticsEntityJ = SemanticsNodeKt.j(layoutNode3);
            if (semanticsEntityJ != null) {
                list.add(semanticsEntityJ);
            } else {
                b(layoutNode3, list);
            }
        }
        return list;
    }

    public static /* synthetic */ List c(LayoutNode layoutNode, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = new ArrayList();
        }
        return b(layoutNode, list);
    }

    private static final List<NodeLocationHolder> d(List<NodeLocationHolder> list) {
        try {
            NodeLocationHolder.Companion.a(NodeLocationHolder.ComparisonStrategy.Stripe);
            List<NodeLocationHolder> listW0 = d0.W0(list);
            z.B(listW0);
            return listW0;
        } catch (IllegalArgumentException unused) {
            NodeLocationHolder.Companion.a(NodeLocationHolder.ComparisonStrategy.Location);
            List<NodeLocationHolder> listW1 = d0.W0(list);
            z.B(listW1);
            return listW1;
        }
    }

    @NotNull
    public static final LayoutNodeWrapper e(@NotNull LayoutNode layoutNode) {
        LayoutNodeWrapper layoutNodeWrapperB;
        t.j(layoutNode, "<this>");
        SemanticsEntity semanticsEntityI = SemanticsNodeKt.i(layoutNode);
        if (semanticsEntityI == null) {
            semanticsEntityI = SemanticsNodeKt.j(layoutNode);
        }
        return (semanticsEntityI == null || (layoutNodeWrapperB = semanticsEntityI.b()) == null) ? layoutNode.c0() : layoutNodeWrapperB;
    }
}
