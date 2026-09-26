package org.bouncycastle.math.field;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes10.dex */
class d implements f {
    protected final e minimalPolynomial;
    protected final a subfield;

    d(a aVar, e eVar) {
        this.subfield = aVar;
        this.minimalPolynomial = eVar;
    }

    @Override // org.bouncycastle.math.field.a
    public int a() {
        return this.subfield.a() * this.minimalPolynomial.b();
    }

    @Override // org.bouncycastle.math.field.a
    public BigInteger b() {
        return this.subfield.b();
    }

    @Override // org.bouncycastle.math.field.f
    public e c() {
        return this.minimalPolynomial;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.subfield.equals(dVar.subfield) && this.minimalPolynomial.equals(dVar.minimalPolynomial);
    }

    public int hashCode() {
        return this.subfield.hashCode() ^ org.bouncycastle.util.d.b(this.minimalPolynomial.hashCode(), 16);
    }
}
