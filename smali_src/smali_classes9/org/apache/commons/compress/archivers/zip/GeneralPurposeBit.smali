.class public final Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DATA_DESCRIPTOR_FLAG:I = 0x8

.field private static final ENCRYPTION_FLAG:I = 0x1

.field private static final NUMBER_OF_SHANNON_FANO_TREES_FLAG:I = 0x4

.field private static final SLIDING_DICTIONARY_SIZE_FLAG:I = 0x2

.field private static final STRONG_ENCRYPTION_FLAG:I = 0x40

.field public static final UFT8_NAMES_FLAG:I = 0x800


# instance fields
.field private dataDescriptorFlag:Z

.field private encryptionFlag:Z

.field private languageEncodingFlag:Z

.field private numberOfShannonFanoTrees:I

.field private slidingDictionarySize:I

.field private strongEncryptionFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    .line 13
    return-void
.end method

.method public static parse([BI)Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 4
    move-result p0

    .line 5
    .line 6
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 7
    .line 8
    .line 9
    invoke-direct {p1}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;-><init>()V

    .line 10
    .line 11
    and-int/lit8 v0, p0, 0x8

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    move v0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v1

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useDataDescriptor(Z)V

    .line 22
    .line 23
    and-int/lit16 v0, p0, 0x800

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    move v0, v2

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v0, v1

    .line 29
    .line 30
    .line 31
    :goto_1
    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useUTF8ForNames(Z)V

    .line 32
    .line 33
    and-int/lit8 v0, p0, 0x40

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    move v0, v2

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move v0, v1

    .line 39
    .line 40
    .line 41
    :goto_2
    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useStrongEncryption(Z)V

    .line 42
    .line 43
    and-int/lit8 v0, p0, 0x1

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    move v1, v2

    .line 47
    .line 48
    .line 49
    :cond_3
    invoke-virtual {p1, v1}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useEncryption(Z)V

    .line 50
    .line 51
    and-int/lit8 v0, p0, 0x2

    .line 52
    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    const/16 v0, 0x2000

    .line 56
    goto :goto_3

    .line 57
    .line 58
    :cond_4
    const/16 v0, 0x1000

    .line 59
    .line 60
    :goto_3
    iput v0, p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->slidingDictionarySize:I

    .line 61
    .line 62
    and-int/lit8 p0, p0, 0x4

    .line 63
    .line 64
    if-eqz p0, :cond_5

    .line 65
    const/4 p0, 0x3

    .line 66
    goto :goto_4

    .line 67
    :cond_5
    const/4 p0, 0x2

    .line 68
    .line 69
    :goto_4
    iput p0, p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->numberOfShannonFanoTrees:I

    .line 70
    return-object p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object v0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    .line 8
    new-instance v1, Ljava/lang/RuntimeException;

    .line 9
    .line 10
    const-string v2, "GeneralPurposeBit is not Cloneable?"

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    throw v1
.end method

.method public encode([BI)V
    .locals 3

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x800

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    or-int/2addr v0, v2

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    or-int/2addr v0, v2

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    if-eqz v2, :cond_2

    const/16 v1, 0x40

    :cond_2
    or-int/2addr v0, v1

    .line 2
    invoke-static {v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->putShort(I[BI)V

    return-void
.end method

.method public encode()[B
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encode([BI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 9
    .line 10
    iget-boolean v0, p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    .line 11
    .line 12
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    .line 13
    .line 14
    if-ne v0, v2, :cond_1

    .line 15
    .line 16
    iget-boolean v0, p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    .line 17
    .line 18
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    .line 19
    .line 20
    if-ne v0, v2, :cond_1

    .line 21
    .line 22
    iget-boolean v0, p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    .line 23
    .line 24
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    .line 25
    .line 26
    if-ne v0, v2, :cond_1

    .line 27
    .line 28
    iget-boolean p1, p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    .line 29
    .line 30
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    .line 31
    .line 32
    if-ne p1, v0, :cond_1

    .line 33
    const/4 v1, 0x1

    .line 34
    :cond_1
    return v1
.end method

.method getNumberOfShannonFanoTrees()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->numberOfShannonFanoTrees:I

    return v0
.end method

.method getSlidingDictionarySize()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->slidingDictionarySize:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    mul-int/lit8 v0, v0, 0x11

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xd

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x7

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public useDataDescriptor(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    return-void
.end method

.method public useEncryption(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    return-void
.end method

.method public useStrongEncryption(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    const/4 p1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useEncryption(Z)V

    .line 9
    :cond_0
    return-void
.end method

.method public useUTF8ForNames(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    return-void
.end method

.method public usesDataDescriptor()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    return v0
.end method

.method public usesEncryption()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    return v0
.end method

.method public usesStrongEncryption()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public usesUTF8ForNames()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    return v0
.end method
