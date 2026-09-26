package org.apache.commons.compress.archivers.zip;

import java.util.zip.ZipException;

/* JADX INFO: loaded from: classes11.dex */
public class Zip64ExtendedInformationExtraField implements ZipExtraField {
    private static final String LFH_MUST_HAVE_BOTH_SIZES_MSG = "Zip64 extended information must contain both size values in the local file header.";
    private ZipEightByteInteger compressedSize;
    private ZipLong diskStart;
    private byte[] rawCentralDirectoryData;
    private ZipEightByteInteger relativeHeaderOffset;
    private ZipEightByteInteger size;
    static final ZipShort HEADER_ID = new ZipShort(1);
    private static final byte[] EMPTY = new byte[0];

    public Zip64ExtendedInformationExtraField() {
    }

    public ZipEightByteInteger getCompressedSize() {
        return this.compressedSize;
    }

    public ZipLong getDiskStartNumber() {
        return this.diskStart;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getHeaderId() {
        return HEADER_ID;
    }

    public ZipEightByteInteger getRelativeHeaderOffset() {
        return this.relativeHeaderOffset;
    }

    public ZipEightByteInteger getSize() {
        return this.size;
    }

    public void setCompressedSize(ZipEightByteInteger zipEightByteInteger) {
        this.compressedSize = zipEightByteInteger;
    }

    public void setDiskStartNumber(ZipLong zipLong) {
        this.diskStart = zipLong;
    }

    public void setRelativeHeaderOffset(ZipEightByteInteger zipEightByteInteger) {
        this.relativeHeaderOffset = zipEightByteInteger;
    }

    public void setSize(ZipEightByteInteger zipEightByteInteger) {
        this.size = zipEightByteInteger;
    }

    public Zip64ExtendedInformationExtraField(ZipEightByteInteger zipEightByteInteger, ZipEightByteInteger zipEightByteInteger2) {
        this(zipEightByteInteger, zipEightByteInteger2, null, null);
    }

    private int addSizes(byte[] bArr) {
        int i10;
        ZipEightByteInteger zipEightByteInteger = this.size;
        if (zipEightByteInteger != null) {
            System.arraycopy(zipEightByteInteger.getBytes(), 0, bArr, 0, 8);
            i10 = 8;
        } else {
            i10 = 0;
        }
        ZipEightByteInteger zipEightByteInteger2 = this.compressedSize;
        if (zipEightByteInteger2 == null) {
            return i10;
        }
        System.arraycopy(zipEightByteInteger2.getBytes(), 0, bArr, i10, 8);
        return i10 + 8;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getCentralDirectoryLength() {
        return new ZipShort((this.size != null ? 8 : 0) + (this.compressedSize != null ? 8 : 0) + (this.relativeHeaderOffset == null ? 0 : 8) + (this.diskStart != null ? 4 : 0));
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public byte[] getLocalFileDataData() {
        ZipEightByteInteger zipEightByteInteger = this.size;
        if (zipEightByteInteger == null && this.compressedSize == null) {
            return EMPTY;
        }
        if (zipEightByteInteger == null || this.compressedSize == null) {
            throw new IllegalArgumentException(LFH_MUST_HAVE_BOTH_SIZES_MSG);
        }
        byte[] bArr = new byte[16];
        addSizes(bArr);
        return bArr;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getLocalFileDataLength() {
        return new ZipShort(this.size != null ? 16 : 0);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromCentralDirectoryData(byte[] bArr, int i10, int i11) throws ZipException {
        byte[] bArr2 = new byte[i11];
        this.rawCentralDirectoryData = bArr2;
        System.arraycopy(bArr, i10, bArr2, 0, i11);
        if (i11 >= 28) {
            parseFromLocalFileData(bArr, i10, i11);
            return;
        }
        if (i11 == 24) {
            this.size = new ZipEightByteInteger(bArr, i10);
            this.compressedSize = new ZipEightByteInteger(bArr, i10 + 8);
            this.relativeHeaderOffset = new ZipEightByteInteger(bArr, i10 + 16);
        } else if (i11 % 8 == 4) {
            this.diskStart = new ZipLong(bArr, (i10 + i11) - 4);
        }
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromLocalFileData(byte[] bArr, int i10, int i11) throws ZipException {
        if (i11 == 0) {
            return;
        }
        if (i11 < 16) {
            throw new ZipException(LFH_MUST_HAVE_BOTH_SIZES_MSG);
        }
        this.size = new ZipEightByteInteger(bArr, i10);
        this.compressedSize = new ZipEightByteInteger(bArr, i10 + 8);
        int i12 = i10 + 16;
        int i13 = i11 - 16;
        if (i13 >= 8) {
            this.relativeHeaderOffset = new ZipEightByteInteger(bArr, i12);
            i12 = i10 + 24;
            i13 = i11 - 24;
        }
        if (i13 >= 4) {
            this.diskStart = new ZipLong(bArr, i12);
        }
    }

    public void reparseCentralDirectoryData(boolean z6, boolean z10, boolean z11, boolean z12) throws ZipException {
        byte[] bArr = this.rawCentralDirectoryData;
        if (bArr != null) {
            int i10 = 0;
            int i11 = (z6 ? 8 : 0) + (z10 ? 8 : 0) + (z11 ? 8 : 0) + (z12 ? 4 : 0);
            if (bArr.length < i11) {
                throw new ZipException("central directory zip64 extended information extra field's length doesn't match central directory data.  Expected length " + i11 + " but is " + this.rawCentralDirectoryData.length);
            }
            if (z6) {
                this.size = new ZipEightByteInteger(this.rawCentralDirectoryData, 0);
                i10 = 8;
            }
            if (z10) {
                this.compressedSize = new ZipEightByteInteger(this.rawCentralDirectoryData, i10);
                i10 += 8;
            }
            if (z11) {
                this.relativeHeaderOffset = new ZipEightByteInteger(this.rawCentralDirectoryData, i10);
                i10 += 8;
            }
            if (z12) {
                this.diskStart = new ZipLong(this.rawCentralDirectoryData, i10);
            }
        }
    }

    public Zip64ExtendedInformationExtraField(ZipEightByteInteger zipEightByteInteger, ZipEightByteInteger zipEightByteInteger2, ZipEightByteInteger zipEightByteInteger3, ZipLong zipLong) {
        this.size = zipEightByteInteger;
        this.compressedSize = zipEightByteInteger2;
        this.relativeHeaderOffset = zipEightByteInteger3;
        this.diskStart = zipLong;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public byte[] getCentralDirectoryData() {
        byte[] bArr = new byte[getCentralDirectoryLength().getValue()];
        int iAddSizes = addSizes(bArr);
        ZipEightByteInteger zipEightByteInteger = this.relativeHeaderOffset;
        if (zipEightByteInteger != null) {
            System.arraycopy(zipEightByteInteger.getBytes(), 0, bArr, iAddSizes, 8);
            iAddSizes += 8;
        }
        ZipLong zipLong = this.diskStart;
        if (zipLong != null) {
            System.arraycopy(zipLong.getBytes(), 0, bArr, iAddSizes, 4);
        }
        return bArr;
    }
}
