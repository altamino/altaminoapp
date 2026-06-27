package com.facebook.ads.redexgen.X;

import android.support.annotation.NonNull;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Oh, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0772Oh extends BufferedInputStream {
    private int A00;
    private int A01;
    private boolean A02;

    public C0772Oh(InputStream inputStream) {
        super(inputStream);
        this.A00 = Integer.MAX_VALUE;
    }

    public final boolean A00() {
        return this.A02;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i) {
        this.A00 = i;
        super.mark(i);
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        C0772Oh c0772Oh = this;
        int i = 0;
        char c = c0772Oh.A01 + 1 > c0772Oh.A00 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0772Oh = c0772Oh;
                    c0772Oh.A02 = true;
                    i = -1;
                    c = 3;
                    break;
                case 3:
                    return i;
                case 4:
                    c0772Oh = c0772Oh;
                    c0772Oh.A01++;
                    i = super.read();
                    c = 3;
                    break;
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(@NonNull byte[] bArr) throws IOException {
        C0772Oh c0772Oh = this;
        int i = 0;
        char c = c0772Oh.A01 + bArr.length > c0772Oh.A00 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0772Oh = c0772Oh;
                    c0772Oh.A02 = true;
                    i = -1;
                    c = 3;
                    break;
                case 3:
                    return i;
                case 4:
                    c0772Oh = c0772Oh;
                    bArr = bArr;
                    i = super.read(bArr);
                    c = 3;
                    break;
            }
        }
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        if (this.A01 + i2 > this.A00) {
            this.A02 = true;
            i3 = -1;
        } else {
            i3 = super.read(bArr, i, i2);
            this.A01 += i3;
        }
        return i3;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() throws IOException {
        this.A00 = Integer.MAX_VALUE;
        super.reset();
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public final synchronized long skip(long j) throws IOException {
        long jSkip;
        if (this.A01 + j > this.A00) {
            this.A02 = true;
            jSkip = 0;
        } else {
            this.A01 = (int) (this.A01 + j);
            jSkip = super.skip(j);
        }
        return jSkip;
    }
}
