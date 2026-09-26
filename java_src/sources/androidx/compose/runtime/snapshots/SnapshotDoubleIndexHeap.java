package androidx.compose.runtime.snapshots;

import kotlin.collections.o;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class SnapshotDoubleIndexHeap {
    private int firstFreeHandle;

    @NotNull
    private int[] handles;
    private int size;

    @NotNull
    private int[] values = new int[16];

    @NotNull
    private int[] index = new int[16];

    private final int b() {
        int length = this.handles.length;
        if (this.firstFreeHandle >= length) {
            int i10 = length * 2;
            int[] iArr = new int[i10];
            int i11 = 0;
            while (i11 < i10) {
                int i12 = i11 + 1;
                iArr[i11] = i12;
                i11 = i12;
            }
            o.l(this.handles, iArr, 0, 0, 0, 14, null);
            this.handles = iArr;
        }
        int i13 = this.firstFreeHandle;
        this.firstFreeHandle = this.handles[i13];
        return i13;
    }

    private final void c(int i10) {
        int[] iArr = this.values;
        int length = iArr.length;
        if (i10 <= length) {
            return;
        }
        int i11 = length * 2;
        int[] iArr2 = new int[i11];
        int[] iArr3 = new int[i11];
        o.l(iArr, iArr2, 0, 0, 0, 14, null);
        o.l(this.index, iArr3, 0, 0, 0, 14, null);
        this.values = iArr2;
        this.index = iArr3;
    }

    private final void d(int i10) {
        this.handles[i10] = this.firstFreeHandle;
        this.firstFreeHandle = i10;
    }

    private final void g(int i10) {
        int i11;
        int[] iArr = this.values;
        int i12 = this.size >> 1;
        while (i10 < i12) {
            int i13 = (i10 + 1) << 1;
            int i14 = i13 - 1;
            if (i13 >= this.size || (i11 = iArr[i13]) >= iArr[i14]) {
                if (iArr[i14] >= iArr[i10]) {
                    return;
                }
                i(i14, i10);
                i10 = i14;
            } else {
                if (i11 >= iArr[i10]) {
                    return;
                }
                i(i13, i10);
                i10 = i13;
            }
        }
    }

    private final void h(int i10) {
        int[] iArr = this.values;
        int i11 = iArr[i10];
        while (i10 > 0) {
            int i12 = ((i10 + 1) >> 1) - 1;
            if (iArr[i12] <= i11) {
                return;
            }
            i(i12, i10);
            i10 = i12;
        }
    }

    private final void i(int i10, int i11) {
        int[] iArr = this.values;
        int[] iArr2 = this.index;
        int[] iArr3 = this.handles;
        int i12 = iArr[i10];
        iArr[i10] = iArr[i11];
        iArr[i11] = i12;
        int i13 = iArr2[i10];
        iArr2[i10] = iArr2[i11];
        iArr2[i11] = i13;
        iArr3[iArr2[i10]] = i10;
        iArr3[iArr2[i11]] = i11;
    }

    public final int a(int i10) {
        c(this.size + 1);
        int i11 = this.size;
        this.size = i11 + 1;
        int iB = b();
        this.values[i11] = i10;
        this.index[i11] = iB;
        this.handles[iB] = i11;
        h(i11);
        return iB;
    }

    public final int e(int i10) {
        return this.size > 0 ? this.values[0] : i10;
    }

    public final void f(int i10) {
        int i11 = this.handles[i10];
        i(i11, this.size - 1);
        this.size--;
        h(i11);
        g(i11);
        d(i10);
    }

    public SnapshotDoubleIndexHeap() {
        int[] iArr = new int[16];
        int i10 = 0;
        while (i10 < 16) {
            int i11 = i10 + 1;
            iArr[i10] = i11;
            i10 = i11;
        }
        this.handles = iArr;
    }
}
