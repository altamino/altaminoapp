package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import org.bouncycastle.util.g;

/* JADX INFO: loaded from: classes11.dex */
public class b {
    private static final int DEFAULT_MINIMUM_LENGTH = 160;
    private BigInteger g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private BigInteger f3292j;
    private int l;
    private int m;
    private BigInteger p;
    private BigInteger q;
    private c validation;

    public b(BigInteger bigInteger, BigInteger bigInteger2) {
        this(bigInteger, bigInteger2, null, 0);
    }

    private static int a(int i10) {
        return (i10 != 0 && i10 < DEFAULT_MINIMUM_LENGTH) ? i10 : DEFAULT_MINIMUM_LENGTH;
    }

    public BigInteger b() {
        return this.g;
    }

    public BigInteger c() {
        return this.p;
    }

    public BigInteger d() {
        return this.q;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (d() != null) {
            if (!d().equals(bVar.d())) {
                return false;
            }
        } else if (bVar.d() != null) {
            return false;
        }
        return bVar.c().equals(this.p) && bVar.b().equals(this.g);
    }

    public int hashCode() {
        return (c().hashCode() ^ b().hashCode()) ^ (d() != null ? d().hashCode() : 0);
    }

    public b(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this(bigInteger, bigInteger2, bigInteger3, 0);
    }

    public b(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i10) {
        this(bigInteger, bigInteger2, bigInteger3, a(i10), i10, null, null);
    }

    public b(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i10, int i11) {
        this(bigInteger, bigInteger2, bigInteger3, i10, i11, null, null);
    }

    public b(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i10, int i11, BigInteger bigInteger4, c cVar) {
        if (i11 != 0) {
            if (i11 > bigInteger.bitLength()) {
                throw new IllegalArgumentException("when l value specified, it must satisfy 2^(l-1) <= p");
            }
            if (i11 < i10) {
                throw new IllegalArgumentException("when l value specified, it may not be less than m value");
            }
        }
        if (i10 > bigInteger.bitLength() && !g.b("org.bouncycastle.dh.allow_unsafe_p_value")) {
            throw new IllegalArgumentException("unsafe p value so small specific l required");
        }
        this.g = bigInteger2;
        this.p = bigInteger;
        this.q = bigInteger3;
        this.m = i10;
        this.l = i11;
        this.f3292j = bigInteger4;
        this.validation = cVar;
    }

    public b(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, c cVar) {
        this(bigInteger, bigInteger2, bigInteger3, DEFAULT_MINIMUM_LENGTH, 0, bigInteger4, cVar);
    }
}
