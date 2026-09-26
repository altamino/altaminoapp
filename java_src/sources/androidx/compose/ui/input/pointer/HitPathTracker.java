package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.layout.LayoutCoordinates;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class HitPathTracker {

    @NotNull
    private final NodeParent root;

    @NotNull
    private final LayoutCoordinates rootCoordinates;

    public HitPathTracker(@NotNull LayoutCoordinates rootCoordinates) {
        t.j(rootCoordinates, "rootCoordinates");
        this.rootCoordinates = rootCoordinates;
        this.root = new NodeParent();
    }

    public final void a(long j6, @NotNull List<? extends PointerInputFilter> pointerInputFilters) {
        Node node;
        t.j(pointerInputFilters, "pointerInputFilters");
        NodeParent nodeParent = this.root;
        int size = pointerInputFilters.size();
        boolean z6 = true;
        for (int i10 = 0; i10 < size; i10++) {
            PointerInputFilter pointerInputFilter = pointerInputFilters.get(i10);
            if (z6) {
                MutableVector<Node> mutableVectorG = nodeParent.g();
                int iN = mutableVectorG.n();
                if (iN <= 0) {
                    node = null;
                    break;
                }
                Node[] nodeArrM = mutableVectorG.m();
                int i11 = 0;
                while (true) {
                    node = nodeArrM[i11];
                    if (t.e(node.k(), pointerInputFilter)) {
                        break;
                    }
                    i11++;
                    if (i11 >= iN) {
                        node = null;
                        break;
                    }
                }
                Node node2 = node;
                if (node2 != null) {
                    node2.m();
                    if (!node2.j().i(PointerId.a(j6))) {
                        node2.j().b(PointerId.a(j6));
                    }
                    nodeParent = node2;
                } else {
                    z6 = false;
                    Node node3 = new Node(pointerInputFilter);
                    node3.j().b(PointerId.a(j6));
                    nodeParent.g().b(node3);
                    nodeParent = node3;
                }
            } else {
                Node node4 = new Node(pointerInputFilter);
                node4.j().b(PointerId.a(j6));
                nodeParent.g().b(node4);
                nodeParent = node4;
            }
        }
    }

    public final boolean b(@NotNull InternalPointerEvent internalPointerEvent, boolean z6) {
        t.j(internalPointerEvent, "internalPointerEvent");
        if (this.root.a(internalPointerEvent.a(), this.rootCoordinates, internalPointerEvent, z6)) {
            return this.root.e(internalPointerEvent) || this.root.f(internalPointerEvent.a(), this.rootCoordinates, internalPointerEvent, z6);
        }
        return false;
    }

    public final void c() {
        this.root.d();
        this.root.c();
    }

    public final void d() {
        this.root.h();
    }
}
