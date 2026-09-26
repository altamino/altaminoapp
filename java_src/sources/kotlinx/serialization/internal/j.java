package kotlinx.serialization.internal;

import java.util.Arrays;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class j extends u1<byte[]> {

    @NotNull
    private byte[] buffer;
    private int position;

    @Override // kotlinx.serialization.internal.u1
    public int d() {
        return this.position;
    }

    public final void e(byte b7) {
        u1.c(this, 0, 1, null);
        byte[] bArr = this.buffer;
        int iD = d();
        this.position = iD + 1;
        bArr[iD] = b7;
    }

    public j(@NotNull byte[] bufferWithData) {
        kotlin.jvm.internal.t.j(bufferWithData, "bufferWithData");
        this.buffer = bufferWithData;
        this.position = bufferWithData.length;
        b(10);
    }

    @Override // kotlinx.serialization.internal.u1
    public void b(int i10) {
        byte[] bArr = this.buffer;
        if (bArr.length < i10) {
            byte[] bArrCopyOf = Arrays.copyOf(bArr, j8.o.e(i10, bArr.length * 2));
            kotlin.jvm.internal.t.i(bArrCopyOf, "copyOf(this, newSize)");
            this.buffer = bArrCopyOf;
        }
    }

    @Override // kotlinx.serialization.internal.u1
    @NotNull
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public byte[] a() {
        byte[] bArrCopyOf = Arrays.copyOf(this.buffer, d());
        kotlin.jvm.internal.t.i(bArrCopyOf, "copyOf(this, newSize)");
        return bArrCopyOf;
    }
}
