.class public Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;
    }
.end annotation


# static fields
.field private static final SKIPPABLE_FRAME_MAGIC:[B

.field private static final ZSTANDARD_FRAME_MAGIC:[B

.field private static volatile cachedZstdAvailability:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    sput-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->ZSTANDARD_FRAME_MAGIC:[B

    .line 9
    const/4 v0, 0x3

    .line 10
    .line 11
    new-array v0, v0, [B

    .line 12
    .line 13
    .line 14
    fill-array-data v0, :array_1

    .line 15
    .line 16
    sput-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->SKIPPABLE_FRAME_MAGIC:[B

    .line 17
    .line 18
    sget-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    .line 19
    .line 20
    sput-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->cachedZstdAvailability:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    .line 21
    .line 22
    :try_start_0
    const-string v0, "org.osgi.framework.BundleEvent"

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    const/4 v0, 0x1

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->setCacheZstdAvailablity(Z)V

    .line 31
    :goto_0
    return-void

    .line 32
    nop

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    :array_0
    .array-data 1
        0x28t
        -0x4bt
        0x2ft
        -0x3t
    .end array-data

    .line 39
    .line 40
    :array_1
    .array-data 1
        0x2at
        0x4dt
        0x18t
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

.method static getCachedZstdAvailability()Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->cachedZstdAvailability:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    return-object v0
.end method

.method private static internalIsZstdCompressionAvailable()Z
    .locals 1

    .line 1
    .line 2
    :try_start_0
    const-string v0, "com.github.luben.zstd.ZstdInputStream"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :catch_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public static isZstdCompressionAvailable()Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->cachedZstdAvailability:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    .line 3
    .line 4
    sget-object v1, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    sget-object v1, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;->CACHED_AVAILABLE:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

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
    invoke-static {}, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->internalIsZstdCompressionAvailable()Z

    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public static matches([BI)Z
    .locals 5

    .line 1
    .line 2
    sget-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->ZSTANDARD_FRAME_MAGIC:[B

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
    sget-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->ZSTANDARD_FRAME_MAGIC:[B

    .line 11
    array-length v2, v0

    .line 12
    const/4 v3, 0x1

    .line 13
    .line 14
    if-ge p1, v2, :cond_5

    .line 15
    .line 16
    aget-byte v2, p0, p1

    .line 17
    .line 18
    aget-byte v0, v0, p1

    .line 19
    .line 20
    if-eq v2, v0, :cond_4

    .line 21
    .line 22
    aget-byte p1, p0, v1

    .line 23
    .line 24
    and-int/lit16 p1, p1, 0xf0

    .line 25
    .line 26
    const/16 v0, 0x50

    .line 27
    .line 28
    if-ne v0, p1, :cond_3

    .line 29
    move p1, v1

    .line 30
    .line 31
    :goto_1
    sget-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->SKIPPABLE_FRAME_MAGIC:[B

    .line 32
    array-length v2, v0

    .line 33
    .line 34
    if-ge p1, v2, :cond_2

    .line 35
    .line 36
    add-int/lit8 v2, p1, 0x1

    .line 37
    .line 38
    aget-byte v4, p0, v2

    .line 39
    .line 40
    aget-byte p1, v0, p1

    .line 41
    .line 42
    if-eq v4, p1, :cond_1

    .line 43
    return v1

    .line 44
    :cond_1
    move p1, v2

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    return v3

    .line 47
    :cond_3
    return v1

    .line 48
    .line 49
    :cond_4
    add-int/lit8 p1, p1, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_5
    return v3
.end method

.method public static setCacheZstdAvailablity(Z)V
    .locals 1

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    sget-object p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    .line 5
    .line 6
    sput-object p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->cachedZstdAvailability:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    .line 7
    goto :goto_1

    .line 8
    .line 9
    :cond_0
    sget-object p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->cachedZstdAvailability:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    .line 10
    .line 11
    sget-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    .line 12
    .line 13
    if-ne p0, v0, :cond_2

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->internalIsZstdCompressionAvailable()Z

    .line 17
    move-result p0

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    sget-object p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;->CACHED_AVAILABLE:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    sget-object p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;->CACHED_UNAVAILABLE:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    .line 25
    .line 26
    :goto_0
    sput-object p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->cachedZstdAvailability:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    .line 27
    :cond_2
    :goto_1
    return-void
.end method
