package org.apache.commons.compress.archivers.zip;

/* JADX INFO: loaded from: classes9.dex */
public final class GeneralPurposeBit implements Cloneable {
    private static final int DATA_DESCRIPTOR_FLAG = 8;
    private static final int ENCRYPTION_FLAG = 1;
    private static final int NUMBER_OF_SHANNON_FANO_TREES_FLAG = 4;
    private static final int SLIDING_DICTIONARY_SIZE_FLAG = 2;
    private static final int STRONG_ENCRYPTION_FLAG = 64;
    public static final int UFT8_NAMES_FLAG = 2048;
    private int numberOfShannonFanoTrees;
    private int slidingDictionarySize;
    private boolean languageEncodingFlag = false;
    private boolean dataDescriptorFlag = false;
    private boolean encryptionFlag = false;
    private boolean strongEncryptionFlag = false;

    public byte[] encode() {
        byte[] bArr = new byte[2];
        encode(bArr, 0);
        return bArr;
    }

    int getNumberOfShannonFanoTrees() {
        return this.numberOfShannonFanoTrees;
    }

    int getSlidingDictionarySize() {
        return this.slidingDictionarySize;
    }

    public int hashCode() {
        return (((((((this.encryptionFlag ? 1 : 0) * 17) + (this.strongEncryptionFlag ? 1 : 0)) * 13) + (this.languageEncodingFlag ? 1 : 0)) * 7) + (this.dataDescriptorFlag ? 1 : 0)) * 3;
    }

    public void useDataDescriptor(boolean z6) {
        this.dataDescriptorFlag = z6;
    }

    public void useEncryption(boolean z6) {
        this.encryptionFlag = z6;
    }

    public void useUTF8ForNames(boolean z6) {
        this.languageEncodingFlag = z6;
    }

    public boolean usesDataDescriptor() {
        return this.dataDescriptorFlag;
    }

    public boolean usesEncryption() {
        return this.encryptionFlag;
    }

    public boolean usesStrongEncryption() {
        return this.encryptionFlag && this.strongEncryptionFlag;
    }

    public boolean usesUTF8ForNames() {
        return this.languageEncodingFlag;
    }

    public void encode(byte[] bArr, int i10) {
        ZipShort.putShort((this.dataDescriptorFlag ? 8 : 0) | (this.languageEncodingFlag ? 2048 : 0) | (this.encryptionFlag ? 1 : 0) | (this.strongEncryptionFlag ? 64 : 0), bArr, i10);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GeneralPurposeBit)) {
            return false;
        }
        GeneralPurposeBit generalPurposeBit = (GeneralPurposeBit) obj;
        return generalPurposeBit.encryptionFlag == this.encryptionFlag && generalPurposeBit.strongEncryptionFlag == this.strongEncryptionFlag && generalPurposeBit.languageEncodingFlag == this.languageEncodingFlag && generalPurposeBit.dataDescriptorFlag == this.dataDescriptorFlag;
    }

    public void useStrongEncryption(boolean z6) {
        this.strongEncryptionFlag = z6;
        if (z6) {
            useEncryption(true);
        }
    }

    public static GeneralPurposeBit parse(byte[] bArr, int i10) {
        boolean z6;
        boolean z10;
        boolean z11;
        int i11;
        int i12;
        int value = ZipShort.getValue(bArr, i10);
        GeneralPurposeBit generalPurposeBit = new GeneralPurposeBit();
        boolean z12 = false;
        if ((value & 8) != 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        generalPurposeBit.useDataDescriptor(z6);
        if ((value & 2048) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        generalPurposeBit.useUTF8ForNames(z10);
        if ((value & 64) != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        generalPurposeBit.useStrongEncryption(z11);
        if ((value & 1) != 0) {
            z12 = true;
        }
        generalPurposeBit.useEncryption(z12);
        if ((value & 2) != 0) {
            i11 = 8192;
        } else {
            i11 = 4096;
        }
        generalPurposeBit.slidingDictionarySize = i11;
        if ((value & 4) != 0) {
            i12 = 3;
        } else {
            i12 = 2;
        }
        generalPurposeBit.numberOfShannonFanoTrees = i12;
        return generalPurposeBit;
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException("GeneralPurposeBit is not Cloneable?", e);
        }
    }
}
