package kotlinx.serialization.internal;

import java.util.Arrays;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class r2 extends u1<w7.g0> {

    @NotNull
    private long[] buffer;
    private int position;

    public /* synthetic */ r2(long[] jArr, kotlin.jvm.internal.k kVar) {
        this(jArr);
    }

    @Override // kotlinx.serialization.internal.u1
    public int d() {
        return this.position;
    }

    public final void e(long j6) {
        u1.c(this, 0, 1, null);
        long[] jArr = this.buffer;
        int iD = d();
        this.position = iD + 1;
        w7.g0.v(jArr, iD, j6);
    }

    private r2(long[] jArr) {
        this.buffer = jArr;
        this.position = w7.g0.r(jArr);
        b(10);
    }

    @Override // kotlinx.serialization.internal.u1
    public void b(int i10) {
        if (w7.g0.r(this.buffer) < i10) {
            long[] jArr = this.buffer;
            long[] jArrCopyOf = Arrays.copyOf(jArr, j8.o.e(i10, w7.g0.r(jArr) * 2));
            kotlin.jvm.internal.t.i(jArrCopyOf, "copyOf(this, newSize)");
            this.buffer = w7.g0.e(jArrCopyOf);
        }
    }

    @NotNull
    public long[] f() {
        long[] jArrCopyOf = Arrays.copyOf(this.buffer, d());
        kotlin.jvm.internal.t.i(jArrCopyOf, "copyOf(this, newSize)");
        return w7.g0.e(jArrCopyOf);
    }

    @Override // kotlinx.serialization.internal.u1
    public /* bridge */ /* synthetic */ w7.g0 a() {
        return w7.g0.a(f());
    }
}
