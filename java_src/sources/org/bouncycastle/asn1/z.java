package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes11.dex */
public abstract class z extends s {
    z() {
    }

    public static z t(byte[] bArr) throws IOException {
        o oVar = new o(bArr);
        try {
            z zVarM = oVar.m();
            if (oVar.available() == 0) {
                return zVarM;
            }
            throw new IOException("Extra data detected in stream");
        } catch (ClassCastException unused) {
            throw new IOException("cannot recognise object in stream");
        }
    }

    abstract boolean b(z zVar);

    @Override // org.bouncycastle.asn1.s
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof f) && b(((f) obj).g());
    }

    @Override // org.bouncycastle.asn1.s, org.bouncycastle.asn1.f
    public final z g() {
        return this;
    }

    @Override // org.bouncycastle.asn1.s
    public abstract int hashCode();

    abstract void j(x xVar, boolean z6) throws IOException;

    abstract boolean m();

    public void p(OutputStream outputStream) throws IOException {
        x xVarA = x.a(outputStream);
        xVarA.u(this, true);
        xVarA.c();
    }

    public void q(OutputStream outputStream, String str) throws IOException {
        x xVarB = x.b(outputStream, str);
        xVarB.u(this, true);
        xVarB.c();
    }

    abstract int r(boolean z6) throws IOException;

    public final boolean s(z zVar) {
        return this == zVar || b(zVar);
    }

    z u() {
        return this;
    }

    z v() {
        return this;
    }
}
