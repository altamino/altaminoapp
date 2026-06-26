.class final Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;
.super Ljava/lang/Object;
.source "ZipArchiveOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EntryMetaData"
.end annotation


# instance fields
.field private final offset:J

.field private final usesDataDescriptor:Z


# direct methods
.method static synthetic access$800(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;)J
    .locals 2

    .line 1679
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;->offset:J

    return-wide v0
.end method

.method static synthetic access$900(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;)Z
    .locals 0

    .line 1679
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;->usesDataDescriptor:Z

    return p0
.end method
