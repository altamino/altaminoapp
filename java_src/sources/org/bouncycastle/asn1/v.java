package org.bouncycastle.asn1;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes8.dex */
public abstract class v extends z implements w {
    byte[] string;
    static final m0 TYPE = new a(v.class, 4);
    static final byte[] EMPTY_OCTETS = new byte[0];

    static class a extends m0 {
        a(Class cls, int i10) {
            super(cls, i10);
        }

        @Override // org.bouncycastle.asn1.m0
        z c(c0 c0Var) {
            return c0Var.D();
        }

        @Override // org.bouncycastle.asn1.m0
        z d(r1 r1Var) {
            return r1Var;
        }
    }

    public v(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("'string' cannot be null");
        }
        this.string = bArr;
    }

    static v w(byte[] bArr) {
        return new r1(bArr);
    }

    public static v x(Object obj) {
        if (obj == null || (obj instanceof v)) {
            return (v) obj;
        }
        if (obj instanceof f) {
            z zVarG = ((f) obj).g();
            if (zVarG instanceof v) {
                return (v) zVarG;
            }
        } else if (obj instanceof byte[]) {
            try {
                return (v) TYPE.b((byte[]) obj);
            } catch (IOException e) {
                throw new IllegalArgumentException("failed to construct OCTET STRING from byte[]: " + e.getMessage());
            }
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    public static v y(h0 h0Var, boolean z6) {
        return (v) TYPE.e(h0Var, z6);
    }

    @Override // org.bouncycastle.asn1.z
    boolean b(z zVar) {
        if (zVar instanceof v) {
            return org.bouncycastle.util.a.a(this.string, ((v) zVar).string);
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.r2
    public z c() {
        return g();
    }

    @Override // org.bouncycastle.asn1.w
    public InputStream e() {
        return new ByteArrayInputStream(this.string);
    }

    @Override // org.bouncycastle.asn1.z, org.bouncycastle.asn1.s
    public int hashCode() {
        return org.bouncycastle.util.a.m(z());
    }

    public String toString() {
        return "#" + org.bouncycastle.util.h.b(org.bouncycastle.util.encoders.f.b(this.string));
    }

    @Override // org.bouncycastle.asn1.z
    z u() {
        return new r1(this.string);
    }

    @Override // org.bouncycastle.asn1.z
    z v() {
        return new r1(this.string);
    }

    public byte[] z() {
        return this.string;
    }
}
