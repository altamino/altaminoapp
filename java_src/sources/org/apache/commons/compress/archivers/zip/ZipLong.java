package org.apache.commons.compress.archivers.zip;

import java.io.Serializable;
import org.apache.commons.compress.utils.ByteUtils;

/* JADX INFO: loaded from: classes9.dex */
public final class ZipLong implements Cloneable, Serializable {
    private static final long serialVersionUID = 1;
    private final long value;
    public static final ZipLong CFH_SIG = new ZipLong(33639248L);
    public static final ZipLong LFH_SIG = new ZipLong(67324752L);
    public static final ZipLong DD_SIG = new ZipLong(134695760L);
    static final ZipLong ZIP64_MAGIC = new ZipLong(4294967295L);
    public static final ZipLong SINGLE_SEGMENT_SPLIT_MARKER = new ZipLong(808471376L);
    public static final ZipLong AED_SIG = new ZipLong(134630224L);

    public ZipLong(long j6) {
        this.value = j6;
    }

    public static void putLong(long j6, byte[] bArr, int i10) {
        ByteUtils.toLittleEndian(bArr, j6, i10, 4);
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof ZipLong) && this.value == ((ZipLong) obj).getValue();
    }

    public byte[] getBytes() {
        return getBytes(this.value);
    }

    public int getIntValue() {
        return (int) this.value;
    }

    public long getValue() {
        return this.value;
    }

    public int hashCode() {
        return (int) this.value;
    }

    public ZipLong(int i10) {
        this.value = i10;
    }

    public static byte[] getBytes(long j6) {
        byte[] bArr = new byte[4];
        putLong(j6, bArr, 0);
        return bArr;
    }

    public static long getValue(byte[] bArr, int i10) {
        return ByteUtils.fromLittleEndian(bArr, i10, 4);
    }

    public void putLong(byte[] bArr, int i10) {
        putLong(this.value, bArr, i10);
    }

    public String toString() {
        return "ZipLong value: " + this.value;
    }

    public ZipLong(byte[] bArr) {
        this(bArr, 0);
    }

    public static long getValue(byte[] bArr) {
        return getValue(bArr, 0);
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public ZipLong(byte[] bArr, int i10) {
        this.value = getValue(bArr, i10);
    }
}
