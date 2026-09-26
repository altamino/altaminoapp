package org.bouncycastle.asn1;

import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
public final class t extends z {
    static final m0 TYPE = new a(t.class, 7);
    private final m baseGraphicString;

    static class a extends m0 {
        a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override // org.bouncycastle.asn1.m0
        z c(c0 c0Var) {
            return new t((m) m.TYPE.c(c0Var));
        }

        @Override // org.bouncycastle.asn1.m0
        z d(r1 r1Var) {
            return new t((m) m.TYPE.d(r1Var));
        }
    }

    public t(m mVar) {
        if (mVar == null) {
            throw new NullPointerException("'baseGraphicString' cannot be null");
        }
        this.baseGraphicString = mVar;
    }

    static t w(byte[] bArr) {
        return new t(m.w(bArr));
    }

    @Override // org.bouncycastle.asn1.z
    boolean b(z zVar) {
        if (zVar instanceof t) {
            return this.baseGraphicString.b(((t) zVar).baseGraphicString);
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.z, org.bouncycastle.asn1.s
    public int hashCode() {
        return ~this.baseGraphicString.hashCode();
    }

    @Override // org.bouncycastle.asn1.z
    void j(x xVar, boolean z6) throws IOException {
        xVar.s(z6, 7);
        this.baseGraphicString.j(xVar, false);
    }

    @Override // org.bouncycastle.asn1.z
    boolean m() {
        return false;
    }

    @Override // org.bouncycastle.asn1.z
    int r(boolean z6) {
        return this.baseGraphicString.r(z6);
    }

    @Override // org.bouncycastle.asn1.z
    z u() {
        m mVar = (m) this.baseGraphicString.u();
        return mVar == this.baseGraphicString ? this : new t(mVar);
    }

    @Override // org.bouncycastle.asn1.z
    z v() {
        m mVar = (m) this.baseGraphicString.v();
        return mVar == this.baseGraphicString ? this : new t(mVar);
    }
}
