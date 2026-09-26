package androidx.compose.runtime;

import e8.p;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class SlotReader {
    private int currentEnd;
    private int currentGroup;
    private int currentSlot;
    private int currentSlotEnd;
    private int emptyCount;

    @NotNull
    private final int[] groups;
    private final int groupsSize;
    private int parent;

    @NotNull
    private final Object[] slots;
    private final int slotsSize;

    @NotNull
    private final SlotTable table;

    public final void c() {
        this.emptyCount++;
    }

    public final int j() {
        return this.currentEnd;
    }

    public final int k() {
        return this.currentGroup;
    }

    public final int m() {
        return this.currentEnd;
    }

    public final boolean r() {
        return this.emptyCount > 0;
    }

    public final int s() {
        return this.parent;
    }

    public final int u() {
        return this.groupsSize;
    }

    @NotNull
    public final SlotTable v() {
        return this.table;
    }

    public SlotReader(@NotNull SlotTable table) {
        t.j(table, "table");
        this.table = table;
        this.groups = table.f();
        int iG = table.g();
        this.groupsSize = iG;
        this.slots = table.j();
        this.slotsSize = table.m();
        this.currentEnd = iG;
        this.parent = -1;
    }

    @Nullable
    public final Object A(int i10) {
        return L(this.groups, i10);
    }

    public final int B(int i10) {
        return SlotTableKt.G(this.groups, i10);
    }

    public final boolean C(int i10) {
        return SlotTableKt.I(this.groups, i10);
    }

    public final boolean D(int i10) {
        return SlotTableKt.J(this.groups, i10);
    }

    public final boolean F() {
        return SlotTableKt.L(this.groups, this.currentGroup);
    }

    public final boolean G(int i10) {
        return SlotTableKt.L(this.groups, i10);
    }

    @Nullable
    public final Object H() {
        int i10;
        if (this.emptyCount > 0 || (i10 = this.currentSlot) >= this.currentSlotEnd) {
            return Composer.Companion.a();
        }
        Object[] objArr = this.slots;
        this.currentSlot = i10 + 1;
        return objArr[i10];
    }

    @Nullable
    public final Object I(int i10) {
        if (SlotTableKt.L(this.groups, i10)) {
            return J(this.groups, i10);
        }
        return null;
    }

    public final int K(int i10) {
        return SlotTableKt.O(this.groups, i10);
    }

    public final int M(int i10) {
        return SlotTableKt.R(this.groups, i10);
    }

    public final void N(int i10) {
        if (this.emptyCount != 0) {
            throw new IllegalArgumentException("Cannot reposition while in an empty region".toString());
        }
        this.currentGroup = i10;
        int iR = i10 < this.groupsSize ? SlotTableKt.R(this.groups, i10) : -1;
        this.parent = iR;
        if (iR < 0) {
            this.currentEnd = this.groupsSize;
        } else {
            this.currentEnd = iR + SlotTableKt.G(this.groups, iR);
        }
        this.currentSlot = 0;
        this.currentSlotEnd = 0;
    }

    public final void O(int i10) {
        int iG = SlotTableKt.G(this.groups, i10) + i10;
        int i11 = this.currentGroup;
        if (i11 >= i10 && i11 <= iG) {
            this.parent = i10;
            this.currentEnd = iG;
            this.currentSlot = 0;
            this.currentSlotEnd = 0;
            return;
        }
        throw new IllegalArgumentException(("Index " + i10 + " is not a parent of " + i11).toString());
    }

    public final int P() {
        if (this.emptyCount != 0) {
            throw new IllegalArgumentException("Cannot skip while in an empty region".toString());
        }
        int iO = SlotTableKt.L(this.groups, this.currentGroup) ? 1 : SlotTableKt.O(this.groups, this.currentGroup);
        int i10 = this.currentGroup;
        this.currentGroup = i10 + SlotTableKt.G(this.groups, i10);
        return iO;
    }

    public final void Q() {
        if (this.emptyCount != 0) {
            throw new IllegalArgumentException("Cannot skip the enclosing group while in an empty region".toString());
        }
        this.currentGroup = this.currentEnd;
    }

    public final void R() {
        if (this.emptyCount <= 0) {
            if (SlotTableKt.R(this.groups, this.currentGroup) != this.parent) {
                throw new IllegalArgumentException("Invalid slot table detected".toString());
            }
            int i10 = this.currentGroup;
            this.parent = i10;
            this.currentEnd = i10 + SlotTableKt.G(this.groups, i10);
            int i11 = this.currentGroup;
            int i12 = i11 + 1;
            this.currentGroup = i12;
            this.currentSlot = SlotTableKt.T(this.groups, i11);
            this.currentSlotEnd = i11 >= this.groupsSize + (-1) ? this.slotsSize : SlotTableKt.E(this.groups, i12);
        }
    }

    public final void S() {
        if (this.emptyCount <= 0) {
            if (!SlotTableKt.L(this.groups, this.currentGroup)) {
                throw new IllegalArgumentException("Expected a node group".toString());
            }
            R();
        }
    }

    @NotNull
    public final Anchor a(int i10) {
        ArrayList<Anchor> arrayListE = this.table.e();
        int iS = SlotTableKt.S(arrayListE, i10, this.groupsSize);
        if (iS < 0) {
            Anchor anchor = new Anchor(i10);
            arrayListE.add(-(iS + 1), anchor);
            return anchor;
        }
        Anchor anchor2 = arrayListE.get(iS);
        t.i(anchor2, "get(location)");
        return anchor2;
    }

    public final void d() {
        this.table.b(this);
    }

    public final boolean e(int i10) {
        return SlotTableKt.C(this.groups, i10);
    }

    public final void f() {
        int i10 = this.emptyCount;
        if (i10 <= 0) {
            throw new IllegalArgumentException("Unbalanced begin/end empty".toString());
        }
        this.emptyCount = i10 - 1;
    }

    public final void g() {
        if (this.emptyCount == 0) {
            if (this.currentGroup != this.currentEnd) {
                throw new IllegalArgumentException("endGroup() not called at the end of a group".toString());
            }
            int iR = SlotTableKt.R(this.groups, this.parent);
            this.parent = iR;
            this.currentEnd = iR < 0 ? this.groupsSize : iR + SlotTableKt.G(this.groups, iR);
        }
    }

    @NotNull
    public final List<KeyInfo> h() {
        ArrayList arrayList = new ArrayList();
        if (this.emptyCount > 0) {
            return arrayList;
        }
        int iG = this.currentGroup;
        int i10 = 0;
        while (iG < this.currentEnd) {
            arrayList.add(new KeyInfo(SlotTableKt.M(this.groups, iG), L(this.groups, iG), iG, SlotTableKt.L(this.groups, iG) ? 1 : SlotTableKt.O(this.groups, iG), i10));
            iG += SlotTableKt.G(this.groups, iG);
            i10++;
        }
        return arrayList;
    }

    public final void i(int i10, @NotNull p<? super Integer, Object, l0> block) {
        t.j(block, "block");
        int iT = SlotTableKt.T(this.groups, i10);
        int i11 = i10 + 1;
        int iE = i11 < this.table.g() ? SlotTableKt.E(this.table.f(), i11) : this.table.m();
        for (int i12 = iT; i12 < iE; i12++) {
            block.invoke(Integer.valueOf(i12 - iT), this.slots[i12]);
        }
    }

    @Nullable
    public final Object l() {
        int i10 = this.currentGroup;
        if (i10 < this.currentEnd) {
            return b(this.groups, i10);
        }
        return 0;
    }

    public final int n() {
        int i10 = this.currentGroup;
        if (i10 < this.currentEnd) {
            return SlotTableKt.M(this.groups, i10);
        }
        return 0;
    }

    @Nullable
    public final Object o() {
        int i10 = this.currentGroup;
        if (i10 < this.currentEnd) {
            return L(this.groups, i10);
        }
        return null;
    }

    public final int p() {
        return SlotTableKt.G(this.groups, this.currentGroup);
    }

    public final int q() {
        return this.currentSlot - SlotTableKt.T(this.groups, this.parent);
    }

    public final int t() {
        int i10 = this.parent;
        if (i10 >= 0) {
            return SlotTableKt.O(this.groups, i10);
        }
        return 0;
    }

    @NotNull
    public String toString() {
        return "SlotReader(current=" + this.currentGroup + ", key=" + n() + ", parent=" + this.parent + ", end=" + this.currentEnd + ')';
    }

    @Nullable
    public final Object w(int i10) {
        return b(this.groups, i10);
    }

    @Nullable
    public final Object x(int i10) {
        return y(this.currentGroup, i10);
    }

    @Nullable
    public final Object y(int i10, int i11) {
        int iT = SlotTableKt.T(this.groups, i10);
        int i12 = i10 + 1;
        int i13 = iT + i11;
        return i13 < (i12 < this.groupsSize ? SlotTableKt.E(this.groups, i12) : this.slotsSize) ? this.slots[i13] : Composer.Companion.a();
    }

    public final int z(int i10) {
        return SlotTableKt.M(this.groups, i10);
    }

    private final Object J(int[] iArr, int i10) {
        if (SlotTableKt.L(iArr, i10)) {
            return this.slots[SlotTableKt.P(iArr, i10)];
        }
        return Composer.Companion.a();
    }

    private final Object L(int[] iArr, int i10) {
        if (SlotTableKt.J(iArr, i10)) {
            return this.slots[SlotTableKt.Q(iArr, i10)];
        }
        return null;
    }

    private final Object b(int[] iArr, int i10) {
        if (SlotTableKt.H(iArr, i10)) {
            return this.slots[SlotTableKt.A(iArr, i10)];
        }
        return Composer.Companion.a();
    }

    public final boolean E() {
        if (!r() && this.currentGroup != this.currentEnd) {
            return false;
        }
        return true;
    }
}
