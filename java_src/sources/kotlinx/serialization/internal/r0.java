package kotlinx.serialization.internal;

import java.util.Arrays;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class r0 extends u1<int[]> {

    @NotNull
    private int[] buffer;
    private int position;

    @Override // kotlinx.serialization.internal.u1
    public int d() {
        return this.position;
    }

    public final void e(int i10) {
        u1.c(this, 0, 1, null);
        int[] iArr = this.buffer;
        int iD = d();
        this.position = iD + 1;
        iArr[iD] = i10;
    }

    public r0(@NotNull int[] bufferWithData) {
        kotlin.jvm.internal.t.j(bufferWithData, "bufferWithData");
        this.buffer = bufferWithData;
        this.position = bufferWithData.length;
        b(10);
    }

    @Override // kotlinx.serialization.internal.u1
    public void b(int i10) {
        int[] iArr = this.buffer;
        if (iArr.length < i10) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, j8.o.e(i10, iArr.length * 2));
            kotlin.jvm.internal.t.i(iArrCopyOf, "copyOf(this, newSize)");
            this.buffer = iArrCopyOf;
        }
    }

    @Override // kotlinx.serialization.internal.u1
    @NotNull
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public int[] a() {
        int[] iArrCopyOf = Arrays.copyOf(this.buffer, d());
        kotlin.jvm.internal.t.i(iArrCopyOf, "copyOf(this, newSize)");
        return iArrCopyOf;
    }
}
