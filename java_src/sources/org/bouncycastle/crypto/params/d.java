package org.bouncycastle.crypto.params;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes11.dex */
public class d {
    private BigInteger g;
    private BigInteger p;
    private BigInteger q;
    private e validation;

    public d(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.g = bigInteger3;
        this.p = bigInteger;
        this.q = bigInteger2;
    }

    public BigInteger a() {
        return this.g;
    }

    public BigInteger b() {
        return this.p;
    }

    public BigInteger c() {
        return this.q;
    }

    public e d() {
        return this.validation;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return dVar.b().equals(this.p) && dVar.c().equals(this.q) && dVar.a().equals(this.g);
    }

    public int hashCode() {
        return (b().hashCode() ^ c().hashCode()) ^ a().hashCode();
    }

    public d(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, e eVar) {
        this.g = bigInteger3;
        this.p = bigInteger;
        this.q = bigInteger2;
        this.validation = eVar;
    }
}
