package org.bouncycastle.pqc.crypto.lms;

import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
class g implements org.bouncycastle.util.c {
    private final byte[] I;
    private final byte[] K;
    private final e parameter;
    private final int q;

    public g(e eVar, byte[] bArr, int i10, byte[] bArr2) {
        this.parameter = eVar;
        this.I = bArr;
        this.q = i10;
        this.K = bArr2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        if (this.q != gVar.q) {
            return false;
        }
        e eVar = this.parameter;
        if (eVar == null ? gVar.parameter != null : !eVar.equals(gVar.parameter)) {
            return false;
        }
        if (Arrays.equals(this.I, gVar.I)) {
            return Arrays.equals(this.K, gVar.K);
        }
        return false;
    }

    @Override // org.bouncycastle.util.c
    public byte[] getEncoded() throws IOException {
        return a.f().i(this.parameter.g()).d(this.I).i(this.q).d(this.K).b();
    }

    public int hashCode() {
        e eVar = this.parameter;
        return ((((((eVar != null ? eVar.hashCode() : 0) * 31) + Arrays.hashCode(this.I)) * 31) + this.q) * 31) + Arrays.hashCode(this.K);
    }
}
