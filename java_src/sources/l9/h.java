package l9;

/* JADX INFO: loaded from: classes6.dex */
final class h {
    private final x8.c digest;
    private final int digestSize;

    protected h(org.bouncycastle.asn1.u uVar, int i10) {
        if (uVar == null) {
            throw new NullPointerException("digest == null");
        }
        this.digest = f.a(uVar);
        this.digestSize = i10;
    }

    private byte[] d(int i10, byte[] bArr, byte[] bArr2) {
        byte[] bArrQ = a0.q(i10, this.digestSize);
        this.digest.update(bArrQ, 0, bArrQ.length);
        this.digest.update(bArr, 0, bArr.length);
        this.digest.update(bArr2, 0, bArr2.length);
        int i11 = this.digestSize;
        byte[] bArr3 = new byte[i11];
        x8.c cVar = this.digest;
        if (cVar instanceof x8.d) {
            ((x8.d) cVar).b(bArr3, 0, i11);
        } else {
            cVar.a(bArr3, 0);
        }
        return bArr3;
    }

    protected byte[] a(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int i10 = this.digestSize;
        if (length != i10) {
            throw new IllegalArgumentException("wrong key length");
        }
        if (bArr2.length == i10) {
            return d(0, bArr, bArr2);
        }
        throw new IllegalArgumentException("wrong in length");
    }

    protected byte[] b(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int i10 = this.digestSize;
        if (length != i10) {
            throw new IllegalArgumentException("wrong key length");
        }
        if (bArr2.length == i10 * 2) {
            return d(1, bArr, bArr2);
        }
        throw new IllegalArgumentException("wrong in length");
    }

    protected byte[] c(byte[] bArr, byte[] bArr2) {
        if (bArr.length != this.digestSize) {
            throw new IllegalArgumentException("wrong key length");
        }
        if (bArr2.length == 32) {
            return d(3, bArr, bArr2);
        }
        throw new IllegalArgumentException("wrong address length");
    }
}
