package l9;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public final class s extends q implements org.bouncycastle.util.c {
    private volatile l9.b bdsState;
    private volatile long index;
    private final r params;
    private final byte[] publicSeed;
    private final byte[] root;
    private final byte[] secretKeyPRF;
    private final byte[] secretKeySeed;
    private volatile boolean used;

    public static class b {
        private final r params;
        private long index = 0;
        private long maxIndex = -1;
        private byte[] secretKeySeed = null;
        private byte[] secretKeyPRF = null;
        private byte[] publicSeed = null;
        private byte[] root = null;
        private l9.b bdsState = null;
        private byte[] privateKey = null;
        private x xmss = null;

        public b(r rVar) {
            this.params = rVar;
        }

        public s k() {
            return new s(this);
        }

        public b l(l9.b bVar) {
            if (bVar.b() == 0) {
                this.bdsState = new l9.b(bVar, (1 << this.params.a()) - 1);
            } else {
                this.bdsState = bVar;
            }
            return this;
        }

        public b m(long j6) {
            this.index = j6;
            return this;
        }

        public b n(long j6) {
            this.maxIndex = j6;
            return this;
        }

        public b o(byte[] bArr) {
            this.publicSeed = a0.c(bArr);
            return this;
        }

        public b p(byte[] bArr) {
            this.root = a0.c(bArr);
            return this;
        }

        public b q(byte[] bArr) {
            this.secretKeyPRF = a0.c(bArr);
            return this;
        }

        public b r(byte[] bArr) {
            this.secretKeySeed = a0.c(bArr);
            return this;
        }
    }

    private s(b bVar) {
        super(true, bVar.params.e());
        r rVar = bVar.params;
        this.params = rVar;
        if (rVar == null) {
            throw new NullPointerException("params == null");
        }
        int iF = rVar.f();
        byte[] bArr = bVar.privateKey;
        if (bArr != null) {
            if (bVar.xmss == null) {
                throw new NullPointerException("xmss == null");
            }
            int iA = rVar.a();
            int i10 = (iA + 7) / 8;
            this.index = a0.a(bArr, 0, i10);
            if (!a0.l(iA, this.index)) {
                throw new IllegalArgumentException("index out of bounds");
            }
            this.secretKeySeed = a0.g(bArr, i10, iF);
            int i11 = i10 + iF;
            this.secretKeyPRF = a0.g(bArr, i11, iF);
            int i12 = i11 + iF;
            this.publicSeed = a0.g(bArr, i12, iF);
            int i13 = i12 + iF;
            this.root = a0.g(bArr, i13, iF);
            int i14 = i13 + iF;
            try {
                this.bdsState = ((l9.b) a0.f(a0.g(bArr, i14, bArr.length - i14), l9.b.class)).f(bVar.xmss.g());
                return;
            } catch (IOException e) {
                throw new IllegalArgumentException(e.getMessage(), e);
            } catch (ClassNotFoundException e2) {
                throw new IllegalArgumentException(e2.getMessage(), e2);
            }
        }
        this.index = bVar.index;
        byte[] bArr2 = bVar.secretKeySeed;
        if (bArr2 == null) {
            this.secretKeySeed = new byte[iF];
        } else {
            if (bArr2.length != iF) {
                throw new IllegalArgumentException("size of secretKeySeed needs to be equal size of digest");
            }
            this.secretKeySeed = bArr2;
        }
        byte[] bArr3 = bVar.secretKeyPRF;
        if (bArr3 == null) {
            this.secretKeyPRF = new byte[iF];
        } else {
            if (bArr3.length != iF) {
                throw new IllegalArgumentException("size of secretKeyPRF needs to be equal size of digest");
            }
            this.secretKeyPRF = bArr3;
        }
        byte[] bArr4 = bVar.publicSeed;
        if (bArr4 == null) {
            this.publicSeed = new byte[iF];
        } else {
            if (bArr4.length != iF) {
                throw new IllegalArgumentException("size of publicSeed needs to be equal size of digest");
            }
            this.publicSeed = bArr4;
        }
        byte[] bArr5 = bVar.root;
        if (bArr5 == null) {
            this.root = new byte[iF];
        } else {
            if (bArr5.length != iF) {
                throw new IllegalArgumentException("size of root needs to be equal size of digest");
            }
            this.root = bArr5;
        }
        l9.b bVar2 = bVar.bdsState;
        if (bVar2 == null) {
            bVar2 = (!a0.l(rVar.a(), bVar.index) || bArr4 == null || bArr2 == null) ? new l9.b(bVar.maxIndex + 1) : new l9.b(rVar, bVar.index, bArr4, bArr2);
        }
        this.bdsState = bVar2;
        if (bVar.maxIndex >= 0 && bVar.maxIndex != this.bdsState.b()) {
            throw new IllegalArgumentException("maxIndex set but not reflected in state");
        }
    }

    public r b() {
        return this.params;
    }

    public byte[] c() {
        byte[] bArrI;
        synchronized (this) {
            try {
                int iF = this.params.f();
                int iA = (this.params.a() + 7) / 8;
                byte[] bArr = new byte[iA + iF + iF + iF + iF];
                a0.e(bArr, a0.q(this.index, iA), 0);
                a0.e(bArr, this.secretKeySeed, iA);
                int i10 = iA + iF;
                a0.e(bArr, this.secretKeyPRF, i10);
                int i11 = i10 + iF;
                a0.e(bArr, this.publicSeed, i11);
                a0.e(bArr, this.root, i11 + iF);
                try {
                    bArrI = org.bouncycastle.util.a.i(bArr, a0.p(this.bdsState));
                } catch (IOException e) {
                    throw new IllegalStateException("error serializing bds state: " + e.getMessage(), e);
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
