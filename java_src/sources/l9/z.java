package l9;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public final class z extends p implements org.bouncycastle.util.c {
    private final int oid;
    private final x params;
    private final byte[] publicSeed;
    private final byte[] root;

    public static class b {
        private final x params;
        private byte[] root = null;
        private byte[] publicSeed = null;
        private byte[] publicKey = null;

        public b(x xVar) {
            this.params = xVar;
        }

        public z e() {
            return new z(this);
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

    private z(b bVar) {
        super(false, bVar.params.f());
        x xVar = bVar.params;
        this.params = xVar;
        if (xVar == null) {
            throw new NullPointerException("params == null");
        }
        int iH = xVar.h();
        byte[] bArr = bVar.publicKey;
        if (bArr != null) {
            if (bArr.length == iH + iH) {
                this.oid = 0;
                this.root = a0.g(bArr, 0, iH);
                this.publicSeed = a0.g(bArr, iH, iH);
                return;
            } else {
                if (bArr.length != iH + 4 + iH) {
                    throw new IllegalArgumentException("public key has wrong size");
                }
                this.oid = org.bouncycastle.util.f.a(bArr, 0);
                this.root = a0.g(bArr, 4, iH);
                this.publicSeed = a0.g(bArr, 4 + iH, iH);
                return;
            }
        }
        if (xVar.e() != null) {
            this.oid = xVar.e().a();
        } else {
            this.oid = 0;
        }
        byte[] bArr2 = bVar.root;
        if (bArr2 == null) {
            this.root = new byte[iH];
        } else {
            if (bArr2.length != iH) {
                throw new IllegalArgumentException("length of root must be equal to length of digest");
            }
            this.root = bArr2;
        }
        byte[] bArr3 = bVar.publicSeed;
        if (bArr3 == null) {
            this.publicSeed = new byte[iH];
        } else {
            if (bArr3.length != iH) {
                throw new IllegalArgumentException("length of publicSeed must be equal to length of digest");
            }
            this.publicSeed = bArr3;
        }
    }

    public x b() {
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
        int iH = this.params.h();
        int i10 = this.oid;
        int i11 = 0;
        if (i10 != 0) {
            bArr = new byte[iH + 4 + iH];
            org.bouncycastle.util.f.c(i10, bArr, 0);
            i11 = 4;
        } else {
            bArr = new byte[iH + iH];
        }
        a0.e(bArr, this.root, i11);
        a0.e(bArr, this.publicSeed, i11 + iH);
        return bArr;
    }

    @Override // org.bouncycastle.util.c
    public byte[] getEncoded() throws IOException {
        return e();
    }
}
