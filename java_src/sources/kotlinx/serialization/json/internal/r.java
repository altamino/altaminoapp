package kotlinx.serialization.json.internal;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class r extends k {
    private final boolean forceQuoting;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(@NotNull p0 writer, boolean z6) {
        super(writer);
        kotlin.jvm.internal.t.j(writer, "writer");
        this.forceQuoting = z6;
    }

    @Override // kotlinx.serialization.json.internal.k
    public void d(byte b7) {
        boolean z6 = this.forceQuoting;
        String strE = w7.b0.e(w7.b0.b(b7));
        if (z6) {
            m(strE);
        } else {
            j(strE);
        }
    }

    @Override // kotlinx.serialization.json.internal.k
    public void h(int i10) {
        boolean z6 = this.forceQuoting;
        int iB = w7.d0.b(i10);
        if (z6) {
            m(Long.toString(((long) iB) & 4294967295L, 10));
        } else {
            j(Long.toString(((long) iB) & 4294967295L, 10));
        }
    }

    @Override // kotlinx.serialization.json.internal.k
    public void i(long j6) {
        boolean z6 = this.forceQuoting;
        long jB = w7.f0.b(j6);
        if (z6) {
            m(q.a(jB, 10));
        } else {
            j(p.a(jB, 10));
        }
    }

    @Override // kotlinx.serialization.json.internal.k
    public void k(short s) {
        boolean z6 = this.forceQuoting;
        String strE = w7.i0.e(w7.i0.b(s));
        if (z6) {
            m(strE);
        } else {
            j(strE);
        }
    }
}
