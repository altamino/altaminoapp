package org.apache.commons.compress.archivers.zip;

import java.io.UnsupportedEncodingException;
import java.util.zip.CRC32;
import java.util.zip.ZipException;

/* JADX INFO: loaded from: classes9.dex */
public abstract class AbstractUnicodeExtraField implements ZipExtraField {
    private byte[] data;
    private long nameCRC32;
    private byte[] unicodeName;

    protected AbstractUnicodeExtraField() {
    }

    public long getNameCRC32() {
        return this.nameCRC32;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromLocalFileData(byte[] bArr, int i10, int i11) throws ZipException {
        if (i11 < 5) {
            throw new ZipException("UniCode path extra data must have at least 5 bytes.");
        }
        byte b7 = bArr[i10];
        if (b7 != 1) {
            throw new ZipException("Unsupported version [" + ((int) b7) + "] for UniCode path extra data.");
        }
        this.nameCRC32 = ZipLong.getValue(bArr, i10 + 1);
        int i12 = i11 - 5;
        byte[] bArr2 = new byte[i12];
        this.unicodeName = bArr2;
        System.arraycopy(bArr, i10 + 5, bArr2, 0, i12);
        this.data = null;
    }

    public void setNameCRC32(long j6) {
        this.nameCRC32 = j6;
        this.data = null;
    }

    public void setUnicodeName(byte[] bArr) {
        if (bArr != null) {
            byte[] bArr2 = new byte[bArr.length];
            this.unicodeName = bArr2;
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        } else {
            this.unicodeName = null;
        }
        this.data = null;
    }

    protected AbstractUnicodeExtraField(String str, byte[] bArr, int i10, int i11) {
        CRC32 crc32 = new CRC32();
        crc32.update(bArr, i10, i11);
        this.nameCRC32 = crc32.getValue();
        try {
            this.unicodeName = str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("FATAL: UTF-8 encoding not supported.", e);
        }
    }

    private void assembleData() {
        byte[] bArr = this.unicodeName;
        if (bArr == null) {
            return;
        }
        byte[] bArr2 = new byte[bArr.length + 5];
        this.data = bArr2;
        bArr2[0] = 1;
        System.arraycopy(ZipLong.getBytes(this.nameCRC32), 0, this.data, 1, 4);
        byte[] bArr3 = this.unicodeName;
        System.arraycopy(bArr3, 0, this.data, 5, bArr3.length);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public byte[] getCentralDirectoryData() {
        if (this.data == null) {
            assembleData();
        }
        byte[] bArr = this.data;
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getCentralDirectoryLength() {
        if (this.data == null) {
            assembleData();
        }
        byte[] bArr = this.data;
        return new ZipShort(bArr != null ? bArr.length : 0);
    }

    public byte[] getUnicodeName() {
        byte[] bArr = this.unicodeName;
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public byte[] getLocalFileDataData() {
        return getCentralDirectoryData();
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getLocalFileDataLength() {
        return getCentralDirectoryLength();
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromCentralDirectoryData(byte[] bArr, int i10, int i11) throws ZipException {
        parseFromLocalFileData(bArr, i10, i11);
    }

    protected AbstractUnicodeExtraField(String str, byte[] bArr) {
        this(str, bArr, 0, bArr.length);
    }
}
