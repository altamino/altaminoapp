.class public Lcom/narvii/util/image/DiskLruCacheWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Cache;


# static fields
.field private static final CACHE_MAGIC:I = 0x18150306


# instance fields
.field private cache:Lcom/narvii/util/disklrucache/DiskLruCache;

.field private dir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->dir:Ljava/io/File;

    .line 6
    return-void
.end method

.method private getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    const-string v0, "http"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x3f

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 15
    move-result v0

    .line 16
    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 25
    move-result v0

    .line 26
    .line 27
    div-int/lit8 v0, v0, 0x2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 35
    move-result v1

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 55
    move-result p1

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    return-object p1
.end method

.method private static read(Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 4
    move-result p0

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    return p0

    .line 9
    .line 10
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 14
    throw p0
.end method

.method private static readHeader(Ljava/io/InputStream;)Lcom/android/volley/Cache$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/android/volley/Cache$Entry;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/android/volley/Cache$Entry;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->readInt(Ljava/io/InputStream;)I

    .line 9
    move-result v1

    .line 10
    .line 11
    .line 12
    const v2, 0x18150306

    .line 13
    .line 14
    if-ne v1, v2, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    iput-object v1, v0, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 21
    .line 22
    const-string v2, ""

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    const/4 v1, 0x0

    .line 30
    .line 31
    iput-object v1, v0, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->readLong(Ljava/io/InputStream;)J

    .line 35
    move-result-wide v1

    .line 36
    .line 37
    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->serverDate:J

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->readLong(Ljava/io/InputStream;)J

    .line 41
    move-result-wide v1

    .line 42
    .line 43
    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->lastModified:J

    .line 44
    .line 45
    .line 46
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->readLong(Ljava/io/InputStream;)J

    .line 47
    move-result-wide v1

    .line 48
    .line 49
    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 50
    .line 51
    .line 52
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->readLong(Ljava/io/InputStream;)J

    .line 53
    move-result-wide v1

    .line 54
    .line 55
    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 56
    .line 57
    .line 58
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->readStringStringMap(Ljava/io/InputStream;)Ljava/util/Map;

    .line 59
    move-result-object p0

    .line 60
    .line 61
    iput-object p0, v0, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    .line 62
    return-object v0

    .line 63
    .line 64
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 65
    .line 66
    .line 67
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 68
    throw p0
.end method

.method private static readInt(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->read(Ljava/io/InputStream;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->read(Ljava/io/InputStream;)I

    .line 8
    move-result v1

    .line 9
    .line 10
    shl-int/lit8 v1, v1, 0x8

    .line 11
    or-int/2addr v0, v1

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->read(Ljava/io/InputStream;)I

    .line 15
    move-result v1

    .line 16
    .line 17
    shl-int/lit8 v1, v1, 0x10

    .line 18
    or-int/2addr v0, v1

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->read(Ljava/io/InputStream;)I

    .line 22
    move-result p0

    .line 23
    .line 24
    shl-int/lit8 p0, p0, 0x18

    .line 25
    or-int/2addr p0, v0

    .line 26
    return p0
.end method

.method private static readLong(Ljava/io/InputStream;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->read(Ljava/io/InputStream;)I

    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    .line 7
    const-wide/16 v2, 0xff

    .line 8
    and-long/2addr v0, v2

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->read(Ljava/io/InputStream;)I

    .line 12
    move-result v4

    .line 13
    int-to-long v4, v4

    .line 14
    and-long/2addr v4, v2

    .line 15
    .line 16
    const/16 v6, 0x8

    .line 17
    shl-long/2addr v4, v6

    .line 18
    or-long/2addr v0, v4

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->read(Ljava/io/InputStream;)I

    .line 22
    move-result v4

    .line 23
    int-to-long v4, v4

    .line 24
    and-long/2addr v4, v2

    .line 25
    .line 26
    const/16 v6, 0x10

    .line 27
    shl-long/2addr v4, v6

    .line 28
    or-long/2addr v0, v4

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->read(Ljava/io/InputStream;)I

    .line 32
    move-result v4

    .line 33
    int-to-long v4, v4

    .line 34
    and-long/2addr v4, v2

    .line 35
    .line 36
    const/16 v6, 0x18

    .line 37
    shl-long/2addr v4, v6

    .line 38
    or-long/2addr v0, v4

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->read(Ljava/io/InputStream;)I

    .line 42
    move-result v4

    .line 43
    int-to-long v4, v4

    .line 44
    and-long/2addr v4, v2

    .line 45
    .line 46
    const/16 v6, 0x20

    .line 47
    shl-long/2addr v4, v6

    .line 48
    or-long/2addr v0, v4

    .line 49
    .line 50
    .line 51
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->read(Ljava/io/InputStream;)I

    .line 52
    move-result v4

    .line 53
    int-to-long v4, v4

    .line 54
    and-long/2addr v4, v2

    .line 55
    .line 56
    const/16 v6, 0x28

    .line 57
    shl-long/2addr v4, v6

    .line 58
    or-long/2addr v0, v4

    .line 59
    .line 60
    .line 61
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->read(Ljava/io/InputStream;)I

    .line 62
    move-result v4

    .line 63
    int-to-long v4, v4

    .line 64
    and-long/2addr v4, v2

    .line 65
    .line 66
    const/16 v6, 0x30

    .line 67
    shl-long/2addr v4, v6

    .line 68
    or-long/2addr v0, v4

    .line 69
    .line 70
    .line 71
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->read(Ljava/io/InputStream;)I

    .line 72
    move-result p0

    .line 73
    int-to-long v4, p0

    .line 74
    and-long/2addr v2, v4

    .line 75
    .line 76
    const/16 p0, 0x38

    .line 77
    shl-long/2addr v2, p0

    .line 78
    or-long/2addr v0, v2

    .line 79
    return-wide v0
.end method

.method private static readString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->readLong(Ljava/io/InputStream;)J

    .line 4
    move-result-wide v0

    .line 5
    long-to-int v0, v0

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->streamToBytes(Ljava/io/InputStream;I)[B

    .line 9
    move-result-object p0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "UTF-8"

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 17
    return-object v0
.end method

.method private static readStringStringMap(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->readInt(Ljava/io/InputStream;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 10
    move-result-object v1

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 17
    :goto_0
    const/4 v2, 0x0

    .line 18
    .line 19
    :goto_1
    if-ge v2, v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    .line 31
    move-result-object v4

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 35
    move-result-object v4

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    return-object v1
.end method

.method private static streamToBytes(Ljava/io/InputStream;I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-array v0, p1, [B

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    :goto_0
    if-ge v1, p1, :cond_0

    .line 6
    .line 7
    sub-int v2, p1, v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    .line 11
    move-result v2

    .line 12
    const/4 v3, -0x1

    .line 13
    .line 14
    if-eq v2, v3, :cond_0

    .line 15
    add-int/2addr v1, v2

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    if-ne v1, p1, :cond_1

    .line 19
    return-object v0

    .line 20
    .line 21
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string v2, "Expected "

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string p1, " bytes, read "

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string p1, " bytes"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p0
.end method

.method private static writeHeader(Ljava/io/OutputStream;Lcom/android/volley/Cache$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x18150306

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->writeInt(Ljava/io/OutputStream;I)V

    .line 7
    .line 8
    iget-object v0, p1, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {p0, v0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 16
    .line 17
    iget-wide v0, p1, Lcom/android/volley/Cache$Entry;->serverDate:J

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0, v1}, Lcom/narvii/util/image/DiskLruCacheWrapper;->writeLong(Ljava/io/OutputStream;J)V

    .line 21
    .line 22
    iget-wide v0, p1, Lcom/android/volley/Cache$Entry;->lastModified:J

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v0, v1}, Lcom/narvii/util/image/DiskLruCacheWrapper;->writeLong(Ljava/io/OutputStream;J)V

    .line 26
    .line 27
    iget-wide v0, p1, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0, v1}, Lcom/narvii/util/image/DiskLruCacheWrapper;->writeLong(Ljava/io/OutputStream;J)V

    .line 31
    .line 32
    iget-wide v0, p1, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v0, v1}, Lcom/narvii/util/image/DiskLruCacheWrapper;->writeLong(Ljava/io/OutputStream;J)V

    .line 36
    .line 37
    iget-object p1, p1, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    .line 38
    .line 39
    .line 40
    invoke-static {p1, p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->writeStringStringMap(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 44
    return-void
.end method

.method private static writeInt(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    and-int/lit16 v0, p1, 0xff

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 6
    .line 7
    shr-int/lit8 v0, p1, 0x8

    .line 8
    .line 9
    and-int/lit16 v0, v0, 0xff

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 13
    .line 14
    shr-int/lit8 v0, p1, 0x10

    .line 15
    .line 16
    and-int/lit16 v0, v0, 0xff

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 20
    .line 21
    shr-int/lit8 p1, p1, 0x18

    .line 22
    .line 23
    and-int/lit16 p1, p1, 0xff

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 27
    return-void
.end method

.method private static writeLong(Ljava/io/OutputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    long-to-int v0, p1

    .line 2
    int-to-byte v0, v0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    ushr-long v0, p1, v0

    .line 10
    long-to-int v0, v0

    .line 11
    int-to-byte v0, v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 15
    .line 16
    const/16 v0, 0x10

    .line 17
    .line 18
    ushr-long v0, p1, v0

    .line 19
    long-to-int v0, v0

    .line 20
    int-to-byte v0, v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 24
    .line 25
    const/16 v0, 0x18

    .line 26
    .line 27
    ushr-long v0, p1, v0

    .line 28
    long-to-int v0, v0

    .line 29
    int-to-byte v0, v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 33
    .line 34
    const/16 v0, 0x20

    .line 35
    .line 36
    ushr-long v0, p1, v0

    .line 37
    long-to-int v0, v0

    .line 38
    int-to-byte v0, v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 42
    .line 43
    const/16 v0, 0x28

    .line 44
    .line 45
    ushr-long v0, p1, v0

    .line 46
    long-to-int v0, v0

    .line 47
    int-to-byte v0, v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 51
    .line 52
    const/16 v0, 0x30

    .line 53
    .line 54
    ushr-long v0, p1, v0

    .line 55
    long-to-int v0, v0

    .line 56
    int-to-byte v0, v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 60
    .line 61
    const/16 v0, 0x38

    .line 62
    ushr-long/2addr p1, v0

    .line 63
    long-to-int p1, p1

    .line 64
    int-to-byte p1, p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 68
    return-void
.end method

.method private static writeString(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "UTF-8"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 6
    move-result-object p1

    .line 7
    array-length v0, p1

    .line 8
    int-to-long v0, v0

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, v1}, Lcom/narvii/util/image/DiskLruCacheWrapper;->writeLong(Ljava/io/OutputStream;J)V

    .line 12
    const/4 v0, 0x0

    .line 13
    array-length v1, p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 17
    return-void
.end method

.method private static writeStringStringMap(Ljava/util/Map;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->writeInt(Ljava/io/OutputStream;I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Ljava/util/Map$Entry;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    check-cast v1, Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v1}, Lcom/narvii/util/image/DiskLruCacheWrapper;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    check-cast v0, Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 p0, 0x0

    .line 50
    .line 51
    .line 52
    invoke-static {p1, p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->writeInt(Ljava/io/OutputStream;I)V

    .line 53
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual {v0}, Lcom/narvii/util/disklrucache/DiskLruCache;->delete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 11
    .line 12
    :try_start_1
    iget-object v0, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->dir:Ljava/io/File;

    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x2

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Lcom/narvii/util/disklrucache/DiskLruCache;->open(Ljava/io/File;II)Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 21
    :catch_1
    :cond_0
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-direct {p0, p1}, Lcom/narvii/util/image/DiskLruCacheWrapper;->getKey(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/narvii/util/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;

    .line 13
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    .line 19
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->readHeader(Ljava/io/InputStream;)Lcom/android/volley/Cache$Entry;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 28
    const/4 v0, 0x1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;->getLength(I)J

    .line 32
    move-result-wide v3

    .line 33
    long-to-int v3, v3

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v3}, Lcom/narvii/util/image/DiskLruCacheWrapper;->streamToBytes(Ljava/io/InputStream;I)[B

    .line 41
    move-result-object v3

    .line 42
    .line 43
    iput-object v3, v2, Lcom/android/volley/Cache$Entry;->data:[B

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;->close()V

    .line 50
    return-object v2

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    goto :goto_1

    .line 53
    .line 54
    :cond_0
    if-eqz p1, :cond_5

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {p1}, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;->close()V

    .line 58
    .line 59
    goto/16 :goto_3

    .line 60
    :catchall_1
    move-exception v0

    .line 61
    move-object p1, v1

    .line 62
    .line 63
    .line 64
    :goto_1
    :try_start_2
    invoke-static {v0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 65
    .line 66
    if-eqz p1, :cond_5

    .line 67
    goto :goto_0

    .line 68
    :catchall_2
    move-exception v0

    .line 69
    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;->close()V

    .line 74
    :cond_1
    throw v0

    .line 75
    .line 76
    .line 77
    :cond_2
    :try_start_3
    invoke-direct {p0, p1}, Lcom/narvii/util/image/DiskLruCacheWrapper;->getKey(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    new-instance v0, Ljava/io/File;

    .line 81
    .line 82
    iget-object v2, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->dir:Ljava/io/File;

    .line 83
    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v4, ".0"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v3

    .line 100
    .line 101
    .line 102
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 106
    move-result-wide v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 107
    .line 108
    const-wide/16 v4, 0x0

    .line 109
    .line 110
    cmp-long v2, v2, v4

    .line 111
    .line 112
    if-nez v2, :cond_3

    .line 113
    .line 114
    .line 115
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 116
    return-object v1

    .line 117
    .line 118
    :cond_3
    :try_start_4
    new-instance v2, Ljava/io/File;

    .line 119
    .line 120
    iget-object v3, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->dir:Ljava/io/File;

    .line 121
    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string p1, ".1"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object p1

    .line 138
    .line 139
    .line 140
    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 144
    move-result-wide v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 145
    long-to-int p1, v3

    .line 146
    .line 147
    if-nez p1, :cond_4

    .line 148
    .line 149
    .line 150
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 151
    return-object v1

    .line 152
    .line 153
    :cond_4
    :try_start_5
    new-instance v3, Ljava/io/FileInputStream;

    .line 154
    .line 155
    .line 156
    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 157
    .line 158
    .line 159
    :try_start_6
    invoke-static {v3}, Lcom/narvii/util/image/DiskLruCacheWrapper;->readHeader(Ljava/io/InputStream;)Lcom/android/volley/Cache$Entry;

    .line 160
    move-result-object v0

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 164
    .line 165
    :try_start_7
    new-instance v3, Ljava/io/FileInputStream;

    .line 166
    .line 167
    .line 168
    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 169
    .line 170
    .line 171
    :try_start_8
    invoke-static {v3, p1}, Lcom/narvii/util/image/DiskLruCacheWrapper;->streamToBytes(Ljava/io/InputStream;I)[B

    .line 172
    move-result-object p1

    .line 173
    .line 174
    iput-object p1, v0, Lcom/android/volley/Cache$Entry;->data:[B

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 178
    .line 179
    .line 180
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 181
    return-object v0

    .line 182
    :catchall_3
    move-exception p1

    .line 183
    goto :goto_2

    .line 184
    :catchall_4
    move-exception p1

    .line 185
    move-object v3, v1

    .line 186
    .line 187
    .line 188
    :goto_2
    :try_start_9
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 189
    .line 190
    .line 191
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 192
    :cond_5
    :goto_3
    return-object v1

    .line 193
    :catchall_5
    move-exception p1

    .line 194
    .line 195
    .line 196
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 197
    throw p1
.end method

.method public initialize()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->dir:Ljava/io/File;

    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x2

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v3, v4}, Lcom/narvii/util/disklrucache/DiskLruCache;->open(Ljava/io/File;II)Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    iput-object v2, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    const-string v3, "DiskLruCache init in "

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 32
    move-result-wide v3

    .line 33
    sub-long/2addr v3, v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v0, "ms"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .line 52
    const-string v1, "DiskLruCache init fail"

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    :cond_0
    :goto_0
    return-void
.end method

.method public invalidate(Ljava/lang/String;Z)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-direct {p0, p1}, Lcom/narvii/util/image/DiskLruCacheWrapper;->getKey(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/narvii/util/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    .line 13
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    .line 17
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    .line 18
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    .line 21
    :try_start_2
    invoke-static {v2}, Lcom/narvii/util/image/DiskLruCacheWrapper;->readHeader(Ljava/io/InputStream;)Lcom/android/volley/Cache$Entry;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 26
    .line 27
    const-wide/16 v4, 0x0

    .line 28
    .line 29
    :try_start_3
    iput-wide v4, v3, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    iput-wide v4, v3, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    move-object p2, v1

    .line 37
    goto :goto_4

    .line 38
    :catch_0
    move-object p2, v1

    .line 39
    move-object v2, p2

    .line 40
    :goto_0
    move-object v1, p1

    .line 41
    goto :goto_3

    .line 42
    .line 43
    .line 44
    :cond_0
    :goto_1
    invoke-virtual {p1, v0}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    .line 45
    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 46
    .line 47
    .line 48
    :try_start_4
    invoke-static {p2, v3}, Lcom/narvii/util/image/DiskLruCacheWrapper;->writeHeader(Ljava/io/OutputStream;Lcom/android/volley/Cache$Entry;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 52
    .line 53
    .line 54
    :try_start_5
    invoke-virtual {p1}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->commit()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 61
    goto :goto_6

    .line 62
    :catchall_1
    move-exception p1

    .line 63
    goto :goto_4

    .line 64
    :catch_1
    move-object v2, v1

    .line 65
    goto :goto_0

    .line 66
    :catchall_2
    move-exception p1

    .line 67
    move-object p2, v1

    .line 68
    :goto_2
    move-object v1, v2

    .line 69
    goto :goto_4

    .line 70
    :catch_2
    move-object p2, v1

    .line 71
    goto :goto_0

    .line 72
    :catch_3
    move-object p2, v1

    .line 73
    move-object v2, p2

    .line 74
    .line 75
    :goto_3
    if-eqz v1, :cond_1

    .line 76
    .line 77
    .line 78
    :try_start_6
    invoke-virtual {v1}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 79
    goto :goto_5

    .line 80
    :catchall_3
    move-exception p1

    .line 81
    goto :goto_2

    .line 82
    .line 83
    .line 84
    :goto_4
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 85
    .line 86
    .line 87
    invoke-static {p2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 88
    throw p1

    .line 89
    .line 90
    .line 91
    :catch_4
    :cond_1
    :goto_5
    invoke-static {v2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 92
    .line 93
    .line 94
    invoke-static {p2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 95
    :cond_2
    :goto_6
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-direct {p0, p1}, Lcom/narvii/util/image/DiskLruCacheWrapper;->getKey(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/narvii/util/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    .line 13
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    .line 17
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    .line 18
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    .line 21
    :try_start_2
    invoke-static {v0, p2}, Lcom/narvii/util/image/DiskLruCacheWrapper;->writeHeader(Ljava/io/OutputStream;Lcom/android/volley/Cache$Entry;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 25
    const/4 v0, 0x1

    .line 26
    .line 27
    .line 28
    :try_start_3
    invoke-virtual {p1, v0}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    .line 29
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    .line 31
    :try_start_4
    iget-object p2, p2, Lcom/android/volley/Cache$Entry;->data:[B

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 38
    .line 39
    .line 40
    :try_start_5
    invoke-virtual {p1}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->commit()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 44
    goto :goto_3

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_1

    .line 47
    :catch_0
    move-object v0, v1

    .line 48
    :catch_1
    move-object v1, p1

    .line 49
    goto :goto_0

    .line 50
    :catchall_1
    move-exception p1

    .line 51
    move-object v1, v0

    .line 52
    goto :goto_1

    .line 53
    :catch_2
    move-object v0, v1

    .line 54
    .line 55
    :goto_0
    if-eqz v1, :cond_0

    .line 56
    .line 57
    .line 58
    :try_start_6
    invoke-virtual {v1}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 59
    goto :goto_2

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 63
    throw p1

    .line 64
    .line 65
    .line 66
    :catch_3
    :cond_0
    :goto_2
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 67
    goto :goto_3

    .line 68
    .line 69
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    const-string v0, "DiskLruCache not ready to PUT "

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 88
    :goto_3
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-direct {p0, p1}, Lcom/narvii/util/image/DiskLruCacheWrapper;->getKey(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/narvii/util/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :catch_0
    :cond_0
    return-void
.end method

.method public size()J
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->dir:Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    array-length v3, v0

    .line 12
    const/4 v4, 0x0

    .line 13
    .line 14
    :goto_0
    if-ge v4, v3, :cond_0

    .line 15
    .line 16
    aget-object v5, v0, v4

    .line 17
    .line 18
    .line 19
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 20
    move-result-wide v5

    .line 21
    add-long/2addr v1, v5

    .line 22
    .line 23
    add-int/lit8 v4, v4, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-wide v1
.end method

.method public trimAndFlush(IJ)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/util/disklrucache/DiskLruCache;->trimAndFlush(IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    :cond_0
    return-void
.end method
