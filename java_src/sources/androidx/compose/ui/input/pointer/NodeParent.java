package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.layout.LayoutCoordinates;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public class NodeParent {

    @NotNull
    private final MutableVector<Node> children = new MutableVector<>(new Node[16], 0);

    @NotNull
    public final MutableVector<Node> g() {
        return this.children;
    }

    public final void h() {
        int i10 = 0;
        while (i10 < this.children.n()) {
            Node node = this.children.m()[i10];
            if (node.k().H()) {
                i10++;
                node.h();
            } else {
                this.children.v(i10);
                node.d();
            }
        }
    }

    public boolean a(@NotNull Map<PointerId, PointerInputChange> changes, @NotNull LayoutCoordinates parentCoordinates, @NotNull InternalPointerEvent internalPointerEvent, boolean z6) {
        t.j(changes, "changes");
        t.j(parentCoordinates, "parentCoordinates");
        t.j(internalPointerEvent, "internalPointerEvent");
        MutableVector<Node> mutableVector = this.children;
        int iN = mutableVector.n();
        if (iN <= 0) {
            return false;
        }
        Node[] nodeArrM = mutableVector.m();
        int i10 = 0;
        boolean z10 = false;
        do {
            z10 = nodeArrM[i10].a(changes, parentCoordinates, internalPointerEvent, z6) || z10;
            i10++;
        } while (i10 < iN);
        return z10;
    }

    public void b(@NotNull InternalPointerEvent internalPointerEvent) {
        t.j(internalPointerEvent, "internalPointerEvent");
        int iN = this.children.n();
        while (true) {
            iN--;
            if (-1 >= iN) {
                return;
            }
            if (this.children.m()[iN].j().p()) {
                this.children.v(iN);
            }
        }
    }

    public final void c() {
        this.children.h();
    }

    public void d() {
        MutableVector<Node> mutableVector = this.children;
        int iN = mutableVector.n();
        if (iN > 0) {
            Node[] nodeArrM = mutableVector.m();
            int i10 = 0;
            do {
                nodeArrM[i10].d();
                i10++;
            } while (i10 < iN);
        }
    }

    public boolean e(@NotNull InternalPointerEvent internalPointerEvent) {
        t.j(internalPointerEvent, "internalPointerEvent");
        MutableVector<Node> mutableVector = this.children;
        int iN = mutableVector.n();
        boolean z6 = false;
        if (iN > 0) {
            Node[] nodeArrM = mutableVector.m();
            int i10 = 0;
            boolean z10 = false;
            do {
                z10 = nodeArrM[i10].e(internalPointerEvent) || z10;
                i10++;
            } while (i10 < iN);
            z6 = z10;
        }
        b(internalPointerEvent);
        return z6;
    }

    public boolean f(@NotNull Map<PointerId, PointerInputChange> changes, @NotNull LayoutCoordinates parentCoordinates, @NotNull InternalPointerEvent internalPointerEvent, boolean z6) {
        t.j(changes, "changes");
        t.j(parentCoordinates, "parentCoordinates");
        t.j(internalPointerEvent, "internalPointerEvent");
        MutableVector<Node> mutableVector = this.children;
        int iN = mutableVector.n();
        if (iN <= 0) {
            return false;
        }
        Node[] nodeArrM = mutableVector.m();
        int i10 = 0;
        boolean z10 = false;
        do {
            z10 = nodeArrM[i10].f(changes, parentCoordinates, internalPointerEvent, z6) || z10;
            i10++;
        } while (i10 < iN);
        return z10;
    }
}
