package r7;

import java.io.Closeable;
import java.io.EOFException;
import java.nio.ByteBuffer;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class p implements Appendable, Closeable {

    @Nullable
    private s7.a _head;

    @Nullable
    private s7.a _tail;
    private int chainedSize;

    @NotNull
    private final t7.g<s7.a> pool;
    private int tailEndExclusive;
    private int tailInitialPosition;

    @NotNull
    private ByteBuffer tailMemory;
    private int tailPosition;

    public p(@NotNull t7.g<s7.a> pool) {
        t.j(pool, "pool");
        this.pool = pool;
        this.tailMemory = p7.c.Companion.a();
    }

    private final void n(char c7) {
        int i10 = 3;
        s7.a aVarK0 = k0(3);
        try {
            ByteBuffer byteBufferG = aVarK0.g();
            int iJ = aVarK0.j();
            if (c7 >= 0 && c7 < 128) {
                byteBufferG.put(iJ, (byte) c7);
                i10 = 1;
            } else if (128 <= c7 && c7 < 2048) {
                byteBufferG.put(iJ, (byte) (((c7 >> 6) & 31) | 192));
                byteBufferG.put(iJ + 1, (byte) ((c7 & '?') | 128));
                i10 = 2;
            } else if (2048 <= c7 && c7 < 0) {
                byteBufferG.put(iJ, (byte) (((c7 >> '\f') & 15) | 224));
                byteBufferG.put(iJ + 1, (byte) (((c7 >> 6) & 63) | 128));
                byteBufferG.put(iJ + 2, (byte) ((c7 & '?') | 128));
            } else {
                if (0 > c7 || c7 >= 0) {
                    s7.f.j(c7);
                    throw new w7.i();
                }
                byteBufferG.put(iJ, (byte) (((c7 >> 18) & 7) | 240));
                byteBufferG.put(iJ + 1, (byte) (((c7 >> '\f') & 63) | 128));
                byteBufferG.put(iJ + 2, (byte) (((c7 >> 6) & 63) | 128));
                byteBufferG.put(iJ + 3, (byte) ((c7 & '?') | 128));
                i10 = 4;
            }
            aVarK0.a(i10);
            if (i10 < 0) {
                throw new IllegalStateException("The returned value shouldn't be negative".toString());
            }
            h();
        } catch (Throwable th) {
            h();
            throw th;
        }
    }

    @NotNull
    protected final t7.g<s7.a> Q() {
        return this.pool;
    }

    public final int U() {
        return this.tailEndExclusive;
    }

    public final int b0() {
        return this.tailPosition;
    }

    protected final int g0() {
        return this.chainedSize + (this.tailPosition - this.tailInitialPosition);
    }

    @Override // java.lang.Appendable
    @NotNull
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public p append(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            append("null", 0, 4);
        } else {
            append(charSequence, 0, charSequence.length());
        }
        return this;
    }

    protected abstract void q();

    protected abstract void r(@NotNull ByteBuffer byteBuffer, int i10, int i11);

    private final void G0(s7.a aVar, s7.a aVar2, t7.g<s7.a> gVar) {
        aVar.b(this.tailPosition);
        int iJ = aVar.j() - aVar.h();
        int iJ2 = aVar2.j() - aVar2.h();
        int iA = r.a();
        if (iJ2 >= iA || iJ2 > (aVar.e() - aVar.f()) + (aVar.f() - aVar.j())) {
            iJ2 = -1;
        }
        if (iJ >= iA || iJ > aVar2.i() || !s7.b.a(aVar2)) {
            iJ = -1;
        }
        if (iJ2 == -1 && iJ == -1) {
            l(aVar2);
            return;
        }
        if (iJ == -1 || iJ2 <= iJ) {
            b.a(aVar, aVar2, (aVar.f() - aVar.j()) + (aVar.e() - aVar.f()));
            h();
            s7.a aVarW = aVar2.w();
            if (aVarW != null) {
                l(aVarW);
            }
            aVar2.A(gVar);
            return;
        }
        if (iJ2 == -1 || iJ < iJ2) {
            H0(aVar2, aVar);
            return;
        }
        throw new IllegalStateException("prep = " + iJ + ", app = " + iJ2);
    }

    private final void m(s7.a aVar, s7.a aVar2, int i10) {
        s7.a aVar3 = this._tail;
        if (aVar3 == null) {
            this._head = aVar;
            this.chainedSize = 0;
        } else {
            aVar3.C(aVar);
            int i11 = this.tailPosition;
            aVar3.b(i11);
            this.chainedSize += i11 - this.tailInitialPosition;
        }
        this._tail = aVar2;
        this.chainedSize += i10;
        this.tailMemory = aVar2.g();
        this.tailPosition = aVar2.j();
        this.tailInitialPosition = aVar2.h();
        this.tailEndExclusive = aVar2.f();
    }

    private final s7.a o() {
        s7.a aVarS0 = this.pool.s0();
        aVarS0.o(8);
        p(aVarS0);
        return aVarS0;
    }

    public final void E0(@NotNull j packet) {
        t.j(packet, "packet");
        s7.a aVarX0 = packet.X0();
        if (aVarX0 == null) {
            packet.release();
            return;
        }
        s7.a aVar = this._tail;
        if (aVar == null) {
            l(aVarX0);
        } else {
            G0(aVar, aVarX0, packet.F0());
        }
    }

    public final void F0(@NotNull j p, long j6) throws EOFException {
        t.j(p, "p");
        while (j6 > 0) {
            long jT0 = p.t0() - p.E0();
            if (jT0 > j6) {
                s7.a aVarL0 = p.L0(1);
                if (aVarL0 == null) {
                    s.a(1);
                    throw new w7.i();
                }
                int iH = aVarL0.h();
                try {
                    q.a(this, aVarL0, (int) j6);
                    int iH2 = aVarL0.h();
                    if (iH2 < iH) {
                        throw new IllegalStateException("Buffer's position shouldn't be rewinded");
                    }
                    if (iH2 == aVarL0.j()) {
                        p.p(aVarL0);
                        return;
                    } else {
                        p.T0(iH2);
                        return;
                    }
                } catch (Throwable th) {
                    int iH3 = aVarL0.h();
                    if (iH3 < iH) {
                        throw new IllegalStateException("Buffer's position shouldn't be rewinded");
                    }
                    if (iH3 == aVarL0.j()) {
                        p.p(aVarL0);
                    } else {
                        p.T0(iH3);
                    }
                    throw th;
                }
            }
            j6 -= jT0;
            s7.a aVarW0 = p.W0();
            if (aVarW0 == null) {
                throw new EOFException("Unexpected end of packet");
            }
            p(aVarW0);
        }
    }

    @NotNull
    public final s7.a O() {
        s7.a aVar = this._head;
        return aVar == null ? s7.a.Companion.a() : aVar;
    }

    public final void h() {
        s7.a aVar = this._tail;
        if (aVar != null) {
            this.tailPosition = aVar.j();
        }
    }

    @Override // java.lang.Appendable
    @NotNull
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public p append(char c7) {
        int i10 = this.tailPosition;
        int i11 = 3;
        if (this.tailEndExclusive - i10 < 3) {
            n(c7);
            return this;
        }
        ByteBuffer byteBuffer = this.tailMemory;
        if (c7 >= 0 && c7 < 128) {
            byteBuffer.put(i10, (byte) c7);
            i11 = 1;
        } else if (128 <= c7 && c7 < 2048) {
            byteBuffer.put(i10, (byte) (((c7 >> 6) & 31) | 192));
            byteBuffer.put(i10 + 1, (byte) ((c7 & '?') | 128));
            i11 = 2;
        } else if (2048 <= c7 && c7 < 0) {
            byteBuffer.put(i10, (byte) (((c7 >> '\f') & 15) | 224));
            byteBuffer.put(i10 + 1, (byte) (((c7 >> 6) & 63) | 128));
            byteBuffer.put(i10 + 2, (byte) ((c7 & '?') | 128));
        } else {
            if (0 > c7 || c7 >= 0) {
                s7.f.j(c7);
                throw new w7.i();
            }
            byteBuffer.put(i10, (byte) (((c7 >> 18) & 7) | 240));
            byteBuffer.put(i10 + 1, (byte) (((c7 >> '\f') & 63) | 128));
            byteBuffer.put(i10 + 2, (byte) (((c7 >> 6) & 63) | 128));
            byteBuffer.put(i10 + 3, (byte) ((c7 & '?') | 128));
            i11 = 4;
        }
        this.tailPosition = i10 + i11;
        return this;
    }

    @Override // java.lang.Appendable
    @NotNull
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public p append(@Nullable CharSequence charSequence, int i10, int i11) {
        if (charSequence == null) {
            return append("null", i10, i11);
        }
        s.h(this, charSequence, i10, i11, kotlin.text.d.UTF_8);
        return this;
    }

    public final void l(@NotNull s7.a head) {
        t.j(head, "head");
        s7.a aVarA = h.a(head);
        long jC = h.c(head) - ((long) (aVarA.j() - aVarA.h()));
        if (jC < 2147483647L) {
            m(head, aVarA, (int) jC);
        } else {
            s7.e.a(jC, "total size increase");
            throw new w7.i();
        }
    }

    public final void p(@NotNull s7.a buffer) {
        t.j(buffer, "buffer");
        if (buffer.x() != null) {
            throw new IllegalStateException("It should be a single buffer chunk.".toString());
        }
        m(buffer, buffer, 0);
    }

    @Nullable
    public final s7.a t0() {
        s7.a aVar = this._head;
        if (aVar == null) {
            return null;
        }
        s7.a aVar2 = this._tail;
        if (aVar2 != null) {
            aVar2.b(this.tailPosition);
        }
        this._head = null;
        this._tail = null;
        this.tailPosition = 0;
        this.tailEndExclusive = 0;
        this.tailInitialPosition = 0;
        this.chainedSize = 0;
        this.tailMemory = p7.c.Companion.a();
        return aVar;
    }

    public final void y0(@NotNull s7.a chunkBuffer) {
        t.j(chunkBuffer, "chunkBuffer");
        s7.a aVar = this._tail;
        if (aVar == null) {
            l(chunkBuffer);
        } else {
            G0(aVar, chunkBuffer, this.pool);
        }
    }

    public p() {
        this(s7.a.Companion.c());
    }

    private final void H0(s7.a aVar, s7.a aVar2) {
        b.c(aVar, aVar2);
        s7.a aVar3 = this._head;
        if (aVar3 != null) {
            if (aVar3 == aVar2) {
                this._head = aVar;
            } else {
                while (true) {
                    s7.a aVarX = aVar3.x();
                    t.g(aVarX);
                    if (aVarX == aVar2) {
                        break;
                    } else {
                        aVar3 = aVarX;
                    }
                }
                aVar3.C(aVar);
            }
            aVar2.A(this.pool);
            this._tail = h.a(aVar);
            return;
        }
        throw new IllegalStateException("head should't be null since it is already handled in the fast-path".toString());
    }

    private final void L() {
        s7.a aVarT0 = t0();
        if (aVarT0 == null) {
            return;
        }
        s7.a aVarX = aVarT0;
        do {
            try {
                r(aVarX.g(), aVarX.h(), aVarX.j() - aVarX.h());
                aVarX = aVarX.x();
            } finally {
                h.b(aVarT0, this.pool);
            }
        } while (aVarX != null);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            flush();
        } finally {
            q();
        }
    }

    public final void d() {
        s7.a aVarO = O();
        if (aVarO != s7.a.Companion.a()) {
            if (aVarO.x() == null) {
                aVarO.r();
                aVarO.o(8);
                int iJ = aVarO.j();
                this.tailPosition = iJ;
                this.tailInitialPosition = iJ;
                this.tailEndExclusive = aVarO.f();
                return;
            }
            throw new IllegalStateException("Check failed.".toString());
        }
    }

    public final void flush() {
        L();
    }

    @NotNull
    public final s7.a k0(int i10) {
        s7.a aVar;
        if (U() - b0() >= i10 && (aVar = this._tail) != null) {
            aVar.b(this.tailPosition);
            return aVar;
        }
        return o();
    }

    public final void release() {
        close();
    }
}
