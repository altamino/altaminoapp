package kotlinx.serialization.internal;

import java.util.Arrays;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class o2 extends u1<w7.e0> {

    @NotNull
    private int[] buffer;
    private int position;

    public /* synthetic */ o2(int[] iArr, kotlin.jvm.internal.k kVar) {
        this(iArr);
    }

    @Override // kotlinx.serialization.internal.u1
    public int d() {
        return this.position;
    }

    public final void e(int i10) {
        u1.c(this, 0, 1, null);
        int[] iArr = this.buffer;
        int iD = d();
        this.position = iD + 1;
        w7.e0.v(iArr, iD, i10);
    }

    private o2(int[] iArr) {
        this.buffer = iArr;
        this.position = w7.e0.r(iArr);
        b(10);
    }

    @Override // kotlinx.serialization.internal.u1
    public void b(int i10) {
        if (w7.e0.r(this.buffer) < i10) {
            int[] iArr = this.buffer;
            int[] iArrCopyOf = Arrays.copyOf(iArr, j8.o.e(i10, w7.e0.r(iArr) * 2));
            kotlin.jvm.internal.t.i(iArrCopyOf, "copyOf(this, newSize)");
            this.buffer = w7.e0.e(iArrCopyOf);
        }
    }

    @NotNull
    public int[] f() {
        int[] iArrCopyOf = Arrays.copyOf(this.buffer, d());
        kotlin.jvm.internal.t.i(iArrCopyOf, "copyOf(this, newSize)");
        return w7.e0.e(iArrCopyOf);
    }

    @Override // kotlinx.serialization.internal.u1
    public /* bridge */ /* synthetic */ w7.e0 a() {
        return w7.e0.a(f());
    }
}
