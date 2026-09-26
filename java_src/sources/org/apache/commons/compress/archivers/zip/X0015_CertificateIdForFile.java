package org.apache.commons.compress.archivers.zip;

/* JADX INFO: loaded from: classes6.dex */
public class X0015_CertificateIdForFile extends PKWareExtraHeader {
    private PKWareExtraHeader.HashAlgorithm hashAlg;
    private int rcount;

    public PKWareExtraHeader.HashAlgorithm getHashAlgorithm() {
        return this.hashAlg;
    }

    public int getRecordCount() {
        return this.rcount;
    }

    public X0015_CertificateIdForFile() {
        super(new ZipShort(21));
    }

    @Override // org.apache.commons.compress.archivers.zip.PKWareExtraHeader, org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromCentralDirectoryData(byte[] bArr, int i10, int i11) {
        super.parseFromCentralDirectoryData(bArr, i10, i11);
        this.rcount = ZipShort.getValue(bArr, i10);
        this.hashAlg = PKWareExtraHeader.HashAlgorithm.getAlgorithmByCode(ZipShort.getValue(bArr, i10 + 2));
    }
}
