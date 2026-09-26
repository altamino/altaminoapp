package org.apache.commons.compress.archivers.zip;

import com.google.firebase.sessions.settings.c;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.NoSuchElementException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import kotlinx.serialization.json.internal.b;
import okhttp3.internal.ws.WebSocketProtocol;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.EntryStreamOffsets;

/* JADX INFO: loaded from: classes4.dex */
public class ZipArchiveEntry extends ZipEntry implements ArchiveEntry, EntryStreamOffsets {
    public static final int CRC_UNKNOWN = -1;
    public static final int PLATFORM_FAT = 0;
    public static final int PLATFORM_UNIX = 3;
    private static final int SHORT_MASK = 65535;
    private static final int SHORT_SHIFT = 16;
    private int alignment;
    private CommentSource commentSource;
    private long dataOffset;
    private long externalAttributes;
    private ZipExtraField[] extraFields;
    private GeneralPurposeBit gpb;
    private int internalAttributes;
    private boolean isStreamContiguous;
    private long localHeaderOffset;
    private int method;
    private String name;
    private NameSource nameSource;
    private int platform;
    private int rawFlag;
    private byte[] rawName;
    private long size;
    private UnparseableExtraFieldData unparseableExtra;
    private int versionMadeBy;
    private int versionRequired;
    private static final byte[] EMPTY = new byte[0];
    private static final ZipExtraField[] noExtraFields = new ZipExtraField[0];

    public enum CommentSource {
        COMMENT,
        UNICODE_EXTRA_FIELD
    }

    public enum NameSource {
        NAME,
        NAME_WITH_EFS_FLAG,
        UNICODE_EXTRA_FIELD
    }

    public ZipArchiveEntry(String str) {
        super(str);
        this.method = -1;
        this.size = -1L;
        this.internalAttributes = 0;
        this.platform = 0;
        this.externalAttributes = 0L;
        this.alignment = 0;
        this.unparseableExtra = null;
        this.name = null;
        this.rawName = null;
        this.gpb = new GeneralPurposeBit();
        this.localHeaderOffset = -1L;
        this.dataOffset = -1L;
        this.isStreamContiguous = false;
        this.nameSource = NameSource.NAME;
        this.commentSource = CommentSource.COMMENT;
        setName(str);
    }

    private ZipExtraField[] copyOf(ZipExtraField[] zipExtraFieldArr) {
        return copyOf(zipExtraFieldArr, zipExtraFieldArr.length);
    }

    private ZipExtraField[] getParseableExtraFieldsNoCopy() {
        ZipExtraField[] zipExtraFieldArr = this.extraFields;
        return zipExtraFieldArr == null ? noExtraFields : zipExtraFieldArr;
    }

    private ZipExtraField[] getUnparseableOnly() {
        UnparseableExtraFieldData unparseableExtraFieldData = this.unparseableExtra;
        return unparseableExtraFieldData == null ? noExtraFields : new ZipExtraField[]{unparseableExtraFieldData};
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ZipArchiveEntry zipArchiveEntry = (ZipArchiveEntry) obj;
        String name = getName();
        String name2 = zipArchiveEntry.getName();
        if (name == null) {
            if (name2 != null) {
                return false;
            }
        } else if (!name.equals(name2)) {
            return false;
        }
        String comment = getComment();
        String comment2 = zipArchiveEntry.getComment();
        if (comment == null) {
            comment = "";
        }
        if (comment2 == null) {
            comment2 = "";
        }
        return getTime() == zipArchiveEntry.getTime() && comment.equals(comment2) && getInternalAttributes() == zipArchiveEntry.getInternalAttributes() && getPlatform() == zipArchiveEntry.getPlatform() && getExternalAttributes() == zipArchiveEntry.getExternalAttributes() && getMethod() == zipArchiveEntry.getMethod() && getSize() == zipArchiveEntry.getSize() && getCrc() == zipArchiveEntry.getCrc() && getCompressedSize() == zipArchiveEntry.getCompressedSize() && Arrays.equals(getCentralDirectoryExtra(), zipArchiveEntry.getCentralDirectoryExtra()) && Arrays.equals(getLocalFileDataExtra(), zipArchiveEntry.getLocalFileDataExtra()) && this.localHeaderOffset == zipArchiveEntry.localHeaderOffset && this.dataOffset == zipArchiveEntry.dataOffset && this.gpb.equals(zipArchiveEntry.gpb);
    }

    protected int getAlignment() {
        return this.alignment;
    }

    public CommentSource getCommentSource() {
        return this.commentSource;
    }

    @Override // org.apache.commons.compress.archivers.EntryStreamOffsets
    public long getDataOffset() {
        return this.dataOffset;
    }

    public long getExternalAttributes() {
        return this.externalAttributes;
    }

    public ZipExtraField[] getExtraFields() {
        return getParseableExtraFields();
    }

    public GeneralPurposeBit getGeneralPurposeBit() {
        return this.gpb;
    }

    public int getInternalAttributes() {
        return this.internalAttributes;
    }

    protected long getLocalHeaderOffset() {
        return this.localHeaderOffset;
    }

    @Override // java.util.zip.ZipEntry
    public int getMethod() {
        return this.method;
    }

    public NameSource getNameSource() {
        return this.nameSource;
    }

    public int getPlatform() {
        return this.platform;
    }

    public int getRawFlag() {
        return this.rawFlag;
    }

    @Override // java.util.zip.ZipEntry, org.apache.commons.compress.archivers.ArchiveEntry
    public long getSize() {
        return this.size;
    }

    public UnparseableExtraFieldData getUnparseableExtraFieldData() {
        return this.unparseableExtra;
    }

    public int getVersionMadeBy() {
        return this.versionMadeBy;
    }

    public int getVersionRequired() {
        return this.versionRequired;
    }

    @Override // org.apache.commons.compress.archivers.EntryStreamOffsets
    public boolean isStreamContiguous() {
        return this.isStreamContiguous;
    }

    public void setCommentSource(CommentSource commentSource) {
        this.commentSource = commentSource;
    }

    protected void setDataOffset(long j6) {
        this.dataOffset = j6;
    }

    public void setExternalAttributes(long j6) {
        this.externalAttributes = j6;
    }

    @Override // java.util.zip.ZipEntry
    public void setExtra(byte[] bArr) throws RuntimeException {
        try {
            mergeExtraFields(ExtraFieldUtils.parse(bArr, true, ExtraFieldUtils.UnparseableExtraField.READ), true);
        } catch (ZipException e) {
            throw new RuntimeException("Error parsing extra fields for entry: " + getName() + " - " + e.getMessage(), e);
        }
    }

    public void setGeneralPurposeBit(GeneralPurposeBit generalPurposeBit) {
        this.gpb = generalPurposeBit;
    }

    public void setInternalAttributes(int i10) {
        this.internalAttributes = i10;
    }

    protected void setLocalHeaderOffset(long j6) {
        this.localHeaderOffset = j6;
    }

    protected void setName(String str) {
        if (str != null && getPlatform() == 0 && !str.contains(c.FORWARD_SLASH_STRING)) {
            str = str.replace(b.STRING_ESC, '/');
        }
        this.name = str;
    }

    public void setNameSource(NameSource nameSource) {
        this.nameSource = nameSource;
    }

    protected void setPlatform(int i10) {
        this.platform = i10;
    }

    public void setRawFlag(int i10) {
        this.rawFlag = i10;
    }

    protected void setStreamContiguous(boolean z6) {
        this.isStreamContiguous = z6;
    }

    public void setVersionMadeBy(int i10) {
        this.versionMadeBy = i10;
    }

    public void setVersionRequired(int i10) {
        this.versionRequired = i10;
    }

    private ZipExtraField[] copyOf(ZipExtraField[] zipExtraFieldArr, int i10) {
        ZipExtraField[] zipExtraFieldArr2 = new ZipExtraField[i10];
        System.arraycopy(zipExtraFieldArr, 0, zipExtraFieldArr2, 0, Math.min(zipExtraFieldArr.length, i10));
        return zipExtraFieldArr2;
    }

    private ZipExtraField[] getAllExtraFieldsNoCopy() {
        ZipExtraField[] zipExtraFieldArr = this.extraFields;
        if (zipExtraFieldArr == null) {
            return getUnparseableOnly();
        }
        return this.unparseableExtra != null ? getMergedFields() : zipExtraFieldArr;
    }

    private ZipExtraField[] getMergedFields() {
        ZipExtraField[] zipExtraFieldArr = this.extraFields;
        ZipExtraField[] zipExtraFieldArrCopyOf = copyOf(zipExtraFieldArr, zipExtraFieldArr.length + 1);
        zipExtraFieldArrCopyOf[this.extraFields.length] = this.unparseableExtra;
        return zipExtraFieldArrCopyOf;
    }

    private void mergeExtraFields(ZipExtraField[] zipExtraFieldArr, boolean z6) throws ZipException {
        if (this.extraFields == null) {
            setExtraFields(zipExtraFieldArr);
            return;
        }
        for (ZipExtraField zipExtraField : zipExtraFieldArr) {
            ZipExtraField extraField = zipExtraField instanceof UnparseableExtraFieldData ? this.unparseableExtra : getExtraField(zipExtraField.getHeaderId());
            if (extraField == null) {
                addExtraField(zipExtraField);
            } else if (z6) {
                byte[] localFileDataData = zipExtraField.getLocalFileDataData();
                extraField.parseFromLocalFileData(localFileDataData, 0, localFileDataData.length);
            } else {
                byte[] centralDirectoryData = zipExtraField.getCentralDirectoryData();
                extraField.parseFromCentralDirectoryData(centralDirectoryData, 0, centralDirectoryData.length);
            }
        }
        setExtra();
    }

    public void addAsFirstExtraField(ZipExtraField zipExtraField) {
        if (zipExtraField instanceof UnparseableExtraFieldData) {
            this.unparseableExtra = (UnparseableExtraFieldData) zipExtraField;
        } else {
            if (getExtraField(zipExtraField.getHeaderId()) != null) {
                removeExtraField(zipExtraField.getHeaderId());
            }
            ZipExtraField[] zipExtraFieldArr = this.extraFields;
            ZipExtraField[] zipExtraFieldArr2 = new ZipExtraField[zipExtraFieldArr != null ? zipExtraFieldArr.length + 1 : 1];
            this.extraFields = zipExtraFieldArr2;
            zipExtraFieldArr2[0] = zipExtraField;
            if (zipExtraFieldArr != null) {
                System.arraycopy(zipExtraFieldArr, 0, zipExtraFieldArr2, 1, zipExtraFieldArr2.length - 1);
            }
        }
        setExtra();
    }

    public void addExtraField(ZipExtraField zipExtraField) {
        if (zipExtraField instanceof UnparseableExtraFieldData) {
            this.unparseableExtra = (UnparseableExtraFieldData) zipExtraField;
        } else if (this.extraFields == null) {
            this.extraFields = new ZipExtraField[]{zipExtraField};
        } else {
            if (getExtraField(zipExtraField.getHeaderId()) != null) {
                removeExtraField(zipExtraField.getHeaderId());
            }
            ZipExtraField[] zipExtraFieldArr = this.extraFields;
            ZipExtraField[] zipExtraFieldArrCopyOf = copyOf(zipExtraFieldArr, zipExtraFieldArr.length + 1);
            zipExtraFieldArrCopyOf[zipExtraFieldArrCopyOf.length - 1] = zipExtraField;
            this.extraFields = zipExtraFieldArrCopyOf;
        }
        setExtra();
    }

    public ZipExtraField getExtraField(ZipShort zipShort) {
        ZipExtraField[] zipExtraFieldArr = this.extraFields;
        if (zipExtraFieldArr == null) {
            return null;
        }
        for (ZipExtraField zipExtraField : zipExtraFieldArr) {
            if (zipShort.equals(zipExtraField.getHeaderId())) {
                return zipExtraField;
            }
        }
        return null;
    }

    public ZipExtraField[] getExtraFields(boolean z6) {
        return z6 ? getAllExtraFields() : getParseableExtraFields();
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public Date getLastModifiedDate() {
        return new Date(getTime());
    }

    @Override // java.util.zip.ZipEntry, org.apache.commons.compress.archivers.ArchiveEntry
    public String getName() {
        String str = this.name;
        return str == null ? super.getName() : str;
    }

    public byte[] getRawName() {
        byte[] bArr = this.rawName;
        if (bArr == null) {
            return null;
        }
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public int getUnixMode() {
        if (this.platform != 3) {
            return 0;
        }
        return (int) ((getExternalAttributes() >> 16) & WebSocketProtocol.PAYLOAD_SHORT_MAX);
    }

    public void removeExtraField(ZipShort zipShort) {
        if (this.extraFields == null) {
            throw new NoSuchElementException();
        }
        ArrayList arrayList = new ArrayList();
        for (ZipExtraField zipExtraField : this.extraFields) {
            if (!zipShort.equals(zipExtraField.getHeaderId())) {
                arrayList.add(zipExtraField);
            }
        }
        if (this.extraFields.length == arrayList.size()) {
            throw new NoSuchElementException();
        }
        this.extraFields = (ZipExtraField[]) arrayList.toArray(new ZipExtraField[arrayList.size()]);
        setExtra();
    }

    public void removeUnparseableExtraFieldData() {
        if (this.unparseableExtra == null) {
            throw new NoSuchElementException();
        }
        this.unparseableExtra = null;
        setExtra();
    }

    public void setAlignment(int i10) {
        if (((i10 - 1) & i10) == 0 && i10 <= 65535) {
            this.alignment = i10;
            return;
        }
        throw new IllegalArgumentException("Invalid value for alignment, must be power of two and no bigger than 65535 but is " + i10);
    }

    public void setCentralDirectoryExtra(byte[] bArr) {
        try {
            mergeExtraFields(ExtraFieldUtils.parse(bArr, false, ExtraFieldUtils.UnparseableExtraField.READ), false);
        } catch (ZipException e) {
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    public void setExtraFields(ZipExtraField[] zipExtraFieldArr) {
        ArrayList arrayList = new ArrayList();
        for (ZipExtraField zipExtraField : zipExtraFieldArr) {
            if (zipExtraField instanceof UnparseableExtraFieldData) {
                this.unparseableExtra = (UnparseableExtraFieldData) zipExtraField;
            } else {
                arrayList.add(zipExtraField);
            }
        }
        this.extraFields = (ZipExtraField[]) arrayList.toArray(new ZipExtraField[arrayList.size()]);
        setExtra();
    }

    @Override // java.util.zip.ZipEntry
    public void setMethod(int i10) {
        if (i10 >= 0) {
            this.method = i10;
            return;
        }
        throw new IllegalArgumentException("ZIP compression method can not be negative: " + i10);
    }

    @Override // java.util.zip.ZipEntry
    public void setSize(long j6) {
        if (j6 < 0) {
            throw new IllegalArgumentException("invalid entry size");
        }
        this.size = j6;
    }

    public void setUnixMode(int i10) {
        setExternalAttributes(((i10 & 128) == 0 ? 1 : 0) | (i10 << 16) | (isDirectory() ? 16 : 0));
        this.platform = 3;
    }

    private ZipExtraField[] getAllExtraFields() {
        ZipExtraField[] allExtraFieldsNoCopy = getAllExtraFieldsNoCopy();
        if (allExtraFieldsNoCopy == this.extraFields) {
            return copyOf(allExtraFieldsNoCopy);
        }
        return allExtraFieldsNoCopy;
    }

    private ZipExtraField[] getParseableExtraFields() {
        ZipExtraField[] parseableExtraFieldsNoCopy = getParseableExtraFieldsNoCopy();
        if (parseableExtraFieldsNoCopy == this.extraFields) {
            return copyOf(parseableExtraFieldsNoCopy);
        }
        return parseableExtraFieldsNoCopy;
    }

    @Override // java.util.zip.ZipEntry
    public Object clone() {
        ZipArchiveEntry zipArchiveEntry = (ZipArchiveEntry) super.clone();
        zipArchiveEntry.setInternalAttributes(getInternalAttributes());
        zipArchiveEntry.setExternalAttributes(getExternalAttributes());
        zipArchiveEntry.setExtraFields(getAllExtraFieldsNoCopy());
        return zipArchiveEntry;
    }

    public byte[] getCentralDirectoryExtra() {
        return ExtraFieldUtils.mergeCentralDirectoryData(getAllExtraFieldsNoCopy());
    }

    public byte[] getLocalFileDataExtra() {
        byte[] extra = getExtra();
        if (extra == null) {
            return EMPTY;
        }
        return extra;
    }

    @Override // java.util.zip.ZipEntry
    public int hashCode() {
        return getName().hashCode();
    }

    @Override // java.util.zip.ZipEntry, org.apache.commons.compress.archivers.ArchiveEntry
    public boolean isDirectory() {
        return getName().endsWith(c.FORWARD_SLASH_STRING);
    }

    public boolean isUnixSymlink() {
        if ((getUnixMode() & 61440) == 40960) {
            return true;
        }
        return false;
    }

    protected void setName(String str, byte[] bArr) {
        setName(str);
        this.rawName = bArr;
    }

    public ZipArchiveEntry(ZipEntry zipEntry) throws ZipException {
        super(zipEntry);
        this.method = -1;
        this.size = -1L;
        this.internalAttributes = 0;
        this.platform = 0;
        this.externalAttributes = 0L;
        this.alignment = 0;
        this.unparseableExtra = null;
        this.name = null;
        this.rawName = null;
        this.gpb = new GeneralPurposeBit();
        this.localHeaderOffset = -1L;
        this.dataOffset = -1L;
        this.isStreamContiguous = false;
        this.nameSource = NameSource.NAME;
        this.commentSource = CommentSource.COMMENT;
        setName(zipEntry.getName());
        byte[] extra = zipEntry.getExtra();
        if (extra != null) {
            setExtraFields(ExtraFieldUtils.parse(extra, true, ExtraFieldUtils.UnparseableExtraField.READ));
        } else {
            setExtra();
        }
        setMethod(zipEntry.getMethod());
        this.size = zipEntry.getSize();
    }

    protected void setExtra() {
        super.setExtra(ExtraFieldUtils.mergeLocalFileDataData(getAllExtraFieldsNoCopy()));
    }

    public ZipArchiveEntry(ZipArchiveEntry zipArchiveEntry) throws ZipException {
        this((ZipEntry) zipArchiveEntry);
        setInternalAttributes(zipArchiveEntry.getInternalAttributes());
        setExternalAttributes(zipArchiveEntry.getExternalAttributes());
        setExtraFields(getAllExtraFieldsNoCopy());
        setPlatform(zipArchiveEntry.getPlatform());
        GeneralPurposeBit generalPurposeBit = zipArchiveEntry.getGeneralPurposeBit();
        setGeneralPurposeBit(generalPurposeBit == null ? null : (GeneralPurposeBit) generalPurposeBit.clone());
    }

    protected ZipArchiveEntry() {
        this("");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ZipArchiveEntry(File file, String str) {
        if (file.isDirectory() && !str.endsWith(c.FORWARD_SLASH_STRING)) {
            str = str + c.FORWARD_SLASH_STRING;
        }
        this(str);
        if (file.isFile()) {
            setSize(file.length());
        }
        setTime(file.lastModified());
    }
}
