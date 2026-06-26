.class public Lcom/narvii/util/image/DiskLruCacheWrapper;
.super Ljava/lang/Object;
.source "DiskLruCacheWrapper.java"

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

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->dir:Ljava/io/File;

    return-void
.end method

.method private getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "http"

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x3f

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 39
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 42
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 43
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static read(Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    .line 299
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method private static readHeader(Ljava/io/InputStream;)Lcom/android/volley/Cache$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    new-instance v0, Lcom/android/volley/Cache$Entry;

    invoke-direct {v0}, Lcom/android/volley/Cache$Entry;-><init>()V

    .line 247
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->readInt(Ljava/io/InputStream;)I

    move-result v1

    const v2, 0x18150306

    if-ne v1, v2, :cond_1

    .line 252
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 253
    iget-object v1, v0, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 254
    iput-object v1, v0, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 256
    :cond_0
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->readLong(Ljava/io/InputStream;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->serverDate:J

    .line 257
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->readLong(Ljava/io/InputStream;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->lastModified:J

    .line 258
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->readLong(Ljava/io/InputStream;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 259
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->readLong(Ljava/io/InputStream;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 260
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->readStringStringMap(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object p0

    iput-object p0, v0, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    return-object v0

    .line 250
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method private static readInt(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->read(Ljava/io/InputStream;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x0

    or-int/lit8 v0, v0, 0x0

    .line 314
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 315
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->read(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 316
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->read(Ljava/io/InputStream;)I

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method private static readLong(Ljava/io/InputStream;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->read(Ljava/io/InputStream;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/4 v4, 0x0

    shl-long/2addr v0, v4

    const-wide/16 v4, 0x0

    or-long/2addr v0, v4

    .line 334
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->read(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 335
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->read(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 336
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->read(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 337
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->read(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 338
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->read(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 339
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->read(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 340
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->read(Ljava/io/InputStream;)I

    move-result p0

    int-to-long v4, p0

    and-long/2addr v2, v4

    const/16 p0, 0x38

    shl-long/2addr v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static readString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->readLong(Ljava/io/InputStream;)J

    move-result-wide v0

    long-to-int v1, v0

    .line 352
    invoke-static {p0, v1}, Lcom/narvii/util/image/DiskLruCacheWrapper;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object p0

    .line 353
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

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

    .line 369
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->readInt(Ljava/io/InputStream;)I

    move-result v0

    if-nez v0, :cond_0

    .line 371
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 374
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 375
    invoke-static {p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 376
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

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

    .line 280
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    sub-int v2, p1, v1

    .line 283
    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    if-ne v1, p1, :cond_1

    return-object v0

    .line 287
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes, read "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static writeHeader(Ljava/io/OutputStream;Lcom/android/volley/Cache$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x18150306

    .line 266
    invoke-static {p0, v0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->writeInt(Ljava/io/OutputStream;I)V

    .line 267
    iget-object v0, p1, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-static {p0, v0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 268
    iget-wide v0, p1, Lcom/android/volley/Cache$Entry;->serverDate:J

    invoke-static {p0, v0, v1}, Lcom/narvii/util/image/DiskLruCacheWrapper;->writeLong(Ljava/io/OutputStream;J)V

    .line 269
    iget-wide v0, p1, Lcom/android/volley/Cache$Entry;->lastModified:J

    invoke-static {p0, v0, v1}, Lcom/narvii/util/image/DiskLruCacheWrapper;->writeLong(Ljava/io/OutputStream;J)V

    .line 270
    iget-wide v0, p1, Lcom/android/volley/Cache$Entry;->ttl:J

    invoke-static {p0, v0, v1}, Lcom/narvii/util/image/DiskLruCacheWrapper;->writeLong(Ljava/io/OutputStream;J)V

    .line 271
    iget-wide v0, p1, Lcom/android/volley/Cache$Entry;->softTtl:J

    invoke-static {p0, v0, v1}, Lcom/narvii/util/image/DiskLruCacheWrapper;->writeLong(Ljava/io/OutputStream;J)V

    .line 272
    iget-object p1, p1, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-static {p1, p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->writeStringStringMap(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 273
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private static writeInt(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    .line 305
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 306
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 307
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    .line 308
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private static writeLong(Ljava/io/OutputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 321
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 322
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 323
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 324
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 325
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 326
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 327
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x38

    ushr-long/2addr p1, v0

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 328
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private static writeString(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 345
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 346
    array-length v0, p1

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/narvii/util/image/DiskLruCacheWrapper;->writeLong(Ljava/io/OutputStream;J)V

    .line 347
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

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

    if-eqz p0, :cond_0

    .line 358
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->writeInt(Ljava/io/OutputStream;I)V

    .line 359
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 360
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/narvii/util/image/DiskLruCacheWrapper;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 361
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 364
    invoke-static {p1, p0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->writeInt(Ljava/io/OutputStream;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    if-eqz v0, :cond_0

    .line 207
    :try_start_0
    invoke-virtual {v0}, Lcom/narvii/util/disklrucache/DiskLruCache;->delete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 212
    :try_start_1
    iget-object v0, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->dir:Ljava/io/File;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/narvii/util/disklrucache/DiskLruCache;->open(Ljava/io/File;II)Lcom/narvii/util/disklrucache/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;
    .locals 7

    .line 50
    iget-object v0, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 53
    :try_start_0
    invoke-direct {p0, p1}, Lcom/narvii/util/image/DiskLruCacheWrapper;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 56
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/narvii/util/image/DiskLruCacheWrapper;->readHeader(Ljava/io/InputStream;)Lcom/android/volley/Cache$Entry;

    move-result-object v2

    .line 58
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x1

    .line 60
    invoke-virtual {p1, v0}, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;->getLength(I)J

    move-result-wide v3

    long-to-int v4, v3

    .line 61
    invoke-virtual {p1, v0}, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 62
    invoke-static {v0, v4}, Lcom/narvii/util/image/DiskLruCacheWrapper;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v3

    iput-object v3, v2, Lcom/android/volley/Cache$Entry;->data:[B

    .line 63
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1}, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;->close()V

    :cond_0
    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_6

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v1

    .line 68
    :goto_0
    :try_start_2
    invoke-static {v0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_6

    .line 71
    :goto_1
    invoke-virtual {p1}, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;->close()V

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/narvii/util/disklrucache/DiskLruCache$Snapshot;->close()V

    .line 73
    :cond_2
    throw v0

    .line 77
    :cond_3
    :try_start_3
    invoke-direct {p0, p1}, Lcom/narvii/util/image/DiskLruCacheWrapper;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 79
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->dir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    .line 103
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    return-object v1

    .line 83
    :cond_4
    :try_start_4
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->dir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".1"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    long-to-int p1, v3

    if-nez p1, :cond_5

    .line 103
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    return-object v1

    .line 89
    :cond_5
    :try_start_5
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 90
    :try_start_6
    invoke-static {v3}, Lcom/narvii/util/image/DiskLruCacheWrapper;->readHeader(Ljava/io/InputStream;)Lcom/android/volley/Cache$Entry;

    move-result-object v0

    .line 91
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 94
    :try_start_7
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 95
    :try_start_8
    invoke-static {v3, p1}, Lcom/narvii/util/image/DiskLruCacheWrapper;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object p1

    iput-object p1, v0, Lcom/android/volley/Cache$Entry;->data:[B

    .line 96
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 103
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    return-object v0

    :catchall_3
    move-exception p1

    goto :goto_2

    :catchall_4
    move-exception p1

    move-object v3, v1

    .line 101
    :goto_2
    :try_start_9
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 103
    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    :cond_6
    :goto_3
    return-object v1

    :catchall_5
    move-exception p1

    invoke-static {v3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 104
    throw p1
.end method

.method public initialize()V
    .locals 5

    .line 144
    iget-object v0, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    if-nez v0, :cond_0

    .line 146
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 147
    iget-object v2, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->dir:Ljava/io/File;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/narvii/util/disklrucache/DiskLruCache;->open(Ljava/io/File;II)Lcom/narvii/util/disklrucache/DiskLruCache;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DiskLruCache init in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DiskLruCache init fail"

    .line 150
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public invalidate(Ljava/lang/String;Z)V
    .locals 6

    .line 157
    iget-object v0, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 162
    :try_start_0
    invoke-direct {p0, p1}, Lcom/narvii/util/image/DiskLruCacheWrapper;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 163
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 164
    :try_start_2
    invoke-static {v2}, Lcom/narvii/util/image/DiskLruCacheWrapper;->readHeader(Ljava/io/InputStream;)Lcom/android/volley/Cache$Entry;

    move-result-object v3

    .line 165
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v4, 0x0

    .line 168
    :try_start_3
    iput-wide v4, v3, Lcom/android/volley/Cache$Entry;->softTtl:J

    if-eqz p2, :cond_0

    .line 170
    iput-wide v4, v3, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 173
    :cond_0
    invoke-virtual {p1, v0}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 174
    :try_start_4
    invoke-static {p2, v3}, Lcom/narvii/util/image/DiskLruCacheWrapper;->writeHeader(Ljava/io/OutputStream;Lcom/android/volley/Cache$Entry;)V

    .line 175
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 178
    :try_start_5
    invoke-virtual {p1}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->commit()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 187
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 188
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    goto :goto_3

    :catch_0
    nop

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object p2, v1

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-object p2, v1

    move-object v1, v2

    goto :goto_0

    :catch_2
    move-object p2, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p2, v1

    goto :goto_1

    :catch_3
    move-object p1, v1

    move-object p2, p1

    :goto_0
    if-eqz p1, :cond_1

    .line 182
    :try_start_6
    invoke-virtual {p1}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    .line 187
    :goto_1
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 188
    invoke-static {p2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 189
    throw p1

    .line 187
    :catch_4
    :cond_1
    :goto_2
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/InputStream;)Z

    .line 188
    invoke-static {p2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    :cond_2
    :goto_3
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 115
    :try_start_0
    invoke-direct {p0, p1}, Lcom/narvii/util/image/DiskLruCacheWrapper;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/narvii/util/disklrucache/DiskLruCache$Editor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 116
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    :try_start_2
    invoke-static {v0, p2}, Lcom/narvii/util/image/DiskLruCacheWrapper;->writeHeader(Ljava/io/OutputStream;Lcom/android/volley/Cache$Entry;)V

    .line 118
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    .line 121
    :try_start_3
    invoke-virtual {p1, v0}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    :try_start_4
    iget-object p2, p2, Lcom/android/volley/Cache$Entry;->data:[B

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 123
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 126
    :try_start_5
    invoke-virtual {p1}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->commit()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-object v1, v0

    goto :goto_0

    :catch_1
    nop

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_0

    .line 130
    :try_start_6
    invoke-virtual {p1}, Lcom/narvii/util/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 135
    :goto_1
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 136
    throw p1

    .line 135
    :catch_3
    :cond_0
    :goto_2
    invoke-static {v1}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    goto :goto_3

    .line 138
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DiskLruCache not ready to PUT "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    if-eqz v0, :cond_0

    .line 197
    :try_start_0
    invoke-direct {p0, p1}, Lcom/narvii/util/image/DiskLruCacheWrapper;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public size()J
    .locals 7

    .line 229
    iget-object v0, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 231
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 232
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public trimAndFlush(IJ)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/narvii/util/image/DiskLruCacheWrapper;->cache:Lcom/narvii/util/disklrucache/DiskLruCache;

    if-eqz v0, :cond_0

    .line 221
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/util/disklrucache/DiskLruCache;->trimAndFlush(IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
