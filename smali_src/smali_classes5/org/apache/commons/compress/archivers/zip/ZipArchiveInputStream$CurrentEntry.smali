.class final Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CurrentEntry"
.end annotation


# instance fields
.field private bytesRead:J

.field private bytesReadFromStream:J

.field private final crc:Ljava/util/zip/CRC32;

.field private final entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

.field private hasDataDescriptor:Z

.field private in:Ljava/io/InputStream;

.field private usesZip64:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 3
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->crc:Ljava/util/zip/CRC32;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->hasDataDescriptor:Z

    .line 3
    return p0
.end method

.method static synthetic access$202(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->hasDataDescriptor:Z

    .line 3
    return p1
.end method

.method static synthetic access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Ljava/io/InputStream;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->in:Ljava/io/InputStream;

    .line 3
    return-object p0
.end method

.method static synthetic access$302(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->in:Ljava/io/InputStream;

    .line 3
    return-object p1
.end method

.method static synthetic access$400(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->usesZip64:Z

    .line 3
    return p0
.end method

.method static synthetic access$402(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->usesZip64:Z

    .line 3
    return p1
.end method

.method static synthetic access$500(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Ljava/util/zip/CRC32;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->crc:Ljava/util/zip/CRC32;

    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->bytesRead:J

    .line 3
    return-wide v0
.end method

.method static synthetic access$602(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;J)J
    .locals 0

    .line 1
    .line 2
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->bytesRead:J

    .line 3
    return-wide p1
.end method

.method static synthetic access$700(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->bytesReadFromStream:J

    .line 3
    return-wide v0
.end method

.method static synthetic access$702(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;J)J
    .locals 0

    .line 1
    .line 2
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->bytesReadFromStream:J

    .line 3
    return-wide p1
.end method

.method static synthetic access$708(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->bytesReadFromStream:J

    .line 3
    .line 4
    const-wide/16 v2, 0x1

    .line 5
    add-long/2addr v2, v0

    .line 6
    .line 7
    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->bytesReadFromStream:J

    .line 8
    return-wide v0
.end method
