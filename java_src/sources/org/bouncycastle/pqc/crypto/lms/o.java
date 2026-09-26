package org.bouncycastle.pqc.crypto.lms;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
class o implements org.bouncycastle.util.c {
    private final m publicKey;
    private final n signature;

    public o(n nVar, m mVar) {
        this.signature = nVar;
        this.publicKey = mVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        o oVar = (o) obj;
        n nVar = this.signature;
        if (nVar == null ? oVar.signature != null : !nVar.equals(oVar.signature)) {
            return false;
        }
        m mVar = this.publicKey;
        m mVar2 = oVar.publicKey;
        if (mVar != null) {
            return mVar.equals(mVar2);
        }
        return mVar2 == null;
    }

    @Override // org.bouncycastle.util.c
    public byte[] getEncoded() throws IOException {
        return a.f().d(this.signature.getEncoded()).d(this.publicKey.getEncoded()).b();
    }

    public int hashCode() {
        n nVar = this.signature;
        int iHashCode = (nVar != null ? nVar.hashCode() : 0) * 31;
        m mVar = this.publicKey;
        return iHashCode + (mVar != null ? mVar.hashCode() : 0);
    }
}
