package kotlinx.serialization.internal;

import java.util.Arrays;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class u2 extends u1<w7.j0> {

    @NotNull
    private short[] buffer;
    private int position;

    public /* synthetic */ u2(short[] sArr, kotlin.jvm.internal.k kVar) {
        this(sArr);
    }

    @Override // kotlinx.serialization.internal.u1
    public int d() {
        return this.position;
    }

    public final void e(short s) {
        u1.c(this, 0, 1, null);
        short[] sArr = this.buffer;
        int iD = d();
        this.position = iD + 1;
        w7.j0.v(sArr, iD, s);
    }

    private u2(short[] sArr) {
        this.buffer = sArr;
        this.position = w7.j0.r(sArr);
        b(10);
    }

    @Override // kotlinx.serialization.internal.u1
    public void b(int i10) {
        if (w7.j0.r(this.buffer) < i10) {
            short[] sArr = this.buffer;
            short[] sArrCopyOf = Arrays.copyOf(sArr, j8.o.e(i10, w7.j0.r(sArr) * 2));
            kotlin.jvm.internal.t.i(sArrCopyOf, "copyOf(this, newSize)");
            this.buffer = w7.j0.e(sArrCopyOf);
        }
    }

    @NotNull
    public short[] f() {
        short[] sArrCopyOf = Arrays.copyOf(this.buffer, d());
        kotlin.jvm.internal.t.i(sArrCopyOf, "copyOf(this, newSize)");
        return w7.j0.e(sArrCopyOf);
    }

    @Override // kotlinx.serialization.internal.u1
    public /* bridge */ /* synthetic */ w7.j0 a() {
        return w7.j0.a(f());
    }
}
