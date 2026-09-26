package l9;

/* JADX INFO: loaded from: classes6.dex */
final class n {
    private final byte[][] publicKey;

    protected n(m mVar, byte[][] bArr) {
        if (mVar == null) {
            throw new NullPointerException("params == null");
        }
        if (bArr == null) {
            throw new NullPointerException("publicKey == null");
        }
        if (a0.k(bArr)) {
            throw new NullPointerException("publicKey byte array == null");
        }
        if (bArr.length != mVar.a()) {
            throw new IllegalArgumentException("wrong publicKey size");
        }
        for (byte[] bArr2 : bArr) {
            if (bArr2.length != mVar.c()) {
                throw new IllegalArgumentException("wrong publicKey format");
            }
        }
        this.publicKey = a0.d(bArr);
    }

    protected byte[][] a() {
        return a0.d(this.publicKey);
    }
}
