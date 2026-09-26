package org.apache.commons.compress.archivers.zip;

import java.util.zip.ZipException;

/* JADX INFO: loaded from: classes9.dex */
public final class JarMarker implements ZipExtraField {
    private static final ZipShort ID = new ZipShort(51966);
    private static final ZipShort NULL = new ZipShort(0);
    private static final byte[] NO_BYTES = new byte[0];
    private static final JarMarker DEFAULT = new JarMarker();

    public static JarMarker getInstance() {
        return DEFAULT;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public byte[] getCentralDirectoryData() {
        return NO_BYTES;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getCentralDirectoryLength() {
        return NULL;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getHeaderId() {
        return ID;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public byte[] getLocalFileDataData() {
        return NO_BYTES;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getLocalFileDataLength() {
        return NULL;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromLocalFileData(byte[] bArr, int i10, int i11) throws ZipException {
        if (i11 != 0) {
            throw new ZipException("JarMarker doesn't expect any data");
        }
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromCentralDirectoryData(byte[] bArr, int i10, int i11) throws ZipException {
        parseFromLocalFileData(bArr, i10, i11);
    }
}
