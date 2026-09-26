package org.bouncycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes11.dex */
public abstract class s implements f, org.bouncycastle.util.c {
    public byte[] a(String str) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        g().q(byteArrayOutputStream, str);
        return byteArrayOutputStream.toByteArray();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof f) {
            return g().s(((f) obj).g());
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.f
    public abstract z g();

    @Override // org.bouncycastle.util.c
    public byte[] getEncoded() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        g().p(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public int hashCode() {
        return g().hashCode();
    }
}
