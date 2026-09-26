package kotlinx.serialization.internal;

import java.util.Arrays;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class d2 extends u1<short[]> {

    @NotNull
    private short[] buffer;
    private int position;

    @Override // kotlinx.serialization.internal.u1
    public int d() {
        return this.position;
    }

    public final void e(short s) {
        u1.c(this, 0, 1, null);
        short[] sArr = this.buffer;
        int iD = d();
        this.position = iD + 1;
        sArr[iD] = s;
    }

    public d2(@NotNull short[] bufferWithData) {
        kotlin.jvm.internal.t.j(bufferWithData, "bufferWithData");
        this.buffer = bufferWithData;
        this.position = bufferWithData.length;
        b(10);
    }

    @Override // kotlinx.serialization.internal.u1
    public void b(int i10) {
        short[] sArr = this.buffer;
        if (sArr.length < i10) {
            short[] sArrCopyOf = Arrays.copyOf(sArr, j8.o.e(i10, sArr.length * 2));
            kotlin.jvm.internal.t.i(sArrCopyOf, "copyOf(this, newSize)");
            this.buffer = sArrCopyOf;
        }
    }

    @Override // kotlinx.serialization.internal.u1
    @NotNull
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public short[] a() {
        short[] sArrCopyOf = Arrays.copyOf(this.buffer, d());
        kotlin.jvm.internal.t.i(sArrCopyOf, "copyOf(this, newSize)");
        return sArrCopyOf;
    }
}
