package l9;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public final class t extends q implements org.bouncycastle.util.c {
    private final int oid;
    private final r params;
    private final byte[] publicSeed;
    private final byte[] root;

    public static class b {
        private final r params;
        private byte[] root = null;
        private byte[] publicSeed = null;
        private byte[] publicKey = null;

        public b(r rVar) {
            this.params = rVar;
        }

        public t e() {
            return new t(this);
        }

        public b f(byte[] bArr) {
            this.publicKey = a0.c(bArr);
            return this;
        }

        public b g(byte[] bArr) {
            this.publicSeed = a0.c(bArr);
            return this;
        }

        public b h(byte[] bArr) {
            this.root = a0.c(bArr);
            return this;
        }
    }

    private t(b bVar) {
        super(false, bVar.params.e());
        r rVar = bVar.params;
        this.params = rVar;
        if (rVar == null) {
            throw new NullPointerException("params == null");
        }
        int iF = rVar.f();
        byte[] bArr = bVar.publicKey;
        if (bArr != null) {
            if (bArr.length == iF + iF) {
                this.oid = 0;
                this.root = a0.g(bArr, 0, iF);
                this.publicSeed = a0.g(bArr, iF, iF);
                return;
            } else {
                if (bArr.length != iF + 4 + iF) {
                    throw new IllegalArgumentException("public key has wrong size");
                }
                this.oid = org.bouncycastle.util.f.a(bArr, 0);
                this.root = a0.g(bArr, 4, iF);
                this.publicSeed = a0.g(bArr, 4 + iF, iF);
                return;
            }
        }
        if (rVar.d() != null) {
            this.oid = rVar.d().a();
        } else {
            this.oid = 0;
        }
        byte[] bArr2 = bVar.root;
        if (bArr2 == null) {
            this.root = new byte[iF];
        } else {
            if (bArr2.length != iF) {
                throw new IllegalArgumentException("length of root must be equal to length of digest");
            }
            this.root = bArr2;
        }
        byte[] bArr3 = bVar.publicSeed;
        if (bArr3 == null) {
            this.publicSeed = new byte[iF];
        } else {
            if (bArr3.length != iF) {
                throw new IllegalArgumentException("length of publicSeed must be equal to length of digest");
            }
            this.publicSeed = bArr3;
        }
    }

    public r b() {
        return this.params;
    }

    public byte[] c() {
        return a0.c(this.publicSeed);
    }

    public byte[] d() {
        return a0.c(this.root);
    }

    public byte[] e() {
        byte[] bArr;
        int iF = this.params.f();
        int i10 = this.oid;
        int i11 = 0;
        if (i10 != 0) {
            bArr = new byte[iF + 4 + iF];
            org.bouncycastle.util.f.c(i10, bArr, 0);
            i11 = 4;
        } else {
            bArr = new byte[iF + iF];
        }
        a0.e(bArr, this.root, i11);
        a0.e(bArr, this.publicSeed, i11 + iF);
        return bArr;
    }

    @Override // org.bouncycastle.util.c
    public byte[] getEncoded() throws IOException {
        return e();
    }
}
