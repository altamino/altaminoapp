package kotlinx.serialization.internal;

import java.util.Arrays;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class b1 extends u1<long[]> {

    @NotNull
    private long[] buffer;
    private int position;

    @Override // kotlinx.serialization.internal.u1
    public int d() {
        return this.position;
    }

    public final void e(long j6) {
        u1.c(this, 0, 1, null);
        long[] jArr = this.buffer;
        int iD = d();
        this.position = iD + 1;
        jArr[iD] = j6;
    }

    public b1(@NotNull long[] bufferWithData) {
        kotlin.jvm.internal.t.j(bufferWithData, "bufferWithData");
        this.buffer = bufferWithData;
        this.position = bufferWithData.length;
        b(10);
    }

    @Override // kotlinx.serialization.internal.u1
    public void b(int i10) {
        long[] jArr = this.buffer;
        if (jArr.length < i10) {
            long[] jArrCopyOf = Arrays.copyOf(jArr, j8.o.e(i10, jArr.length * 2));
            kotlin.jvm.internal.t.i(jArrCopyOf, "copyOf(this, newSize)");
            this.buffer = jArrCopyOf;
        }
    }

    @Override // kotlinx.serialization.internal.u1
    @NotNull
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public long[] a() {
        long[] jArrCopyOf = Arrays.copyOf(this.buffer, d());
        kotlin.jvm.internal.t.i(jArrCopyOf, "copyOf(this, newSize)");
        return jArrCopyOf;
    }
}
