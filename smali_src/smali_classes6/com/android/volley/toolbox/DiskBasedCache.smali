.class public Lcom/android/volley/toolbox/DiskBasedCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;,
        Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;
    }
.end annotation


# static fields
.field private static final CACHE_MAGIC:I = 0x20150306

.field private static final DEFAULT_DISK_USAGE_BYTES:I = 0x500000

.field private static final HYSTERESIS_FACTOR:F = 0.9f


# instance fields
.field private final mEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxCacheSizeInBytes:I

.field private final mRootDirectory:Ljava/io/File;

.field private mTotalSize:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/high16 v0, 0x500000

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    iput-object p1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    iput p2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    return-void
.end method

.method private getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    div-int/lit8 v0, v0, 0x2

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 15
    move-result v1

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 35
    move-result p1

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method

.method private pruneIfNeeded(I)V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-wide v1, v0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 5
    .line 6
    move/from16 v3, p1

    .line 7
    int-to-long v3, v3

    .line 8
    add-long/2addr v1, v3

    .line 9
    .line 10
    iget v5, v0, Lcom/android/volley/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    .line 11
    int-to-long v5, v5

    .line 12
    .line 13
    cmp-long v1, v1, v5

    .line 14
    .line 15
    if-gez v1, :cond_0

    .line 16
    return-void

    .line 17
    .line 18
    :cond_0
    sget-boolean v1, Lcom/android/volley/VolleyLog;->DEBUG:Z

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const-string v1, "Pruning old cache entries."

    .line 24
    .line 25
    new-array v5, v2, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v5}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    :cond_1
    iget-wide v5, v0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 34
    move-result-wide v7

    .line 35
    .line 36
    iget-object v1, v0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object v1

    .line 45
    move v9, v2

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v10

    .line 50
    const/4 v11, 0x2

    .line 51
    const/4 v12, 0x1

    .line 52
    .line 53
    if-eqz v10, :cond_4

    .line 54
    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v10

    .line 58
    .line 59
    check-cast v10, Ljava/util/Map$Entry;

    .line 60
    .line 61
    .line 62
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 63
    move-result-object v10

    .line 64
    .line 65
    check-cast v10, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 66
    .line 67
    iget-object v13, v10, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v13}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    .line 71
    move-result-object v13

    .line 72
    .line 73
    .line 74
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 75
    move-result v13

    .line 76
    .line 77
    if-eqz v13, :cond_2

    .line 78
    .line 79
    iget-wide v13, v0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 80
    move-wide v15, v3

    .line 81
    .line 82
    iget-wide v2, v10, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    .line 83
    sub-long/2addr v13, v2

    .line 84
    .line 85
    iput-wide v13, v0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    move-wide v15, v3

    .line 88
    .line 89
    new-array v2, v11, [Ljava/lang/Object;

    .line 90
    .line 91
    iget-object v3, v10, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    .line 92
    const/4 v4, 0x0

    .line 93
    .line 94
    aput-object v3, v2, v4

    .line 95
    .line 96
    .line 97
    invoke-direct {v0, v3}, Lcom/android/volley/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    move-result-object v3

    .line 99
    .line 100
    aput-object v3, v2, v12

    .line 101
    .line 102
    const-string v3, "Could not delete cache entry for key=%s, filename=%s"

    .line 103
    .line 104
    .line 105
    invoke-static {v3, v2}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 109
    .line 110
    add-int/lit8 v9, v9, 0x1

    .line 111
    .line 112
    iget-wide v2, v0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 113
    add-long/2addr v2, v15

    .line 114
    long-to-float v2, v2

    .line 115
    .line 116
    iget v3, v0, Lcom/android/volley/toolbox/DiskBasedCache;->mMaxCacheSizeInBytes:I

    .line 117
    int-to-float v3, v3

    .line 118
    .line 119
    .line 120
    const v4, 0x3f666666    # 0.9f

    .line 121
    mul-float/2addr v3, v4

    .line 122
    .line 123
    cmpg-float v2, v2, v3

    .line 124
    .line 125
    if-gez v2, :cond_3

    .line 126
    goto :goto_2

    .line 127
    :cond_3
    move-wide v3, v15

    .line 128
    const/4 v2, 0x0

    .line 129
    goto :goto_0

    .line 130
    .line 131
    :cond_4
    :goto_2
    sget-boolean v1, Lcom/android/volley/VolleyLog;->DEBUG:Z

    .line 132
    .line 133
    if-eqz v1, :cond_5

    .line 134
    const/4 v1, 0x3

    .line 135
    .line 136
    new-array v1, v1, [Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    move-result-object v2

    .line 141
    const/4 v3, 0x0

    .line 142
    .line 143
    aput-object v2, v1, v3

    .line 144
    .line 145
    iget-wide v2, v0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 146
    sub-long/2addr v2, v5

    .line 147
    .line 148
    .line 149
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 150
    move-result-object v2

    .line 151
    .line 152
    aput-object v2, v1, v12

    .line 153
    .line 154
    .line 155
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 156
    move-result-wide v2

    .line 157
    sub-long/2addr v2, v7

    .line 158
    .line 159
    .line 160
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 161
    move-result-object v2

    .line 162
    .line 163
    aput-object v2, v1, v11

    .line 164
    .line 165
    .line 166
    const-string/jumbo v2, "pruned %d files, %d bytes, %d ms"

    .line 167
    .line 168
    .line 169
    invoke-static {v2, v1}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    :cond_5
    return-void
.end method

.method private putEntry(Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 11
    .line 12
    iget-wide v2, p2, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    .line 13
    add-long/2addr v0, v2

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 25
    .line 26
    iget-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 27
    .line 28
    iget-wide v3, p2, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    .line 29
    .line 30
    iget-wide v5, v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    .line 31
    sub-long/2addr v3, v5

    .line 32
    add-long/2addr v1, v3

    .line 33
    .line 34
    iput-wide v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 35
    .line 36
    :goto_0
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
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

.method static readHeaderList(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
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
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readInt(Ljava/io/InputStream;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ltz v0, :cond_2

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 12
    move-result-object v1

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    :goto_0
    const/4 v2, 0x0

    .line 20
    .line 21
    :goto_1
    if-ge v2, v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readString(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readString(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/lang/String;

    .line 33
    move-result-object v4

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 37
    move-result-object v4

    .line 38
    .line 39
    new-instance v5, Lcom/android/volley/Header;

    .line 40
    .line 41
    .line 42
    invoke-direct {v5, v3, v4}, Lcom/android/volley/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    return-object v1

    .line 50
    .line 51
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string/jumbo v2, "readHeaderList size="

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 73
    throw p0
.end method

.method static readInt(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

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
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

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
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

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

.method static readLong(Ljava/io/InputStream;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

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
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

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
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

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
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

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
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

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
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

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
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

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
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->read(Ljava/io/InputStream;)I

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

.method static readString(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/volley/toolbox/DiskBasedCache;->readLong(Ljava/io/InputStream;)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0, v1}, Lcom/android/volley/toolbox/DiskBasedCache;->streamToBytes(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;J)[B

    .line 8
    move-result-object p0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "UTF-8"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 16
    return-object v0
.end method

.method private removeEntry(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 13
    .line 14
    iget-wide v2, p1, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    .line 15
    sub-long/2addr v0, v2

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 18
    :cond_0
    return-void
.end method

.method static streamToBytes(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;J)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRemaining()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v2, p1, v2

    .line 9
    .line 10
    if-ltz v2, :cond_0

    .line 11
    .line 12
    cmp-long v2, p1, v0

    .line 13
    .line 14
    if-gtz v2, :cond_0

    .line 15
    long-to-int v2, p1

    .line 16
    int-to-long v3, v2

    .line 17
    .line 18
    cmp-long v3, v3, p1

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    new-array p1, v2, [B

    .line 23
    .line 24
    new-instance p2, Ljava/io/DataInputStream;

    .line 25
    .line 26
    .line 27
    invoke-direct {p2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 31
    return-object p1

    .line 32
    .line 33
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string/jumbo v3, "streamToBytes length="

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string p1, ", maxLength="

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p0
.end method

.method static writeHeaderList(Ljava/util/List;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
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
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->writeInt(Ljava/io/OutputStream;I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Lcom/android/volley/Header;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/volley/Header;->getName()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v1}, Lcom/android/volley/toolbox/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/android/volley/Header;->getValue()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->writeString(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 42
    .line 43
    .line 44
    invoke-static {p1, p0}, Lcom/android/volley/toolbox/DiskBasedCache;->writeInt(Ljava/io/OutputStream;I)V

    .line 45
    :cond_1
    return-void
.end method

.method static writeInt(Ljava/io/OutputStream;I)V
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

.method static writeLong(Ljava/io/OutputStream;J)V
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

.method static writeString(Ljava/io/OutputStream;Ljava/lang/String;)V
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
    invoke-static {p0, v0, v1}, Lcom/android/volley/toolbox/DiskBasedCache;->writeLong(Ljava/io/OutputStream;J)V

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


# virtual methods
.method public declared-synchronized clear()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    array-length v2, v0

    .line 12
    move v3, v1

    .line 13
    .line 14
    :goto_0
    if-ge v3, v2, :cond_0

    .line 15
    .line 16
    aget-object v4, v0, v3

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 20
    .line 21
    add-int/lit8 v3, v3, 0x1

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 30
    .line 31
    const-wide/16 v2, 0x0

    .line 32
    .line 33
    iput-wide v2, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mTotalSize:J

    .line 34
    .line 35
    const-string v0, "Cache cleared."

    .line 36
    .line 37
    new-array v1, v1, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit p0

    .line 44
    throw v0
.end method

.method createInputStream(Ljava/io/File;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/io/FileInputStream;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6
    return-object v0
.end method

.method createOutputStream(Ljava/io/File;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/io/FileOutputStream;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 6
    return-object v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mEntries:Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    monitor-exit p0

    .line 14
    return-object v1

    .line 15
    .line 16
    .line 17
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    .line 18
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    const/4 v3, 0x2

    .line 20
    const/4 v4, 0x1

    .line 21
    const/4 v5, 0x0

    .line 22
    .line 23
    :try_start_2
    new-instance v6, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;

    .line 24
    .line 25
    new-instance v7, Ljava/io/BufferedInputStream;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v2}, Lcom/android/volley/toolbox/DiskBasedCache;->createInputStream(Ljava/io/File;)Ljava/io/InputStream;

    .line 29
    move-result-object v8

    .line 30
    .line 31
    .line 32
    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 36
    move-result-wide v8

    .line 37
    .line 38
    .line 39
    invoke-direct {v6, v7, v8, v9}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;-><init>(Ljava/io/InputStream;J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    .line 41
    .line 42
    :try_start_3
    invoke-static {v6}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->readHeader(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 43
    move-result-object v7

    .line 44
    .line 45
    iget-object v8, v7, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 49
    move-result v8

    .line 50
    .line 51
    if-nez v8, :cond_1

    .line 52
    .line 53
    const-string v0, "%s: key=%s, found=%s"

    .line 54
    const/4 v8, 0x3

    .line 55
    .line 56
    new-array v8, v8, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 60
    move-result-object v9

    .line 61
    .line 62
    aput-object v9, v8, v5

    .line 63
    .line 64
    aput-object p1, v8, v4

    .line 65
    .line 66
    iget-object v7, v7, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    .line 67
    .line 68
    aput-object v7, v8, v3

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v8}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->removeEntry(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 75
    .line 76
    .line 77
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    monitor-exit p0

    .line 79
    return-object v1

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    goto :goto_2

    .line 82
    :catch_0
    move-exception v0

    .line 83
    goto :goto_1

    .line 84
    :catchall_1
    move-exception v0

    .line 85
    goto :goto_0

    .line 86
    .line 87
    .line 88
    :cond_1
    :try_start_5
    invoke-virtual {v6}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;->bytesRemaining()J

    .line 89
    move-result-wide v7

    .line 90
    .line 91
    .line 92
    invoke-static {v6, v7, v8}, Lcom/android/volley/toolbox/DiskBasedCache;->streamToBytes(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;J)[B

    .line 93
    move-result-object v7

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v7}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->toCacheEntry([B)Lcom/android/volley/Cache$Entry;

    .line 97
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 98
    .line 99
    .line 100
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 101
    monitor-exit p0

    .line 102
    return-object v0

    .line 103
    .line 104
    .line 105
    :goto_0
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 106
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 107
    .line 108
    :goto_1
    :try_start_8
    const-string v6, "%s: %s"

    .line 109
    .line 110
    new-array v3, v3, [Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 114
    move-result-object v2

    .line 115
    .line 116
    aput-object v2, v3, v5

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    aput-object v0, v3, v4

    .line 123
    .line 124
    .line 125
    invoke-static {v6, v3}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->remove(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 129
    monitor-exit p0

    .line 130
    return-object v1

    .line 131
    :goto_2
    monitor-exit p0

    .line 132
    throw p1
.end method

.method public getFileForKey(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    return-object v0
.end method

.method public declared-synchronized initialize()V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string v0, "Unable to create cache dir %s"

    .line 21
    const/4 v2, 0x1

    .line 22
    .line 23
    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    aput-object v3, v2, v1

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v2}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_3

    .line 38
    :cond_0
    :goto_0
    monitor-exit p0

    .line 39
    return-void

    .line 40
    .line 41
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache;->mRootDirectory:Ljava/io/File;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 45
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :cond_2
    :try_start_2
    array-length v2, v0

    .line 51
    .line 52
    :goto_1
    if-ge v1, v2, :cond_3

    .line 53
    .line 54
    aget-object v3, v0, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    .line 56
    .line 57
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 58
    move-result-wide v4

    .line 59
    .line 60
    new-instance v6, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;

    .line 61
    .line 62
    new-instance v7, Ljava/io/BufferedInputStream;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v3}, Lcom/android/volley/toolbox/DiskBasedCache;->createInputStream(Ljava/io/File;)Ljava/io/InputStream;

    .line 66
    move-result-object v8

    .line 67
    .line 68
    .line 69
    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {v6, v7, v4, v5}, Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;-><init>(Ljava/io/InputStream;J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    .line 74
    .line 75
    :try_start_4
    invoke-static {v6}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->readHeader(Lcom/android/volley/toolbox/DiskBasedCache$CountingInputStream;)Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 76
    move-result-object v7

    .line 77
    .line 78
    iput-wide v4, v7, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->size:J

    .line 79
    .line 80
    iget-object v4, v7, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->key:Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, v4, v7}, Lcom/android/volley/toolbox/DiskBasedCache;->putEntry(Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 84
    .line 85
    .line 86
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 87
    goto :goto_2

    .line 88
    :catchall_1
    move-exception v4

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 92
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 93
    .line 94
    .line 95
    :catch_0
    :try_start_6
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 96
    .line 97
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    monitor-exit p0

    .line 100
    return-void

    .line 101
    :goto_3
    monitor-exit p0

    .line 102
    throw v0
.end method

.method public declared-synchronized invalidate(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->get(Ljava/lang/String;)Lcom/android/volley/Cache$Entry;

    .line 5
    move-result-object v0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iput-wide v1, v0, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    .line 20
    .line 21
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :goto_1
    monitor-exit p0

    .line 25
    throw p1
.end method

.method public declared-synchronized put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p2, Lcom/android/volley/Cache$Entry;->data:[B

    .line 4
    array-length v0, v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->pruneIfNeeded(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    .line 11
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/DiskBasedCache;->createOutputStream(Ljava/io/File;)Ljava/io/OutputStream;

    .line 19
    move-result-object v4

    .line 20
    .line 21
    .line 22
    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 23
    .line 24
    new-instance v4, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;

    .line 25
    .line 26
    .line 27
    invoke-direct {v4, p1, p2}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;-><init>(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v3}, Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;->writeHeader(Ljava/io/OutputStream;)Z

    .line 31
    move-result v5

    .line 32
    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    iget-object p2, p2, Lcom/android/volley/Cache$Entry;->data:[B

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, p2}, Ljava/io/OutputStream;->write([B)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p1, v4}, Lcom/android/volley/toolbox/DiskBasedCache;->putEntry(Ljava/lang/String;Lcom/android/volley/toolbox/DiskBasedCache$CacheHeader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 52
    .line 53
    const-string p1, "Failed to write header for %s"

    .line 54
    .line 55
    new-array p2, v2, [Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    aput-object v3, p2, v1

    .line 62
    .line 63
    .line 64
    invoke-static {p1, p2}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    new-instance p1, Ljava/io/IOException;

    .line 67
    .line 68
    .line 69
    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 70
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    .line 72
    .line 73
    :catch_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 74
    move-result p1

    .line 75
    .line 76
    if-nez p1, :cond_1

    .line 77
    .line 78
    const-string p1, "Could not clean up file %s"

    .line 79
    .line 80
    new-array p2, v2, [Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    aput-object v0, p2, v1

    .line 87
    .line 88
    .line 89
    invoke-static {p1, p2}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    :cond_1
    monitor-exit p0

    .line 91
    return-void

    .line 92
    :goto_0
    monitor-exit p0

    .line 93
    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    .line 5
    move-result-object v0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->removeEntry(Ljava/lang/String;)V

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string v0, "Could not delete cache entry for key=%s, filename=%s"

    .line 17
    const/4 v1, 0x2

    .line 18
    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    aput-object p1, v1, v2

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/DiskBasedCache;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    const/4 v2, 0x1

    .line 28
    .line 29
    aput-object p1, v1, v2

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit p0

    .line 39
    throw p1
.end method
