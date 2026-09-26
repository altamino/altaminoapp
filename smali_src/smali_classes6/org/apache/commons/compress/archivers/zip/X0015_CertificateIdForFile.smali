.class public Lorg/apache/commons/compress/archivers/zip/X0015_CertificateIdForFile;
.super Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;
.source "SourceFile"


# instance fields
.field private hashAlg:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

.field private rcount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 3
    .line 4
    const/16 v1, 0x15

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getHashAlgorithm()Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X0015_CertificateIdForFile;->hashAlg:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    return-object v0
.end method

.method public getRecordCount()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/X0015_CertificateIdForFile;->rcount:I

    return v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->parseFromCentralDirectoryData([BII)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 7
    move-result p3

    .line 8
    .line 9
    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/X0015_CertificateIdForFile;->rcount:I

    .line 10
    .line 11
    add-int/lit8 p2, p2, 0x2

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 15
    move-result p1

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->getAlgorithmByCode(I)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/X0015_CertificateIdForFile;->hashAlg:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 22
    return-void
.end method
