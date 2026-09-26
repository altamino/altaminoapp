package kotlinx.serialization.internal;

import java.util.Arrays;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class a0 extends u1<double[]> {

    @NotNull
    private double[] buffer;
    private int position;

    @Override // kotlinx.serialization.internal.u1
    public int d() {
        return this.position;
    }

    public final void e(double d) {
        u1.c(this, 0, 1, null);
        double[] dArr = this.buffer;
        int iD = d();
        this.position = iD + 1;
        dArr[iD] = d;
    }

    public a0(@NotNull double[] bufferWithData) {
        kotlin.jvm.internal.t.j(bufferWithData, "bufferWithData");
        this.buffer = bufferWithData;
        this.position = bufferWithData.length;
        b(10);
    }

    @Override // kotlinx.serialization.internal.u1
    public void b(int i10) {
        double[] dArr = this.buffer;
        if (dArr.length < i10) {
            double[] dArrCopyOf = Arrays.copyOf(dArr, j8.o.e(i10, dArr.length * 2));
            kotlin.jvm.internal.t.i(dArrCopyOf, "copyOf(this, newSize)");
            this.buffer = dArrCopyOf;
        }
    }

    @Override // kotlinx.serialization.internal.u1
    @NotNull
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public double[] a() {
        double[] dArrCopyOf = Arrays.copyOf(this.buffer, d());
        kotlin.jvm.internal.t.i(dArrCopyOf, "copyOf(this, newSize)");
        return dArrCopyOf;
    }
}
