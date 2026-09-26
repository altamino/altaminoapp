package androidx.compose.runtime;

import java.util.Arrays;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class IntStack {

    @NotNull
    private int[] slots = new int[10];
    private int tos;

    public final void a() {
        this.tos = 0;
    }

    public final int b() {
        return this.tos;
    }

    public final boolean d() {
        return this.tos == 0;
    }

    public final int c(int i10) {
        int i11 = this.tos;
        for (int i12 = 0; i12 < i11; i12++) {
            if (this.slots[i12] == i10) {
                return i12;
            }
        }
        return -1;
    }

    public final int e() {
        return this.slots[this.tos - 1];
    }

    public final int f(int i10) {
        return this.slots[i10];
    }

    public final int g(int i10) {
        return this.tos > 0 ? e() : i10;
    }

    public final int h() {
        int[] iArr = this.slots;
        int i10 = this.tos - 1;
        this.tos = i10;
        return iArr[i10];
    }

    public final void i(int i10) {
        int i11 = this.tos;
        int[] iArr = this.slots;
        if (i11 >= iArr.length) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length * 2);
            t.i(iArrCopyOf, "copyOf(this, newSize)");
            this.slots = iArrCopyOf;
        }
        int[] iArr2 = this.slots;
        int i12 = this.tos;
        this.tos = i12 + 1;
        iArr2[i12] = i10;
    }
}
