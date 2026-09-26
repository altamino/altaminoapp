package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes7.dex */
public class f2 implements d {
    private int padBits = 0;
    private final q2 stream;

    f2(q2 q2Var) {
        this.stream = q2Var;
    }

    private InputStream a(boolean z6) throws IOException {
        int iH = this.stream.h();
        if (iH < 1) {
            throw new IllegalStateException("content octets cannot be empty");
        }
        int i10 = this.stream.read();
        this.padBits = i10;
        if (i10 > 0) {
            if (iH < 2) {
                throw new IllegalStateException("zero length data with non-zero pad bits");
            }
            if (i10 > 7) {
                throw new IllegalStateException("pad bits cannot be greater than 7 or less than 0");
            }
            if (z6) {
                throw new IOException("expected octet-aligned bitstring, but found padBits: " + this.padBits);
            }
        }
        return this.stream;
    }

    @Override // org.bouncycastle.asn1.r2
    public z c() throws IOException {
        return c.w(this.stream.k());
    }

    @Override // org.bouncycastle.asn1.d
    public InputStream d() throws IOException {
        return a(false);
    }

    @Override // org.bouncycastle.asn1.d
    public int f() {
        return this.padBits;
    }

    @Override // org.bouncycastle.asn1.f
    public z g() {
        try {
            return c();
        } catch (IOException e) {
            throw new y("IOException converting stream to byte array: " + e.getMessage(), e);
        }
    }
}
