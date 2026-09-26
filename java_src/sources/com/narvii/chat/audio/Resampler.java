package com.narvii.chat.audio;

/* JADX INFO: loaded from: classes10.dex */
public class Resampler {
    private long ctx;
    private short[] outbuf = new short[1024];
    private int outlen;

    private static native void destory(long j6);

    private static native int err();

    private static native long init(int i10, int i11, int i12, int i13);

    private static native long process(long j6, int i10, short[] sArr, int i11, int i12, short[] sArr2, int i13, int i14);

    public short[] buffer() {
        return this.outbuf;
    }

    public synchronized void close() {
        long j6 = this.ctx;
        if (j6 != 0) {
            destory(j6);
            this.ctx = 0L;
        }
    }

    public int length() {
        return this.outlen;
    }

    static {
        System.loadLibrary("resampler");
    }

    protected void finalize() throws Throwable {
        long j6 = this.ctx;
        if (j6 != 0) {
            destory(j6);
        }
        super.finalize();
    }

    public synchronized int put(short[] sArr, int i10, int i11) throws ResamplerException {
        try {
            if (this.ctx == 0) {
                throw new ResamplerException(2);
            }
            this.outlen = 0;
            int i12 = i10;
            int i13 = i11;
            while (i13 > 0) {
                int i14 = this.outlen;
                short[] sArr2 = this.outbuf;
                if (i14 >= sArr2.length) {
                    short[] sArr3 = new short[sArr2.length * 2];
                    System.arraycopy(sArr2, 0, sArr3, 0, sArr2.length);
                    this.outbuf = sArr3;
                }
                long j6 = this.ctx;
                short[] sArr4 = this.outbuf;
                int i15 = this.outlen;
                long jProcess = process(j6, 0, sArr, i12, i13, sArr4, i15, sArr4.length - i15);
                if (jProcess <= 0) {
                    throw new ResamplerException(err());
                }
                int i16 = (int) ((jProcess >>> 32) & 4294967295L);
                this.outlen += (int) (jProcess & 4294967295L);
                i12 += i16;
                i13 -= i16;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.outlen;
    }

    public Resampler(int i10, int i11, int i12, int i13) throws ResamplerException {
        long jInit = init(i10, i11, i12, i13);
        this.ctx = jInit;
        if (jInit != 0) {
        } else {
            throw new ResamplerException(err());
        }
    }
}
