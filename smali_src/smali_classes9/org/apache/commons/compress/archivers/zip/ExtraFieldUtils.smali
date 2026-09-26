.class public Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;
    }
.end annotation


# static fields
.field private static final WORD:I = 0x4

.field private static final implementations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/archivers/zip/ZipShort;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->implementations:Ljava/util/Map;

    .line 8
    .line 9
    const-class v0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 13
    .line 14
    const-class v0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 18
    .line 19
    const-class v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 23
    .line 24
    const-class v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 28
    .line 29
    const-class v0, Lorg/apache/commons/compress/archivers/zip/UnicodePathExtraField;

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 33
    .line 34
    const-class v0, Lorg/apache/commons/compress/archivers/zip/UnicodeCommentExtraField;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 38
    .line 39
    const-class v0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 43
    .line 44
    const-class v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 48
    .line 49
    const-class v0, Lorg/apache/commons/compress/archivers/zip/X0014_X509Certificates;

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 53
    .line 54
    const-class v0, Lorg/apache/commons/compress/archivers/zip/X0015_CertificateIdForFile;

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 58
    .line 59
    const-class v0, Lorg/apache/commons/compress/archivers/zip/X0016_CertificateIdForCentralDirectory;

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 63
    .line 64
    const-class v0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 68
    .line 69
    const-class v0, Lorg/apache/commons/compress/archivers/zip/X0019_EncryptionRecipientCertificateList;

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 73
    .line 74
    const-class v0, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static createExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->implementations:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Class;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    check-cast p0, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 17
    return-object p0

    .line 18
    .line 19
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->setHeaderId(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    .line 26
    return-object v0
.end method

.method public static mergeCentralDirectoryData([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)[B
    .locals 10

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    array-length v0, p0

    .line 7
    sub-int/2addr v0, v1

    .line 8
    .line 9
    aget-object v0, p0, v0

    .line 10
    .line 11
    instance-of v0, v0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    move v0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v2

    .line 17
    :goto_0
    array-length v3, p0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    sub-int/2addr v3, v1

    .line 21
    .line 22
    :cond_1
    mul-int/lit8 v4, v3, 0x4

    .line 23
    array-length v5, p0

    .line 24
    move v6, v2

    .line 25
    .line 26
    :goto_1
    if-ge v6, v5, :cond_2

    .line 27
    .line 28
    aget-object v7, p0, v6

    .line 29
    .line 30
    .line 31
    invoke-interface {v7}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 32
    move-result-object v7

    .line 33
    .line 34
    .line 35
    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue()I

    .line 36
    move-result v7

    .line 37
    add-int/2addr v4, v7

    .line 38
    .line 39
    add-int/lit8 v6, v6, 0x1

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_2
    new-array v4, v4, [B

    .line 43
    move v5, v2

    .line 44
    move v6, v5

    .line 45
    .line 46
    :goto_2
    if-ge v5, v3, :cond_4

    .line 47
    .line 48
    aget-object v7, p0, v5

    .line 49
    .line 50
    .line 51
    invoke-interface {v7}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 52
    move-result-object v7

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes()[B

    .line 56
    move-result-object v7

    .line 57
    const/4 v8, 0x2

    .line 58
    .line 59
    .line 60
    invoke-static {v7, v2, v4, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    .line 62
    aget-object v7, p0, v5

    .line 63
    .line 64
    .line 65
    invoke-interface {v7}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 66
    move-result-object v7

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes()[B

    .line 70
    move-result-object v7

    .line 71
    .line 72
    add-int/lit8 v9, v6, 0x2

    .line 73
    .line 74
    .line 75
    invoke-static {v7, v2, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    .line 77
    add-int/lit8 v6, v6, 0x4

    .line 78
    .line 79
    aget-object v7, p0, v5

    .line 80
    .line 81
    .line 82
    invoke-interface {v7}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getCentralDirectoryData()[B

    .line 83
    move-result-object v7

    .line 84
    .line 85
    if-eqz v7, :cond_3

    .line 86
    array-length v8, v7

    .line 87
    .line 88
    .line 89
    invoke-static {v7, v2, v4, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    array-length v7, v7

    .line 91
    add-int/2addr v6, v7

    .line 92
    .line 93
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 94
    goto :goto_2

    .line 95
    .line 96
    :cond_4
    if-eqz v0, :cond_5

    .line 97
    array-length v0, p0

    .line 98
    sub-int/2addr v0, v1

    .line 99
    .line 100
    aget-object p0, p0, v0

    .line 101
    .line 102
    .line 103
    invoke-interface {p0}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getCentralDirectoryData()[B

    .line 104
    move-result-object p0

    .line 105
    .line 106
    if-eqz p0, :cond_5

    .line 107
    array-length v0, p0

    .line 108
    .line 109
    .line 110
    invoke-static {p0, v2, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    :cond_5
    return-object v4
.end method

.method public static mergeLocalFileDataData([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)[B
    .locals 10

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    array-length v0, p0

    .line 7
    sub-int/2addr v0, v1

    .line 8
    .line 9
    aget-object v0, p0, v0

    .line 10
    .line 11
    instance-of v0, v0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    move v0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v2

    .line 17
    :goto_0
    array-length v3, p0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    sub-int/2addr v3, v1

    .line 21
    .line 22
    :cond_1
    mul-int/lit8 v4, v3, 0x4

    .line 23
    array-length v5, p0

    .line 24
    move v6, v2

    .line 25
    .line 26
    :goto_1
    if-ge v6, v5, :cond_2

    .line 27
    .line 28
    aget-object v7, p0, v6

    .line 29
    .line 30
    .line 31
    invoke-interface {v7}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 32
    move-result-object v7

    .line 33
    .line 34
    .line 35
    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue()I

    .line 36
    move-result v7

    .line 37
    add-int/2addr v4, v7

    .line 38
    .line 39
    add-int/lit8 v6, v6, 0x1

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_2
    new-array v4, v4, [B

    .line 43
    move v5, v2

    .line 44
    move v6, v5

    .line 45
    .line 46
    :goto_2
    if-ge v5, v3, :cond_4

    .line 47
    .line 48
    aget-object v7, p0, v5

    .line 49
    .line 50
    .line 51
    invoke-interface {v7}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 52
    move-result-object v7

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes()[B

    .line 56
    move-result-object v7

    .line 57
    const/4 v8, 0x2

    .line 58
    .line 59
    .line 60
    invoke-static {v7, v2, v4, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    .line 62
    aget-object v7, p0, v5

    .line 63
    .line 64
    .line 65
    invoke-interface {v7}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 66
    move-result-object v7

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes()[B

    .line 70
    move-result-object v7

    .line 71
    .line 72
    add-int/lit8 v9, v6, 0x2

    .line 73
    .line 74
    .line 75
    invoke-static {v7, v2, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    .line 77
    add-int/lit8 v6, v6, 0x4

    .line 78
    .line 79
    aget-object v7, p0, v5

    .line 80
    .line 81
    .line 82
    invoke-interface {v7}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getLocalFileDataData()[B

    .line 83
    move-result-object v7

    .line 84
    .line 85
    if-eqz v7, :cond_3

    .line 86
    array-length v8, v7

    .line 87
    .line 88
    .line 89
    invoke-static {v7, v2, v4, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    array-length v7, v7

    .line 91
    add-int/2addr v6, v7

    .line 92
    .line 93
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 94
    goto :goto_2

    .line 95
    .line 96
    :cond_4
    if-eqz v0, :cond_5

    .line 97
    array-length v0, p0

    .line 98
    sub-int/2addr v0, v1

    .line 99
    .line 100
    aget-object p0, p0, v0

    .line 101
    .line 102
    .line 103
    invoke-interface {p0}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getLocalFileDataData()[B

    .line 104
    move-result-object p0

    .line 105
    .line 106
    if-eqz p0, :cond_5

    .line 107
    array-length v0, p0

    .line 108
    .line 109
    .line 110
    invoke-static {p0, v2, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    :cond_5
    return-object v4
.end method

.method public static parse([B)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->THROW:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->parse([BZLorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object p0

    return-object p0
.end method

.method public static parse([BZ)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->THROW:Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->parse([BZLorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object p0

    return-object p0
.end method

.method public static parse([BZLorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x4

    if-gt v1, v2, :cond_5

    .line 5
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-direct {v2, p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>([BI)V

    .line 6
    new-instance v3, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    add-int/lit8 v4, v1, 0x2

    invoke-direct {v3, p0, v4}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>([BI)V

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue()I

    move-result v3

    add-int/lit8 v4, v1, 0x4

    add-int v5, v4, v3

    .line 7
    array-length v6, p0

    if-le v5, v6, :cond_3

    .line 8
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->getKey()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 9
    new-instance p2, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    invoke-direct {p2}, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;-><init>()V

    if-eqz p1, :cond_0

    .line 10
    array-length p1, p0

    sub-int/2addr p1, v1

    invoke-virtual {p2, p0, v1, p1}, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->parseFromLocalFileData([BII)V

    goto :goto_1

    .line 11
    :cond_0
    array-length p1, p0

    sub-int/2addr p1, v1

    invoke-virtual {p2, p0, v1, p1}, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->parseFromCentralDirectoryData([BII)V

    .line 12
    :goto_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 13
    :cond_1
    new-instance p0, Ljava/util/zip/ZipException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown UnparseableExtraField key: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils$UnparseableExtraField;->getKey()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_2
    new-instance p1, Ljava/util/zip/ZipException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bad extra field starting at "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ".  Block length of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes exceeds remaining data of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, -0x4

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_3
    :try_start_0
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->createExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v2

    if-eqz p1, :cond_4

    .line 17
    invoke-interface {v2, p0, v4, v3}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->parseFromLocalFileData([BII)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_3

    .line 18
    :cond_4
    invoke-interface {v2, p0, v4, v3}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->parseFromCentralDirectoryData([BII)V

    .line 19
    :goto_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v1, v3

    goto/16 :goto_0

    .line 20
    :goto_3
    new-instance p1, Ljava/util/zip/ZipException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/util/zip/ZipException;

    throw p0

    .line 21
    :cond_5
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 22
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    return-object p0
.end method

.method public static register(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 7
    .line 8
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->implementations:Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-void

    .line 17
    .line 18
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string p0, "\'s no-arg constructor is not public"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    throw v0

    .line 40
    .line 41
    :catch_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string p0, " is not a concrete class"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 62
    throw v0

    .line 63
    .line 64
    :catch_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string p0, " doesn\'t implement ZipExtraField"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    .line 83
    .line 84
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 85
    throw v0
.end method
