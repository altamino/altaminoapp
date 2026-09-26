package h9;

/* JADX INFO: loaded from: classes.dex */
public final class a extends org.bouncycastle.crypto.params.a {
    private byte[] privateKey;
    private int securityCategory;

    public a(int i10, byte[] bArr) {
        super(true);
        if (bArr.length != c.b(i10)) {
            throw new IllegalArgumentException("invalid key size for security category");
        }
        this.securityCategory = i10;
        this.privateKey = org.bouncycastle.util.a.e(bArr);
    }

    public byte[] a() {
        return org.bouncycastle.util.a.e(this.privateKey);
    }

    public int b() {
        return this.securityCategory;
    }
}
