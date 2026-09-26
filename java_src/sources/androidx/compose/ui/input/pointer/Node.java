package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutCoordinates;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.d0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class Node extends NodeParent {

    @Nullable
    private LayoutCoordinates coordinates;
    private boolean hasExited;
    private boolean isIn;

    @Nullable
    private PointerEvent pointerEvent;

    @NotNull
    private final MutableVector<PointerId> pointerIds;

    @NotNull
    private final PointerInputFilter pointerInputFilter;

    @NotNull
    private final Map<PointerId, PointerInputChange> relevantChanges;
    private boolean wasIn;

    private final boolean l(PointerEvent pointerEvent, PointerEvent pointerEvent2) {
        if (pointerEvent == null || pointerEvent.c().size() != pointerEvent2.c().size()) {
            return true;
        }
        int size = pointerEvent2.c().size();
        for (int i10 = 0; i10 < size; i10++) {
            if (!Offset.j(pointerEvent.c().get(i10).f(), pointerEvent2.c().get(i10).f())) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final MutableVector<PointerId> j() {
        return this.pointerIds;
    }

    @NotNull
    public final PointerInputFilter k() {
        return this.pointerInputFilter;
    }

    public final void m() {
        this.isIn = true;
    }

    public Node(@NotNull PointerInputFilter pointerInputFilter) {
        t.j(pointerInputFilter, "pointerInputFilter");
        this.pointerInputFilter = pointerInputFilter;
        this.pointerIds = new MutableVector<>(new PointerId[16], 0);
        this.relevantChanges = new LinkedHashMap();
        this.isIn = true;
        this.hasExited = true;
    }

    private final void i() {
        this.relevantChanges.clear();
        this.coordinates = null;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x017e  */
    /* JADX WARN: Code duplicated, block: B:54:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:55:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:57:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:59:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:64:0x01db  */
    /* JADX WARN: Code duplicated, block: B:66:0x01e9  */
    @Override // androidx.compose.ui.input.pointer.NodeParent
    public boolean a(@NotNull Map<PointerId, PointerInputChange> changes, @NotNull LayoutCoordinates parentCoordinates, @NotNull InternalPointerEvent internalPointerEvent, boolean z6) {
        PointerInputChange pointerInputChange;
        boolean z10;
        int iF;
        PointerEventType.Companion companion;
        int iF2;
        PointerEventType.Companion companion2;
        int iB;
        t.j(changes, "changes");
        t.j(parentCoordinates, "parentCoordinates");
        t.j(internalPointerEvent, "internalPointerEvent");
        boolean zA = super.a(changes, parentCoordinates, internalPointerEvent, z6);
        if (!this.pointerInputFilter.H()) {
            return true;
        }
        this.coordinates = this.pointerInputFilter.u();
        Iterator<Map.Entry<PointerId, PointerInputChange>> it = changes.entrySet().iterator();
        while (true) {
            int i10 = 0;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<PointerId, PointerInputChange> next = it.next();
            long jG = next.getKey().g();
            PointerInputChange value = next.getValue();
            if (this.pointerIds.i(PointerId.a(jG))) {
                ArrayList arrayList = new ArrayList();
                List<HistoricalChange> listD = value.d();
                for (int size = listD.size(); i10 < size; size = size) {
                    HistoricalChange historicalChange = listD.get(i10);
                    long jB = historicalChange.b();
                    LayoutCoordinates layoutCoordinates = this.coordinates;
                    t.g(layoutCoordinates);
                    arrayList.add(new HistoricalChange(jB, layoutCoordinates.O(parentCoordinates, historicalChange.a()), null));
                    i10++;
                    listD = listD;
                }
                Map<PointerId, PointerInputChange> map = this.relevantChanges;
                PointerId pointerIdA = PointerId.a(jG);
                LayoutCoordinates layoutCoordinates2 = this.coordinates;
                t.g(layoutCoordinates2);
                long jO = layoutCoordinates2.O(parentCoordinates, value.h());
                LayoutCoordinates layoutCoordinates3 = this.coordinates;
                t.g(layoutCoordinates3);
                map.put(pointerIdA, value.b((731 & 1) != 0 ? value.id : 0L, (731 & 2) != 0 ? value.uptimeMillis : 0L, (731 & 4) != 0 ? value.position : layoutCoordinates3.O(parentCoordinates, value.f()), (731 & 8) != 0 ? value.pressed : false, (731 & 16) != 0 ? value.previousUptimeMillis : 0L, (731 & 32) != 0 ? value.previousPosition : jO, (731 & 64) != 0 ? value.previousPressed : false, (731 & 128) != 0 ? value.type : 0, arrayList, (731 & 512) != 0 ? value.scrollDelta : 0L));
            }
        }
        if (this.relevantChanges.isEmpty()) {
            this.pointerIds.h();
            g().h();
            return true;
        }
        for (int iN = this.pointerIds.n() - 1; -1 < iN; iN--) {
            if (!changes.containsKey(PointerId.a(this.pointerIds.m()[iN].g()))) {
                this.pointerIds.v(iN);
            }
        }
        PointerEvent pointerEvent = new PointerEvent(d0.U0(this.relevantChanges.values()), internalPointerEvent);
        List<PointerInputChange> listC = pointerEvent.c();
        int size2 = listC.size();
        int i11 = 0;
        while (true) {
            if (i11 >= size2) {
                pointerInputChange = null;
                break;
            }
            pointerInputChange = listC.get(i11);
            if (internalPointerEvent.d(pointerInputChange.e())) {
                break;
            }
            i11++;
        }
        PointerInputChange pointerInputChange2 = pointerInputChange;
        if (pointerInputChange2 != null) {
            if (z6) {
                if (!this.isIn && (pointerInputChange2.g() || pointerInputChange2.i())) {
                    LayoutCoordinates layoutCoordinates4 = this.coordinates;
                    t.g(layoutCoordinates4);
                    z10 = true;
                    this.isIn = !PointerEventKt.e(pointerInputChange2, layoutCoordinates4.a());
                }
                if (this.isIn != this.wasIn) {
                    iF2 = pointerEvent.f();
                    companion2 = PointerEventType.Companion;
                    if (!PointerEventType.j(iF2, companion2.c()) || PointerEventType.j(pointerEvent.f(), companion2.a()) || PointerEventType.j(pointerEvent.f(), companion2.b())) {
                        if (this.isIn) {
                            iB = companion2.a();
                        } else {
                            iB = companion2.b();
                        }
                        pointerEvent.g(iB);
                    } else {
                        iF = pointerEvent.f();
                        companion = PointerEventType.Companion;
                        if (!PointerEventType.j(iF, companion.a()) && this.wasIn && !this.hasExited) {
                            pointerEvent.g(companion.c());
                        } else if (PointerEventType.j(pointerEvent.f(), companion.b()) && this.isIn && pointerInputChange2.g()) {
                            pointerEvent.g(companion.c());
                        }
                    }
                } else {
                    iF = pointerEvent.f();
                    companion = PointerEventType.Companion;
                    if (!PointerEventType.j(iF, companion.a())) {
                        if (PointerEventType.j(pointerEvent.f(), companion.b())) {
                            pointerEvent.g(companion.c());
                        }
                    } else if (PointerEventType.j(pointerEvent.f(), companion.b())) {
                        pointerEvent.g(companion.c());
                    }
                }
            } else {
                this.isIn = false;
            }
            z10 = true;
            if (this.isIn != this.wasIn) {
                iF2 = pointerEvent.f();
                companion2 = PointerEventType.Companion;
                if (PointerEventType.j(iF2, companion2.c())) {
                }
                if (this.isIn) {
                    iB = companion2.a();
                } else {
                    iB = companion2.b();
                }
                pointerEvent.g(iB);
            } else {
                iF = pointerEvent.f();
                companion = PointerEventType.Companion;
                if (!PointerEventType.j(iF, companion.a())) {
                    if (PointerEventType.j(pointerEvent.f(), companion.b())) {
                        pointerEvent.g(companion.c());
                    }
                } else if (PointerEventType.j(pointerEvent.f(), companion.b())) {
                    pointerEvent.g(companion.c());
                }
            }
        } else {
            z10 = true;
        }
        boolean z11 = (zA || !PointerEventType.j(pointerEvent.f(), PointerEventType.Companion.c()) || l(this.pointerEvent, pointerEvent)) ? z10 : false;
        this.pointerEvent = pointerEvent;
        return z11;
    }

    @Override // androidx.compose.ui.input.pointer.NodeParent
    public void b(@NotNull InternalPointerEvent internalPointerEvent) {
        t.j(internalPointerEvent, "internalPointerEvent");
        super.b(internalPointerEvent);
        PointerEvent pointerEvent = this.pointerEvent;
        if (pointerEvent == null) {
            return;
        }
        this.wasIn = this.isIn;
        List<PointerInputChange> listC = pointerEvent.c();
        int size = listC.size();
        for (int i10 = 0; i10 < size; i10++) {
            PointerInputChange pointerInputChange = listC.get(i10);
            if (!pointerInputChange.g() && (!internalPointerEvent.d(pointerInputChange.e()) || !this.isIn)) {
                this.pointerIds.s(PointerId.a(pointerInputChange.e()));
            }
        }
        this.isIn = false;
        this.hasExited = PointerEventType.j(pointerEvent.f(), PointerEventType.Companion.b());
    }

    @Override // androidx.compose.ui.input.pointer.NodeParent
    public boolean e(@NotNull InternalPointerEvent internalPointerEvent) {
        MutableVector<Node> mutableVectorG;
        int iN;
        t.j(internalPointerEvent, "internalPointerEvent");
        boolean z6 = false;
        int i10 = 0;
        z6 = false;
        if (!this.relevantChanges.isEmpty() && this.pointerInputFilter.H()) {
            PointerEvent pointerEvent = this.pointerEvent;
            t.g(pointerEvent);
            LayoutCoordinates layoutCoordinates = this.coordinates;
            t.g(layoutCoordinates);
            this.pointerInputFilter.U(pointerEvent, PointerEventPass.Final, layoutCoordinates.a());
            if (this.pointerInputFilter.H() && (iN = (mutableVectorG = g()).n()) > 0) {
                Node[] nodeArrM = mutableVectorG.m();
                do {
                    nodeArrM[i10].e(internalPointerEvent);
                    i10++;
                } while (i10 < iN);
            }
            z6 = true;
        }
        b(internalPointerEvent);
        i();
        return z6;
    }

    @Override // androidx.compose.ui.input.pointer.NodeParent
    public boolean f(@NotNull Map<PointerId, PointerInputChange> changes, @NotNull LayoutCoordinates parentCoordinates, @NotNull InternalPointerEvent internalPointerEvent, boolean z6) {
        MutableVector<Node> mutableVectorG;
        int iN;
        t.j(changes, "changes");
        t.j(parentCoordinates, "parentCoordinates");
        t.j(internalPointerEvent, "internalPointerEvent");
        int i10 = 0;
        if (this.relevantChanges.isEmpty() || !this.pointerInputFilter.H()) {
            return false;
        }
        PointerEvent pointerEvent = this.pointerEvent;
        t.g(pointerEvent);
        LayoutCoordinates layoutCoordinates = this.coordinates;
        t.g(layoutCoordinates);
        long jA = layoutCoordinates.a();
        this.pointerInputFilter.U(pointerEvent, PointerEventPass.Initial, jA);
        if (this.pointerInputFilter.H() && (iN = (mutableVectorG = g()).n()) > 0) {
            Node[] nodeArrM = mutableVectorG.m();
            do {
                Node node = nodeArrM[i10];
                Map<PointerId, PointerInputChange> map = this.relevantChanges;
                LayoutCoordinates layoutCoordinates2 = this.coordinates;
                t.g(layoutCoordinates2);
                node.f(map, layoutCoordinates2, internalPointerEvent, z6);
                i10++;
            } while (i10 < iN);
        }
        if (this.pointerInputFilter.H()) {
            this.pointerInputFilter.U(pointerEvent, PointerEventPass.Main, jA);
        }
        return true;
    }

    @NotNull
    public String toString() {
        return "Node(pointerInputFilter=" + this.pointerInputFilter + ", children=" + g() + ", pointerIds=" + this.pointerIds + ')';
    }

    @Override // androidx.compose.ui.input.pointer.NodeParent
    public void d() {
        MutableVector<Node> mutableVectorG = g();
        int iN = mutableVectorG.n();
        if (iN > 0) {
            Node[] nodeArrM = mutableVectorG.m();
            int i10 = 0;
            do {
                nodeArrM[i10].d();
                i10++;
            } while (i10 < iN);
        }
        this.pointerInputFilter.I();
    }
}
