.class Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompressedEntry"
.end annotation


# instance fields
.field final compressedSize:J

.field final crc:J

.field final size:J

.field final zipArchiveEntryRequest:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;JJJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;->zipArchiveEntryRequest:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;

    .line 6
    .line 7
    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;->crc:J

    .line 8
    .line 9
    iput-wide p4, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;->compressedSize:J

    .line 10
    .line 11
    iput-wide p6, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;->size:J

    .line 12
    return-void
.end method


# virtual methods
.method public transferToArchiveEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;->zipArchiveEntryRequest:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;->getZipArchiveEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;->compressedSize:J

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 12
    .line 13
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;->size:J

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    .line 17
    .line 18
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;->crc:J

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 22
    .line 23
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;->zipArchiveEntryRequest:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryRequest;->getMethod()I

    .line 27
    move-result v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setMethod(I)V

    .line 31
    return-object v0
.end method
