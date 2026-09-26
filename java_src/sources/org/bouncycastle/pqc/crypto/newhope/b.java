package org.bouncycastle.pqc.crypto.newhope;

/* JADX INFO: loaded from: classes4.dex */
public class b extends org.bouncycastle.crypto.params.a {
    final byte[] pubData;

    public b(byte[] bArr) {
        super(false);
        this.pubData = org.bouncycastle.util.a.e(bArr);
    }

    public byte[] a() {
        return org.bouncycastle.util.a.e(this.pubData);
    }
}
