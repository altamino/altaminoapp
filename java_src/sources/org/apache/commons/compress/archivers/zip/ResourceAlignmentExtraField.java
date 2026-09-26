package org.apache.commons.compress.archivers.zip;

import java.util.zip.ZipException;
import kotlin.jvm.internal.s0;

/* JADX INFO: loaded from: classes11.dex */
public class ResourceAlignmentExtraField implements ZipExtraField {
    private static final int ALLOW_METHOD_MESSAGE_CHANGE_FLAG = 32768;
    public static final int BASE_SIZE = 2;
    public static final ZipShort ID = new ZipShort(41246);
    private short alignment;
    private boolean allowMethodChange;
    private int padding;

    public ResourceAlignmentExtraField() {
        this.padding = 0;
    }

    public boolean allowMethodChange() {
        return this.allowMethodChange;
    }

    public short getAlignment() {
        return this.alignment;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getHeaderId() {
        return ID;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromCentralDirectoryData(byte[] bArr, int i10, int i11) throws ZipException {
        if (i11 >= 2) {
            int value = ZipShort.getValue(bArr, i10);
            this.alignment = (short) (value & 32767);
            this.allowMethodChange = (value & 32768) != 0;
        } else {
            throw new ZipException("Too short content for ResourceAlignmentExtraField (0xa11e): " + i11);
        }
    }

    public ResourceAlignmentExtraField(int i10) {
        this(i10, false);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public byte[] getCentralDirectoryData() {
        return ZipShort.getBytes(this.alignment | (this.allowMethodChange ? s0.MIN_VALUE : (short) 0));
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getCentralDirectoryLength() {
        return new ZipShort(2);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public byte[] getLocalFileDataData() {
        byte[] bArr = new byte[this.padding + 2];
        ZipShort.putShort(this.alignment | (this.allowMethodChange ? s0.MIN_VALUE : (short) 0), bArr, 0);
        return bArr;
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getLocalFileDataLength() {
        return new ZipShort(this.padding + 2);
    }

    public ResourceAlignmentExtraField(int i10, boolean z6) {
        this(i10, z6, 0);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public void parseFromLocalFileData(byte[] bArr, int i10, int i11) throws ZipException {
        parseFromCentralDirectoryData(bArr, i10, i11);
        this.padding = i11 - 2;
    }

    public ResourceAlignmentExtraField(int i10, boolean z6, int i11) {
        this.padding = 0;
        if (i10 < 0 || i10 > 32767) {
            throw new IllegalArgumentException("Alignment must be between 0 and 0x7fff, was: " + i10);
        }
        this.alignment = (short) i10;
        this.allowMethodChange = z6;
        this.padding = i11;
    }
}
