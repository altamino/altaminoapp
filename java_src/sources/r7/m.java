package r7;

import java.io.Closeable;
import java.io.EOFException;
import java.nio.ByteBuffer;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class m implements Closeable {

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private s7.a _head;
    private int headEndExclusive;

    @NotNull
    private ByteBuffer headMemory;
    private int headPosition;
    private boolean noMoreChunksAvailable;

    @NotNull
    private final t7.g<s7.a> pool;
    private long tailRemaining;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    public m() {
        this(null, 0L, null, 7, null);
    }

    private final int O0(Appendable appendable, int i10, int i11) throws Throwable {
        int i12;
        boolean z6;
        boolean z10;
        boolean z11;
        boolean z12 = false;
        if (i11 == 0 && i10 == 0) {
            return 0;
        }
        if (g0()) {
            if (i10 == 0) {
                return 0;
            }
            e(i10);
            throw new w7.i();
        }
        if (i11 < i10) {
            I0(i10, i11);
            throw new w7.i();
        }
        s7.a aVarB = s7.g.b(this, 1);
        if (aVarB == null) {
            i12 = 0;
        } else {
            i12 = 0;
            boolean z13 = false;
            do {
                try {
                    ByteBuffer byteBufferG = aVarB.g();
                    int iH = aVarB.h();
                    int iJ = aVarB.j();
                    int i13 = iH;
                    while (true) {
                        if (i13 >= iJ) {
                            aVarB.c(iJ - iH);
                            z6 = true;
                            break;
                        }
                        byte b7 = byteBufferG.get(i13);
                        int i14 = b7 & 255;
                        if ((b7 & 128) != 128) {
                            char c7 = (char) i14;
                            if (i12 == i11) {
                                z11 = false;
                            } else {
                                appendable.append(c7);
                                i12++;
                                z11 = true;
                            }
                            if (z11) {
                                i13++;
                            }
                        }
                        aVarB.c(i13 - iH);
                        z6 = false;
                        break;
                    }
                    if (z6) {
                        z10 = true;
                    } else if (i12 == i11) {
                        z10 = false;
                    } else {
                        z10 = false;
                        z13 = true;
                    }
                    if (!z10) {
                        s7.g.a(this, aVarB);
                        break;
                    }
                    try {
                        aVarB = s7.g.c(this, aVarB);
                    } catch (Throwable th) {
                        th = th;
                        if (z12) {
                            s7.g.a(this, aVarB);
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    z12 = true;
                }
            } while (aVarB != null);
            z12 = z13;
        }
        if (z12) {
            return i12 + R0(appendable, i10 - i12, i11 - i12);
        }
        if (i12 >= i10) {
            return i12;
        }
        K0(i10, i12);
        throw new w7.i();
    }

    public final int E0() {
        return this.headPosition;
    }

    @NotNull
    public final t7.g<s7.a> F0() {
        return this.pool;
    }

    protected final void H0() {
        if (this.noMoreChunksAvailable) {
            return;
        }
        this.noMoreChunksAvailable = true;
    }

    protected abstract int O(@NotNull ByteBuffer byteBuffer, int i10, int i11);

    public final void T0(int i10) {
        this.headPosition = i10;
    }

    public final boolean h() {
        return (this.headPosition == this.headEndExclusive && this.tailRemaining == 0) ? false : true;
    }

    protected abstract void k();

    public final int t0() {
        return this.headEndExclusive;
    }

    @NotNull
    public final ByteBuffer y0() {
        return this.headMemory;
    }

    public m(@NotNull s7.a head, long j6, @NotNull t7.g<s7.a> pool) {
        t.j(head, "head");
        t.j(pool, "pool");
        this.pool = pool;
        this._head = head;
        this.headMemory = head.g();
        this.headPosition = head.h();
        int iJ = head.j();
        this.headEndExclusive = iJ;
        this.tailRemaining = j6 - ((long) (iJ - this.headPosition));
    }

    private final Void I0(int i10, int i11) {
        throw new IllegalArgumentException("min should be less or equal to max but min = " + i10 + ", max = " + i11);
    }

    private final Void J0(int i10) {
        throw new IllegalStateException("minSize of " + i10 + " is too big (should be less than 8)");
    }

    private final Void K0(int i10, int i11) throws s7.d {
        throw new s7.d("Premature end of stream: expected at least " + i10 + " chars but had only " + i11);
    }

    public static /* synthetic */ String Q0(m mVar, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readText");
        }
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = Integer.MAX_VALUE;
        }
        return mVar.P0(i10, i11);
    }

    private final int R0(Appendable appendable, int i10, int i11) throws Throwable {
        int i12;
        boolean z6;
        boolean z10;
        boolean z11;
        boolean z12;
        s7.a aVarC;
        int i13;
        int i14 = 1;
        s7.a aVarB = s7.g.b(this, 1);
        if (aVarB == null) {
            i13 = 0;
        } else {
            int i15 = 1;
            int i16 = 0;
            do {
                try {
                    int iJ = aVarB.j() - aVarB.h();
                    if (iJ >= i15) {
                        try {
                            ByteBuffer byteBufferG = aVarB.g();
                            int iH = aVarB.h();
                            int iJ2 = aVarB.j();
                            int i17 = iH;
                            int i18 = 0;
                            int i19 = 0;
                            int i20 = 0;
                            while (true) {
                                if (i17 < iJ2) {
                                    byte b7 = byteBufferG.get(i17);
                                    int i21 = b7 & 255;
                                    i12 = -1;
                                    if ((b7 & 128) == 0) {
                                        if (i18 != 0) {
                                            s7.f.i(i18);
                                            throw new w7.i();
                                        }
                                        char c7 = (char) i21;
                                        if (i16 == i11) {
                                            z12 = false;
                                        } else {
                                            appendable.append(c7);
                                            i16++;
                                            z12 = true;
                                        }
                                        if (!z12) {
                                            try {
                                                aVarB.c(i17 - iH);
                                                i14 = 1;
                                            } catch (Throwable th) {
                                                th = th;
                                                i14 = 1;
                                                aVarB.j();
                                                aVarB.h();
                                                throw th;
                                            }
                                        }
                                        i14 = 1;
                                        i17++;
                                        th = th;
                                        i14 = 1;
                                        aVarB.j();
                                        aVarB.h();
                                        throw th;
                                    }
                                    if (i18 == 0) {
                                        int i22 = 128;
                                        i19 = i21;
                                        for (int i23 = 1; i23 < 7 && (i19 & i22) != 0; i23++) {
                                            i19 &= ~i22;
                                            i22 >>= 1;
                                            i18++;
                                        }
                                        int i24 = i18 - 1;
                                        if (i18 > iJ2 - i17) {
                                            aVarB.c(i17 - iH);
                                            i12 = i18;
                                            i14 = 1;
                                        } else {
                                            i20 = i18;
                                            i18 = i24;
                                            i14 = 1;
                                            i17++;
                                        }
                                    } else {
                                        i19 = (i19 << 6) | (b7 & 127);
                                        i18--;
                                        if (i18 == 0) {
                                            if (!s7.f.f(i19)) {
                                                if (!s7.f.g(i19)) {
                                                    i14 = 1;
                                                    s7.f.j(i19);
                                                    throw new w7.i();
                                                }
                                                char cE = (char) s7.f.e(i19);
                                                if (i16 == i11) {
                                                    z6 = false;
                                                } else {
                                                    appendable.append(cE);
                                                    i16++;
                                                    z6 = true;
                                                }
                                                if (z6) {
                                                    char cH = (char) s7.f.h(i19);
                                                    if (i16 == i11) {
                                                        z10 = false;
                                                    } else {
                                                        appendable.append(cH);
                                                        i16++;
                                                        z10 = true;
                                                    }
                                                    if (!z10) {
                                                    }
                                                }
                                                i14 = 1;
                                                aVarB.c(((i17 - iH) - i20) + 1);
                                                aVarB.j();
                                                aVarB.h();
                                                throw th;
                                            }
                                            char c10 = (char) i19;
                                            if (i16 == i11) {
                                                z11 = false;
                                            } else {
                                                appendable.append(c10);
                                                i16++;
                                                z11 = true;
                                            }
                                            if (!z11) {
                                                aVarB.c(((i17 - iH) - i20) + 1);
                                                i14 = 1;
                                            }
                                            i14 = 1;
                                            i19 = 0;
                                        } else {
                                            i14 = 1;
                                        }
                                        i17++;
                                    }
                                } else {
                                    aVarB.c(iJ2 - iH);
                                    i12 = 0;
                                }
                                i15 = i12 == 0 ? i14 : i12 > 0 ? i12 : 0;
                                iJ = aVarB.j() - aVarB.h();
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                    if (iJ == 0) {
                        try {
                            aVarC = s7.g.c(this, aVarB);
                        } catch (Throwable th3) {
                            th = th3;
                            i14 = 0;
                            if (i14 != 0) {
                                s7.g.a(this, aVarB);
                            }
                            throw th;
                        }
                    } else if (iJ < i15 || aVarB.e() - aVarB.f() < 8) {
                        s7.g.a(this, aVarB);
                        aVarC = s7.g.b(this, i15);
                    } else {
                        aVarC = aVarB;
                    }
                    if (aVarC == null) {
                        i14 = 0;
                        break;
                    }
                    aVarB = aVarC;
                } catch (Throwable th4) {
                    th = th4;
                }
            } while (i15 > 0);
            if (i14 != 0) {
                s7.g.a(this, aVarB);
            }
            i13 = i16;
        }
        if (i13 >= i10) {
            return i13;
        }
        K0(i10, i13);
        throw new w7.i();
    }

    private final void U(s7.a aVar) {
        if (this.noMoreChunksAvailable && aVar.x() == null) {
            this.headPosition = aVar.h();
            this.headEndExclusive = aVar.j();
            U0(0L);
            return;
        }
        int iJ = aVar.j() - aVar.h();
        int iMin = Math.min(iJ, 8 - (aVar.e() - aVar.f()));
        if (iJ > iMin) {
            b0(aVar, iJ, iMin);
        } else {
            s7.a aVarS0 = this.pool.s0();
            aVarS0.o(8);
            aVarS0.C(aVar.w());
            b.a(aVarS0, aVar, iJ);
            V0(aVarS0);
        }
        aVar.A(this.pool);
    }

    private final void V0(s7.a aVar) {
        this._head = aVar;
        this.headMemory = aVar.g();
        this.headPosition = aVar.h();
        this.headEndExclusive = aVar.j();
    }

    private final void b0(s7.a aVar, int i10, int i11) {
        s7.a aVarS0 = this.pool.s0();
        s7.a aVarS1 = this.pool.s0();
        aVarS0.o(8);
        aVarS1.o(8);
        aVarS0.C(aVarS1);
        aVarS1.C(aVar.w());
        b.a(aVarS0, aVar, i10 - i11);
        b.a(aVarS1, aVar, i11);
        V0(aVarS0);
        U0(h.c(aVarS1));
    }

    private final void d(s7.a aVar) {
        s7.a aVarA = h.a(this._head);
        if (aVarA != s7.a.Companion.a()) {
            aVarA.C(aVar);
            U0(this.tailRemaining + h.c(aVar));
            return;
        }
        V0(aVar);
        if (this.tailRemaining != 0) {
            throw new IllegalStateException("It should be no tail remaining bytes if current tail is EmptyBuffer");
        }
        s7.a aVarX = aVar.x();
        U0(aVarX != null ? h.c(aVarX) : 0L);
    }

    private final Void e(int i10) throws EOFException {
        throw new EOFException("at least " + i10 + " characters required but no bytes available");
    }

    private final int m(int i10, int i11) {
        while (i10 != 0) {
            s7.a aVarL0 = L0(1);
            if (aVarL0 == null) {
                return i11;
            }
            int iMin = Math.min(aVarL0.j() - aVarL0.h(), i10);
            aVarL0.c(iMin);
            this.headPosition += iMin;
            a(aVarL0);
            i10 -= iMin;
            i11 += iMin;
        }
        return i11;
    }

    private final s7.a o() {
        if (this.noMoreChunksAvailable) {
            return null;
        }
        s7.a aVarL = L();
        if (aVarL == null) {
            this.noMoreChunksAvailable = true;
            return null;
        }
        d(aVarL);
        return aVarL;
    }

    private final s7.a q(s7.a aVar, s7.a aVar2) {
        while (aVar != aVar2) {
            s7.a aVarW = aVar.w();
            aVar.A(this.pool);
            if (aVarW == null) {
                V0(aVar2);
                U0(0L);
                aVar = aVar2;
            } else {
                if (aVarW.j() > aVarW.h()) {
                    V0(aVarW);
                    U0(this.tailRemaining - ((long) (aVarW.j() - aVarW.h())));
                    return aVarW;
                }
                aVar = aVarW;
            }
        }
        return o();
    }

    @Nullable
    protected s7.a L() {
        s7.a aVarS0 = this.pool.s0();
        try {
            aVarS0.o(8);
            int iO = O(aVarS0.g(), aVarS0.j(), aVarS0.f() - aVarS0.j());
            if (iO == 0) {
                this.noMoreChunksAvailable = true;
                if (aVarS0.j() <= aVarS0.h()) {
                    aVarS0.A(this.pool);
                    return null;
                }
            }
            aVarS0.a(iO);
            return aVarS0;
        } catch (Throwable th) {
            aVarS0.A(this.pool);
            throw th;
        }
    }

    @NotNull
    public final String P0(int i10, int i11) throws Throwable {
        if (i10 == 0 && (i11 == 0 || g0())) {
            return "";
        }
        long jG0 = G0();
        if (jG0 > 0 && i11 >= jG0) {
            return s.g(this, (int) jG0, null, 2, null);
        }
        StringBuilder sb = new StringBuilder(j8.o.j(j8.o.e(i10, 16), i11));
        O0(sb, i10, i11);
        String string = sb.toString();
        t.i(string, "StringBuilder(capacity).…builderAction).toString()");
        return string;
    }

    public final void Q(@NotNull s7.a current) {
        t.j(current, "current");
        s7.a aVarX = current.x();
        if (aVarX == null) {
            U(current);
            return;
        }
        int iJ = current.j() - current.h();
        int iMin = Math.min(iJ, 8 - (current.e() - current.f()));
        if (aVarX.i() < iMin) {
            U(current);
            return;
        }
        d.f(aVarX, iMin);
        if (iJ > iMin) {
            current.l();
            this.headEndExclusive = current.j();
            U0(this.tailRemaining + ((long) iMin));
        } else {
            V0(aVarX);
            U0(this.tailRemaining - ((long) ((aVarX.j() - aVarX.h()) - iMin)));
            current.w();
            current.A(this.pool);
        }
    }

    @NotNull
    public final s7.a S0(@NotNull s7.a head) {
        t.j(head, "head");
        s7.a aVarW = head.w();
        if (aVarW == null) {
            aVarW = s7.a.Companion.a();
        }
        V0(aVarW);
        U0(this.tailRemaining - ((long) (aVarW.j() - aVarW.h())));
        head.A(this.pool);
        return aVarW;
    }

    public final void U0(long j6) {
        if (j6 >= 0) {
            this.tailRemaining = j6;
            return;
        }
        throw new IllegalArgumentException(("tailRemaining shouldn't be negative: " + j6).toString());
    }

    public final boolean Y0(@NotNull s7.a chain) {
        t.j(chain, "chain");
        s7.a aVarA = h.a(k0());
        int iJ = chain.j() - chain.h();
        if (iJ == 0 || aVarA.f() - aVarA.j() < iJ) {
            return false;
        }
        b.a(aVarA, chain, iJ);
        if (k0() == aVarA) {
            this.headEndExclusive = aVarA.j();
            return true;
        }
        U0(this.tailRemaining + ((long) iJ));
        return true;
    }

    public final void b(@NotNull s7.a chain) {
        t.j(chain, "chain");
        s7.a.d dVar = s7.a.Companion;
        if (chain == dVar.a()) {
            return;
        }
        long jC = h.c(chain);
        if (this._head == dVar.a()) {
            V0(chain);
            U0(jC - ((long) (t0() - E0())));
        } else {
            h.a(this._head).C(chain);
            U0(this.tailRemaining + jC);
        }
    }

    @NotNull
    public final s7.a k0() {
        s7.a aVar = this._head;
        aVar.d(this.headPosition);
        return aVar;
    }

    public final int l(int i10) {
        if (i10 >= 0) {
            return m(i10, 0);
        }
        throw new IllegalArgumentException(("Negative discard is not allowed: " + i10).toString());
    }

    @Nullable
    public final s7.a p(@NotNull s7.a current) {
        t.j(current, "current");
        return q(current, s7.a.Companion.a());
    }

    @Nullable
    public final s7.a r(@NotNull s7.a current) {
        t.j(current, "current");
        return p(current);
    }

    private final s7.a N0(int i10, s7.a aVar) {
        while (true) {
            int iT0 = t0() - E0();
            if (iT0 >= i10) {
                return aVar;
            }
            s7.a aVarX = aVar.x();
            if (aVarX == null && (aVarX = o()) == null) {
                return null;
            }
            if (iT0 == 0) {
                if (aVar != s7.a.Companion.a()) {
                    S0(aVar);
                }
                aVar = aVarX;
            } else {
                int iA = b.a(aVar, aVarX, i10 - iT0);
                this.headEndExclusive = aVar.j();
                U0(this.tailRemaining - ((long) iA));
                if (aVarX.j() > aVarX.h()) {
                    aVarX.p(iA);
                } else {
                    aVar.C(null);
                    aVar.C(aVarX.w());
                    aVarX.A(this.pool);
                }
                if (aVar.j() - aVar.h() >= i10) {
                    return aVar;
                }
                if (i10 > 8) {
                    J0(i10);
                    throw new w7.i();
                }
            }
        }
    }

    private final void a(s7.a aVar) {
        if (aVar.j() - aVar.h() == 0) {
            S0(aVar);
        }
    }

    public final long G0() {
        return ((long) (t0() - E0())) + this.tailRemaining;
    }

    @Nullable
    public final s7.a L0(int i10) {
        s7.a aVarK0 = k0();
        if (this.headEndExclusive - this.headPosition >= i10) {
            return aVarK0;
        }
        return N0(i10, aVarK0);
    }

    @Nullable
    public final s7.a M0(int i10) {
        return N0(i10, k0());
    }

    @Nullable
    public final s7.a W0() {
        s7.a aVarK0 = k0();
        s7.a aVarX = aVarK0.x();
        s7.a aVarA = s7.a.Companion.a();
        if (aVarK0 == aVarA) {
            return null;
        }
        if (aVarX == null) {
            V0(aVarA);
            U0(0L);
        } else {
            V0(aVarX);
            U0(this.tailRemaining - ((long) (aVarX.j() - aVarX.h())));
        }
        aVarK0.C(null);
        return aVarK0;
    }

    @Nullable
    public final s7.a X0() {
        s7.a aVarK0 = k0();
        s7.a aVarA = s7.a.Companion.a();
        if (aVarK0 == aVarA) {
            return null;
        }
        V0(aVarA);
        U0(0L);
        return aVarK0;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        release();
        if (!this.noMoreChunksAvailable) {
            this.noMoreChunksAvailable = true;
        }
        k();
    }

    public final boolean g0() {
        if (t0() - E0() == 0 && this.tailRemaining == 0 && (this.noMoreChunksAvailable || o() == null)) {
            return true;
        }
        return false;
    }

    public final void n(int i10) throws EOFException {
        if (l(i10) == i10) {
            return;
        }
        throw new EOFException("Unable to discard " + i10 + " bytes due to end of packet");
    }

    public final void release() {
        s7.a aVarK0 = k0();
        s7.a aVarA = s7.a.Companion.a();
        if (aVarK0 != aVarA) {
            V0(aVarA);
            U0(0L);
            h.b(aVarK0, this.pool);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ m(s7.a aVar, long j6, t7.g gVar, int i10, kotlin.jvm.internal.k kVar) {
        aVar = (i10 & 1) != 0 ? s7.a.Companion.a() : aVar;
        this(aVar, (i10 & 2) != 0 ? h.c(aVar) : j6, (i10 & 4) != 0 ? s7.a.Companion.c() : gVar);
    }
}
