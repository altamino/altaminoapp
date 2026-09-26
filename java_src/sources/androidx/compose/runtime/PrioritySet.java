package androidx.compose.runtime;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.d0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.i;

/* JADX INFO: loaded from: classes9.dex */
public final class PrioritySet {

    @NotNull
    private final List<Integer> list;

    /* JADX WARN: Multi-variable type inference failed */
    public PrioritySet() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public PrioritySet(@NotNull List<Integer> list) {
        t.j(list, "list");
        this.list = list;
    }

    public final void a(int i10) {
        if (!this.list.isEmpty()) {
            if (this.list.get(0).intValue() == i10) {
                return;
            }
            List<Integer> list = this.list;
            if (list.get(list.size() - 1).intValue() == i10) {
                return;
            }
        }
        int size = this.list.size();
        this.list.add(Integer.valueOf(i10));
        while (size > 0) {
            int i11 = ((size + 1) >>> 1) - 1;
            int iIntValue = this.list.get(i11).intValue();
            if (i10 <= iIntValue) {
                break;
            }
            this.list.set(size, Integer.valueOf(iIntValue));
            size = i11;
        }
        this.list.set(size, Integer.valueOf(i10));
    }

    public final boolean b() {
        return !this.list.isEmpty();
    }

    public final int c() {
        return ((Number) d0.j0(this.list)).intValue();
    }

    public final int d() {
        int iIntValue;
        if (!(this.list.size() > 0)) {
            ComposerKt.x("Set is empty".toString());
            throw new i();
        }
        int iIntValue2 = this.list.get(0).intValue();
        while ((!this.list.isEmpty()) && this.list.get(0).intValue() == iIntValue2) {
            List<Integer> list = this.list;
            list.set(0, (Integer) d0.v0(list));
            List<Integer> list2 = this.list;
            list2.remove(list2.size() - 1);
            int size = this.list.size();
            int size2 = this.list.size() >>> 1;
            int i10 = 0;
            while (i10 < size2) {
                int iIntValue3 = this.list.get(i10).intValue();
                int i11 = (i10 + 1) * 2;
                int i12 = i11 - 1;
                int iIntValue4 = this.list.get(i12).intValue();
                if (i11 < size && (iIntValue = this.list.get(i11).intValue()) > iIntValue4) {
                    if (iIntValue <= iIntValue3) {
                        break;
                    }
                    this.list.set(i10, Integer.valueOf(iIntValue));
                    this.list.set(i11, Integer.valueOf(iIntValue3));
                    i10 = i11;
                } else {
                    if (iIntValue4 <= iIntValue3) {
                        break;
                    }
                    this.list.set(i10, Integer.valueOf(iIntValue4));
                    this.list.set(i12, Integer.valueOf(iIntValue3));
                    i10 = i12;
                }
            }
        }
        return iIntValue2;
    }

    public /* synthetic */ PrioritySet(List list, int i10, k kVar) {
        this((i10 & 1) != 0 ? new ArrayList() : list);
    }
}
