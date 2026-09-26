.class public Lorg/apache/commons/compress/archivers/zip/AsiExtraField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
.implements Lorg/apache/commons/compress/archivers/zip/UnixStat;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private static final WORD:I = 0x4


# instance fields
.field private crc:Ljava/util/zip/CRC32;

.field private dirFlag:Z

.field private gid:I

.field private link:Ljava/lang/String;

.field private mode:I

.field private uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 3
    .line 4
    const/16 v1, 0x756e

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 8
    .line 9
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->mode:I

    .line 7
    .line 8
    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->uid:I

    .line 9
    .line 10
    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->gid:I

    .line 11
    .line 12
    const-string v1, ""

    .line 13
    .line 14
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->link:Ljava/lang/String;

    .line 15
    .line 16
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->dirFlag:Z

    .line 17
    .line 18
    new-instance v0, Ljava/util/zip/CRC32;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 22
    .line 23
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    .line 24
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;

    .line 7
    .line 8
    new-instance v1, Ljava/util/zip/CRC32;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 12
    .line 13
    iput-object v1, v0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object v0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    .line 17
    new-instance v1, Ljava/lang/RuntimeException;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 21
    throw v1
.end method

.method public getCentralDirectoryData()[B
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getLocalFileDataData()[B

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->gid:I

    return v0
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method

.method public getLinkedFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue()I

    .line 8
    move-result v0

    .line 9
    .line 10
    add-int/lit8 v1, v0, -0x4

    .line 11
    .line 12
    new-array v2, v1, [B

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getMode()I

    .line 16
    move-result v3

    .line 17
    .line 18
    .line 19
    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    .line 20
    move-result-object v3

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x2

    .line 23
    .line 24
    .line 25
    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getLinkedFile()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    .line 33
    move-result-object v3

    .line 34
    array-length v6, v3

    .line 35
    int-to-long v6, v6

    .line 36
    .line 37
    .line 38
    invoke-static {v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    .line 39
    move-result-object v6

    .line 40
    const/4 v7, 0x4

    .line 41
    .line 42
    .line 43
    invoke-static {v6, v4, v2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getUserId()I

    .line 47
    move-result v6

    .line 48
    .line 49
    .line 50
    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    .line 51
    move-result-object v6

    .line 52
    const/4 v8, 0x6

    .line 53
    .line 54
    .line 55
    invoke-static {v6, v4, v2, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getGroupId()I

    .line 59
    move-result v6

    .line 60
    .line 61
    .line 62
    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    .line 63
    move-result-object v6

    .line 64
    .line 65
    const/16 v8, 0x8

    .line 66
    .line 67
    .line 68
    invoke-static {v6, v4, v2, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    .line 70
    const/16 v5, 0xa

    .line 71
    array-length v6, v3

    .line 72
    .line 73
    .line 74
    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    .line 76
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->reset()V

    .line 80
    .line 81
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 85
    .line 86
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    .line 90
    move-result-wide v5

    .line 91
    .line 92
    new-array v0, v0, [B

    .line 93
    .line 94
    .line 95
    invoke-static {v5, v6}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    .line 96
    move-result-object v3

    .line 97
    .line 98
    .line 99
    invoke-static {v3, v4, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    .line 101
    .line 102
    invoke-static {v2, v4, v0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    return-object v0
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getLinkedFile()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 10
    move-result-object v1

    .line 11
    array-length v1, v1

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0xe

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 17
    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->mode:I

    return v0
.end method

.method protected getMode(I)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->isLink()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xa000

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x4000

    goto :goto_0

    :cond_1
    const v0, 0x8000

    :goto_0
    and-int/lit16 p1, p1, 0xfff

    or-int/2addr p1, v0

    return p1
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->uid:I

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->dirFlag:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->isLink()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public isLink()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getLinkedFile()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->parseFromLocalFileData([BII)V

    .line 4
    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    add-int/lit8 p3, p3, -0x4

    .line 7
    .line 8
    new-array v2, p3, [B

    .line 9
    .line 10
    add-int/lit8 p2, p2, 0x4

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    .line 16
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V

    .line 20
    .line 21
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 25
    .line 26
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/util/zip/CRC32;->getValue()J

    .line 30
    move-result-wide p1

    .line 31
    .line 32
    cmp-long p3, v0, p1

    .line 33
    .line 34
    if-nez p3, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 38
    move-result p1

    .line 39
    const/4 p2, 0x2

    .line 40
    .line 41
    .line 42
    invoke-static {v2, p2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    .line 43
    move-result-wide p2

    .line 44
    long-to-int p2, p2

    .line 45
    .line 46
    new-array p3, p2, [B

    .line 47
    const/4 v0, 0x6

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 51
    move-result v0

    .line 52
    .line 53
    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->uid:I

    .line 54
    .line 55
    const/16 v0, 0x8

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 59
    move-result v0

    .line 60
    .line 61
    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->gid:I

    .line 62
    .line 63
    if-nez p2, :cond_0

    .line 64
    .line 65
    const-string p2, ""

    .line 66
    .line 67
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->link:Ljava/lang/String;

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_0
    const/16 v0, 0xa

    .line 71
    .line 72
    .line 73
    invoke-static {v2, v0, p3, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    .line 75
    new-instance p2, Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    invoke-direct {p2, p3}, Ljava/lang/String;-><init>([B)V

    .line 79
    .line 80
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->link:Ljava/lang/String;

    .line 81
    .line 82
    :goto_0
    and-int/lit16 p2, p1, 0x4000

    .line 83
    .line 84
    if-eqz p2, :cond_1

    .line 85
    const/4 v3, 0x1

    .line 86
    .line 87
    .line 88
    :cond_1
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->setDirectory(Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->setMode(I)V

    .line 92
    return-void

    .line 93
    .line 94
    :cond_2
    new-instance p3, Ljava/util/zip/ZipException;

    .line 95
    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    const-string v3, "bad CRC checksum "

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v0, " instead of "

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    .line 130
    invoke-direct {p3, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 131
    throw p3
.end method

.method public setDirectory(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->dirFlag:Z

    .line 3
    .line 4
    iget p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->mode:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getMode(I)I

    .line 8
    move-result p1

    .line 9
    .line 10
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->mode:I

    .line 11
    return-void
.end method

.method public setGroupId(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->gid:I

    return-void
.end method

.method public setLinkedFile(Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->link:Ljava/lang/String;

    .line 3
    .line 4
    iget p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->mode:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getMode(I)I

    .line 8
    move-result p1

    .line 9
    .line 10
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->mode:I

    .line 11
    return-void
.end method

.method public setMode(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getMode(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->mode:I

    .line 7
    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->uid:I

    return-void
.end method
