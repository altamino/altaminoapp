package org.apache.commons.compress.archivers.zip;

/* JADX INFO: loaded from: classes.dex */
public class UnicodePathExtraField extends AbstractUnicodeExtraField {
    public static final ZipShort UPATH_ID = new ZipShort(28789);

    public UnicodePathExtraField() {
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipExtraField
    public ZipShort getHeaderId() {
        return UPATH_ID;
    }

    public UnicodePathExtraField(String str, byte[] bArr, int i10, int i11) {
        super(str, bArr, i10, i11);
    }

    public UnicodePathExtraField(String str, byte[] bArr) {
        super(str, bArr);
    }
}
