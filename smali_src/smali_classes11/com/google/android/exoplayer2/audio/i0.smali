.class public Lcom/google/android/exoplayer2/audio/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_SEEK_PRE_ROLL_SAMPLES:I = 0xf00

.field private static final FULL_CODEC_INITIALIZATION_DATA_BUFFER_COUNT:I = 0x3

.field public static final SAMPLE_RATE:I = 0xbb80


# direct methods
.method public static a([B)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/i0;->d([B)I

    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/i0;->e(J)J

    .line 9
    move-result-wide v0

    .line 10
    .line 11
    const-wide/16 v2, 0xf00

    .line 12
    .line 13
    .line 14
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/audio/i0;->e(J)J

    .line 15
    move-result-wide v2

    .line 16
    .line 17
    new-instance v4, Ljava/util/ArrayList;

    .line 18
    const/4 v5, 0x3

    .line 19
    .line 20
    .line 21
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/i0;->b(J)[B

    .line 28
    move-result-object p0

    .line 29
    .line 30
    .line 31
    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/audio/i0;->b(J)[B

    .line 35
    move-result-object p0

    .line 36
    .line 37
    .line 38
    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    return-object v4
.end method

.method private static b(J)[B
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static c([B)I
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x9

    .line 3
    .line 4
    aget-byte p0, p0, v0

    .line 5
    .line 6
    and-int/lit16 p0, p0, 0xff

    .line 7
    return p0
.end method

.method private static d([B)I
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0xb

    .line 3
    .line 4
    aget-byte v0, p0, v0

    .line 5
    .line 6
    and-int/lit16 v0, v0, 0xff

    .line 7
    .line 8
    shl-int/lit8 v0, v0, 0x8

    .line 9
    .line 10
    const/16 v1, 0xa

    .line 11
    .line 12
    aget-byte p0, p0, v1

    .line 13
    .line 14
    and-int/lit16 p0, p0, 0xff

    .line 15
    or-int/2addr p0, v0

    .line 16
    return p0
.end method

.method private static e(J)J
    .locals 2

    .line 1
    .line 2
    .line 3
    const-wide/32 v0, 0x3b9aca00

    .line 4
    mul-long/2addr p0, v0

    .line 5
    .line 6
    .line 7
    const-wide/32 v0, 0xbb80

    .line 8
    div-long/2addr p0, v0

    .line 9
    return-wide p0
.end method
