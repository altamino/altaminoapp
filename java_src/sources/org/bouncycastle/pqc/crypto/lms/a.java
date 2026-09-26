package org.bouncycastle.pqc.crypto.lms;

import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class a {
    private final ByteArrayOutputStream bos = new ByteArrayOutputStream();

    private a() {
    }

    public static a f() {
        return new a();
    }

    public a a(boolean z6) {
        this.bos.write(z6 ? 1 : 0);
        return this;
    }

    public byte[] b() {
        return this.bos.toByteArray();
    }

    public a c(org.bouncycastle.util.c cVar) {
        try {
            this.bos.write(cVar.getEncoded());
            return this;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    public a d(byte[] bArr) {
        try {
            this.bos.write(bArr);
            return this;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    public a e(byte[][] bArr) {
        try {
            for (byte[] bArr2 : bArr) {
                this.bos.write(bArr2);
            }
            return this;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    public a g(int i10, int i11) {
        while (this.bos.size() < i11) {
            this.bos.write(i10);
        }
        return this;
    }

    public a h(int i10) {
        int i11 = i10 & 65535;
        this.bos.write((byte) (i11 >>> 8));
        this.bos.write((byte) i11);
        return this;
    }

    public a i(int i10) {
        this.bos.write((byte) (i10 >>> 24));
        this.bos.write((byte) (i10 >>> 16));
        this.bos.write((byte) (i10 >>> 8));
        this.bos.write((byte) i10);
        return this;
    }

    public a j(long j6) {
        i((int) (j6 >>> 32));
        i((int) j6);
        return this;
    }
}
