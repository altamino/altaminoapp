.class public Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;,
        Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;,
        Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;
    }
.end annotation


# static fields
.field static final BUFFER_SIZE:I = 0x200

.field private static final CFH_COMMENT_LENGTH_OFFSET:I = 0x20

.field private static final CFH_COMPRESSED_SIZE_OFFSET:I = 0x14

.field private static final CFH_CRC_OFFSET:I = 0x10

.field private static final CFH_DISK_NUMBER_OFFSET:I = 0x22

.field private static final CFH_EXTERNAL_ATTRIBUTES_OFFSET:I = 0x26

.field private static final CFH_EXTRA_LENGTH_OFFSET:I = 0x1e

.field private static final CFH_FILENAME_LENGTH_OFFSET:I = 0x1c

.field private static final CFH_FILENAME_OFFSET:I = 0x2e

.field private static final CFH_GPB_OFFSET:I = 0x8

.field private static final CFH_INTERNAL_ATTRIBUTES_OFFSET:I = 0x24

.field private static final CFH_LFH_OFFSET:I = 0x2a

.field private static final CFH_METHOD_OFFSET:I = 0xa

.field private static final CFH_ORIGINAL_SIZE_OFFSET:I = 0x18

.field static final CFH_SIG:[B

.field private static final CFH_SIG_OFFSET:I = 0x0

.field private static final CFH_TIME_OFFSET:I = 0xc

.field private static final CFH_VERSION_MADE_BY_OFFSET:I = 0x4

.field private static final CFH_VERSION_NEEDED_OFFSET:I = 0x6

.field static final DD_SIG:[B

.field public static final DEFAULT_COMPRESSION:I = -0x1

.field static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF8"

.field public static final DEFLATED:I = 0x8

.field public static final EFS_FLAG:I = 0x800
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final EMPTY:[B

.field static final EOCD_SIG:[B

.field private static final LFH_COMPRESSED_SIZE_OFFSET:I = 0x12

.field private static final LFH_CRC_OFFSET:I = 0xe

.field private static final LFH_EXTRA_LENGTH_OFFSET:I = 0x1c

.field private static final LFH_FILENAME_LENGTH_OFFSET:I = 0x1a

.field private static final LFH_FILENAME_OFFSET:I = 0x1e

.field private static final LFH_GPB_OFFSET:I = 0x6

.field private static final LFH_METHOD_OFFSET:I = 0x8

.field private static final LFH_ORIGINAL_SIZE_OFFSET:I = 0x16

.field static final LFH_SIG:[B

.field private static final LFH_SIG_OFFSET:I = 0x0

.field private static final LFH_TIME_OFFSET:I = 0xa

.field private static final LFH_VERSION_NEEDED_OFFSET:I = 0x4

.field private static final LZERO:[B

.field private static final ONE:[B

.field public static final STORED:I

.field private static final ZERO:[B

.field static final ZIP64_EOCD_LOC_SIG:[B

.field static final ZIP64_EOCD_SIG:[B


# instance fields
.field private final calendarInstance:Ljava/util/Calendar;

.field private cdLength:J

.field private cdOffset:J

.field private final channel:Ljava/nio/channels/SeekableByteChannel;

.field private comment:Ljava/lang/String;

.field private final copyBuffer:[B

.field private createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

.field protected final def:Ljava/util/zip/Deflater;

.field private encoding:Ljava/lang/String;

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation
.end field

.field private entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

.field private fallbackToUTF8:Z

.field protected finished:Z

.field private hasCompressionLevelChanged:Z

.field private hasUsedZip64:Z

.field private level:I

.field private final metaData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private method:I

.field private final out:Ljava/io/OutputStream;

.field private final streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

.field private useUTF8Flag:Z

.field private zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

.field private zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EMPTY:[B

    .line 6
    const/4 v0, 0x2

    .line 7
    .line 8
    new-array v0, v0, [B

    .line 9
    .line 10
    .line 11
    fill-array-data v0, :array_0

    .line 12
    .line 13
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZERO:[B

    .line 14
    const/4 v0, 0x4

    .line 15
    .line 16
    new-array v0, v0, [B

    .line 17
    .line 18
    .line 19
    fill-array-data v0, :array_1

    .line 20
    .line 21
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LZERO:[B

    .line 22
    .line 23
    const-wide/16 v0, 0x1

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    .line 27
    move-result-object v0

    .line 28
    .line 29
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ONE:[B

    .line 30
    .line 31
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->LFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    .line 35
    move-result-object v0

    .line 36
    .line 37
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LFH_SIG:[B

    .line 38
    .line 39
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->DD_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    .line 43
    move-result-object v0

    .line 44
    .line 45
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->DD_SIG:[B

    .line 46
    .line 47
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->CFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    .line 51
    move-result-object v0

    .line 52
    .line 53
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->CFH_SIG:[B

    .line 54
    .line 55
    .line 56
    const-wide/32 v0, 0x6054b50

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    .line 60
    move-result-object v0

    .line 61
    .line 62
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EOCD_SIG:[B

    .line 63
    .line 64
    .line 65
    const-wide/32 v0, 0x6064b50

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    .line 69
    move-result-object v0

    .line 70
    .line 71
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZIP64_EOCD_SIG:[B

    .line 72
    .line 73
    .line 74
    const-wide/32 v0, 0x7064b50

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    .line 78
    move-result-object v0

    .line 79
    .line 80
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZIP64_EOCD_LOC_SIG:[B

    .line 81
    return-void

    .line 82
    nop

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    .line 88
    nop

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    const-string v1, ""

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->comment:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasCompressionLevelChanged:Z

    const/16 v1, 0x8

    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->method:I

    .line 11
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdLength:J

    .line 12
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->metaData:Ljava/util/Map;

    const-string v1, "UTF8"

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->encoding:Ljava/lang/String;

    .line 13
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->useUTF8Flag:Z

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->fallbackToUTF8:Z

    .line 14
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasUsedZip64:Z

    .line 15
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->AsNeeded:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    const v2, 0x8000

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->copyBuffer:[B

    .line 16
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->calendarInstance:Ljava/util/Calendar;

    .line 17
    new-instance v2, Ljava/util/zip/Deflater;

    iget v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    invoke-direct {v2, v3, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    const/4 v1, 0x0

    .line 18
    :try_start_0
    invoke-static {p1}, Lcom/unity3d/services/core/misc/a;->a(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {}, Lorg/apache/commons/compress/archivers/sevenz/h;->a()Ljava/nio/file/StandardOpenOption;

    move-result-object v4

    invoke-static {}, Lorg/apache/commons/compress/archivers/sevenz/i;->a()Ljava/nio/file/StandardOpenOption;

    move-result-object v5

    invoke-static {}, Lorg/apache/commons/compress/archivers/sevenz/d;->a()Ljava/nio/file/StandardOpenOption;

    move-result-object v6

    invoke-static {}, Lorg/apache/commons/compress/archivers/sevenz/j;->a()Ljava/nio/file/StandardOpenOption;

    move-result-object v7

    .line 19
    invoke-static {v4, v5, v6, v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    new-array v0, v0, [Ljava/nio/file/attribute/FileAttribute;

    .line 20
    invoke-static {v3, v4, v0}, Lorg/apache/commons/compress/archivers/sevenz/e;->a(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :try_start_1
    invoke-static {v0, v2}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->create(Ljava/nio/channels/SeekableByteChannel;Ljava/util/zip/Deflater;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v0, v1

    .line 22
    :catch_1
    invoke-static {v0}, Lorg/apache/commons/compress/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 23
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    .line 24
    invoke-static {v0, p1}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->create(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    move-result-object p1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_0
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    const-string v1, ""

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->comment:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasCompressionLevelChanged:Z

    const/16 v1, 0x8

    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->method:I

    .line 2
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdLength:J

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->metaData:Ljava/util/Map;

    const-string v1, "UTF8"

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->encoding:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->useUTF8Flag:Z

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->fallbackToUTF8:Z

    .line 5
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasUsedZip64:Z

    .line 6
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->AsNeeded:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->copyBuffer:[B

    .line 7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->calendarInstance:Ljava/util/Calendar;

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 8
    new-instance v0, Ljava/util/zip/Deflater;

    iget v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    invoke-direct {v0, v2, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    .line 9
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->create(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    const-string v1, ""

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->comment:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasCompressionLevelChanged:Z

    const/16 v1, 0x8

    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->method:I

    .line 26
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdLength:J

    .line 27
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->metaData:Ljava/util/Map;

    const-string v1, "UTF8"

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->encoding:Ljava/lang/String;

    .line 28
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->useUTF8Flag:Z

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->fallbackToUTF8:Z

    .line 29
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasUsedZip64:Z

    .line 30
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->AsNeeded:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->copyBuffer:[B

    .line 31
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->calendarInstance:Ljava/util/Calendar;

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 32
    new-instance v0, Ljava/util/zip/Deflater;

    iget v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    invoke-direct {v0, v2, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    .line 33
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->create(Ljava/nio/channels/SeekableByteChannel;Ljava/util/zip/Deflater;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    return-void
.end method

.method private addUnicodeExtraFields(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;ZLjava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    .line 3
    .line 4
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;->ALWAYS:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    if-nez p2, :cond_1

    .line 9
    .line 10
    :cond_0
    new-instance p2, Lorg/apache/commons/compress/archivers/zip/UnicodePathExtraField;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 22
    move-result v3

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3}, Ljava/nio/Buffer;->limit()I

    .line 26
    move-result v4

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3}, Ljava/nio/Buffer;->position()I

    .line 30
    move-result p3

    .line 31
    sub-int/2addr v4, p3

    .line 32
    .line 33
    .line 34
    invoke-direct {p2, v0, v2, v3, v4}, Lorg/apache/commons/compress/archivers/zip/UnicodePathExtraField;-><init>(Ljava/lang/String;[BII)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->addExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    if-eqz p2, :cond_3

    .line 44
    .line 45
    const-string p3, ""

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result p3

    .line 50
    .line 51
    if-nez p3, :cond_3

    .line 52
    .line 53
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 54
    .line 55
    .line 56
    invoke-interface {p3, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    .line 57
    move-result p3

    .line 58
    .line 59
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    .line 60
    .line 61
    if-eq v0, v1, :cond_2

    .line 62
    .line 63
    if-nez p3, :cond_3

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getEntryEncoding(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 67
    move-result-object p3

    .line 68
    .line 69
    .line 70
    invoke-interface {p3, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    .line 71
    move-result-object p3

    .line 72
    .line 73
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/UnicodeCommentExtraField;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 81
    move-result v2

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3}, Ljava/nio/Buffer;->limit()I

    .line 85
    move-result v3

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3}, Ljava/nio/Buffer;->position()I

    .line 89
    move-result p3

    .line 90
    sub-int/2addr v3, p3

    .line 91
    .line 92
    .line 93
    invoke-direct {v0, p2, v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/UnicodeCommentExtraField;-><init>(Ljava/lang/String;[BII)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->addExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 97
    :cond_3
    return-void
.end method

.method private checkIfNeedsZip64(Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->isZip64Required(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 15
    .line 16
    if-eq p1, v1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;

    .line 20
    .line 21
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;->getEntryTooBigMessage(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, v0}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p1

    .line 34
    :cond_1
    :goto_0
    return v0
.end method

.method private closeCopiedEntry(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->preClose()V

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    .line 13
    move-result-wide v1

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$102(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;J)J

    .line 17
    .line 18
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getEffectiveZip64Mode(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->checkIfNeedsZip64(Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->closeEntry(ZZ)V

    .line 34
    return-void
.end method

.method private closeEntry(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->rewriteSizesAndCrc(Z)V

    .line 10
    .line 11
    :cond_0
    if-nez p2, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeDataDescriptor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    .line 23
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 24
    return-void
.end method

.method private copyFromZipInputStream(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->checkRequestedFeatures(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 12
    .line 13
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$302(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;Z)Z

    .line 18
    .line 19
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->copyBuffer:[B

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 23
    move-result v0

    .line 24
    .line 25
    if-ltz v0, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    .line 28
    .line 29
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->copyBuffer:[B

    .line 30
    const/4 v3, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writeCounted([BII)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->count(I)V

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void

    .line 39
    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string v0, "No current entry"

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p1
.end method

.method private createCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->metaData:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v1

    const-wide v3, 0xffffffffL

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 5
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;->access$800(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Always:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 6
    sget-object v3, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-eq v2, v3, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;

    const-string v0, "archive\'s size exceeds the limit of 4GByte."

    invoke-direct {p1, v0}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    :goto_2
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;->access$800(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;)J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->handleZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;JZ)V

    .line 9
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getName(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {p0, p1, v2, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;Z)[B

    move-result-object p1

    return-object p1
.end method

.method private createCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;Z)[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    .line 10
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCentralDirectoryExtra()[B

    move-result-object v1

    .line 11
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    .line 12
    :cond_0
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getEntryEncoding(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 13
    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->limit()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->position()I

    move-result v4

    sub-int/2addr v3, v4

    .line 14
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v4

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x2e

    .line 15
    array-length v6, v1

    add-int/2addr v6, v5

    add-int/2addr v6, v4

    .line 16
    new-array v6, v6, [B

    sget-object v7, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->CFH_SIG:[B

    const/4 v8, 0x0

    const/4 v9, 0x4

    .line 17
    invoke-static {v7, v8, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getPlatform()I

    move-result v7

    const/16 v10, 0x8

    shl-int/2addr v7, v10

    iget-boolean v11, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasUsedZip64:Z

    const/16 v12, 0x14

    if-nez v11, :cond_1

    move v11, v12

    goto :goto_0

    :cond_1
    const/16 v11, 0x2d

    :goto_0
    or-int/2addr v7, v11

    invoke-static {v7, v6, v9}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->putShort(I[BI)V

    .line 19
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v7

    iget-object v9, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 20
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v9

    .line 21
    invoke-static/range {p3 .. p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;->access$900(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;)Z

    move-result v11

    move/from16 v13, p4

    invoke-direct {p0, v7, v13, v11}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->versionNeededToExtract(IZZ)I

    move-result v11

    const/4 v13, 0x6

    invoke-static {v11, v6, v13}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->putShort(I[BI)V

    if-nez v9, :cond_2

    iget-boolean v9, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->fallbackToUTF8:Z

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    move v9, v8

    .line 22
    :goto_1
    invoke-static/range {p3 .. p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;->access$900(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;)Z

    move-result v11

    invoke-direct {p0, v9, v11}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getGeneralPurposeBits(ZZ)Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v9

    invoke-virtual {v9, v6, v10}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encode([BI)V

    const/16 v9, 0xa

    .line 23
    invoke-static {v7, v6, v9}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->putShort(I[BI)V

    iget-object v7, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->calendarInstance:Ljava/util/Calendar;

    .line 24
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v9

    const/16 v11, 0xc

    invoke-static {v7, v9, v10, v6, v11}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->toDosTime(Ljava/util/Calendar;J[BI)V

    .line 25
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v9

    const/16 v7, 0x10

    invoke-static {v9, v10, v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong(J[BI)V

    .line 26
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v9

    const-wide v13, 0xffffffffL

    cmp-long v7, v9, v13

    const/16 v9, 0x18

    if-gez v7, :cond_4

    .line 27
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v10

    cmp-long v7, v10, v13

    if-gez v7, :cond_4

    iget-object v7, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v10, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Always:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne v7, v10, :cond_3

    goto :goto_2

    .line 28
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v10

    invoke-static {v10, v11, v6, v12}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong(J[BI)V

    .line 29
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v10

    invoke-static {v10, v11, v6, v9}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong(J[BI)V

    goto :goto_3

    .line 30
    :cond_4
    :goto_2
    sget-object v7, Lorg/apache/commons/compress/archivers/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v7, v6, v12}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong([BI)V

    .line 31
    invoke-virtual {v7, v6, v9}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong([BI)V

    :goto_3
    const/16 v7, 0x1c

    .line 32
    invoke-static {v3, v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->putShort(I[BI)V

    .line 33
    array-length v7, v1

    const/16 v9, 0x1e

    invoke-static {v7, v6, v9}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->putShort(I[BI)V

    const/16 v7, 0x20

    .line 34
    invoke-static {v4, v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->putShort(I[BI)V

    sget-object v7, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZERO:[B

    const/16 v9, 0x22

    const/4 v10, 0x2

    .line 35
    invoke-static {v7, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getInternalAttributes()I

    move-result v7

    const/16 v9, 0x24

    invoke-static {v7, v6, v9}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->putShort(I[BI)V

    .line 37
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExternalAttributes()J

    move-result-wide v9

    const/16 v7, 0x26

    invoke-static {v9, v10, v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong(J[BI)V

    .line 38
    invoke-static/range {p3 .. p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;->access$800(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;)J

    move-result-wide v9

    cmp-long v7, v9, v13

    const/16 v9, 0x2a

    if-gez v7, :cond_6

    iget-object v7, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v10, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Always:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne v7, v10, :cond_5

    goto :goto_4

    .line 39
    :cond_5
    invoke-static/range {p3 .. p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;->access$800(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;)J

    move-result-wide v10

    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    invoke-static {v10, v11, v6, v9}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong(J[BI)V

    goto :goto_5

    .line 40
    :cond_6
    :goto_4
    invoke-static {v13, v14, v6, v9}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong(J[BI)V

    .line 41
    :goto_5
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    const/16 v10, 0x2e

    invoke-static {v7, v9, v6, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    array-length v3, v1

    invoke-static {v1, v8, v6, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    array-length v1, v1

    add-int/2addr v5, v1

    .line 44
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-static {v1, v2, v6, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v6
.end method

.method private createLocalFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Ljava/nio/ByteBuffer;ZZJ)[B
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move/from16 v2, p4

    .line 7
    .line 8
    sget-object v3, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 12
    move-result-object v4

    .line 13
    .line 14
    check-cast v4, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->removeExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getAlignment()I

    .line 23
    move-result v3

    .line 24
    .line 25
    if-gtz v3, :cond_1

    .line 26
    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->getAlignment()S

    .line 31
    move-result v3

    .line 32
    .line 33
    :cond_1
    const/16 v5, 0x1e

    .line 34
    const/4 v6, 0x1

    .line 35
    const/4 v7, 0x0

    .line 36
    .line 37
    if-gt v3, v6, :cond_2

    .line 38
    .line 39
    if-eqz v4, :cond_4

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->allowMethodChange()Z

    .line 43
    move-result v8

    .line 44
    .line 45
    if-nez v8, :cond_4

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->limit()I

    .line 49
    move-result v8

    .line 50
    add-int/2addr v8, v5

    .line 51
    .line 52
    .line 53
    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->position()I

    .line 54
    move-result v9

    .line 55
    sub-int/2addr v8, v9

    .line 56
    .line 57
    .line 58
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLocalFileDataExtra()[B

    .line 59
    move-result-object v9

    .line 60
    array-length v9, v9

    .line 61
    add-int/2addr v8, v9

    .line 62
    .line 63
    move-wide/from16 v9, p5

    .line 64
    neg-long v9, v9

    .line 65
    int-to-long v11, v8

    .line 66
    sub-long/2addr v9, v11

    .line 67
    .line 68
    const-wide/16 v11, 0x6

    .line 69
    sub-long/2addr v9, v11

    .line 70
    .line 71
    add-int/lit8 v8, v3, -0x1

    .line 72
    int-to-long v11, v8

    .line 73
    .line 74
    and-long v8, v9, v11

    .line 75
    long-to-int v8, v8

    .line 76
    .line 77
    new-instance v9, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;

    .line 78
    .line 79
    if-eqz v4, :cond_3

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->allowMethodChange()Z

    .line 83
    move-result v4

    .line 84
    .line 85
    if-eqz v4, :cond_3

    .line 86
    move v4, v6

    .line 87
    goto :goto_0

    .line 88
    :cond_3
    move v4, v7

    .line 89
    .line 90
    .line 91
    :goto_0
    invoke-direct {v9, v3, v4, v8}, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;-><init>(IZI)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->addExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLocalFileDataExtra()[B

    .line 98
    move-result-object v3

    .line 99
    .line 100
    .line 101
    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->limit()I

    .line 102
    move-result v4

    .line 103
    .line 104
    .line 105
    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->position()I

    .line 106
    move-result v8

    .line 107
    sub-int/2addr v4, v8

    .line 108
    .line 109
    add-int/lit8 v8, v4, 0x1e

    .line 110
    array-length v9, v3

    .line 111
    add-int/2addr v9, v8

    .line 112
    .line 113
    new-array v9, v9, [B

    .line 114
    .line 115
    sget-object v10, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LFH_SIG:[B

    .line 116
    const/4 v11, 0x4

    .line 117
    .line 118
    .line 119
    invoke-static {v10, v7, v9, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    .line 121
    .line 122
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    .line 123
    move-result v10

    .line 124
    .line 125
    .line 126
    invoke-direct {v0, v10, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->usesDataDescriptor(IZ)Z

    .line 127
    move-result v12

    .line 128
    .line 129
    .line 130
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    .line 131
    move-result v13

    .line 132
    .line 133
    .line 134
    invoke-direct {v0, v10, v13, v12}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->versionNeededToExtract(IZZ)I

    .line 135
    move-result v13

    .line 136
    .line 137
    .line 138
    invoke-static {v13, v9, v11}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->putShort(I[BI)V

    .line 139
    .line 140
    if-nez p3, :cond_5

    .line 141
    .line 142
    iget-boolean v13, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->fallbackToUTF8:Z

    .line 143
    .line 144
    if-eqz v13, :cond_5

    .line 145
    goto :goto_1

    .line 146
    :cond_5
    move v6, v7

    .line 147
    .line 148
    .line 149
    :goto_1
    invoke-direct {v0, v6, v12}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getGeneralPurposeBits(ZZ)Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 150
    move-result-object v6

    .line 151
    const/4 v12, 0x6

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6, v9, v12}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encode([BI)V

    .line 155
    .line 156
    const/16 v6, 0x8

    .line 157
    .line 158
    .line 159
    invoke-static {v10, v9, v6}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->putShort(I[BI)V

    .line 160
    .line 161
    iget-object v12, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->calendarInstance:Ljava/util/Calendar;

    .line 162
    .line 163
    .line 164
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getTime()J

    .line 165
    move-result-wide v13

    .line 166
    .line 167
    const/16 v15, 0xa

    .line 168
    .line 169
    .line 170
    invoke-static {v12, v13, v14, v9, v15}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->toDosTime(Ljava/util/Calendar;J[BI)V

    .line 171
    .line 172
    const/16 v12, 0xe

    .line 173
    .line 174
    if-eqz v2, :cond_6

    .line 175
    .line 176
    .line 177
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getCrc()J

    .line 178
    move-result-wide v13

    .line 179
    .line 180
    .line 181
    invoke-static {v13, v14, v9, v12}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong(J[BI)V

    .line 182
    goto :goto_3

    .line 183
    .line 184
    :cond_6
    if-eq v10, v6, :cond_8

    .line 185
    .line 186
    iget-object v13, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 187
    .line 188
    if-eqz v13, :cond_7

    .line 189
    goto :goto_2

    .line 190
    .line 191
    .line 192
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getCrc()J

    .line 193
    move-result-wide v13

    .line 194
    .line 195
    .line 196
    invoke-static {v13, v14, v9, v12}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong(J[BI)V

    .line 197
    goto :goto_3

    .line 198
    .line 199
    :cond_8
    :goto_2
    sget-object v13, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LZERO:[B

    .line 200
    .line 201
    .line 202
    invoke-static {v13, v7, v9, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    .line 204
    :goto_3
    iget-object v12, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 205
    .line 206
    .line 207
    invoke-static {v12}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 208
    move-result-object v12

    .line 209
    .line 210
    .line 211
    invoke-direct {v0, v12}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    .line 212
    move-result v12

    .line 213
    .line 214
    const/16 v13, 0x16

    .line 215
    .line 216
    const/16 v14, 0x12

    .line 217
    .line 218
    if-eqz v12, :cond_9

    .line 219
    .line 220
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v9, v14}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong([BI)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v9, v13}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong([BI)V

    .line 227
    goto :goto_5

    .line 228
    .line 229
    :cond_9
    if-eqz v2, :cond_a

    .line 230
    .line 231
    .line 232
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 233
    move-result-wide v10

    .line 234
    .line 235
    .line 236
    invoke-static {v10, v11, v9, v14}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong(J[BI)V

    .line 237
    .line 238
    .line 239
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    .line 240
    move-result-wide v1

    .line 241
    .line 242
    .line 243
    invoke-static {v1, v2, v9, v13}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong(J[BI)V

    .line 244
    goto :goto_5

    .line 245
    .line 246
    :cond_a
    if-eq v10, v6, :cond_c

    .line 247
    .line 248
    iget-object v2, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 249
    .line 250
    if-eqz v2, :cond_b

    .line 251
    goto :goto_4

    .line 252
    .line 253
    .line 254
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    .line 255
    move-result-wide v10

    .line 256
    .line 257
    .line 258
    invoke-static {v10, v11, v9, v14}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong(J[BI)V

    .line 259
    .line 260
    .line 261
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    .line 262
    move-result-wide v1

    .line 263
    .line 264
    .line 265
    invoke-static {v1, v2, v9, v13}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong(J[BI)V

    .line 266
    goto :goto_5

    .line 267
    .line 268
    :cond_c
    :goto_4
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LZERO:[B

    .line 269
    .line 270
    .line 271
    invoke-static {v1, v7, v9, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    .line 273
    .line 274
    invoke-static {v1, v7, v9, v13, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    .line 276
    :goto_5
    const/16 v1, 0x1a

    .line 277
    .line 278
    .line 279
    invoke-static {v4, v9, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->putShort(I[BI)V

    .line 280
    array-length v1, v3

    .line 281
    .line 282
    const/16 v2, 0x1c

    .line 283
    .line 284
    .line 285
    invoke-static {v1, v9, v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->putShort(I[BI)V

    .line 286
    .line 287
    .line 288
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    .line 289
    move-result-object v1

    .line 290
    .line 291
    .line 292
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 293
    move-result v2

    .line 294
    .line 295
    .line 296
    invoke-static {v1, v2, v9, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    array-length v1, v3

    .line 298
    .line 299
    .line 300
    invoke-static {v3, v7, v9, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    return-object v9
.end method

.method private flushDeflater()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    .line 10
    move-result v0

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->flushDeflater()V

    .line 20
    :cond_0
    return-void
.end method

.method private getEffectiveZip64Mode(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/Zip64Mode;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 3
    .line 4
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->AsNeeded:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 5
    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    .line 14
    move-result v0

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    .line 22
    move-result-wide v0

    .line 23
    .line 24
    const-wide/16 v2, -0x1

    .line 25
    .line 26
    cmp-long p1, v0, v2

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    sget-object p1, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 32
    return-object p1

    .line 33
    .line 34
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 35
    return-object p1
.end method

.method private getEntryEncoding(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->fallbackToUTF8:Z

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    sget-object p1, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 22
    :goto_0
    return-object p1
.end method

.method private getGeneralPurposeBits(ZZ)Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;-><init>()V

    .line 6
    .line 7
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->useUTF8Flag:Z

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    move p1, v2

    .line 17
    .line 18
    .line 19
    :goto_1
    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useUTF8ForNames(Z)V

    .line 20
    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useDataDescriptor(Z)V

    .line 25
    :cond_2
    return-object v0
.end method

.method private getName(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getEntryEncoding(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method private getZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasUsedZip64:Z

    .line 8
    xor-int/2addr v2, v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$502(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;Z)Z

    .line 12
    .line 13
    :cond_0
    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasUsedZip64:Z

    .line 14
    .line 15
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;-><init>()V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->addAsFirstExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 32
    return-object v0
.end method

.method private handleSizesAndCrc(JJLorg/apache/commons/compress/archivers/zip/Zip64Mode;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    .line 10
    move-result v0

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)J

    .line 26
    move-result-wide v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    .line 30
    .line 31
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1, p2}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 39
    .line 40
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p3, p4}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 52
    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCrc()J

    .line 63
    move-result-wide v0

    .line 64
    .line 65
    cmp-long v0, v0, p3

    .line 66
    .line 67
    const-string v1, " instead of "

    .line 68
    .line 69
    const-string v2, ": "

    .line 70
    .line 71
    if-nez v0, :cond_2

    .line 72
    .line 73
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 74
    .line 75
    .line 76
    invoke-static {p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 77
    move-result-object p3

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    .line 81
    move-result-wide p3

    .line 82
    .line 83
    cmp-long p3, p3, p1

    .line 84
    .line 85
    if-nez p3, :cond_1

    .line 86
    .line 87
    goto/16 :goto_0

    .line 88
    .line 89
    :cond_1
    new-instance p3, Ljava/util/zip/ZipException;

    .line 90
    .line 91
    new-instance p4, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    const-string p5, "bad size for entry "

    .line 97
    .line 98
    .line 99
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    iget-object p5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 102
    .line 103
    .line 104
    invoke-static {p5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 105
    move-result-object p5

    .line 106
    .line 107
    .line 108
    invoke-virtual {p5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    .line 109
    move-result-object p5

    .line 110
    .line 111
    .line 112
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    iget-object p5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 118
    .line 119
    .line 120
    invoke-static {p5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 121
    move-result-object p5

    .line 122
    .line 123
    .line 124
    invoke-virtual {p5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    .line 125
    move-result-wide v2

    .line 126
    .line 127
    .line 128
    invoke-virtual {p4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object p1

    .line 139
    .line 140
    .line 141
    invoke-direct {p3, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 142
    throw p3

    .line 143
    .line 144
    :cond_2
    new-instance p1, Ljava/util/zip/ZipException;

    .line 145
    .line 146
    new-instance p2, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    const-string p5, "bad CRC checksum for entry "

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    iget-object p5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 157
    .line 158
    .line 159
    invoke-static {p5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 160
    move-result-object p5

    .line 161
    .line 162
    .line 163
    invoke-virtual {p5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    .line 164
    move-result-object p5

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    iget-object p5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 173
    .line 174
    .line 175
    invoke-static {p5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 176
    move-result-object p5

    .line 177
    .line 178
    .line 179
    invoke-virtual {p5}, Ljava/util/zip/ZipEntry;->getCrc()J

    .line 180
    move-result-wide v2

    .line 181
    .line 182
    .line 183
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 184
    move-result-object p5

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-static {p3, p4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 194
    move-result-object p3

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    move-result-object p2

    .line 202
    .line 203
    .line 204
    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 205
    throw p1

    .line 206
    .line 207
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 208
    .line 209
    .line 210
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 211
    move-result-object v0

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    .line 215
    .line 216
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 217
    .line 218
    .line 219
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 220
    move-result-object v0

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, p1, p2}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 224
    .line 225
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 226
    .line 227
    .line 228
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 229
    move-result-object p1

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, p3, p4}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 233
    .line 234
    .line 235
    :goto_0
    invoke-direct {p0, p5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->checkIfNeedsZip64(Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)Z

    .line 236
    move-result p1

    .line 237
    return p1
.end method

.method private handleZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;JZ)V
    .locals 6

    .line 1
    .line 2
    if-eqz p4, :cond_4

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;

    .line 6
    move-result-object p4

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const-wide v2, 0xffffffffL

    .line 16
    .line 17
    cmp-long v0, v0, v2

    .line 18
    .line 19
    if-gez v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    .line 23
    move-result-wide v0

    .line 24
    .line 25
    cmp-long v0, v0, v2

    .line 26
    .line 27
    if-gez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 30
    .line 31
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Always:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 32
    .line 33
    if-ne v0, v1, :cond_0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p4, v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p4, v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 48
    move-result-wide v4

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p4, v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    .line 55
    .line 56
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    .line 60
    move-result-wide v4

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p4, v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    .line 67
    .line 68
    :goto_1
    cmp-long v0, p2, v2

    .line 69
    .line 70
    if-gez v0, :cond_2

    .line 71
    .line 72
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 73
    .line 74
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Always:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 75
    .line 76
    if-ne v0, v1, :cond_3

    .line 77
    .line 78
    :cond_2
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p4, v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setRelativeHeaderOffset(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 88
    :cond_4
    return-void
.end method

.method private hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method private isTooLageForZip32(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const-wide v2, 0xffffffffL

    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-gez v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 17
    move-result-wide v0

    .line 18
    .line 19
    cmp-long p1, v0, v2

    .line 20
    .line 21
    if-ltz p1, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 26
    :goto_1
    return p1
.end method

.method private isZip64Required(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Always:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 3
    .line 4
    if-eq p2, v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->isTooLageForZip32(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 15
    :goto_1
    return p1
.end method

.method private preClose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$300(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EMPTY:[B

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0, v1, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->write([BII)V

    .line 21
    :cond_0
    return-void

    .line 22
    .line 23
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 24
    .line 25
    const-string v1, "No current entry to close"

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 29
    throw v0

    .line 30
    .line 31
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 32
    .line 33
    const-string v1, "Stream has already been finished"

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    throw v0
.end method

.method private putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->closeArchiveEntry()V

    .line 3
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$1;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    .line 4
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 5
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->setDefaults(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 6
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getEffectiveZip64Mode(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->validateSizeInformation(Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)V

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 8
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->shouldAddZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 9
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 10
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    .line 11
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 12
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 13
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 14
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    :goto_0
    move-object v2, v1

    goto :goto_1

    .line 15
    :cond_2
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    goto :goto_0

    .line 16
    :goto_1
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    .line 17
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 18
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 19
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasCompressionLevelChanged:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setLevel(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasCompressionLevelChanged:Z

    .line 21
    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeLocalFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Z)V

    return-void

    .line 22
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream has already been finished"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private rewriteSizesAndCrc(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/f;->a(Ljava/nio/channels/SeekableByteChannel;)J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 9
    .line 10
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 11
    .line 12
    .line 13
    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$400(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)J

    .line 14
    move-result-wide v3

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/c;->a(Ljava/nio/channels/SeekableByteChannel;J)Ljava/nio/channels/SeekableByteChannel;

    .line 18
    .line 19
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCrc()J

    .line 27
    move-result-wide v2

    .line 28
    .line 29
    .line 30
    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 35
    .line 36
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    .line 44
    move-result v2

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    if-nez p1, :cond_0

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_0
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    .line 55
    move-result-object v3

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    .line 62
    move-result-object v2

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 66
    goto :goto_1

    .line 67
    .line 68
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 69
    .line 70
    .line 71
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 72
    move-result-object v2

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 76
    move-result-wide v2

    .line 77
    .line 78
    .line 79
    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    .line 80
    move-result-object v2

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 84
    .line 85
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 86
    .line 87
    .line 88
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 89
    move-result-object v2

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    .line 93
    move-result-wide v2

    .line 94
    .line 95
    .line 96
    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    .line 97
    move-result-object v2

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 101
    .line 102
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 103
    .line 104
    .line 105
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 106
    move-result-object v2

    .line 107
    .line 108
    .line 109
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    .line 110
    move-result v2

    .line 111
    .line 112
    if-eqz v2, :cond_2

    .line 113
    .line 114
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 115
    .line 116
    .line 117
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 118
    move-result-object v2

    .line 119
    .line 120
    .line 121
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getName(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/nio/ByteBuffer;

    .line 122
    move-result-object v2

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 126
    move-result v3

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 130
    move-result v2

    .line 131
    sub-int/2addr v3, v2

    .line 132
    .line 133
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 134
    .line 135
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 136
    .line 137
    .line 138
    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$400(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)J

    .line 139
    move-result-wide v4

    .line 140
    .line 141
    const-wide/16 v6, 0x10

    .line 142
    add-long/2addr v4, v6

    .line 143
    int-to-long v6, v3

    .line 144
    add-long/2addr v4, v6

    .line 145
    .line 146
    const-wide/16 v6, 0x4

    .line 147
    add-long/2addr v4, v6

    .line 148
    .line 149
    .line 150
    invoke-static {v2, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/c;->a(Ljava/nio/channels/SeekableByteChannel;J)Ljava/nio/channels/SeekableByteChannel;

    .line 151
    .line 152
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 153
    .line 154
    .line 155
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 156
    move-result-object v2

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    .line 160
    move-result-wide v2

    .line 161
    .line 162
    .line 163
    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    .line 164
    move-result-object v2

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 168
    .line 169
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 170
    .line 171
    .line 172
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 173
    move-result-object v2

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 177
    move-result-wide v2

    .line 178
    .line 179
    .line 180
    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    .line 181
    move-result-object v2

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 185
    .line 186
    if-nez p1, :cond_2

    .line 187
    .line 188
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 189
    .line 190
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 191
    .line 192
    .line 193
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$400(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)J

    .line 194
    move-result-wide v2

    .line 195
    .line 196
    const-wide/16 v4, 0xa

    .line 197
    sub-long/2addr v2, v4

    .line 198
    .line 199
    .line 200
    invoke-static {p1, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/c;->a(Ljava/nio/channels/SeekableByteChannel;J)Ljava/nio/channels/SeekableByteChannel;

    .line 201
    .line 202
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 203
    .line 204
    .line 205
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 206
    move-result-object p1

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    .line 210
    move-result p1

    .line 211
    const/4 v2, 0x0

    .line 212
    .line 213
    .line 214
    invoke-direct {p0, p1, v2, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->versionNeededToExtract(IZZ)I

    .line 215
    move-result p1

    .line 216
    .line 217
    .line 218
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    .line 219
    move-result-object p1

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 223
    .line 224
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 225
    .line 226
    .line 227
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 228
    move-result-object p1

    .line 229
    .line 230
    sget-object v3, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->removeExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    .line 234
    .line 235
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 236
    .line 237
    .line 238
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 239
    move-result-object p1

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 243
    .line 244
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 245
    .line 246
    .line 247
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$500(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Z

    .line 248
    move-result p1

    .line 249
    .line 250
    if-eqz p1, :cond_2

    .line 251
    .line 252
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasUsedZip64:Z

    .line 253
    .line 254
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 255
    .line 256
    .line 257
    invoke-static {p1, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/c;->a(Ljava/nio/channels/SeekableByteChannel;J)Ljava/nio/channels/SeekableByteChannel;

    .line 258
    return-void
.end method

.method private setDefaults(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->method:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setMethod(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getTime()J

    .line 16
    move-result-wide v0

    .line 17
    .line 18
    const-wide/16 v2, -0x1

    .line 19
    .line 20
    cmp-long v0, v0, v2

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    move-result-wide v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 30
    :cond_1
    return-void
.end method

.method private shouldAddZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)Z
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Always:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 3
    .line 4
    if-eq p2, v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const-wide v2, 0xffffffffL

    .line 14
    .line 15
    cmp-long v0, v0, v2

    .line 16
    .line 17
    if-gez v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 21
    move-result-wide v0

    .line 22
    .line 23
    cmp-long v0, v0, v2

    .line 24
    .line 25
    if-gez v0, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    .line 29
    move-result-wide v0

    .line 30
    .line 31
    const-wide/16 v2, -0x1

    .line 32
    .line 33
    cmp-long p1, v0, v2

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    sget-object p1, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 42
    .line 43
    if-eq p2, p1, :cond_0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 p1, 0x0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 48
    :goto_1
    return p1
.end method

.method private usesDataDescriptor(IZ)Z
    .locals 0

    if-nez p2, :cond_0

    const/16 p2, 0x8

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private validateSizeInformation(Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    .line 26
    move-result-wide v0

    .line 27
    .line 28
    const-wide/16 v2, -0x1

    .line 29
    .line 30
    cmp-long v0, v0, v2

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCrc()J

    .line 42
    move-result-wide v0

    .line 43
    .line 44
    cmp-long v0, v0, v2

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    .line 62
    move-result-wide v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_0
    new-instance p1, Ljava/util/zip/ZipException;

    .line 69
    .line 70
    const-string v0, "crc checksum is required for STORED method when not writing to a file"

    .line 71
    .line 72
    .line 73
    invoke-direct {p1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 74
    throw p1

    .line 75
    .line 76
    :cond_1
    new-instance p1, Ljava/util/zip/ZipException;

    .line 77
    .line 78
    const-string v0, "uncompressed size is required for STORED method when not writing to a file"

    .line 79
    .line 80
    .line 81
    invoke-direct {p1, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 82
    throw p1

    .line 83
    .line 84
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    .line 92
    move-result-wide v0

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    const-wide v2, 0xffffffffL

    .line 98
    .line 99
    cmp-long v0, v0, v2

    .line 100
    .line 101
    if-gez v0, :cond_3

    .line 102
    .line 103
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 104
    .line 105
    .line 106
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 111
    move-result-wide v0

    .line 112
    .line 113
    cmp-long v0, v0, v2

    .line 114
    .line 115
    if-ltz v0, :cond_4

    .line 116
    .line 117
    :cond_3
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 118
    .line 119
    if-eq p1, v0, :cond_5

    .line 120
    :cond_4
    return-void

    .line 121
    .line 122
    :cond_5
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;

    .line 123
    .line 124
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 125
    .line 126
    .line 127
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 128
    move-result-object v0

    .line 129
    .line 130
    .line 131
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;->getEntryTooBigMessage(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/lang/String;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    .line 135
    invoke-direct {p1, v0}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    .line 136
    throw p1
.end method

.method private versionNeededToExtract(IZZ)I
    .locals 0

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    const/16 p1, 0x2d

    .line 5
    return p1

    .line 6
    .line 7
    :cond_0
    if-eqz p3, :cond_1

    .line 8
    .line 9
    const/16 p1, 0x14

    .line 10
    return p1

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->versionNeededToExtractMethod(I)I

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method private versionNeededToExtractMethod(I)I
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/16 p1, 0x14

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    :goto_0
    return p1
.end method

.method private writeCentralDirectoryInChunks()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    .line 4
    .line 5
    const v1, 0x11170

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 9
    .line 10
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    move v3, v2

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v4

    .line 21
    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v4

    .line 27
    .line 28
    check-cast v4, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)[B

    .line 32
    move-result-object v4

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    const/16 v4, 0x3e8

    .line 40
    .line 41
    if-le v3, v4, :cond_0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 45
    move-result-object v3

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 52
    goto :goto_0

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 60
    return-void
.end method

.method private writeCounted([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writeCounted([B)V

    .line 6
    return-void
.end method

.method private writeLocalFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v5

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getName(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    .line 4
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    if-eq v0, v1, :cond_0

    .line 5
    invoke-direct {p0, p1, v5, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->addUnicodeExtraFields(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;ZLjava/nio/ByteBuffer;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    .line 6
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->getTotalBytesWritten()J

    move-result-wide v0

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    move-wide v7, v0

    .line 7
    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createLocalFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Ljava/nio/ByteBuffer;ZZJ)[B

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->metaData:Ljava/util/Map;

    .line 8
    new-instance v4, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v5

    invoke-direct {p0, v5, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->usesDataDescriptor(IZ)Z

    move-result p2

    const/4 v5, 0x0

    invoke-direct {v4, v0, v1, p2, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;-><init>(JZLorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$1;)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    const-wide/16 v3, 0xe

    add-long/2addr v0, v3

    .line 9
    invoke-static {p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$402(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;J)J

    .line 10
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    .line 11
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->getTotalBytesWritten()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$002(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;J)J

    return-void
.end method


# virtual methods
.method public addRawArchiveEntry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    .line 9
    move-result p1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->removeExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCrc()J

    .line 20
    move-result-wide v1

    .line 21
    .line 22
    const-wide/16 v3, -0x1

    .line 23
    .line 24
    cmp-long p1, v1, v3

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    .line 30
    move-result-wide v1

    .line 31
    .line 32
    cmp-long p1, v1, v3

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 38
    move-result-wide v1

    .line 39
    .line 40
    cmp-long p1, v1, v3

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    const/4 p1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 p1, 0x0

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;Z)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->copyFromZipInputStream(Ljava/io/InputStream;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->closeCopiedEntry(Z)V

    .line 55
    return-void
.end method

.method public canWriteEntryData(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    .line 11
    move-result v0

    .line 12
    .line 13
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->IMPLODING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    .line 17
    move-result v2

    .line 18
    .line 19
    if-eq v0, v2, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    .line 23
    move-result v0

    .line 24
    .line 25
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->UNSHRINKING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    .line 29
    move-result v2

    .line 30
    .line 31
    if-eq v0, v2, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->canHandleEntryData(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    .line 35
    move-result p1

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    const/4 v1, 0x1

    .line 39
    :cond_0
    return v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finish()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->destroy()V

    .line 11
    return-void
.end method

.method public closeArchiveEntry()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->preClose()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->flushDeflater()V

    .line 7
    .line 8
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->getTotalBytesWritten()J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$000(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)J

    .line 18
    move-result-wide v2

    .line 19
    .line 20
    sub-long v5, v0, v2

    .line 21
    .line 22
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->getCrc32()J

    .line 26
    move-result-wide v7

    .line 27
    .line 28
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 29
    .line 30
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->getBytesRead()J

    .line 34
    move-result-wide v1

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$102(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;J)J

    .line 38
    .line 39
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getEffectiveZip64Mode(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 47
    move-result-object v9

    .line 48
    move-object v4, p0

    .line 49
    .line 50
    .line 51
    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->handleSizesAndCrc(JJLorg/apache/commons/compress/archivers/zip/Zip64Mode;)Z

    .line 52
    move-result v0

    .line 53
    const/4 v1, 0x0

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->closeEntry(ZZ)V

    .line 57
    .line 58
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->reset()V

    .line 62
    return-void
.end method

.method public createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    return-object v0

    .line 11
    .line 12
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 13
    .line 14
    const-string p2, "Stream has already been finished"

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1
.end method

.method protected final deflate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->deflate()V

    .line 6
    return-void
.end method

.method destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/b;->a(Ljava/nio/channels/SeekableByteChannel;)V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 15
    :cond_1
    return-void
.end method

.method public finish()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->getTotalBytesWritten()J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCentralDirectoryInChunks()V

    .line 20
    .line 21
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->getTotalBytesWritten()J

    .line 25
    move-result-wide v0

    .line 26
    .line 27
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    .line 28
    sub-long/2addr v0, v2

    .line 29
    .line 30
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdLength:J

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeZip64CentralDirectory()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCentralDirectoryEnd()V

    .line 37
    .line 38
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->metaData:Ljava/util/Map;

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 42
    .line 43
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    .line 44
    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 47
    .line 48
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->close()V

    .line 52
    const/4 v0, 0x1

    .line 53
    .line 54
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    .line 55
    return-void

    .line 56
    .line 57
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 58
    .line 59
    const-string v1, "This archive contains unclosed entries."

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 63
    throw v0

    .line 64
    .line 65
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 66
    .line 67
    const-string v1, "This archive has already been finished"

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 71
    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 8
    :cond_0
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public isSeekable()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;Z)V

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCreateUnicodeExtraFields(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->encoding:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 9
    .line 10
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->useUTF8Flag:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->isUTF8(Ljava/lang/String;)Z

    .line 16
    move-result p1

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    const/4 p1, 0x0

    .line 20
    .line 21
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->useUTF8Flag:Z

    .line 22
    :cond_0
    return-void
.end method

.method public setFallbackToUTF8(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->fallbackToUTF8:Z

    return-void
.end method

.method public setLevel(I)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-lt p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x9

    .line 6
    .line 7
    if-gt p1, v0, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    .line 10
    .line 11
    if-eq v0, p1, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    .line 16
    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasCompressionLevelChanged:Z

    .line 17
    .line 18
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    .line 19
    return-void

    .line 20
    .line 21
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string v2, "Invalid compression level: "

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    throw v0
.end method

.method public setMethod(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->method:I

    return-void
.end method

.method public setUseLanguageEncodingFlag(Z)V
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->encoding:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->isUTF8(Ljava/lang/String;)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    .line 15
    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->useUTF8Flag:Z

    .line 16
    return-void
.end method

.method public setUseZip64(Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->checkRequestedFeatures(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 12
    .line 13
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    .line 14
    .line 15
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    .line 23
    move-result v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->write([BIII)J

    .line 27
    move-result-wide p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->count(J)V

    .line 31
    return-void

    .line 32
    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string p2, "No current entry"

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    throw p1
.end method

.method protected writeCentralDirectoryEnd()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EOCD_SIG:[B

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 6
    .line 7
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZERO:[B

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 14
    .line 15
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    move-result v0

    .line 20
    .line 21
    .line 22
    const v1, 0xffff

    .line 23
    .line 24
    if-le v0, v1, :cond_1

    .line 25
    .line 26
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 27
    .line 28
    sget-object v3, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 29
    .line 30
    if-eq v2, v3, :cond_0

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;

    .line 34
    .line 35
    const-string v1, "archive contains more than 65535 entries."

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    .line 39
    throw v0

    .line 40
    .line 41
    :cond_1
    :goto_0
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    const-wide v4, 0xffffffffL

    .line 47
    .line 48
    cmp-long v2, v2, v4

    .line 49
    .line 50
    if-lez v2, :cond_3

    .line 51
    .line 52
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 53
    .line 54
    sget-object v3, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 55
    .line 56
    if-eq v2, v3, :cond_2

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_2
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;

    .line 60
    .line 61
    const-string v1, "archive\'s size exceeds the limit of 4GByte."

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    .line 65
    throw v0

    .line 66
    .line 67
    .line 68
    :cond_3
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 69
    move-result v0

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 80
    .line 81
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdLength:J

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 85
    move-result-wide v0

    .line 86
    .line 87
    .line 88
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    .line 89
    move-result-object v0

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 93
    .line 94
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    .line 95
    .line 96
    .line 97
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 98
    move-result-wide v0

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    .line 102
    move-result-object v0

    .line 103
    .line 104
    .line 105
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 106
    .line 107
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 108
    .line 109
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->comment:Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    invoke-interface {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 117
    move-result v1

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 121
    move-result v2

    .line 122
    sub-int/2addr v1, v2

    .line 123
    .line 124
    .line 125
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    .line 126
    move-result-object v2

    .line 127
    .line 128
    .line 129
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 130
    .line 131
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 135
    move-result-object v3

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 139
    move-result v0

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v3, v0, v1}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writeCounted([BII)V

    .line 143
    return-void
.end method

.method protected writeCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)[B

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 8
    return-void
.end method

.method protected writeDataDescriptor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->usesDataDescriptor(IZ)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->DD_SIG:[B

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCrc()J

    .line 21
    move-result-wide v0

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 38
    move-result-wide v0

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    .line 49
    move-result-wide v0

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 61
    move-result-wide v0

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    .line 72
    move-result-wide v0

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 80
    :goto_0
    return-void
.end method

.method protected writeLocalFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeLocalFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Z)V

    return-void
.end method

.method protected final writeOut([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    .line 1
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writeOut([BII)V

    return-void
.end method

.method protected final writeOut([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writeOut([BII)V

    return-void
.end method

.method protected writeZip64CentralDirectory()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 3
    .line 4
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasUsedZip64:Z

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const-wide v2, 0xffffffffL

    .line 19
    .line 20
    cmp-long v0, v0, v2

    .line 21
    .line 22
    if-gez v0, :cond_1

    .line 23
    .line 24
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdLength:J

    .line 25
    .line 26
    cmp-long v0, v0, v2

    .line 27
    .line 28
    if-gez v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 34
    move-result v0

    .line 35
    .line 36
    .line 37
    const v1, 0xffff

    .line 38
    .line 39
    if-lt v0, v1, :cond_2

    .line 40
    :cond_1
    const/4 v0, 0x1

    .line 41
    .line 42
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasUsedZip64:Z

    .line 43
    .line 44
    :cond_2
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasUsedZip64:Z

    .line 45
    .line 46
    if-nez v0, :cond_3

    .line 47
    return-void

    .line 48
    .line 49
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->getTotalBytesWritten()J

    .line 53
    move-result-wide v0

    .line 54
    .line 55
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZIP64_EOCD_SIG:[B

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 59
    .line 60
    const-wide/16 v2, 0x2c

    .line 61
    .line 62
    .line 63
    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    .line 64
    move-result-object v2

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 68
    .line 69
    const/16 v2, 0x2d

    .line 70
    .line 71
    .line 72
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    .line 73
    move-result-object v3

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 77
    .line 78
    .line 79
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    .line 80
    move-result-object v2

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 84
    .line 85
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LZERO:[B

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 92
    .line 93
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    .line 94
    .line 95
    .line 96
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 97
    move-result v3

    .line 98
    int-to-long v3, v3

    .line 99
    .line 100
    .line 101
    invoke-static {v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    .line 102
    move-result-object v3

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 109
    .line 110
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdLength:J

    .line 111
    .line 112
    .line 113
    invoke-static {v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    .line 114
    move-result-object v3

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 118
    .line 119
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    .line 120
    .line 121
    .line 122
    invoke-static {v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    .line 123
    move-result-object v3

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 127
    .line 128
    sget-object v3, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZIP64_EOCD_LOC_SIG:[B

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 135
    .line 136
    .line 137
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    .line 138
    move-result-object v0

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 142
    .line 143
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ONE:[B

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 147
    return-void
.end method
