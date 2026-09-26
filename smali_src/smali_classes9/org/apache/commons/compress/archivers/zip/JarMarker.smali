.class public final Lorg/apache/commons/compress/archivers/zip/JarMarker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;


# static fields
.field private static final DEFAULT:Lorg/apache/commons/compress/archivers/zip/JarMarker;

.field private static final ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private static final NO_BYTES:[B

.field private static final NULL:Lorg/apache/commons/compress/archivers/zip/ZipShort;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 3
    .line 4
    .line 5
    const v1, 0xcafe

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 9
    .line 10
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 11
    .line 12
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 17
    .line 18
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->NULL:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 19
    .line 20
    new-array v0, v1, [B

    .line 21
    .line 22
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->NO_BYTES:[B

    .line 23
    .line 24
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/JarMarker;-><init>()V

    .line 28
    .line 29
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->DEFAULT:Lorg/apache/commons/compress/archivers/zip/JarMarker;

    .line 30
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

.method public static getInstance()Lorg/apache/commons/compress/archivers/zip/JarMarker;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->DEFAULT:Lorg/apache/commons/compress/archivers/zip/JarMarker;

    return-object v0
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->NO_BYTES:[B

    return-object v0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->NULL:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->NO_BYTES:[B

    return-object v0
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->NULL:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
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
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/JarMarker;->parseFromLocalFileData([BII)V

    .line 4
    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 1
    .line 2
    if-nez p3, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    new-instance p1, Ljava/util/zip/ZipException;

    .line 6
    .line 7
    const-string p2, "JarMarker doesn\'t expect any data"

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 11
    throw p1
.end method
