package l9;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public final class y extends p implements org.bouncycastle.util.c {
    private volatile l9.a bdsState;
    private final x params;
    private final byte[] publicSeed;
    private final byte[] root;
    private final byte[] secretKeyPRF;
    private final byte[] secretKeySeed;

    public static class b {
        private final x params;
        private int index = 0;
        private int maxIndex = -1;
        private byte[] secretKeySeed = null;
        private byte[] secretKeyPRF = null;
        private byte[] publicSeed = null;
        private byte[] root = null;
        private l9.a bdsState = null;
        private byte[] privateKey = null;

        public b(x xVar) {
            this.params = xVar;
        }

        public y j() {
            return new y(this);
        }

        public b k(l9.a aVar) {
            this.bdsState = aVar;
            return this;
        }

        public b l(int i10) {
            this.index = i10;
            return this;
        }

        public b m(int i10) {
            this.maxIndex = i10;
            return this;
        }

        public b n(byte[] bArr) {
            this.publicSeed = a0.c(bArr);
            return this;
        }

        public b o(byte[] bArr) {
            this.root = a0.c(bArr);
            return this;
        }

        public b p(byte[] bArr) {
            this.secretKeyPRF = a0.c(bArr);
            return this;
        }

        public b q(byte[] bArr) {
            this.secretKeySeed = a0.c(bArr);
            return this;
        }
    }

    private y(b bVar) {
        super(true, bVar.params.f());
        x xVar = bVar.params;
        this.params = xVar;
        if (xVar == null) {
            throw new NullPointerException("params == null");
        }
        int iH = xVar.h();
        byte[] bArr = bVar.privateKey;
        if (bArr != null) {
            int iB = xVar.b();
            int iA = org.bouncycastle.util.f.a(bArr, 0);
            if (!a0.l(iB, iA)) {
                throw new IllegalArgumentException("index out of bounds");
            }
            this.secretKeySeed = a0.g(bArr, 4, iH);
            int i10 = 4 + iH;
            this.secretKeyPRF = a0.g(bArr, i10, iH);
            int i11 = i10 + iH;
            this.publicSeed = a0.g(bArr, i11, iH);
            int i12 = i11 + iH;
            this.root = a0.g(bArr, i12, iH);
            int i13 = i12 + iH;
            try {
                l9.a aVar = (l9.a) a0.f(a0.g(bArr, i13, bArr.length - i13), l9.a.class);
                if (aVar.b() != iA) {
                    throw new IllegalStateException("serialized BDS has wrong index");
                }
                this.bdsState = aVar.h(bVar.params.g());
                return;
            } catch (IOException e) {
                throw new IllegalArgumentException(e.getMessage(), e);
            } catch (ClassNotFoundException e2) {
                throw new IllegalArgumentException(e2.getMessage(), e2);
            }
        }
        byte[] bArr2 = bVar.secretKeySeed;
        if (bArr2 == null) {
            this.secretKeySeed = new byte[iH];
        } else {
            if (bArr2.length != iH) {
                throw new IllegalArgumentException("size of secretKeySeed needs to be equal size of digest");
            }
            this.secretKeySeed = bArr2;
        }
        byte[] bArr3 = bVar.secretKeyPRF;
        if (bArr3 == null) {
            this.secretKeyPRF = new byte[iH];
        } else {
            if (bArr3.length != iH) {
                throw new IllegalArgumentException("size of secretKeyPRF needs to be equal size of digest");
            }
            this.secretKeyPRF = bArr3;
        }
        byte[] bArr4 = bVar.publicSeed;
        if (bArr4 == null) {
            this.publicSeed = new byte[iH];
        } else {
            if (bArr4.length != iH) {
                throw new IllegalArgumentException("size of publicSeed needs to be equal size of digest");
            }
            this.publicSeed = bArr4;
        }
        byte[] bArr5 = bVar.root;
        if (bArr5 == null) {
            this.root = new byte[iH];
        } else {
            if (bArr5.length != iH) {
                throw new IllegalArgumentException("size of root needs to be equal size of digest");
            }
            this.root = bArr5;
        }
        l9.a aVar2 = bVar.bdsState;
        this.bdsState = aVar2 == null ? (bVar.index >= (1 << xVar.b()) + (-2) || bArr4 == null || bArr2 == null) ? new l9.a(xVar, (1 << xVar.b()) - 1, bVar.index) : new l9.a(xVar, bArr4, bArr2, (j) new j.b().l(), bVar.index) : aVar2;
        if (bVar.maxIndex >= 0 && bVar.maxIndex != this.bdsState.c()) {
            throw new IllegalArgumentException("maxIndex set but not reflected in state");
        }
    }

    public x b() {
        return this.params;
    }

    public byte[] c() {
        byte[] bArrI;
        synchronized (this) {
            try {
                int iH = this.params.h();
                byte[] bArr = new byte[iH + 4 + iH + iH + iH];
                org.bouncycastle.util.f.c(this.bdsState.b(), bArr, 0);
                a0.e(bArr, this.secretKeySeed, 4);
                int i10 = 4 + iH;
                a0.e(bArr, this.secretKeyPRF, i10);
                int i11 = i10 + iH;
                a0.e(bArr, this.publicSeed, i11);
                a0.e(bArr, this.root, i11 + iH);
                try {
                    bArrI = org.bouncycastle.util.a.i(bArr, a0.p(this.bdsState));
                } catch (IOException e) {
                    throw new RuntimeException("error serializing bds state: " + e.getMessage());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return bArrI;
    }

    @Override // org.bouncycastle.util.c
    public byte[] getEncoded() throws IOException {
        byte[] bArrC;
        synchronized (this) {
            bArrC = c();
        }
        return bArrC;
    }
}
