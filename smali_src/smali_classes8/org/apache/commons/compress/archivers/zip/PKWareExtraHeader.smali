.class public abstract Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;,
        Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;
    }
.end annotation


# instance fields
.field private centralData:[B

.field private final headerId:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private localData:[B


# direct methods
.method protected constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->headerId:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 6
    return-void
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->centralData:[B

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->copy([B)[B

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->getLocalFileDataData()[B

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->centralData:[B

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->centralData:[B

    .line 9
    array-length v1, v1

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 13
    return-object v0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->headerId:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->localData:[B

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
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->localData:[B

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    array-length v1, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

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
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->setCentralDirectoryData([B)V

    .line 10
    .line 11
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->localData:[B

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->setLocalFileDataData([B)V

    .line 17
    :cond_0
    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 2

    .line 1
    .line 2
    new-array v0, p3, [B

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->setLocalFileDataData([B)V

    .line 10
    return-void
.end method

.method public setCentralDirectoryData([B)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->copy([B)[B

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->centralData:[B

    .line 7
    return-void
.end method

.method public setLocalFileDataData([B)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->copy([B)[B

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->localData:[B

    .line 7
    return-void
.end method
