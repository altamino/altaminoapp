package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes9.dex */
public class s1 implements w {
    private q2 stream;

    s1(q2 q2Var) {
        this.stream = q2Var;
    }

    @Override // org.bouncycastle.asn1.r2
    public z c() throws IOException {
        return new r1(this.stream.k());
    }

    @Override // org.bouncycastle.asn1.w
    public InputStream e() {
        return this.stream;
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
