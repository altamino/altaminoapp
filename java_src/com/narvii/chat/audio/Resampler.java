package com.narvii.chat.audio;

/* loaded from: classes2.dex */
public class Resampler {
    private long ctx;
    private short[] outbuf = new short[1024];
    private int outlen;

    private static native void destory(long j);

    private static native int err();

    private static native long init(int i, int i2, int i3, int i4);

    private static native long process(long j, int i, short[] sArr, int i2, int i3, short[] sArr2, int i4, int i5);

    static {
        System.loadLibrary("resampler");
    }

    public Resampler(int i, int i2, int i3, int i4) throws ResamplerException {
        this.ctx = init(i, i2, i3, i4);
        if (this.ctx == 0) {
            throw new ResamplerException(err());
        }
    }

    public synchronized void close() {
        if (this.ctx != 0) {
            destory(this.ctx);
            this.ctx = 0L;
        }
    }

    public short[] buffer() {
        return this.outbuf;
    }

    public int length() {
        return this.outlen;
    }

    public synchronized int put(short[] sArr, int i, int i2) throws ResamplerException {
        if (this.ctx == 0) {
            throw new ResamplerException(2);
        }
        this.outlen = 0;
        int i3 = i;
        int i4 = i2;
        while (i4 > 0) {
            if (this.outlen >= this.outbuf.length) {
                short[] sArr2 = new short[this.outbuf.length * 2];
                System.arraycopy(this.outbuf, 0, sArr2, 0, this.outbuf.length);
                this.outbuf = sArr2;
            }
            long jProcess = process(this.ctx, 0, sArr, i3, i4, this.outbuf, this.outlen, this.outbuf.length - this.outlen);
            if (jProcess <= 0) {
                throw new ResamplerException(err());
            }
            int i5 = (int) ((jProcess >>> 32) & 4294967295L);
            this.outlen += (int) (jProcess & 4294967295L);
            i3 += i5;
            i4 -= i5;
        }
        return this.outlen;
    }

    protected void finalize() throws Throwable {
        long j = this.ctx;
        if (j != 0) {
            destory(j);
        }
        super.finalize();
    }
}
