package kotlinx.serialization.internal;

import java.util.Arrays;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class h0 extends u1<float[]> {

    @NotNull
    private float[] buffer;
    private int position;

    @Override // kotlinx.serialization.internal.u1
    public int d() {
        return this.position;
    }

    public final void e(float f) {
        u1.c(this, 0, 1, null);
        float[] fArr = this.buffer;
        int iD = d();
        this.position = iD + 1;
        fArr[iD] = f;
    }

    public h0(@NotNull float[] bufferWithData) {
        kotlin.jvm.internal.t.j(bufferWithData, "bufferWithData");
        this.buffer = bufferWithData;
        this.position = bufferWithData.length;
        b(10);
    }

    @Override // kotlinx.serialization.internal.u1
    public void b(int i10) {
        float[] fArr = this.buffer;
        if (fArr.length < i10) {
            float[] fArrCopyOf = Arrays.copyOf(fArr, j8.o.e(i10, fArr.length * 2));
            kotlin.jvm.internal.t.i(fArrCopyOf, "copyOf(this, newSize)");
            this.buffer = fArrCopyOf;
        }
    }

    @Override // kotlinx.serialization.internal.u1
    @NotNull
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public float[] a() {
        float[] fArrCopyOf = Arrays.copyOf(this.buffer, d());
        kotlin.jvm.internal.t.i(fArrCopyOf, "copyOf(this, newSize)");
        return fArrCopyOf;
    }
}
