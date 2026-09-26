package kotlinx.serialization.internal;

import java.util.Arrays;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class g extends u1<boolean[]> {

    @NotNull
    private boolean[] buffer;
    private int position;

    @Override // kotlinx.serialization.internal.u1
    public int d() {
        return this.position;
    }

    public final void e(boolean z6) {
        u1.c(this, 0, 1, null);
        boolean[] zArr = this.buffer;
        int iD = d();
        this.position = iD + 1;
        zArr[iD] = z6;
    }

    public g(@NotNull boolean[] bufferWithData) {
        kotlin.jvm.internal.t.j(bufferWithData, "bufferWithData");
        this.buffer = bufferWithData;
        this.position = bufferWithData.length;
        b(10);
    }

    @Override // kotlinx.serialization.internal.u1
    public void b(int i10) {
        boolean[] zArr = this.buffer;
        if (zArr.length < i10) {
            boolean[] zArrCopyOf = Arrays.copyOf(zArr, j8.o.e(i10, zArr.length * 2));
            kotlin.jvm.internal.t.i(zArrCopyOf, "copyOf(this, newSize)");
            this.buffer = zArrCopyOf;
        }
    }

    @Override // kotlinx.serialization.internal.u1
    @NotNull
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public boolean[] a() {
        boolean[] zArrCopyOf = Arrays.copyOf(this.buffer, d());
        kotlin.jvm.internal.t.i(zArrCopyOf, "copyOf(this, newSize)");
        return zArrCopyOf;
    }
}
