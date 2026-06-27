package org.apache.commons.compress.archivers.zip;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.NoSuchElementException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.EntryStreamOffsets;
import org.apache.commons.compress.archivers.zip.ExtraFieldUtils;

/* loaded from: classes4.dex */
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
        if (file.isDirectory() && !str.endsWith("/")) {
            str = str + "/";
        }
        this(str);
        if (file.isFile()) {
            setSize(file.length());
        }
        setTime(file.lastModified());
    }

    @Override // java.util.zip.ZipEntry
    public Object clone() {
        ZipArchiveEntry zipArchiveEntry = (ZipArchiveEntry) super.clone();
        zipArchiveEntry.setInternalAttributes(getInternalAttributes());
        zipArchiveEntry.setExternalAttributes(getExternalAttributes());
        zipArchiveEntry.setExtraFields(getAllExtraFieldsNoCopy());
        return zipArchiveEntry;
    }

    @Override // java.util.zip.ZipEntry
    public int getMethod() {
        return this.method;
    }

    @Override // java.util.zip.ZipEntry
    public void setMethod(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("ZIP compression method can not be negative: " + i);
        }
        this.method = i;
    }

    public int getInternalAttributes() {
        return this.internalAttributes;
    }

    public void setInternalAttributes(int i) {
        this.internalAttributes = i;
    }

    public long getExternalAttributes() {
        return this.externalAttributes;
    }

    public void setExternalAttributes(long j) {
        this.externalAttributes = j;
    }

    public int getPlatform() {
        return this.platform;
    }

    protected void setPlatform(int i) {
        this.platform = i;
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

    private ZipExtraField[] getAllExtraFieldsNoCopy() {
        ZipExtraField[] zipExtraFieldArr = this.extraFields;
        if (zipExtraFieldArr == null) {
            return getUnparseableOnly();
        }
        return this.unparseableExtra != null ? getMergedFields() : zipExtraFieldArr;
    }

    private ZipExtraField[] copyOf(ZipExtraField[] zipExtraFieldArr, int i) {
        ZipExtraField[] zipExtraFieldArr2 = new ZipExtraField[i];
        System.arraycopy(zipExtraFieldArr, 0, zipExtraFieldArr2, 0, Math.min(zipExtraFieldArr.length, i));
        return zipExtraFieldArr2;
    }

    private ZipExtraField[] getMergedFields() {
        ZipExtraField[] zipExtraFieldArr = this.extraFields;
        ZipExtraField[] zipExtraFieldArrCopyOf = copyOf(zipExtraFieldArr, zipExtraFieldArr.length + 1);
        zipExtraFieldArrCopyOf[this.extraFields.length] = this.unparseableExtra;
        return zipExtraFieldArrCopyOf;
    }

    private ZipExtraField[] getUnparseableOnly() {
        UnparseableExtraFieldData unparseableExtraFieldData = this.unparseableExtra;
        return unparseableExtraFieldData == null ? noExtraFields : new ZipExtraField[]{unparseableExtraFieldData};
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

    public void addAsFirstExtraField(ZipExtraField zipExtraField) {
        if (zipExtraField instanceof UnparseableExtraFieldData) {
            this.unparseableExtra = (UnparseableExtraFieldData) zipExtraField;
        } else {
            if (getExtraField(zipExtraField.getHeaderId()) != null) {
                removeExtraField(zipExtraField.getHeaderId());
            }
            ZipExtraField[] zipExtraFieldArr = this.extraFields;
            this.extraFields = new ZipExtraField[zipExtraFieldArr != null ? zipExtraFieldArr.length + 1 : 1];
            ZipExtraField[] zipExtraFieldArr2 = this.extraFields;
            zipExtraFieldArr2[0] = zipExtraField;
            if (zipExtraFieldArr != null) {
                System.arraycopy(zipExtraFieldArr, 0, zipExtraFieldArr2, 1, zipExtraFieldArr2.length - 1);
            }
        }
        setExtra();
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

    @Override // java.util.zip.ZipEntry
    public void setExtra(byte[] bArr) throws RuntimeException {
        try {
            mergeExtraFields(ExtraFieldUtils.parse(bArr, true, ExtraFieldUtils.UnparseableExtraField.READ), true);
        } catch (ZipException e) {
            throw new RuntimeException("Error parsing extra fields for entry: " + getName() + " - " + e.getMessage(), e);
        }
    }

    protected void setExtra() {
        super.setExtra(ExtraFieldUtils.mergeLocalFileDataData(getAllExtraFieldsNoCopy()));
    }

    public byte[] getLocalFileDataExtra() {
        byte[] extra = getExtra();
        return extra != null ? extra : EMPTY;
    }

    public byte[] getCentralDirectoryExtra() {
        return ExtraFieldUtils.mergeCentralDirectoryData(getAllExtraFieldsNoCopy());
    }

    @Override // java.util.zip.ZipEntry
    public String getName() {
        String str = this.name;
        return str == null ? super.getName() : str;
    }

    @Override // java.util.zip.ZipEntry
    public boolean isDirectory() {
        return getName().endsWith("/");
    }

    protected void setName(String str) {
        if (str != null && getPlatform() == 0 && !str.contains("/")) {
            str = str.replace('\\', '/');
        }
        this.name = str;
    }

    @Override // java.util.zip.ZipEntry
    public long getSize() {
        return this.size;
    }

    @Override // java.util.zip.ZipEntry
    public void setSize(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("invalid entry size");
        }
        this.size = j;
    }

    protected void setName(String str, byte[] bArr) {
        setName(str);
        this.rawName = bArr;
    }

    protected void setLocalHeaderOffset(long j) {
        this.localHeaderOffset = j;
    }

    protected void setDataOffset(long j) {
        this.dataOffset = j;
    }

    protected void setStreamContiguous(boolean z) {
        this.isStreamContiguous = z;
    }

    @Override // java.util.zip.ZipEntry
    public int hashCode() {
        return getName().hashCode();
    }

    public GeneralPurposeBit getGeneralPurposeBit() {
        return this.gpb;
    }

    public void setGeneralPurposeBit(GeneralPurposeBit generalPurposeBit) {
        this.gpb = generalPurposeBit;
    }

    private void mergeExtraFields(ZipExtraField[] zipExtraFieldArr, boolean z) throws ZipException {
        ZipExtraField extraField;
        if (this.extraFields == null) {
            setExtraFields(zipExtraFieldArr);
            return;
        }
        for (ZipExtraField zipExtraField : zipExtraFieldArr) {
            if (zipExtraField instanceof UnparseableExtraFieldData) {
                extraField = this.unparseableExtra;
            } else {
                extraField = getExtraField(zipExtraField.getHeaderId());
            }
            if (extraField == null) {
                addExtraField(zipExtraField);
            } else if (z) {
                byte[] localFileDataData = zipExtraField.getLocalFileDataData();
                extraField.parseFromLocalFileData(localFileDataData, 0, localFileDataData.length);
            } else {
                byte[] centralDirectoryData = zipExtraField.getCentralDirectoryData();
                extraField.parseFromCentralDirectoryData(centralDirectoryData, 0, centralDirectoryData.length);
            }
        }
        setExtra();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ZipArchiveEntry.class != obj.getClass()) {
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

    public void setNameSource(NameSource nameSource) {
        this.nameSource = nameSource;
    }

    public void setCommentSource(CommentSource commentSource) {
        this.commentSource = commentSource;
    }
}
