package com.meishe.cafconvertor.utils;

import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes2.dex */
public class LittleEndianOutputStream extends FileOutputStream {
    protected int a;

    public LittleEndianOutputStream(String str) {
        super(str);
    }

    public void writeInt(int i) throws IOException {
        write(i & 255);
        write((i >>> 8) & 255);
        write((i >>> 16) & 255);
        write((i >>> 24) & 255);
        this.a += 4;
    }

    public void writeLong(long j) throws IOException {
        write(((int) j) & 255);
        write(((int) (j >>> 8)) & 255);
        write(((int) (j >>> 16)) & 255);
        write(((int) (j >>> 24)) & 255);
        write(((int) (j >>> 32)) & 255);
        write(((int) (j >>> 40)) & 255);
        write(((int) (j >>> 48)) & 255);
        write(((int) (j >>> 56)) & 255);
        this.a += 8;
    }
}
