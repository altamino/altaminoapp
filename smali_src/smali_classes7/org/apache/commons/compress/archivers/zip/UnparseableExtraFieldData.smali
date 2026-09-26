.class public final Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;


# static fields
.field private static final HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;


# instance fields
.field private centralDirectoryData:[B

.field private localFileData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 3
    .line 4
    .line 5
    const v1, 0xacc1

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 9
    .line 10
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 11
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


# virtual methods
.method public getCentralDirectoryData()[B
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->centralDirectoryData:[B

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->getLocalFileDataData()[B

    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->copy([B)[B

    .line 13
    move-result-object v0

    .line 14
    :goto_0
    return-object v0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->centralDirectoryData:[B

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->centralDirectoryData:[B

    .line 14
    array-length v1, v1

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 18
    :goto_0
    return-object v0
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->localFileData:[B

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->copy([B)[B

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->localFileData:[B

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    const/4 v1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    array-length v1, v1

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 13
    return-object v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 2

    .line 1
    .line 2
    new-array v0, p3, [B

    .line 3
    .line 4
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->centralDirectoryData:[B

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    .line 10
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->localFileData:[B

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->parseFromLocalFileData([BII)V

    .line 16
    :cond_0
    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 2

    .line 1
    .line 2
    new-array v0, p3, [B

    .line 3
    .line 4
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->localFileData:[B

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    return-void
.end method
