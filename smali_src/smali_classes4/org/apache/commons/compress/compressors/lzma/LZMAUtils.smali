.class public Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;
    }
.end annotation


# static fields
.field private static final HEADER_MAGIC:[B

.field private static volatile cachedLZMAAvailability:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

.field private static final fileNameUtil:Lorg/apache/commons/compress/compressors/FileNameUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    sput-object v0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;->HEADER_MAGIC:[B

    .line 9
    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    const-string v1, ".lzma"

    .line 16
    .line 17
    const-string v2, ""

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    const-string v3, "-lzma"

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    new-instance v2, Lorg/apache/commons/compress/compressors/FileNameUtil;

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v0, v1}, Lorg/apache/commons/compress/compressors/FileNameUtil;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    .line 31
    .line 32
    sput-object v2, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;->fileNameUtil:Lorg/apache/commons/compress/compressors/FileNameUtil;

    .line 33
    .line 34
    sget-object v0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    .line 35
    .line 36
    sput-object v0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;->cachedLZMAAvailability:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    .line 37
    .line 38
    :try_start_0
    const-string v0, "org.osgi.framework.BundleEvent"

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    const/4 v0, 0x1

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;->setCacheLZMAAvailablity(Z)V

    .line 47
    :goto_0
    return-void

    .line 48
    nop

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    :array_0
    .array-data 1
        0x5dt
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static getCachedLZMAAvailability()Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;->cachedLZMAAvailability:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    return-object v0
.end method

.method public static getCompressedFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;->fileNameUtil:Lorg/apache/commons/compress/compressors/FileNameUtil;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/compressors/FileNameUtil;->getCompressedFilename(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static getUncompressedFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;->fileNameUtil:Lorg/apache/commons/compress/compressors/FileNameUtil;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/compressors/FileNameUtil;->getUncompressedFilename(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static internalIsLZMACompressionAvailable()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->matches([BI)Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :catch_0
    return v1
.end method

.method public static isCompressedFilename(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;->fileNameUtil:Lorg/apache/commons/compress/compressors/FileNameUtil;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/compressors/FileNameUtil;->isCompressedFilename(Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static isLZMACompressionAvailable()Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;->cachedLZMAAvailability:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    .line 3
    .line 4
    sget-object v1, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    sget-object v1, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;->CACHED_AVAILABLE:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

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

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-static {}, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;->internalIsLZMACompressionAvailable()Z

    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public static matches([BI)Z
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;->HEADER_MAGIC:[B

    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    if-ge p1, v0, :cond_0

    .line 7
    return v1

    .line 8
    :cond_0
    move p1, v1

    .line 9
    .line 10
    :goto_0
    sget-object v0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;->HEADER_MAGIC:[B

    .line 11
    array-length v2, v0

    .line 12
    .line 13
    if-ge p1, v2, :cond_2

    .line 14
    .line 15
    aget-byte v2, p0, p1

    .line 16
    .line 17
    aget-byte v0, v0, p1

    .line 18
    .line 19
    if-eq v2, v0, :cond_1

    .line 20
    return v1

    .line 21
    .line 22
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public static setCacheLZMAAvailablity(Z)V
    .locals 1

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    sget-object p0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    .line 5
    .line 6
    sput-object p0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;->cachedLZMAAvailability:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    .line 7
    goto :goto_1

    .line 8
    .line 9
    :cond_0
    sget-object p0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;->cachedLZMAAvailability:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    .line 10
    .line 11
    sget-object v0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    .line 12
    .line 13
    if-ne p0, v0, :cond_2

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;->internalIsLZMACompressionAvailable()Z

    .line 17
    move-result p0

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    sget-object p0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;->CACHED_AVAILABLE:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    sget-object p0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;->CACHED_UNAVAILABLE:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    .line 25
    .line 26
    :goto_0
    sput-object p0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;->cachedLZMAAvailability:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    .line 27
    :cond_2
    :goto_1
    return-void
.end method
