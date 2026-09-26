package kotlinx.serialization.internal;

import java.util.Arrays;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class l2 extends u1<w7.c0> {

    @NotNull
    private byte[] buffer;
    private int position;

    public /* synthetic */ l2(byte[] bArr, kotlin.jvm.internal.k kVar) {
        this(bArr);
    }

    @Override // kotlinx.serialization.internal.u1
    public int d() {
        return this.position;
    }

    public final void e(byte b7) {
        u1.c(this, 0, 1, null);
        byte[] bArr = this.buffer;
        int iD = d();
        this.position = iD + 1;
        w7.c0.v(bArr, iD, b7);
    }

    private l2(byte[] bArr) {
        this.buffer = bArr;
        this.position = w7.c0.r(bArr);
        b(10);
    }

    @Override // kotlinx.serialization.internal.u1
    public void b(int i10) {
        if (w7.c0.r(this.buffer) < i10) {
            byte[] bArr = this.buffer;
            byte[] bArrCopyOf = Arrays.copyOf(bArr, j8.o.e(i10, w7.c0.r(bArr) * 2));
            kotlin.jvm.internal.t.i(bArrCopyOf, "copyOf(this, newSize)");
            this.buffer = w7.c0.e(bArrCopyOf);
        }
    }

    @NotNull
    public byte[] f() {
        byte[] bArrCopyOf = Arrays.copyOf(this.buffer, d());
        kotlin.jvm.internal.t.i(bArrCopyOf, "copyOf(this, newSize)");
        return w7.c0.e(bArrCopyOf);
    }

    @Override // kotlinx.serialization.internal.u1
    public /* bridge */ /* synthetic */ w7.c0 a() {
        return w7.c0.a(f());
    }
}
