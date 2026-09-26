package kotlinx.serialization.internal;

import java.util.Arrays;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class p extends u1<char[]> {

    @NotNull
    private char[] buffer;
    private int position;

    @Override // kotlinx.serialization.internal.u1
    public int d() {
        return this.position;
    }

    public final void e(char c7) {
        u1.c(this, 0, 1, null);
        char[] cArr = this.buffer;
        int iD = d();
        this.position = iD + 1;
        cArr[iD] = c7;
    }

    public p(@NotNull char[] bufferWithData) {
        kotlin.jvm.internal.t.j(bufferWithData, "bufferWithData");
        this.buffer = bufferWithData;
        this.position = bufferWithData.length;
        b(10);
    }

    @Override // kotlinx.serialization.internal.u1
    public void b(int i10) {
        char[] cArr = this.buffer;
        if (cArr.length < i10) {
            char[] cArrCopyOf = Arrays.copyOf(cArr, j8.o.e(i10, cArr.length * 2));
            kotlin.jvm.internal.t.i(cArrCopyOf, "copyOf(this, newSize)");
            this.buffer = cArrCopyOf;
        }
    }

    @Override // kotlinx.serialization.internal.u1
    @NotNull
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public char[] a() {
        char[] cArrCopyOf = Arrays.copyOf(this.buffer, d());
        kotlin.jvm.internal.t.i(cArrCopyOf, "copyOf(this, newSize)");
        return cArrCopyOf;
    }
}
