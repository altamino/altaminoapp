package org.apache.commons.compress.archivers.zip;

/* JADX INFO: loaded from: classes.dex */
class CircularBuffer {
    private final byte[] buffer;
    private int readIndex;
    private final int size;
    private int writeIndex;

    public boolean available() {
        return this.readIndex != this.writeIndex;
    }

    public void copy(int i10, int i11) {
        int i12 = this.writeIndex - i10;
        int i13 = i11 + i12;
        while (i12 < i13) {
            byte[] bArr = this.buffer;
            int i14 = this.writeIndex;
            int i15 = this.size;
            bArr[i14] = bArr[(i12 + i15) % i15];
            this.writeIndex = (i14 + 1) % i15;
            i12++;
        }
    }

    public void put(int i10) {
        byte[] bArr = this.buffer;
        int i11 = this.writeIndex;
        bArr[i11] = (byte) i10;
        this.writeIndex = (i11 + 1) % this.size;
    }

    CircularBuffer(int i10) {
        this.size = i10;
        this.buffer = new byte[i10];
    }

    public int get() {
        if (available()) {
            byte[] bArr = this.buffer;
            int i10 = this.readIndex;
            byte b7 = bArr[i10];
            this.readIndex = (i10 + 1) % this.size;
            return b7 & 255;
        }
        return -1;
    }
}
