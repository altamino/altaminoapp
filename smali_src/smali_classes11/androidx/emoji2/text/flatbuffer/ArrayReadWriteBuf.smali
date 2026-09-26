.class public Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;


# instance fields
.field private buffer:[B

.field private writePos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    new-array p1, p1, [B

    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    const/4 p1, 0x0

    iput p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    iput p2, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    return-void
.end method


# virtual methods
.method public a(II)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1, p2}, Landroidx/emoji2/text/flatbuffer/Utf8Safe;->b([BII)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public get(I)B
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    .line 3
    .line 4
    aget-byte p1, v0, p1

    .line 5
    return p1
.end method

.method public getDouble(I)D
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->getLong(I)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public getFloat(I)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->getInt(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getInt(I)I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    .line 3
    .line 4
    add-int/lit8 v1, p1, 0x3

    .line 5
    .line 6
    aget-byte v1, v0, v1

    .line 7
    .line 8
    shl-int/lit8 v1, v1, 0x18

    .line 9
    .line 10
    add-int/lit8 v2, p1, 0x2

    .line 11
    .line 12
    aget-byte v2, v0, v2

    .line 13
    .line 14
    and-int/lit16 v2, v2, 0xff

    .line 15
    .line 16
    shl-int/lit8 v2, v2, 0x10

    .line 17
    or-int/2addr v1, v2

    .line 18
    .line 19
    add-int/lit8 v2, p1, 0x1

    .line 20
    .line 21
    aget-byte v2, v0, v2

    .line 22
    .line 23
    and-int/lit16 v2, v2, 0xff

    .line 24
    .line 25
    shl-int/lit8 v2, v2, 0x8

    .line 26
    or-int/2addr v1, v2

    .line 27
    .line 28
    aget-byte p1, v0, p1

    .line 29
    .line 30
    and-int/lit16 p1, p1, 0xff

    .line 31
    or-int/2addr p1, v1

    .line 32
    return p1
.end method

.method public getLong(I)J
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    .line 3
    .line 4
    add-int/lit8 v1, p1, 0x1

    .line 5
    .line 6
    aget-byte v2, v0, p1

    .line 7
    int-to-long v2, v2

    .line 8
    .line 9
    const-wide/16 v4, 0xff

    .line 10
    and-long/2addr v2, v4

    .line 11
    .line 12
    add-int/lit8 v6, p1, 0x2

    .line 13
    .line 14
    aget-byte v1, v0, v1

    .line 15
    int-to-long v7, v1

    .line 16
    and-long/2addr v7, v4

    .line 17
    .line 18
    const/16 v1, 0x8

    .line 19
    shl-long/2addr v7, v1

    .line 20
    .line 21
    or-long v1, v2, v7

    .line 22
    .line 23
    add-int/lit8 v3, p1, 0x3

    .line 24
    .line 25
    aget-byte v6, v0, v6

    .line 26
    int-to-long v6, v6

    .line 27
    and-long/2addr v6, v4

    .line 28
    .line 29
    const/16 v8, 0x10

    .line 30
    shl-long/2addr v6, v8

    .line 31
    or-long/2addr v1, v6

    .line 32
    .line 33
    add-int/lit8 v6, p1, 0x4

    .line 34
    .line 35
    aget-byte v3, v0, v3

    .line 36
    int-to-long v7, v3

    .line 37
    and-long/2addr v7, v4

    .line 38
    .line 39
    const/16 v3, 0x18

    .line 40
    shl-long/2addr v7, v3

    .line 41
    or-long/2addr v1, v7

    .line 42
    .line 43
    add-int/lit8 v3, p1, 0x5

    .line 44
    .line 45
    aget-byte v6, v0, v6

    .line 46
    int-to-long v6, v6

    .line 47
    and-long/2addr v6, v4

    .line 48
    .line 49
    const/16 v8, 0x20

    .line 50
    shl-long/2addr v6, v8

    .line 51
    or-long/2addr v1, v6

    .line 52
    .line 53
    add-int/lit8 v6, p1, 0x6

    .line 54
    .line 55
    aget-byte v3, v0, v3

    .line 56
    int-to-long v7, v3

    .line 57
    and-long/2addr v7, v4

    .line 58
    .line 59
    const/16 v3, 0x28

    .line 60
    shl-long/2addr v7, v3

    .line 61
    or-long/2addr v1, v7

    .line 62
    .line 63
    add-int/lit8 p1, p1, 0x7

    .line 64
    .line 65
    aget-byte v3, v0, v6

    .line 66
    int-to-long v6, v3

    .line 67
    .line 68
    and-long v3, v6, v4

    .line 69
    .line 70
    const/16 v5, 0x30

    .line 71
    shl-long/2addr v3, v5

    .line 72
    or-long/2addr v1, v3

    .line 73
    .line 74
    aget-byte p1, v0, p1

    .line 75
    int-to-long v3, p1

    .line 76
    .line 77
    const/16 p1, 0x38

    .line 78
    shl-long/2addr v3, p1

    .line 79
    .line 80
    or-long v0, v1, v3

    .line 81
    return-wide v0
.end method

.method public getShort(I)S
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    .line 3
    .line 4
    add-int/lit8 v1, p1, 0x1

    .line 5
    .line 6
    aget-byte v1, v0, v1

    .line 7
    .line 8
    shl-int/lit8 v1, v1, 0x8

    .line 9
    .line 10
    aget-byte p1, v0, p1

    .line 11
    .line 12
    and-int/lit16 p1, p1, 0xff

    .line 13
    or-int/2addr p1, v1

    .line 14
    int-to-short p1, p1

    .line 15
    return p1
.end method
