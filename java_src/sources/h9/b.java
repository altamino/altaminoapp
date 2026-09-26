package h9;

/* JADX INFO: loaded from: classes.dex */
public final class b extends org.bouncycastle.crypto.params.a {
    private byte[] publicKey;
    private int securityCategory;

    public b(int i10, byte[] bArr) {
        super(false);
        if (bArr.length != c.c(i10)) {
            throw new IllegalArgumentException("invalid key size for security category");
        }
        this.securityCategory = i10;
        this.publicKey = org.bouncycastle.util.a.e(bArr);
    }

    public byte[] a() {
        return org.bouncycastle.util.a.e(this.publicKey);
    }

    public int b() {
        return this.securityCategory;
    }
}
