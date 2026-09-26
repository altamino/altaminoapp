package org.apache.commons.compress.archivers.zip;

/* JADX INFO: loaded from: classes6.dex */
public class X0017_StrongEncryptionHeader extends PKWareExtraHeader {
    private PKWareExtraHeader.EncryptionAlgorithm algId;
    private int bitlen;
    private byte[] erdData;
    private int flags;
    private int format;
    private PKWareExtraHeader.HashAlgorithm hashAlg;
    private int hashSize;
    private byte[] ivData;
    private byte[] keyBlob;
    private long rcount;
    private byte[] recipientKeyHash;
    private byte[] vCRC32;
    private byte[] vData;

    public PKWareExtraHeader.EncryptionAlgorithm getEncryptionAlgorithm() {
        return this.algId;
    }

    public PKWareExtraHeader.HashAlgorithm getHashAlgorithm() {
        return this.hashAlg;
    }

    public long getRecordCount() {
        return this.rcount;
    }

    public X0017_StrongEncryptionHeader() {
        super(new ZipShort(23));
    }

    public void parseCentralDirectoryFormat(byte[] bArr, int i10, int i11) {
        this.format = ZipShort.getValue(bArr, i10);
        this.algId = PKWareExtraHeader.EncryptionAlgorithm.getAlgorithmByCode(ZipShort.getValue(bArr, i10 + 2));
        this.bitlen = ZipShort.getValue(bArr, i10 + 4);
        this.flags = ZipShort.getValue(bArr, i10 + 6);
        long value = ZipLong.getValue(bArr, i10 + 8);
        this.rcount = value;
        if (value > 0) {
            this.hashAlg = PKWareExtraHeader.HashAlgorithm.getAlgorithmByCode(ZipShort.getValue(bArr, i10 + 12));
            this.hashSize = ZipShort.getValue(bArr, i10 + 14);
            for (long j6 = 0; j6 < this.rcount; j6++) {
                for (int i12 = 0; i12 < this.hashSize; i12++) {
                }
            }
        }
    }

    public void parseFileFormat(byte[] bArr, int i10, int i11) {
        int value = ZipShort.getValue(bArr, i10);
        byte[] bArr2 = new byte[value];
        this.ivData = bArr2;
        System.arraycopy(bArr, i10 + 4, bArr2, 0, value);
        int i12 = i10 + value;
        this.format = ZipShort.getValue(bArr, i12 + 6);
        this.algId = PKWareExtraHeader.EncryptionAlgorithm.getAlgorithmByCode(ZipShort.getValue(bArr, i12 + 8));
        this.bitlen = ZipShort.getValue(bArr, i12 + 10);
        this.flags = ZipShort.getValue(bArr, i12 + 12);
        int value2 = ZipShort.getValue(bArr, i12 + 14);
        byte[] bArr3 = new byte[value2];
        this.erdData = bArr3;
        int i13 = i12 + 16;
        System.arraycopy(bArr, i13, bArr3, 0, value2);
        this.rcount = ZipLong.getValue(bArr, i13 + value2);
        System.out.println("rcount: " + this.rcount);
        if (this.rcount == 0) {
            int value3 = ZipShort.getValue(bArr, i12 + 20 + value2);
            int i14 = value3 - 4;
            byte[] bArr4 = new byte[i14];
            this.vData = bArr4;
            this.vCRC32 = new byte[4];
            int i15 = i12 + 22 + value2;
            System.arraycopy(bArr, i15, bArr4, 0, i14);
            System.arraycopy(bArr, (i15 + value3) - 4, this.vCRC32, 0, 4);
            return;
        }
        this.hashAlg = PKWareExtraHeader.HashAlgorithm.getAlgorithmByCode(ZipShort.getValue(bArr, i12 + 20 + value2));
        int i16 = i12 + 22 + value2;
        this.hashSize = ZipShort.getValue(bArr, i16);
        int i17 = i12 + 24 + value2;
        int value4 = ZipShort.getValue(bArr, i17);
        int i18 = this.hashSize;
        byte[] bArr5 = new byte[i18];
        this.recipientKeyHash = bArr5;
        this.keyBlob = new byte[value4 - i18];
        System.arraycopy(bArr, i17, bArr5, 0, i18);
        int i19 = this.hashSize;
        System.arraycopy(bArr, i17 + i19, this.keyBlob, 0, value4 - i19);
        int value5 = ZipShort.getValue(bArr, i12 + 26 + value2 + value4);
        int i20 = value5 - 4;
        byte[] bArr6 = new byte[i20];
        this.vData = bArr6;
        this.vCRC32 = new byte[4];
        int i21 = i16 + value4;
        System.arraycopy(bArr, i21, bArr6, 0, i20);
        System.arraycopy(bArr, (i21 + value5) - 4, this.vCRC32, 0, 4);
    }

    @Override // org.apache.commons.compress.archivers.zip.PKWareExtraHeader, org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromCentralDirectoryData(byte[] bArr, int i10, int i11) {
        super.parseFromCentralDirectoryData(bArr, i10, i11);
        parseCentralDirectoryFormat(bArr, i10, i11);
    }

    @Override // org.apache.commons.compress.archivers.zip.PKWareExtraHeader, org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromLocalFileData(byte[] bArr, int i10, int i11) {
        super.parseFromLocalFileData(bArr, i10, i11);
        parseFileFormat(bArr, i10, i11);
    }
}
