package androidx.compose.runtime;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.o;
import kotlin.collections.v;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.i;

/* JADX INFO: loaded from: classes.dex */
public final class SlotWriter {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private ArrayList<Anchor> anchors;
    private boolean closed;
    private int currentGroup;
    private int currentGroupEnd;
    private int currentSlot;
    private int currentSlotEnd;

    @NotNull
    private final IntStack endStack;
    private int groupGapLen;
    private int groupGapStart;

    @NotNull
    private int[] groups;
    private int insertCount;
    private int nodeCount;

    @NotNull
    private final IntStack nodeCountStack;
    private int parent;

    @Nullable
    private PrioritySet pendingRecalculateMarks;

    @NotNull
    private Object[] slots;
    private int slotsGapLen;
    private int slotsGapOwner;
    private int slotsGapStart;

    @NotNull
    private final IntStack startStack;

    @NotNull
    private final SlotTable table;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<Anchor> b(SlotWriter slotWriter, int i10, SlotWriter slotWriter2, boolean z6, boolean z10) {
            List<Anchor> listM;
            boolean zE0;
            int iC0 = slotWriter.c0(i10);
            int i11 = i10 + iC0;
            int iJ = slotWriter.J(i10);
            int iJ2 = slotWriter.J(i11);
            int i12 = iJ2 - iJ;
            boolean zG = slotWriter.G(i10);
            slotWriter2.h0(iC0);
            slotWriter2.i0(i12, slotWriter2.U());
            if (slotWriter.groupGapStart < i11) {
                slotWriter.q0(i11);
            }
            if (slotWriter.slotsGapStart < iJ2) {
                slotWriter.s0(iJ2, i11);
            }
            int[] iArr = slotWriter2.groups;
            int iU = slotWriter2.U();
            o.g(slotWriter.groups, iArr, iU * 5, i10 * 5, i11 * 5);
            Object[] objArr = slotWriter2.slots;
            int i13 = slotWriter2.currentSlot;
            o.i(slotWriter.slots, objArr, i13, iJ, iJ2);
            int iV = slotWriter2.V();
            SlotTableKt.Z(iArr, iU, iV);
            int i14 = iU - i10;
            int i15 = iU + iC0;
            int iK = i13 - slotWriter2.K(iArr, iU);
            int i16 = slotWriter2.slotsGapOwner;
            int i17 = slotWriter2.slotsGapLen;
            int length = objArr.length;
            int i18 = i16;
            int i19 = iU;
            while (true) {
                if (i19 >= i15) {
                    break;
                }
                if (i19 != iU) {
                    SlotTableKt.Z(iArr, i19, SlotTableKt.R(iArr, i19) + i14);
                }
                int i20 = iK;
                SlotTableKt.V(iArr, i19, slotWriter2.M(slotWriter2.K(iArr, i19) + iK, i18 >= i19 ? slotWriter2.slotsGapStart : 0, i17, length));
                if (i19 == i18) {
                    i18++;
                }
                i19++;
                iK = i20;
                i15 = i15;
            }
            int i21 = i15;
            slotWriter2.slotsGapOwner = i18;
            int iN = SlotTableKt.N(slotWriter.anchors, i10, slotWriter.W());
            int iN2 = SlotTableKt.N(slotWriter.anchors, i11, slotWriter.W());
            if (iN < iN2) {
                ArrayList arrayList = slotWriter.anchors;
                ArrayList arrayList2 = new ArrayList(iN2 - iN);
                for (int i22 = iN; i22 < iN2; i22++) {
                    Object obj = arrayList.get(i22);
                    t.i(obj, "sourceAnchors[anchorIndex]");
                    Anchor anchor = (Anchor) obj;
                    anchor.c(anchor.a() + i14);
                    arrayList2.add(anchor);
                }
                slotWriter2.anchors.addAll(SlotTableKt.N(slotWriter2.anchors, slotWriter2.U(), slotWriter2.W()), arrayList2);
                arrayList.subList(iN, iN2).clear();
                listM = arrayList2;
            } else {
                listM = v.m();
            }
            int iY0 = slotWriter.y0(i10);
            if (z6) {
                int i23 = iY0 >= 0 ? 1 : 0;
                if (i23 != 0) {
                    slotWriter.T0();
                    slotWriter.z(iY0 - slotWriter.U());
                    slotWriter.T0();
                }
                slotWriter.z(i10 - slotWriter.U());
                zE0 = slotWriter.E0();
                if (i23 != 0) {
                    slotWriter.O0();
                    slotWriter.N();
                    slotWriter.O0();
                    slotWriter.N();
                }
            } else {
                boolean zF0 = slotWriter.F0(i10, iC0);
                slotWriter.G0(iJ, i12, i10 - 1);
                zE0 = zF0;
            }
            if (!(!zE0)) {
                ComposerKt.x("Unexpectedly removed anchors".toString());
                throw new i();
            }
            slotWriter2.nodeCount += SlotTableKt.L(iArr, iU) ? 1 : SlotTableKt.O(iArr, iU);
            if (z10) {
                slotWriter2.currentGroup = i21;
                slotWriter2.currentSlot = i13 + i12;
            }
            if (zG) {
                slotWriter2.a1(iV);
            }
            return listM;
        }
    }

    private final int A0(int i10) {
        return i10 > -2 ? i10 : W() + i10 + 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean F0(int i10, int i11) {
        boolean zD0 = false;
        if (i11 > 0) {
            ArrayList<Anchor> arrayList = this.anchors;
            q0(i10);
            zD0 = arrayList.isEmpty() ^ true ? D0(i10, i11) : false;
            this.groupGapStart = i10;
            this.groupGapLen += i11;
            int i12 = this.slotsGapOwner;
            if (i12 > i10) {
                this.slotsGapOwner = Math.max(i10, i12 - i11);
            }
            int i13 = this.currentGroupEnd;
            if (i13 >= this.groupGapStart) {
                this.currentGroupEnd = i13 - i11;
            }
            if (H(this.parent)) {
                a1(this.parent);
            }
        }
        return zD0;
    }

    private final int I(int i10, int i11, int i12) {
        return i10 < 0 ? (i12 - i11) + i10 + 1 : i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int L(int i10) {
        return i10 < this.slotsGapStart ? i10 : i10 + this.slotsGapLen;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int M(int i10, int i11, int i12, int i13) {
        return i10 > i11 ? -(((i13 - i12) - i10) + 1) : i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void V0(int i10, Object obj, boolean z6, Object obj2) {
        int iG;
        Object[] objArr = this.insertCount > 0;
        this.nodeCountStack.i(this.nodeCount);
        if (objArr == true) {
            h0(1);
            int i11 = this.currentGroup;
            int iZ = Z(i11);
            Composer.Companion companion = Composer.Companion;
            int i12 = obj != companion.a() ? 1 : 0;
            int i13 = (z6 || obj2 == companion.a()) ? 0 : 1;
            SlotTableKt.K(this.groups, iZ, i10, z6, i12, i13, this.parent, this.currentSlot);
            this.currentSlotEnd = this.currentSlot;
            int i14 = (z6 ? 1 : 0) + i12 + i13;
            if (i14 > 0) {
                i0(i14, i11);
                Object[] objArr2 = this.slots;
                int i15 = this.currentSlot;
                if (z6) {
                    objArr2[i15] = obj2;
                    i15++;
                }
                if (i12 != 0) {
                    objArr2[i15] = obj;
                    i15++;
                }
                if (i13 != 0) {
                    objArr2[i15] = obj2;
                    i15++;
                }
                this.currentSlot = i15;
            }
            this.nodeCount = 0;
            iG = i11 + 1;
            this.parent = i11;
            this.currentGroup = iG;
        } else {
            this.startStack.i(this.parent);
            J0();
            int i16 = this.currentGroup;
            int iZ2 = Z(i16);
            if (!t.e(obj2, Composer.Companion.a())) {
                if (z6) {
                    e1(obj2);
                } else {
                    Z0(obj2);
                }
            }
            this.currentSlot = R0(this.groups, iZ2);
            this.currentSlotEnd = K(this.groups, Z(this.currentGroup + 1));
            this.nodeCount = SlotTableKt.O(this.groups, iZ2);
            this.parent = i16;
            this.currentGroup = i16 + 1;
            iG = i16 + SlotTableKt.G(this.groups, iZ2);
        }
        this.currentGroupEnd = iG;
    }

    private final int Z(int i10) {
        return i10 < this.groupGapStart ? i10 : i10 + this.groupGapLen;
    }

    private final void n0(int i10, int i11, int i12) {
        int i13 = i12 + i10;
        int iW = W();
        int iN = SlotTableKt.N(this.anchors, i10, iW);
        ArrayList arrayList = new ArrayList();
        if (iN >= 0) {
            while (iN < this.anchors.size()) {
                Anchor anchor = this.anchors.get(iN);
                t.i(anchor, "anchors[index]");
                Anchor anchor2 = anchor;
                int iB = B(anchor2);
                if (iB < i10 || iB >= i13) {
                    break;
                }
                arrayList.add(anchor2);
                this.anchors.remove(iN);
            }
        }
        int i14 = i11 - i10;
        int size = arrayList.size();
        for (int i15 = 0; i15 < size; i15++) {
            Anchor anchor3 = (Anchor) arrayList.get(i15);
            int iB2 = B(anchor3) + i14;
            if (iB2 >= this.groupGapStart) {
                anchor3.c(-(iW - iB2));
            } else {
                anchor3.c(iB2);
            }
            this.anchors.add(SlotTableKt.N(this.anchors, iB2, iW), anchor3);
        }
    }

    public final void F() {
        this.closed = true;
        if (this.startStack.d()) {
            q0(W());
            s0(this.slots.length - this.slotsGapLen, this.groupGapStart);
            C0();
        }
        this.table.c(this, this.groups, this.groupGapStart, this.slots, this.slotsGapStart, this.anchors);
    }

    public final void S0(int i10, @Nullable Object obj, @Nullable Object obj2) {
        V0(i10, obj, false, obj2);
    }

    public final boolean T() {
        return this.closed;
    }

    public final int U() {
        return this.currentGroup;
    }

    public final int V() {
        return this.parent;
    }

    @NotNull
    public final SlotTable X() {
        return this.table;
    }

    public final boolean g0(int i10) {
        int i11 = this.parent;
        return (i10 > i11 && i10 < this.currentGroupEnd) || (i11 == 0 && i10 == 0);
    }

    public SlotWriter(@NotNull SlotTable table) {
        t.j(table, "table");
        this.table = table;
        this.groups = table.f();
        this.slots = table.j();
        this.anchors = table.e();
        this.groupGapStart = table.g();
        this.groupGapLen = (this.groups.length / 5) - table.g();
        this.currentGroupEnd = table.g();
        this.slotsGapStart = table.m();
        this.slotsGapLen = this.slots.length - table.m();
        this.slotsGapOwner = table.g();
        this.startStack = new IntStack();
        this.endStack = new IntStack();
        this.nodeCountStack = new IntStack();
        this.parent = -1;
    }

    private final int B0(int i10, int i11) {
        return i10 < i11 ? i10 : -((W() - i10) + 2);
    }

    private final void C0() {
        PrioritySet prioritySet = this.pendingRecalculateMarks;
        if (prioritySet != null) {
            while (prioritySet.b()) {
                b1(prioritySet.d(), prioritySet);
            }
        }
    }

    private final boolean D0(int i10, int i11) {
        int i12 = i11 + i10;
        int iN = SlotTableKt.N(this.anchors, i12, S() - this.groupGapLen);
        if (iN >= this.anchors.size()) {
            iN--;
        }
        int i13 = iN + 1;
        int i14 = 0;
        while (iN >= 0) {
            Anchor anchor = this.anchors.get(iN);
            t.i(anchor, "anchors[index]");
            Anchor anchor2 = anchor;
            int iB = B(anchor2);
            if (iB < i10) {
                break;
            }
            if (iB < i12) {
                anchor2.c(Integer.MIN_VALUE);
                if (i14 == 0) {
                    i14 = iN + 1;
                }
                i13 = iN;
            }
            iN--;
        }
        boolean z6 = i13 < i14;
        if (z6) {
            this.anchors.subList(i13, i14).clear();
        }
        return z6;
    }

    private final boolean E(int i10) {
        int iC0 = i10 + 1;
        int iC1 = i10 + c0(i10);
        while (iC0 < iC1) {
            if (SlotTableKt.B(this.groups, Z(iC0))) {
                return true;
            }
            iC0 += c0(iC0);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean G(int i10) {
        return i10 >= 0 && SlotTableKt.B(this.groups, Z(i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G0(int i10, int i11, int i12) {
        if (i11 > 0) {
            int i13 = this.slotsGapLen;
            int i14 = i10 + i11;
            s0(i14, i12);
            this.slotsGapStart = i10;
            this.slotsGapLen = i13 + i11;
            o.r(this.slots, null, i10, i14);
            int i15 = this.currentSlotEnd;
            if (i15 >= i10) {
                this.currentSlotEnd = i15 - i11;
            }
        }
    }

    private final boolean H(int i10) {
        return i10 >= 0 && SlotTableKt.C(this.groups, Z(i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int J(int i10) {
        return K(this.groups, Z(i10));
    }

    private final void J0() {
        this.endStack.i((S() - this.groupGapLen) - this.currentGroupEnd);
    }

    private final void R(int i10, int i11, int i12) {
        int iB0 = B0(i10, this.groupGapStart);
        while (i12 < i11) {
            SlotTableKt.Z(this.groups, Z(i12), iB0);
            int iG = SlotTableKt.G(this.groups, Z(i12)) + i12;
            R(i12, iG, i12 + 1);
            i12 = iG;
        }
    }

    private final int S() {
        return this.groups.length / 5;
    }

    private final void Y0(int i10, int i11) {
        int i12;
        int iS = S() - this.groupGapLen;
        if (i10 >= i11) {
            for (int iN = SlotTableKt.N(this.anchors, i11, iS); iN < this.anchors.size(); iN++) {
                Anchor anchor = this.anchors.get(iN);
                t.i(anchor, "anchors[index]");
                Anchor anchor2 = anchor;
                int iA = anchor2.a();
                if (iA < 0) {
                    return;
                }
                anchor2.c(-(iS - iA));
            }
            return;
        }
        for (int iN2 = SlotTableKt.N(this.anchors, i10, iS); iN2 < this.anchors.size(); iN2++) {
            Anchor anchor3 = this.anchors.get(iN2);
            t.i(anchor3, "anchors[index]");
            Anchor anchor4 = anchor3;
            int iA2 = anchor4.a();
            if (iA2 >= 0 || (i12 = iA2 + iS) >= i11) {
                return;
            }
            anchor4.c(i12);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void a1(int i10) {
        if (i10 >= 0) {
            PrioritySet prioritySet = this.pendingRecalculateMarks;
            if (prioritySet == null) {
                prioritySet = new PrioritySet(null, 1, 0 == true ? 1 : 0);
                this.pendingRecalculateMarks = prioritySet;
            }
            prioritySet.a(i10);
        }
    }

    private final void c1(int[] iArr, int i10, int i11) {
        SlotTableKt.V(iArr, i10, M(i11, this.slotsGapStart, this.slotsGapLen, this.slots.length));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h0(int i10) {
        if (i10 > 0) {
            int i11 = this.currentGroup;
            q0(i11);
            int i12 = this.groupGapStart;
            int i13 = this.groupGapLen;
            int[] iArr = this.groups;
            int length = iArr.length / 5;
            int i14 = length - i13;
            if (i13 < i10) {
                int iMax = Math.max(Math.max(length * 2, i14 + i10), 32);
                int[] iArr2 = new int[iMax * 5];
                int i15 = iMax - i14;
                o.g(iArr, iArr2, 0, 0, i12 * 5);
                o.g(iArr, iArr2, (i12 + i15) * 5, (i13 + i12) * 5, length * 5);
                this.groups = iArr2;
                i13 = i15;
            }
            int i16 = this.currentGroupEnd;
            if (i16 >= i12) {
                this.currentGroupEnd = i16 + i10;
            }
            int i17 = i12 + i10;
            this.groupGapStart = i17;
            this.groupGapLen = i13 - i10;
            int iM = M(i14 > 0 ? J(i11 + i10) : 0, this.slotsGapOwner >= i12 ? this.slotsGapStart : 0, this.slotsGapLen, this.slots.length);
            for (int i18 = i12; i18 < i17; i18++) {
                SlotTableKt.V(this.groups, i18, iM);
            }
            int i19 = this.slotsGapOwner;
            if (i19 >= i12) {
                this.slotsGapOwner = i19 + i10;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i0(int i10, int i11) {
        if (i10 > 0) {
            s0(this.currentSlot, i11);
            int i12 = this.slotsGapStart;
            int i13 = this.slotsGapLen;
            if (i13 < i10) {
                Object[] objArr = this.slots;
                int length = objArr.length;
                int i14 = length - i13;
                int iMax = Math.max(Math.max(length * 2, i14 + i10), 32);
                Object[] objArr2 = new Object[iMax];
                for (int i15 = 0; i15 < iMax; i15++) {
                    objArr2[i15] = null;
                }
                int i16 = iMax - i14;
                int i17 = i13 + i12;
                o.i(objArr, objArr2, 0, 0, i12);
                o.i(objArr, objArr2, i12 + i16, i17, length);
                this.slots = objArr2;
                i13 = i16;
            }
            int i18 = this.currentSlotEnd;
            if (i18 >= i12) {
                this.currentSlotEnd = i18 + i10;
            }
            this.slotsGapStart = i12 + i10;
            this.slotsGapLen = i13 - i10;
        }
    }

    public static /* synthetic */ void m0(SlotWriter slotWriter, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = slotWriter.parent;
        }
        slotWriter.l0(i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q0(int i10) {
        int i11 = this.groupGapLen;
        int i12 = this.groupGapStart;
        if (i12 != i10) {
            if (!this.anchors.isEmpty()) {
                Y0(i12, i10);
            }
            if (i11 > 0) {
                int[] iArr = this.groups;
                int i13 = i10 * 5;
                int i14 = i11 * 5;
                int i15 = i12 * 5;
                if (i10 < i12) {
                    o.g(iArr, iArr, i14 + i13, i13, i15);
                } else {
                    o.g(iArr, iArr, i15, i15 + i14, i13 + i14);
                }
            }
            if (i10 < i12) {
                i12 = i10 + i11;
            }
            int iS = S();
            ComposerKt.X(i12 < iS);
            while (i12 < iS) {
                int iR = SlotTableKt.R(this.groups, i12);
                int iB0 = B0(A0(iR), i10);
                if (iB0 != iR) {
                    SlotTableKt.Z(this.groups, i12, iB0);
                }
                i12++;
                if (i12 == i10) {
                    i12 += i11;
                }
            }
        }
        this.groupGapStart = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s0(int i10, int i11) {
        int i12 = this.slotsGapLen;
        int i13 = this.slotsGapStart;
        int i14 = this.slotsGapOwner;
        if (i13 != i10) {
            Object[] objArr = this.slots;
            if (i10 < i13) {
                o.i(objArr, objArr, i10 + i12, i10, i13);
            } else {
                o.i(objArr, objArr, i13, i13 + i12, i10 + i12);
            }
            o.r(objArr, null, i10, i10 + i12);
        }
        int iMin = Math.min(i11 + 1, W());
        if (i14 != iMin) {
            int length = this.slots.length - i12;
            if (iMin < i14) {
                int iZ = Z(iMin);
                int iZ2 = Z(i14);
                int i15 = this.groupGapStart;
                while (iZ < iZ2) {
                    int iE = SlotTableKt.E(this.groups, iZ);
                    if (!(iE >= 0)) {
                        ComposerKt.x("Unexpected anchor value, expected a positive anchor".toString());
                        throw new i();
                    }
                    SlotTableKt.V(this.groups, iZ, -((length - iE) + 1));
                    iZ++;
                    if (iZ == i15) {
                        iZ += this.groupGapLen;
                    }
                }
            } else {
                int iZ3 = Z(i14);
                int iZ4 = Z(iMin);
                while (iZ3 < iZ4) {
                    int iE2 = SlotTableKt.E(this.groups, iZ3);
                    if (!(iE2 < 0)) {
                        ComposerKt.x("Unexpected anchor value, expected a negative anchor".toString());
                        throw new i();
                    }
                    SlotTableKt.V(this.groups, iZ3, iE2 + length + 1);
                    iZ3++;
                    if (iZ3 == this.groupGapStart) {
                        iZ3 += this.groupGapLen;
                    }
                }
            }
            this.slotsGapOwner = iMin;
        }
        this.slotsGapStart = i10;
    }

    @NotNull
    public final Anchor A(int i10) {
        ArrayList<Anchor> arrayList = this.anchors;
        int iS = SlotTableKt.S(arrayList, i10, W());
        if (iS >= 0) {
            Anchor anchor = arrayList.get(iS);
            t.i(anchor, "get(location)");
            return anchor;
        }
        if (i10 > this.groupGapStart) {
            i10 = -(W() - i10);
        }
        Anchor anchor2 = new Anchor(i10);
        arrayList.add(-(iS + 1), anchor2);
        return anchor2;
    }

    public final int B(@NotNull Anchor anchor) {
        t.j(anchor, "anchor");
        int iA = anchor.a();
        return iA < 0 ? iA + W() : iA;
    }

    public final void D() {
        int i10 = this.insertCount;
        this.insertCount = i10 + 1;
        if (i10 == 0) {
            J0();
        }
    }

    public final boolean E0() {
        if (this.insertCount != 0) {
            throw new IllegalArgumentException("Cannot remove group while inserting".toString());
        }
        int i10 = this.currentGroup;
        int i11 = this.currentSlot;
        int iN0 = N0();
        PrioritySet prioritySet = this.pendingRecalculateMarks;
        if (prioritySet != null) {
            while (prioritySet.b() && prioritySet.c() >= i10) {
                prioritySet.d();
            }
        }
        boolean zF0 = F0(i10, this.currentGroup - i10);
        G0(i11, this.currentSlot - i11, i10 - 1);
        this.currentGroup = i10;
        this.currentSlot = i11;
        this.nodeCount -= iN0;
        return zF0;
    }

    public final void H0() {
        if (!(this.insertCount == 0)) {
            ComposerKt.x("Cannot reset when inserting".toString());
            throw new i();
        }
        C0();
        this.currentGroup = 0;
        this.currentGroupEnd = S() - this.groupGapLen;
        this.currentSlot = 0;
        this.currentSlotEnd = 0;
        this.nodeCount = 0;
    }

    @Nullable
    public final Object K0(int i10, @Nullable Object obj) {
        int iR0 = R0(this.groups, Z(this.currentGroup));
        int i11 = iR0 + i10;
        if (i11 >= iR0 && i11 < K(this.groups, Z(this.currentGroup + 1))) {
            int iL = L(i11);
            Object[] objArr = this.slots;
            Object obj2 = objArr[iL];
            objArr[iL] = obj;
            return obj2;
        }
        ComposerKt.x(("Write to an invalid slot index " + i10 + " for group " + this.currentGroup).toString());
        throw new i();
    }

    public final void L0(@Nullable Object obj) {
        int i10 = this.currentSlot;
        if (i10 <= this.currentSlotEnd) {
            this.slots[L(i10 - 1)] = obj;
        } else {
            ComposerKt.x("Writing to an invalid slot".toString());
            throw new i();
        }
    }

    @Nullable
    public final Object M0() {
        if (this.insertCount > 0) {
            i0(1, this.parent);
        }
        Object[] objArr = this.slots;
        int i10 = this.currentSlot;
        this.currentSlot = i10 + 1;
        return objArr[L(i10)];
    }

    public final int N() {
        boolean z6 = this.insertCount > 0;
        int i10 = this.currentGroup;
        int i11 = this.currentGroupEnd;
        int i12 = this.parent;
        int iZ = Z(i12);
        int i13 = this.nodeCount;
        int i14 = i10 - i12;
        boolean zL = SlotTableKt.L(this.groups, iZ);
        if (z6) {
            SlotTableKt.W(this.groups, iZ, i14);
            SlotTableKt.Y(this.groups, iZ, i13);
            this.nodeCount = this.nodeCountStack.h() + (zL ? 1 : i13);
            this.parent = z0(this.groups, i12);
        } else {
            if (i10 != i11) {
                throw new IllegalArgumentException("Expected to be at the end of a group".toString());
            }
            int iG = SlotTableKt.G(this.groups, iZ);
            int iO = SlotTableKt.O(this.groups, iZ);
            SlotTableKt.W(this.groups, iZ, i14);
            SlotTableKt.Y(this.groups, iZ, i13);
            int iH = this.startStack.h();
            I0();
            this.parent = iH;
            int iZ0 = z0(this.groups, i12);
            int iH2 = this.nodeCountStack.h();
            this.nodeCount = iH2;
            if (iZ0 == iH) {
                this.nodeCount = iH2 + (zL ? 0 : i13 - iO);
            } else {
                int i15 = i14 - iG;
                int i16 = zL ? 0 : i13 - iO;
                if (i15 != 0 || i16 != 0) {
                    while (iZ0 != 0 && iZ0 != iH && (i16 != 0 || i15 != 0)) {
                        int iZ2 = Z(iZ0);
                        if (i15 != 0) {
                            SlotTableKt.W(this.groups, iZ2, SlotTableKt.G(this.groups, iZ2) + i15);
                        }
                        if (i16 != 0) {
                            int[] iArr = this.groups;
                            SlotTableKt.Y(iArr, iZ2, SlotTableKt.O(iArr, iZ2) + i16);
                        }
                        if (SlotTableKt.L(this.groups, iZ2)) {
                            i16 = 0;
                        }
                        iZ0 = z0(this.groups, iZ0);
                    }
                }
                this.nodeCount += i16;
            }
        }
        return i13;
    }

    public final int N0() {
        int iZ = Z(this.currentGroup);
        int iG = this.currentGroup + SlotTableKt.G(this.groups, iZ);
        this.currentGroup = iG;
        this.currentSlot = K(this.groups, Z(iG));
        if (SlotTableKt.L(this.groups, iZ)) {
            return 1;
        }
        return SlotTableKt.O(this.groups, iZ);
    }

    public final void O() {
        int i10 = this.insertCount;
        if (i10 <= 0) {
            throw new IllegalStateException("Unbalanced begin/end insert".toString());
        }
        int i11 = i10 - 1;
        this.insertCount = i11;
        if (i11 == 0) {
            if (this.nodeCountStack.b() == this.startStack.b()) {
                I0();
            } else {
                ComposerKt.x("startGroup/endGroup mismatch while inserting".toString());
                throw new i();
            }
        }
    }

    public final void O0() {
        int i10 = this.currentGroupEnd;
        this.currentGroup = i10;
        this.currentSlot = K(this.groups, Z(i10));
    }

    public final void P(int i10) {
        if (this.insertCount > 0) {
            throw new IllegalArgumentException("Cannot call ensureStarted() while inserting".toString());
        }
        int i11 = this.parent;
        if (i11 != i10) {
            if (i10 < i11 || i10 >= this.currentGroupEnd) {
                throw new IllegalArgumentException(("Started group at " + i10 + " must be a subgroup of the group at " + i11).toString());
            }
            int i12 = this.currentGroup;
            int i13 = this.currentSlot;
            int i14 = this.currentSlotEnd;
            this.currentGroup = i10;
            T0();
            this.currentGroup = i12;
            this.currentSlot = i13;
            this.currentSlotEnd = i14;
        }
    }

    public final void Q(@NotNull Anchor anchor) {
        t.j(anchor, "anchor");
        P(anchor.e(this));
    }

    @Nullable
    public final Object Q0(@NotNull Anchor anchor, int i10) {
        t.j(anchor, "anchor");
        return P0(B(anchor), i10);
    }

    public final void T0() {
        if (this.insertCount != 0) {
            throw new IllegalArgumentException("Key must be supplied when inserting".toString());
        }
        Composer.Companion companion = Composer.Companion;
        V0(0, companion.a(), false, companion.a());
    }

    public final void U0(int i10, @Nullable Object obj) {
        V0(i10, obj, false, Composer.Companion.a());
    }

    public final void W0(@Nullable Object obj) {
        V0(125, obj, true, Composer.Companion.a());
    }

    public final void Z0(@Nullable Object obj) {
        int iZ = Z(this.currentGroup);
        if (SlotTableKt.H(this.groups, iZ)) {
            this.slots[L(C(this.groups, iZ))] = obj;
        } else {
            ComposerKt.x("Updating the data of a group that was not created with a data slot".toString());
            throw new i();
        }
    }

    public final int a0(int i10) {
        return SlotTableKt.M(this.groups, Z(i10));
    }

    public final int c0(int i10) {
        return SlotTableKt.G(this.groups, Z(i10));
    }

    @NotNull
    public final Iterator<Object> d0() {
        int iK = K(this.groups, Z(this.currentGroup));
        int[] iArr = this.groups;
        int i10 = this.currentGroup;
        return new SlotWriter$groupSlots$1(iK, K(iArr, Z(i10 + c0(i10))), this);
    }

    public final void d1(@NotNull Anchor anchor, @Nullable Object obj) {
        t.j(anchor, "anchor");
        f1(anchor.e(this), obj);
    }

    public final boolean e0(int i10) {
        return f0(i10, this.currentGroup);
    }

    public final void e1(@Nullable Object obj) {
        f1(this.currentGroup, obj);
    }

    public final boolean f0(int i10, int i11) {
        int iC;
        int iS;
        if (i11 == this.parent) {
            iS = this.currentGroupEnd;
        } else if (i11 <= this.startStack.g(0) && (iC = this.startStack.c(i11)) >= 0) {
            iS = (S() - this.groupGapLen) - this.endStack.f(iC);
        } else {
            int iC0 = c0(i11);
            iS = iC0 + i11;
        }
        return i10 > i11 && i10 < iS;
    }

    public final boolean j0() {
        int i10 = this.currentGroup;
        return i10 < this.currentGroupEnd && SlotTableKt.L(this.groups, Z(i10));
    }

    public final boolean k0(int i10) {
        return SlotTableKt.L(this.groups, Z(i10));
    }

    @NotNull
    public final List<Anchor> o0(@NotNull SlotTable table, int i10) {
        t.j(table, "table");
        if (this.insertCount <= 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (i10 != 0 || this.currentGroup != 0 || this.table.g() != 0) {
            SlotWriter slotWriterT = table.t();
            try {
                return Companion.b(slotWriterT, i10, this, true, true);
            } finally {
                slotWriterT.F();
            }
        }
        int[] iArr = this.groups;
        Object[] objArr = this.slots;
        ArrayList<Anchor> arrayList = this.anchors;
        int[] iArrF = table.f();
        int iG = table.g();
        Object[] objArrJ = table.j();
        int iM = table.m();
        this.groups = iArrF;
        this.slots = objArrJ;
        this.anchors = table.e();
        this.groupGapStart = iG;
        this.groupGapLen = (iArrF.length / 5) - iG;
        this.slotsGapStart = iM;
        this.slotsGapLen = objArrJ.length - iM;
        this.slotsGapOwner = iG;
        table.v(iArr, 0, objArr, 0, arrayList);
        return this.anchors;
    }

    public final void p0(int i10) {
        if (this.insertCount != 0) {
            throw new IllegalArgumentException("Cannot move a group while inserting".toString());
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("Parameter offset is out of bounds".toString());
        }
        if (i10 == 0) {
            return;
        }
        int i11 = this.currentGroup;
        int i12 = this.parent;
        int i13 = this.currentGroupEnd;
        int iG = i11;
        for (int i14 = i10; i14 > 0; i14--) {
            iG += SlotTableKt.G(this.groups, Z(iG));
            if (iG > i13) {
                throw new IllegalArgumentException("Parameter offset is out of bounds".toString());
            }
        }
        int iG2 = SlotTableKt.G(this.groups, Z(iG));
        int i15 = this.currentSlot;
        int iK = K(this.groups, Z(iG));
        int i16 = iG + iG2;
        int iK2 = K(this.groups, Z(i16));
        int i17 = iK2 - iK;
        i0(i17, Math.max(this.currentGroup - 1, 0));
        h0(iG2);
        int[] iArr = this.groups;
        int iZ = Z(i16) * 5;
        o.g(iArr, iArr, Z(i11) * 5, iZ, (iG2 * 5) + iZ);
        if (i17 > 0) {
            Object[] objArr = this.slots;
            o.i(objArr, objArr, i15, L(iK + i17), L(iK2 + i17));
        }
        int i18 = iK + i17;
        int i19 = i18 - i15;
        int i20 = this.slotsGapStart;
        int i21 = this.slotsGapLen;
        int length = this.slots.length;
        int i22 = this.slotsGapOwner;
        int i23 = i11 + iG2;
        int i24 = i11;
        while (i24 < i23) {
            int iZ2 = Z(i24);
            int i25 = i20;
            int i26 = i19;
            c1(iArr, iZ2, M(K(iArr, iZ2) - i19, i22 < iZ2 ? 0 : i25, i21, length));
            i24++;
            i19 = i26;
            i20 = i25;
        }
        n0(i16, i11, iG2);
        if (!(!F0(i16, iG2))) {
            ComposerKt.x("Unexpectedly removed anchors".toString());
            throw new i();
        }
        R(i12, this.currentGroupEnd, i11);
        if (i17 > 0) {
            G0(i18, i17, i16 - 1);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    @NotNull
    public final List<Anchor> r0(int i10, @NotNull SlotTable table, int i11) {
        boolean z6;
        t.j(table, "table");
        if (this.insertCount <= 0) {
            z6 = c0(this.currentGroup + i10) == 1;
        }
        ComposerKt.X(z6);
        int i12 = this.currentGroup;
        int i13 = this.currentSlot;
        int i14 = this.currentSlotEnd;
        z(i10);
        T0();
        D();
        SlotWriter slotWriterT = table.t();
        try {
            List<Anchor> listB = Companion.b(slotWriterT, i11, this, false, true);
            slotWriterT.F();
            O();
            N();
            this.currentGroup = i12;
            this.currentSlot = i13;
            this.currentSlotEnd = i14;
            return listB;
        } catch (Throwable th) {
            slotWriterT.F();
            throw th;
        }
    }

    @NotNull
    public final List<Anchor> t0(@NotNull Anchor anchor, int i10, @NotNull SlotWriter writer) {
        t.j(anchor, "anchor");
        t.j(writer, "writer");
        if (writer.insertCount <= 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (this.insertCount != 0) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (!anchor.b()) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        int iB = B(anchor) + i10;
        int i11 = this.currentGroup;
        if (i11 > iB || iB >= this.currentGroupEnd) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        int iY0 = y0(iB);
        int iC0 = c0(iB);
        int iW0 = k0(iB) ? 1 : w0(iB);
        List<Anchor> listB = Companion.b(this, iB, writer, false, false);
        a1(iY0);
        boolean z6 = iW0 > 0;
        while (iY0 >= i11) {
            int iZ = Z(iY0);
            int[] iArr = this.groups;
            SlotTableKt.W(iArr, iZ, SlotTableKt.G(iArr, iZ) - iC0);
            if (z6) {
                if (SlotTableKt.L(this.groups, iZ)) {
                    z6 = false;
                } else {
                    int[] iArr2 = this.groups;
                    SlotTableKt.Y(iArr2, iZ, SlotTableKt.O(iArr2, iZ) - iW0);
                }
            }
            iY0 = y0(iY0);
        }
        if (z6) {
            ComposerKt.X(this.nodeCount >= iW0);
            this.nodeCount -= iW0;
        }
        return listB;
    }

    @NotNull
    public String toString() {
        return "SlotWriter(current = " + this.currentGroup + " end=" + this.currentGroupEnd + " size = " + W() + " gap=" + this.groupGapStart + '-' + (this.groupGapStart + this.groupGapLen) + ')';
    }

    @Nullable
    public final Object v0(@NotNull Anchor anchor) {
        t.j(anchor, "anchor");
        return u0(anchor.e(this));
    }

    public final int w0(int i10) {
        return SlotTableKt.O(this.groups, Z(i10));
    }

    public final int y0(int i10) {
        return z0(this.groups, i10);
    }

    public final void z(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("Cannot seek backwards".toString());
        }
        if (this.insertCount > 0) {
            throw new IllegalStateException("Cannot call seek() while inserting".toString());
        }
        if (i10 == 0) {
            return;
        }
        int i11 = this.currentGroup + i10;
        if (i11 >= this.parent && i11 <= this.currentGroupEnd) {
            this.currentGroup = i11;
            int iK = K(this.groups, Z(i11));
            this.currentSlot = iK;
            this.currentSlotEnd = iK;
            return;
        }
        ComposerKt.x(("Cannot seek outside the current group (" + this.parent + '-' + this.currentGroupEnd + ')').toString());
        throw new i();
    }

    private final int C(int[] iArr, int i10) {
        return K(iArr, i10) + SlotTableKt.D(SlotTableKt.F(iArr, i10) >> 29);
    }

    private final int I0() {
        int iS = (S() - this.groupGapLen) - this.endStack.h();
        this.currentGroupEnd = iS;
        return iS;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int K(int[] iArr, int i10) {
        if (i10 >= S()) {
            return this.slots.length - this.slotsGapLen;
        }
        return I(SlotTableKt.E(iArr, i10), this.slotsGapLen, this.slots.length);
    }

    private final int R0(int[] iArr, int i10) {
        if (i10 >= S()) {
            return this.slots.length - this.slotsGapLen;
        }
        return I(SlotTableKt.T(iArr, i10), this.slotsGapLen, this.slots.length);
    }

    private final void b1(int i10, PrioritySet prioritySet) {
        int iZ = Z(i10);
        boolean zE = E(i10);
        if (SlotTableKt.C(this.groups, iZ) != zE) {
            SlotTableKt.U(this.groups, iZ, zE);
            int iY0 = y0(i10);
            if (iY0 >= 0) {
                prioritySet.a(iY0);
            }
        }
    }

    private final void f1(int i10, Object obj) {
        boolean z6;
        int iZ = Z(i10);
        int[] iArr = this.groups;
        if (iZ < iArr.length && SlotTableKt.L(iArr, iZ)) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (z6) {
            this.slots[L(x0(this.groups, iZ))] = obj;
            return;
        }
        ComposerKt.x(("Updating the node of a group at " + i10 + " that was not created with as a node group").toString());
        throw new i();
    }

    private final int x0(int[] iArr, int i10) {
        return K(iArr, i10);
    }

    private final int z0(int[] iArr, int i10) {
        return A0(SlotTableKt.R(iArr, Z(i10)));
    }

    @Nullable
    public final Object P0(int i10, int i11) {
        int iR0 = R0(this.groups, Z(i10));
        int iK = K(this.groups, Z(i10 + 1));
        int i12 = i11 + iR0;
        if (iR0 <= i12 && i12 < iK) {
            return this.slots[L(i12)];
        }
        return Composer.Companion.a();
    }

    public final int W() {
        return S() - this.groupGapLen;
    }

    @Nullable
    public final Object X0(@Nullable Object obj) {
        Object objM0 = M0();
        L0(obj);
        return objM0;
    }

    @Nullable
    public final Object Y(int i10) {
        int iZ = Z(i10);
        if (SlotTableKt.H(this.groups, iZ)) {
            return this.slots[C(this.groups, iZ)];
        }
        return Composer.Companion.a();
    }

    @Nullable
    public final Object b0(int i10) {
        int iZ = Z(i10);
        if (SlotTableKt.J(this.groups, iZ)) {
            return this.slots[SlotTableKt.Q(this.groups, iZ)];
        }
        return null;
    }

    public final void l0(int i10) {
        int iZ = Z(i10);
        if (!SlotTableKt.I(this.groups, iZ)) {
            SlotTableKt.X(this.groups, iZ, true);
            if (!SlotTableKt.C(this.groups, iZ)) {
                a1(y0(i10));
            }
        }
    }

    @Nullable
    public final Object u0(int i10) {
        int iZ = Z(i10);
        if (SlotTableKt.L(this.groups, iZ)) {
            return this.slots[L(x0(this.groups, iZ))];
        }
        return null;
    }
}
