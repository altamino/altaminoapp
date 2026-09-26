.class final Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;
.super Landroidx/datastore/preferences/protobuf/BinaryWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/BinaryWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeDirectWriter"
.end annotation


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private limitMinusOne:I

.field private pos:I


# direct methods
.method private W()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->limitMinusOne:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private Y()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->m()Landroidx/datastore/preferences/protobuf/AllocatedBuffer;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->a0(Landroidx/datastore/preferences/protobuf/AllocatedBuffer;)V

    .line 8
    return-void
.end method

.method private Z(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->n(I)Landroidx/datastore/preferences/protobuf/AllocatedBuffer;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->a0(Landroidx/datastore/preferences/protobuf/AllocatedBuffer;)V

    .line 8
    return-void
.end method

.method private a0(Landroidx/datastore/preferences/protobuf/AllocatedBuffer;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/AllocatedBuffer;->d()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/AllocatedBuffer;->f()Ljava/nio/ByteBuffer;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->X()V

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter;->buffers:Ljava/util/ArrayDeque;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 25
    .line 26
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 30
    move-result p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 34
    .line 35
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 36
    const/4 v0, 0x0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 40
    .line 41
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 52
    move-result p1

    .line 53
    .line 54
    add-int/lit8 p1, p1, -0x1

    .line 55
    .line 56
    iput p1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->limitMinusOne:I

    .line 57
    .line 58
    iput p1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 59
    return-void

    .line 60
    .line 61
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 62
    .line 63
    const-string v0, "Allocator returned non-direct buffer"

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p1

    .line 68
    .line 69
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 70
    .line 71
    const-string v0, "Allocated buffer does not have NIO buffer"

    .line 72
    .line 73
    .line 74
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 75
    throw p1
.end method

.method private b0()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private e0(I)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, -0x1

    .line 7
    .line 8
    iput v2, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 9
    .line 10
    ushr-int/lit8 v2, p1, 0x1c

    .line 11
    int-to-byte v2, v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 17
    .line 18
    add-int/lit8 v1, v0, -0x4

    .line 19
    .line 20
    iput v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    add-int/lit8 v0, v0, -0x3

    .line 25
    .line 26
    ushr-int/lit8 v2, p1, 0x15

    .line 27
    .line 28
    and-int/lit8 v2, v2, 0x7f

    .line 29
    .line 30
    or-int/lit16 v2, v2, 0x80

    .line 31
    .line 32
    shl-int/lit8 v2, v2, 0x18

    .line 33
    .line 34
    ushr-int/lit8 v3, p1, 0xe

    .line 35
    .line 36
    and-int/lit8 v3, v3, 0x7f

    .line 37
    .line 38
    or-int/lit16 v3, v3, 0x80

    .line 39
    .line 40
    shl-int/lit8 v3, v3, 0x10

    .line 41
    or-int/2addr v2, v3

    .line 42
    .line 43
    ushr-int/lit8 v3, p1, 0x7

    .line 44
    .line 45
    and-int/lit8 v3, v3, 0x7f

    .line 46
    .line 47
    or-int/lit16 v3, v3, 0x80

    .line 48
    .line 49
    shl-int/lit8 v3, v3, 0x8

    .line 50
    or-int/2addr v2, v3

    .line 51
    .line 52
    and-int/lit8 p1, p1, 0x7f

    .line 53
    .line 54
    or-int/lit16 p1, p1, 0x80

    .line 55
    or-int/2addr p1, v2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v0, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 59
    return-void
.end method

.method private f0(I)V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, -0x4

    .line 5
    .line 6
    iput v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    add-int/lit8 v0, v0, -0x3

    .line 11
    .line 12
    const/high16 v2, 0xfe00000

    .line 13
    and-int/2addr v2, p1

    .line 14
    .line 15
    shl-int/lit8 v2, v2, 0x3

    .line 16
    .line 17
    .line 18
    const v3, 0x1fc000

    .line 19
    and-int/2addr v3, p1

    .line 20
    .line 21
    const/high16 v4, 0x200000

    .line 22
    or-int/2addr v3, v4

    .line 23
    .line 24
    shl-int/lit8 v3, v3, 0x2

    .line 25
    or-int/2addr v2, v3

    .line 26
    .line 27
    and-int/lit16 v3, p1, 0x3f80

    .line 28
    .line 29
    or-int/lit16 v3, v3, 0x4000

    .line 30
    .line 31
    shl-int/lit8 v3, v3, 0x1

    .line 32
    or-int/2addr v2, v3

    .line 33
    .line 34
    and-int/lit8 p1, p1, 0x7f

    .line 35
    .line 36
    or-int/lit16 p1, p1, 0x80

    .line 37
    or-int/2addr p1, v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 41
    return-void
.end method

.method private g0(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, -0x1

    .line 7
    .line 8
    iput v2, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 9
    int-to-byte p1, p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 13
    return-void
.end method

.method private h0(I)V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x3

    .line 5
    .line 6
    iput v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    const v2, 0x1fc000

    .line 12
    and-int/2addr v2, p1

    .line 13
    .line 14
    shl-int/lit8 v2, v2, 0xa

    .line 15
    .line 16
    and-int/lit16 v3, p1, 0x3f80

    .line 17
    .line 18
    or-int/lit16 v3, v3, 0x4000

    .line 19
    .line 20
    shl-int/lit8 v3, v3, 0x9

    .line 21
    or-int/2addr v2, v3

    .line 22
    .line 23
    and-int/lit8 p1, p1, 0x7f

    .line 24
    .line 25
    or-int/lit16 p1, p1, 0x80

    .line 26
    .line 27
    shl-int/lit8 p1, p1, 0x8

    .line 28
    or-int/2addr p1, v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 32
    return-void
.end method

.method private i0(I)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, -0x2

    .line 5
    .line 6
    iput v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    and-int/lit16 v2, p1, 0x3f80

    .line 13
    .line 14
    shl-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    and-int/lit8 p1, p1, 0x7f

    .line 17
    .line 18
    or-int/lit16 p1, p1, 0x80

    .line 19
    or-int/2addr p1, v2

    .line 20
    int-to-short p1, p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0, p1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 24
    return-void
.end method

.method private j0(J)V
    .locals 8

    .line 1
    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, -0x8

    .line 5
    .line 6
    iput v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 9
    const/4 v2, 0x7

    .line 10
    sub-int/2addr v0, v2

    .line 11
    .line 12
    const-wide/high16 v3, 0xfe000000000000L

    .line 13
    and-long/2addr v3, p1

    .line 14
    .line 15
    shl-long v2, v3, v2

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    const-wide v4, 0x1fc0000000000L

    .line 21
    and-long/2addr v4, p1

    .line 22
    .line 23
    const-wide/high16 v6, 0x2000000000000L

    .line 24
    or-long/2addr v4, v6

    .line 25
    const/4 v6, 0x6

    .line 26
    shl-long/2addr v4, v6

    .line 27
    or-long/2addr v2, v4

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    const-wide v4, 0x3f800000000L

    .line 33
    and-long/2addr v4, p1

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    const-wide v6, 0x40000000000L

    .line 39
    or-long/2addr v4, v6

    .line 40
    const/4 v6, 0x5

    .line 41
    shl-long/2addr v4, v6

    .line 42
    or-long/2addr v2, v4

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    const-wide v4, 0x7f0000000L

    .line 48
    and-long/2addr v4, p1

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    const-wide v6, 0x800000000L

    .line 54
    or-long/2addr v4, v6

    .line 55
    const/4 v6, 0x4

    .line 56
    shl-long/2addr v4, v6

    .line 57
    or-long/2addr v2, v4

    .line 58
    .line 59
    .line 60
    const-wide/32 v4, 0xfe00000

    .line 61
    and-long/2addr v4, p1

    .line 62
    .line 63
    .line 64
    const-wide/32 v6, 0x10000000

    .line 65
    or-long/2addr v4, v6

    .line 66
    const/4 v6, 0x3

    .line 67
    shl-long/2addr v4, v6

    .line 68
    or-long/2addr v2, v4

    .line 69
    .line 70
    .line 71
    const-wide/32 v4, 0x1fc000

    .line 72
    and-long/2addr v4, p1

    .line 73
    .line 74
    .line 75
    const-wide/32 v6, 0x200000

    .line 76
    or-long/2addr v4, v6

    .line 77
    const/4 v6, 0x2

    .line 78
    shl-long/2addr v4, v6

    .line 79
    or-long/2addr v2, v4

    .line 80
    .line 81
    const-wide/16 v4, 0x3f80

    .line 82
    and-long/2addr v4, p1

    .line 83
    .line 84
    const-wide/16 v6, 0x4000

    .line 85
    or-long/2addr v4, v6

    .line 86
    const/4 v6, 0x1

    .line 87
    shl-long/2addr v4, v6

    .line 88
    or-long/2addr v2, v4

    .line 89
    .line 90
    const-wide/16 v4, 0x7f

    .line 91
    and-long/2addr p1, v4

    .line 92
    .line 93
    const-wide/16 v4, 0x80

    .line 94
    or-long/2addr p1, v4

    .line 95
    or-long/2addr p1, v2

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 99
    return-void
.end method

.method private k0(J)V
    .locals 8

    .line 1
    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, -0x8

    .line 5
    .line 6
    iput v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 9
    const/4 v2, 0x7

    .line 10
    sub-int/2addr v0, v2

    .line 11
    .line 12
    const-wide/high16 v3, 0xfe000000000000L

    .line 13
    and-long/2addr v3, p1

    .line 14
    .line 15
    const-wide/high16 v5, 0x100000000000000L

    .line 16
    or-long/2addr v3, v5

    .line 17
    .line 18
    shl-long v2, v3, v2

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    const-wide v4, 0x1fc0000000000L

    .line 24
    and-long/2addr v4, p1

    .line 25
    .line 26
    const-wide/high16 v6, 0x2000000000000L

    .line 27
    or-long/2addr v4, v6

    .line 28
    const/4 v6, 0x6

    .line 29
    shl-long/2addr v4, v6

    .line 30
    or-long/2addr v2, v4

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    const-wide v4, 0x3f800000000L

    .line 36
    and-long/2addr v4, p1

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    const-wide v6, 0x40000000000L

    .line 42
    or-long/2addr v4, v6

    .line 43
    const/4 v6, 0x5

    .line 44
    shl-long/2addr v4, v6

    .line 45
    or-long/2addr v2, v4

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    const-wide v4, 0x7f0000000L

    .line 51
    and-long/2addr v4, p1

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    const-wide v6, 0x800000000L

    .line 57
    or-long/2addr v4, v6

    .line 58
    const/4 v6, 0x4

    .line 59
    shl-long/2addr v4, v6

    .line 60
    or-long/2addr v2, v4

    .line 61
    .line 62
    .line 63
    const-wide/32 v4, 0xfe00000

    .line 64
    and-long/2addr v4, p1

    .line 65
    .line 66
    .line 67
    const-wide/32 v6, 0x10000000

    .line 68
    or-long/2addr v4, v6

    .line 69
    const/4 v6, 0x3

    .line 70
    shl-long/2addr v4, v6

    .line 71
    or-long/2addr v2, v4

    .line 72
    .line 73
    .line 74
    const-wide/32 v4, 0x1fc000

    .line 75
    and-long/2addr v4, p1

    .line 76
    .line 77
    .line 78
    const-wide/32 v6, 0x200000

    .line 79
    or-long/2addr v4, v6

    .line 80
    const/4 v6, 0x2

    .line 81
    shl-long/2addr v4, v6

    .line 82
    or-long/2addr v2, v4

    .line 83
    .line 84
    const-wide/16 v4, 0x3f80

    .line 85
    and-long/2addr v4, p1

    .line 86
    .line 87
    const-wide/16 v6, 0x4000

    .line 88
    or-long/2addr v4, v6

    .line 89
    const/4 v6, 0x1

    .line 90
    shl-long/2addr v4, v6

    .line 91
    or-long/2addr v2, v4

    .line 92
    .line 93
    const-wide/16 v4, 0x7f

    .line 94
    and-long/2addr p1, v4

    .line 95
    .line 96
    const-wide/16 v4, 0x80

    .line 97
    or-long/2addr p1, v4

    .line 98
    or-long/2addr p1, v2

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 102
    return-void
.end method

.method private l0(J)V
    .locals 8

    .line 1
    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, -0x5

    .line 5
    .line 6
    iput v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    add-int/lit8 v0, v0, -0x7

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const-wide v2, 0x7f0000000L

    .line 16
    and-long/2addr v2, p1

    .line 17
    .line 18
    const/16 v4, 0x1c

    .line 19
    shl-long/2addr v2, v4

    .line 20
    .line 21
    .line 22
    const-wide/32 v4, 0xfe00000

    .line 23
    and-long/2addr v4, p1

    .line 24
    .line 25
    .line 26
    const-wide/32 v6, 0x10000000

    .line 27
    or-long/2addr v4, v6

    .line 28
    .line 29
    const/16 v6, 0x1b

    .line 30
    shl-long/2addr v4, v6

    .line 31
    or-long/2addr v2, v4

    .line 32
    .line 33
    .line 34
    const-wide/32 v4, 0x1fc000

    .line 35
    and-long/2addr v4, p1

    .line 36
    .line 37
    .line 38
    const-wide/32 v6, 0x200000

    .line 39
    or-long/2addr v4, v6

    .line 40
    .line 41
    const/16 v6, 0x1a

    .line 42
    shl-long/2addr v4, v6

    .line 43
    or-long/2addr v2, v4

    .line 44
    .line 45
    const-wide/16 v4, 0x3f80

    .line 46
    and-long/2addr v4, p1

    .line 47
    .line 48
    const-wide/16 v6, 0x4000

    .line 49
    or-long/2addr v4, v6

    .line 50
    .line 51
    const/16 v6, 0x19

    .line 52
    shl-long/2addr v4, v6

    .line 53
    or-long/2addr v2, v4

    .line 54
    .line 55
    const-wide/16 v4, 0x7f

    .line 56
    and-long/2addr p1, v4

    .line 57
    .line 58
    const-wide/16 v4, 0x80

    .line 59
    or-long/2addr p1, v4

    .line 60
    .line 61
    const/16 v4, 0x18

    .line 62
    shl-long/2addr p1, v4

    .line 63
    or-long/2addr p1, v2

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 67
    return-void
.end method

.method private m0(J)V
    .locals 0

    .line 1
    long-to-int p1, p1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->f0(I)V

    .line 5
    return-void
.end method

.method private n0(J)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, -0x1

    .line 7
    .line 8
    iput v2, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 9
    .line 10
    const/16 v2, 0x38

    .line 11
    .line 12
    ushr-long v2, p1, v2

    .line 13
    long-to-int v2, v2

    .line 14
    int-to-byte v2, v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const-wide v0, 0xffffffffffffffL

    .line 23
    and-long/2addr p1, v0

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->k0(J)V

    .line 27
    return-void
.end method

.method private o0(J)V
    .locals 0

    .line 1
    long-to-int p1, p1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->g0(I)V

    .line 5
    return-void
.end method

.method private p0(J)V
    .locals 8

    .line 1
    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x7

    .line 5
    .line 6
    iput v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const-wide v2, 0x1fc0000000000L

    .line 14
    and-long/2addr v2, p1

    .line 15
    .line 16
    const/16 v4, 0xe

    .line 17
    shl-long/2addr v2, v4

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const-wide v4, 0x3f800000000L

    .line 23
    and-long/2addr v4, p1

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    const-wide v6, 0x40000000000L

    .line 29
    or-long/2addr v4, v6

    .line 30
    .line 31
    const/16 v6, 0xd

    .line 32
    shl-long/2addr v4, v6

    .line 33
    or-long/2addr v2, v4

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    const-wide v4, 0x7f0000000L

    .line 39
    and-long/2addr v4, p1

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    const-wide v6, 0x800000000L

    .line 45
    or-long/2addr v4, v6

    .line 46
    .line 47
    const/16 v6, 0xc

    .line 48
    shl-long/2addr v4, v6

    .line 49
    or-long/2addr v2, v4

    .line 50
    .line 51
    .line 52
    const-wide/32 v4, 0xfe00000

    .line 53
    and-long/2addr v4, p1

    .line 54
    .line 55
    .line 56
    const-wide/32 v6, 0x10000000

    .line 57
    or-long/2addr v4, v6

    .line 58
    .line 59
    const/16 v6, 0xb

    .line 60
    shl-long/2addr v4, v6

    .line 61
    or-long/2addr v2, v4

    .line 62
    .line 63
    .line 64
    const-wide/32 v4, 0x1fc000

    .line 65
    and-long/2addr v4, p1

    .line 66
    .line 67
    .line 68
    const-wide/32 v6, 0x200000

    .line 69
    or-long/2addr v4, v6

    .line 70
    .line 71
    const/16 v6, 0xa

    .line 72
    shl-long/2addr v4, v6

    .line 73
    or-long/2addr v2, v4

    .line 74
    .line 75
    const-wide/16 v4, 0x3f80

    .line 76
    and-long/2addr v4, p1

    .line 77
    .line 78
    const-wide/16 v6, 0x4000

    .line 79
    or-long/2addr v4, v6

    .line 80
    .line 81
    const/16 v6, 0x9

    .line 82
    shl-long/2addr v4, v6

    .line 83
    or-long/2addr v2, v4

    .line 84
    .line 85
    const-wide/16 v4, 0x7f

    .line 86
    and-long/2addr p1, v4

    .line 87
    .line 88
    const-wide/16 v4, 0x80

    .line 89
    or-long/2addr p1, v4

    .line 90
    .line 91
    const/16 v4, 0x8

    .line 92
    shl-long/2addr p1, v4

    .line 93
    or-long/2addr p1, v2

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 97
    return-void
.end method

.method private q0(J)V
    .locals 8

    .line 1
    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, -0x6

    .line 5
    .line 6
    iput v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    add-int/lit8 v0, v0, -0x7

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const-wide v2, 0x3f800000000L

    .line 16
    and-long/2addr v2, p1

    .line 17
    .line 18
    const/16 v4, 0x15

    .line 19
    shl-long/2addr v2, v4

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    const-wide v4, 0x7f0000000L

    .line 25
    and-long/2addr v4, p1

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    const-wide v6, 0x800000000L

    .line 31
    or-long/2addr v4, v6

    .line 32
    .line 33
    const/16 v6, 0x14

    .line 34
    shl-long/2addr v4, v6

    .line 35
    or-long/2addr v2, v4

    .line 36
    .line 37
    .line 38
    const-wide/32 v4, 0xfe00000

    .line 39
    and-long/2addr v4, p1

    .line 40
    .line 41
    .line 42
    const-wide/32 v6, 0x10000000

    .line 43
    or-long/2addr v4, v6

    .line 44
    .line 45
    const/16 v6, 0x13

    .line 46
    shl-long/2addr v4, v6

    .line 47
    or-long/2addr v2, v4

    .line 48
    .line 49
    .line 50
    const-wide/32 v4, 0x1fc000

    .line 51
    and-long/2addr v4, p1

    .line 52
    .line 53
    .line 54
    const-wide/32 v6, 0x200000

    .line 55
    or-long/2addr v4, v6

    .line 56
    .line 57
    const/16 v6, 0x12

    .line 58
    shl-long/2addr v4, v6

    .line 59
    or-long/2addr v2, v4

    .line 60
    .line 61
    const-wide/16 v4, 0x3f80

    .line 62
    and-long/2addr v4, p1

    .line 63
    .line 64
    const-wide/16 v6, 0x4000

    .line 65
    or-long/2addr v4, v6

    .line 66
    .line 67
    const/16 v6, 0x11

    .line 68
    shl-long/2addr v4, v6

    .line 69
    or-long/2addr v2, v4

    .line 70
    .line 71
    const-wide/16 v4, 0x7f

    .line 72
    and-long/2addr p1, v4

    .line 73
    .line 74
    const-wide/16 v4, 0x80

    .line 75
    or-long/2addr p1, v4

    .line 76
    .line 77
    const/16 v4, 0x10

    .line 78
    shl-long/2addr p1, v4

    .line 79
    or-long/2addr p1, v2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 83
    return-void
.end method

.method private r0(J)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, -0x1

    .line 7
    .line 8
    iput v2, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 9
    .line 10
    const/16 v2, 0x3f

    .line 11
    .line 12
    ushr-long v2, p1, v2

    .line 13
    long-to-int v2, v2

    .line 14
    int-to-byte v2, v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 22
    .line 23
    add-int/lit8 v2, v1, -0x1

    .line 24
    .line 25
    iput v2, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 26
    .line 27
    const/16 v2, 0x38

    .line 28
    .line 29
    ushr-long v2, p1, v2

    .line 30
    .line 31
    const-wide/16 v4, 0x7f

    .line 32
    and-long/2addr v2, v4

    .line 33
    .line 34
    const-wide/16 v4, 0x80

    .line 35
    or-long/2addr v2, v4

    .line 36
    long-to-int v2, v2

    .line 37
    int-to-byte v2, v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    const-wide v0, 0xffffffffffffffL

    .line 46
    and-long/2addr p1, v0

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->k0(J)V

    .line 50
    return-void
.end method

.method private s0(J)V
    .locals 0

    .line 1
    long-to-int p1, p1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->h0(I)V

    .line 5
    return-void
.end method

.method private t0(J)V
    .locals 0

    .line 1
    long-to-int p1, p1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->i0(I)V

    .line 5
    return-void
.end method


# virtual methods
.method E(I)V
    .locals 2

    .line 1
    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->U(I)V

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    int-to-long v0, p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->V(J)V

    .line 11
    :goto_0
    return-void
.end method

.method J(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->i0(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->U(I)V

    .line 8
    return-void
.end method

.method M(J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->j0(J)J

    .line 4
    move-result-wide p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->V(J)V

    .line 8
    return-void
.end method

.method P(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/WireFormat;->c(II)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->U(I)V

    .line 8
    return-void
.end method

.method U(I)V
    .locals 1

    .line 1
    .line 2
    and-int/lit8 v0, p1, -0x80

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->g0(I)V

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    and-int/lit16 v0, p1, -0x4000

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->i0(I)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_1
    const/high16 v0, -0x200000

    .line 19
    and-int/2addr v0, p1

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->h0(I)V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_2
    const/high16 v0, -0x10000000

    .line 28
    and-int/2addr v0, p1

    .line 29
    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->f0(I)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_3
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->e0(I)V

    .line 38
    :goto_0
    return-void
.end method

.method V(J)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->j(J)B

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :pswitch_0
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->r0(J)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :pswitch_1
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->n0(J)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :pswitch_2
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->j0(J)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :pswitch_3
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->p0(J)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :pswitch_4
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->q0(J)V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :pswitch_5
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->l0(J)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :pswitch_6
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->m0(J)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :pswitch_7
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->s0(J)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :pswitch_8
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->t0(J)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :pswitch_9
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->o0(J)V

    .line 48
    :goto_0
    return-void

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method X()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter;->totalDoneBytes:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->W()I

    .line 10
    move-result v1

    .line 11
    add-int/2addr v0, v1

    .line 12
    .line 13
    iput v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter;->totalDoneBytes:I

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 23
    const/4 v0, 0x0

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 26
    const/4 v0, 0x0

    .line 27
    .line 28
    iput v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 29
    .line 30
    iput v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->limitMinusOne:I

    .line 31
    :cond_0
    return-void
.end method

.method public a(ILandroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p2, p0}, Landroidx/datastore/preferences/protobuf/ByteString;->N(Landroidx/datastore/preferences/protobuf/ByteOutput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->q(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    .line 12
    move-result p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->U(I)V

    .line 16
    const/4 p2, 0x2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->P(II)V

    .line 20
    return-void

    .line 21
    :catch_0
    move-exception p1

    .line 22
    .line 23
    new-instance p2, Ljava/lang/RuntimeException;

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    throw p2
.end method

.method public b(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->l()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p3, p2, p0}, Landroidx/datastore/preferences/protobuf/Schema;->a(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->l()I

    .line 11
    move-result p2

    .line 12
    sub-int/2addr p2, v0

    .line 13
    .line 14
    const/16 p3, 0xa

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->q(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->U(I)V

    .line 21
    const/4 p2, 0x2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->P(II)V

    .line 25
    return-void
.end method

.method public c0(B)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, -0x1

    .line 7
    .line 8
    iput v2, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 12
    return-void
.end method

.method d0(Ljava/lang/String;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->q(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    .line 15
    iget v2, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 16
    sub-int/2addr v2, v0

    .line 17
    .line 18
    iput v2, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 19
    .line 20
    :goto_0
    const/16 v2, 0x80

    .line 21
    .line 22
    if-ltz v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 26
    move-result v3

    .line 27
    .line 28
    if-ge v3, v2, :cond_0

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    iget v4, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 33
    add-int/2addr v4, v0

    .line 34
    int-to-byte v3, v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v4, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    add-int/lit8 v0, v0, -0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v3, -0x1

    .line 42
    .line 43
    if-ne v0, v3, :cond_1

    .line 44
    .line 45
    iget p1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 46
    sub-int/2addr p1, v1

    .line 47
    .line 48
    iput p1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 49
    return-void

    .line 50
    .line 51
    :cond_1
    iget v4, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 52
    add-int/2addr v4, v0

    .line 53
    .line 54
    iput v4, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 55
    .line 56
    :goto_1
    if-ltz v0, :cond_8

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 60
    move-result v4

    .line 61
    .line 62
    if-ge v4, v2, :cond_2

    .line 63
    .line 64
    iget v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 65
    .line 66
    if-ltz v5, :cond_2

    .line 67
    .line 68
    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 69
    .line 70
    add-int/lit8 v7, v5, -0x1

    .line 71
    .line 72
    iput v7, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 73
    int-to-byte v4, v4

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v5, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 77
    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :cond_2
    const/16 v5, 0x800

    .line 81
    .line 82
    if-ge v4, v5, :cond_3

    .line 83
    .line 84
    iget v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 85
    .line 86
    if-lez v5, :cond_3

    .line 87
    .line 88
    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 89
    .line 90
    add-int/lit8 v7, v5, -0x1

    .line 91
    .line 92
    iput v7, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 93
    .line 94
    and-int/lit8 v7, v4, 0x3f

    .line 95
    or-int/2addr v7, v2

    .line 96
    int-to-byte v7, v7

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6, v5, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 100
    .line 101
    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 102
    .line 103
    iget v6, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 104
    .line 105
    add-int/lit8 v7, v6, -0x1

    .line 106
    .line 107
    iput v7, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 108
    .line 109
    ushr-int/lit8 v4, v4, 0x6

    .line 110
    .line 111
    or-int/lit16 v4, v4, 0x3c0

    .line 112
    int-to-byte v4, v4

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, v6, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 116
    .line 117
    goto/16 :goto_2

    .line 118
    .line 119
    .line 120
    :cond_3
    const v5, 0xd800

    .line 121
    .line 122
    if-lt v4, v5, :cond_4

    .line 123
    .line 124
    .line 125
    const v5, 0xdfff

    .line 126
    .line 127
    if-ge v5, v4, :cond_5

    .line 128
    .line 129
    :cond_4
    iget v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 130
    .line 131
    if-le v5, v1, :cond_5

    .line 132
    .line 133
    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 134
    .line 135
    add-int/lit8 v7, v5, -0x1

    .line 136
    .line 137
    iput v7, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 138
    .line 139
    and-int/lit8 v7, v4, 0x3f

    .line 140
    or-int/2addr v7, v2

    .line 141
    int-to-byte v7, v7

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6, v5, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 145
    .line 146
    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 147
    .line 148
    iget v6, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 149
    .line 150
    add-int/lit8 v7, v6, -0x1

    .line 151
    .line 152
    iput v7, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 153
    .line 154
    ushr-int/lit8 v7, v4, 0x6

    .line 155
    .line 156
    and-int/lit8 v7, v7, 0x3f

    .line 157
    or-int/2addr v7, v2

    .line 158
    int-to-byte v7, v7

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5, v6, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 162
    .line 163
    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 164
    .line 165
    iget v6, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 166
    .line 167
    add-int/lit8 v7, v6, -0x1

    .line 168
    .line 169
    iput v7, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 170
    .line 171
    ushr-int/lit8 v4, v4, 0xc

    .line 172
    .line 173
    or-int/lit16 v4, v4, 0x1e0

    .line 174
    int-to-byte v4, v4

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5, v6, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 178
    goto :goto_2

    .line 179
    .line 180
    :cond_5
    iget v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 181
    const/4 v6, 0x2

    .line 182
    .line 183
    if-le v5, v6, :cond_7

    .line 184
    .line 185
    if-eqz v0, :cond_6

    .line 186
    .line 187
    add-int/lit8 v5, v0, -0x1

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 191
    move-result v5

    .line 192
    .line 193
    .line 194
    invoke-static {v5, v4}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 195
    move-result v6

    .line 196
    .line 197
    if-eqz v6, :cond_6

    .line 198
    .line 199
    add-int/lit8 v0, v0, -0x1

    .line 200
    .line 201
    .line 202
    invoke-static {v5, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    .line 203
    move-result v4

    .line 204
    .line 205
    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 206
    .line 207
    iget v6, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 208
    .line 209
    add-int/lit8 v7, v6, -0x1

    .line 210
    .line 211
    iput v7, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 212
    .line 213
    and-int/lit8 v7, v4, 0x3f

    .line 214
    or-int/2addr v7, v2

    .line 215
    int-to-byte v7, v7

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5, v6, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 219
    .line 220
    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 221
    .line 222
    iget v6, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 223
    .line 224
    add-int/lit8 v7, v6, -0x1

    .line 225
    .line 226
    iput v7, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 227
    .line 228
    ushr-int/lit8 v7, v4, 0x6

    .line 229
    .line 230
    and-int/lit8 v7, v7, 0x3f

    .line 231
    or-int/2addr v7, v2

    .line 232
    int-to-byte v7, v7

    .line 233
    .line 234
    .line 235
    invoke-virtual {v5, v6, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 236
    .line 237
    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 238
    .line 239
    iget v6, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 240
    .line 241
    add-int/lit8 v7, v6, -0x1

    .line 242
    .line 243
    iput v7, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 244
    .line 245
    ushr-int/lit8 v7, v4, 0xc

    .line 246
    .line 247
    and-int/lit8 v7, v7, 0x3f

    .line 248
    or-int/2addr v7, v2

    .line 249
    int-to-byte v7, v7

    .line 250
    .line 251
    .line 252
    invoke-virtual {v5, v6, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 253
    .line 254
    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 255
    .line 256
    iget v6, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 257
    .line 258
    add-int/lit8 v7, v6, -0x1

    .line 259
    .line 260
    iput v7, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 261
    .line 262
    ushr-int/lit8 v4, v4, 0x12

    .line 263
    .line 264
    or-int/lit16 v4, v4, 0xf0

    .line 265
    int-to-byte v4, v4

    .line 266
    .line 267
    .line 268
    invoke-virtual {v5, v6, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 269
    goto :goto_2

    .line 270
    .line 271
    :cond_6
    new-instance p1, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;

    .line 272
    .line 273
    add-int/lit8 v1, v0, -0x1

    .line 274
    .line 275
    .line 276
    invoke-direct {p1, v1, v0}, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    .line 277
    throw p1

    .line 278
    .line 279
    .line 280
    :cond_7
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->q(I)V

    .line 281
    .line 282
    add-int/lit8 v0, v0, 0x1

    .line 283
    :goto_2
    add-int/2addr v0, v3

    .line 284
    .line 285
    goto/16 :goto_1

    .line 286
    :cond_8
    return-void
.end method

.method public e(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->P(II)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p3, p2, p0}, Landroidx/datastore/preferences/protobuf/Schema;->a(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 8
    const/4 p2, 0x3

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->P(II)V

    .line 12
    return-void
.end method

.method public g([BII)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->b0()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ge v0, p3, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->Z(I)V

    .line 10
    .line 11
    :cond_0
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 12
    sub-int/2addr v0, p3

    .line 13
    .line 14
    iput v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 27
    return-void
.end method

.method public h(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->b0()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-ge v1, v0, :cond_0

    .line 11
    .line 12
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter;->totalDoneBytes:I

    .line 13
    add-int/2addr v1, v0

    .line 14
    .line 15
    iput v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter;->totalDoneBytes:I

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter;->buffers:Ljava/util/ArrayDeque;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/AllocatedBuffer;->i(Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/AllocatedBuffer;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->Y()V

    .line 28
    return-void

    .line 29
    .line 30
    :cond_0
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 31
    sub-int/2addr v1, v0

    .line 32
    .line 33
    iput v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 41
    .line 42
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 46
    return-void
.end method

.method public i([BII)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->b0()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ge v0, p3, :cond_0

    .line 7
    .line 8
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter;->totalDoneBytes:I

    .line 9
    add-int/2addr v0, p3

    .line 10
    .line 11
    iput v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter;->totalDoneBytes:I

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter;->buffers:Ljava/util/ArrayDeque;

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/AllocatedBuffer;->k([BII)Landroidx/datastore/preferences/protobuf/AllocatedBuffer;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->Y()V

    .line 24
    return-void

    .line 25
    .line 26
    :cond_0
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 27
    sub-int/2addr v0, p3

    .line 28
    .line 29
    iput v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 30
    .line 31
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 42
    return-void
.end method

.method public l()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter;->totalDoneBytes:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->W()I

    .line 6
    move-result v1

    .line 7
    add-int/2addr v0, v1

    .line 8
    return v0
.end method

.method q(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->b0()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ge v0, p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->Z(I)V

    .line 10
    :cond_0
    return-void
.end method

.method r(Z)V
    .locals 0

    .line 1
    int-to-byte p1, p1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->c0(B)V

    .line 5
    return-void
.end method

.method w(I)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, -0x4

    .line 5
    .line 6
    iput v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    add-int/lit8 v0, v0, -0x3

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 14
    return-void
.end method

.method public writeBool(IZ)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->q(I)V

    .line 5
    int-to-byte p2, p2

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->c0(B)V

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->P(II)V

    .line 13
    return-void
.end method

.method public writeEndGroup(I)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->P(II)V

    .line 5
    return-void
.end method

.method public writeFixed32(II)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x9

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->q(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->w(I)V

    .line 9
    const/4 p2, 0x5

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->P(II)V

    .line 13
    return-void
.end method

.method public writeFixed64(IJ)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0xd

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->q(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->z(J)V

    .line 9
    const/4 p2, 0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->P(II)V

    .line 13
    return-void
.end method

.method public writeInt32(II)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0xf

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->q(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->E(I)V

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->P(II)V

    .line 13
    return-void
.end method

.method public writeMessage(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->l()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Protobuf;->a()Landroidx/datastore/preferences/protobuf/Protobuf;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p2, p0}, Landroidx/datastore/preferences/protobuf/Protobuf;->f(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->l()I

    .line 15
    move-result p2

    .line 16
    sub-int/2addr p2, v0

    .line 17
    .line 18
    const/16 v0, 0xa

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->q(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->U(I)V

    .line 25
    const/4 p2, 0x2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->P(II)V

    .line 29
    return-void
.end method

.method public writeSInt32(II)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0xa

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->q(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->J(I)V

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->P(II)V

    .line 13
    return-void
.end method

.method public writeSInt64(IJ)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0xf

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->q(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->M(J)V

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->P(II)V

    .line 13
    return-void
.end method

.method public writeStartGroup(I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->P(II)V

    .line 5
    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->l()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->d0(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->l()I

    .line 11
    move-result p2

    .line 12
    sub-int/2addr p2, v0

    .line 13
    .line 14
    const/16 v0, 0xa

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->q(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->U(I)V

    .line 21
    const/4 p2, 0x2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->P(II)V

    .line 25
    return-void
.end method

.method public writeUInt32(II)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0xa

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->q(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->U(I)V

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->P(II)V

    .line 13
    return-void
.end method

.method public writeUInt64(IJ)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0xf

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->q(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->V(J)V

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->P(II)V

    .line 13
    return-void
.end method

.method z(J)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, -0x8

    .line 5
    .line 6
    iput v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->pos:I

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    add-int/lit8 v0, v0, -0x7

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 14
    return-void
.end method
