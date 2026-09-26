package androidx.compose.ui.node;

import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class LayoutTreeConsistencyChecker {

    @NotNull
    private final List<LayoutNode> postponedMeasureRequests;

    @NotNull
    private final DepthSortedSet relayoutNodes;

    @NotNull
    private final LayoutNode root;

    public LayoutTreeConsistencyChecker(@NotNull LayoutNode root, @NotNull DepthSortedSet relayoutNodes, @NotNull List<LayoutNode> postponedMeasureRequests) {
        t.j(root, "root");
        t.j(relayoutNodes, "relayoutNodes");
        t.j(postponedMeasureRequests, "postponedMeasureRequests");
        this.root = root;
        this.relayoutNodes = relayoutNodes;
        this.postponedMeasureRequests = postponedMeasureRequests;
    }

    private final String d() {
        StringBuilder sb = new StringBuilder();
        sb.append("Tree state:");
        t.i(sb, "append(value)");
        sb.append('\n');
        t.i(sb, "append('\\n')");
        e(this, sb, this.root, 0);
        String string = sb.toString();
        t.i(string, "stringBuilder.toString()");
        return string;
    }

    private final String f(LayoutNode layoutNode) {
        StringBuilder sb = new StringBuilder();
        sb.append(layoutNode);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(kotlinx.serialization.json.internal.b.BEGIN_LIST);
        sb2.append(layoutNode.g0());
        sb2.append(kotlinx.serialization.json.internal.b.END_LIST);
        sb.append(sb2.toString());
        if (!layoutNode.i()) {
            sb.append("[!isPlaced]");
        }
        sb.append("[measuredByParent=" + layoutNode.l0() + kotlinx.serialization.json.internal.b.END_LIST);
        if (!b(layoutNode)) {
            sb.append("[INCONSISTENT]");
        }
        String string = sb.toString();
        t.i(string, "with(StringBuilder()) {\n…     toString()\n        }");
        return string;
    }

    public final void a() {
        if (!c(this.root)) {
            System.out.println((Object) d());
            throw new IllegalStateException("Inconsistency found!");
        }
    }

    private final boolean b(LayoutNode layoutNode) {
        LayoutNode.LayoutState layoutStateG0;
        LayoutNode layoutNodeT0 = layoutNode.t0();
        if (!layoutNode.i() && (layoutNode.u0() == Integer.MAX_VALUE || layoutNodeT0 == null || !layoutNodeT0.i())) {
            return true;
        }
        if (layoutNode.i0() && this.postponedMeasureRequests.contains(layoutNode)) {
            return true;
        }
        if (layoutNodeT0 != null) {
            layoutStateG0 = layoutNodeT0.g0();
        } else {
            layoutStateG0 = null;
        }
        if (layoutNode.i0()) {
            if (this.relayoutNodes.b(layoutNode)) {
                return true;
            }
            if ((layoutNodeT0 != null && layoutNodeT0.i0()) || layoutStateG0 == LayoutNode.LayoutState.Measuring) {
                return true;
            }
            return false;
        }
        if (!layoutNode.f0() || this.relayoutNodes.b(layoutNode)) {
            return true;
        }
        if (layoutNodeT0 != null && layoutNodeT0.i0()) {
            return true;
        }
        if ((layoutNodeT0 != null && layoutNodeT0.f0()) || layoutStateG0 == LayoutNode.LayoutState.Measuring || layoutStateG0 == LayoutNode.LayoutState.LayingOut) {
            return true;
        }
        return false;
    }

    private final boolean c(LayoutNode layoutNode) {
        if (!b(layoutNode)) {
            return false;
        }
        List<LayoutNode> listS = layoutNode.S();
        int size = listS.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (!c(listS.get(i10))) {
                return false;
            }
        }
        return true;
    }

    private static final void e(LayoutTreeConsistencyChecker layoutTreeConsistencyChecker, StringBuilder sb, LayoutNode layoutNode, int i10) {
        String strF = layoutTreeConsistencyChecker.f(layoutNode);
        if (strF.length() > 0) {
            for (int i11 = 0; i11 < i10; i11++) {
                sb.append("..");
            }
            sb.append(strF);
            t.i(sb, "append(value)");
            sb.append('\n');
            t.i(sb, "append('\\n')");
            i10++;
        }
        List<LayoutNode> listS = layoutNode.S();
        int size = listS.size();
        for (int i12 = 0; i12 < size; i12++) {
            e(layoutTreeConsistencyChecker, sb, listS.get(i12), i10);
        }
    }
}
