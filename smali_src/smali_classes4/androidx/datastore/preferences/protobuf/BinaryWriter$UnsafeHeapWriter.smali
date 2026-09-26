.class final Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;
.super Landroidx/datastore/preferences/protobuf/BinaryWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/BinaryWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeHeapWriter"
.end annotation


# instance fields
.field private allocatedBuffer:Landroidx/datastore/preferences/protobuf/AllocatedBuffer;

.field private buffer:[B

.field private limit:J

.field private limitMinusOne:J

.field private offset:J

.field private offsetMinusOne:J

.field private pos:J


# direct methods
.method private W()I
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    long-to-int v0, v0

    return v0
.end method

.method private Z()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->o()Landroidx/datastore/preferences/protobuf/AllocatedBuffer;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->b0(Landroidx/datastore/preferences/protobuf/AllocatedBuffer;)V

    .line 8
    return-void
.end method

.method private a0(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->p(I)Landroidx/datastore/preferences/protobuf/AllocatedBuffer;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->b0(Landroidx/datastore/preferences/protobuf/AllocatedBuffer;)V

    .line 8
    return-void
.end method

.method private b0(Landroidx/datastore/preferences/protobuf/AllocatedBuffer;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/AllocatedBuffer;->c()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->Y()V

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter;->buffers:Ljava/util/ArrayDeque;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 15
    .line 16
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->allocatedBuffer:Landroidx/datastore/preferences/protobuf/AllocatedBuffer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/AllocatedBuffer;->a()[B

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/AllocatedBuffer;->b()I

    .line 26
    move-result v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/AllocatedBuffer;->e()I

    .line 30
    move-result v1

    .line 31
    add-int/2addr v1, v0

    .line 32
    int-to-long v1, v1

    .line 33
    .line 34
    iput-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->limit:J

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/AllocatedBuffer;->g()I

    .line 38
    move-result p1

    .line 39
    add-int/2addr v0, p1

    .line 40
    int-to-long v0, v0

    .line 41
    .line 42
    iput-wide v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->offset:J

    .line 43
    .line 44
    const-wide/16 v2, 0x1

    .line 45
    sub-long/2addr v0, v2

    .line 46
    .line 47
    iput-wide v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->offsetMinusOne:J

    .line 48
    .line 49
    iget-wide v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->limit:J

    .line 50
    sub-long/2addr v0, v2

    .line 51
    .line 52
    iput-wide v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->limitMinusOne:J

    .line 53
    .line 54
    iput-wide v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 55
    return-void

    .line 56
    .line 57
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 58
    .line 59
    const-string v0, "Allocator returned non-heap buffer"

    .line 60
    .line 61
    .line 62
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p1
.end method

.method private f0(I)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 5
    .line 6
    const-wide/16 v3, 0x1

    .line 7
    .line 8
    sub-long v5, v1, v3

    .line 9
    .line 10
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 11
    .line 12
    ushr-int/lit8 v5, p1, 0x1c

    .line 13
    int-to-byte v5, v5

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 19
    .line 20
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 21
    .line 22
    sub-long v5, v1, v3

    .line 23
    .line 24
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 25
    .line 26
    ushr-int/lit8 v5, p1, 0x15

    .line 27
    .line 28
    and-int/lit8 v5, v5, 0x7f

    .line 29
    .line 30
    or-int/lit16 v5, v5, 0x80

    .line 31
    int-to-byte v5, v5

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 37
    .line 38
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 39
    .line 40
    sub-long v5, v1, v3

    .line 41
    .line 42
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 43
    .line 44
    ushr-int/lit8 v5, p1, 0xe

    .line 45
    .line 46
    and-int/lit8 v5, v5, 0x7f

    .line 47
    .line 48
    or-int/lit16 v5, v5, 0x80

    .line 49
    int-to-byte v5, v5

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 53
    .line 54
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 55
    .line 56
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 57
    .line 58
    sub-long v5, v1, v3

    .line 59
    .line 60
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 61
    .line 62
    ushr-int/lit8 v5, p1, 0x7

    .line 63
    .line 64
    and-int/lit8 v5, v5, 0x7f

    .line 65
    .line 66
    or-int/lit16 v5, v5, 0x80

    .line 67
    int-to-byte v5, v5

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 71
    .line 72
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 73
    .line 74
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 75
    .line 76
    sub-long v3, v1, v3

    .line 77
    .line 78
    iput-wide v3, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 79
    .line 80
    and-int/lit8 p1, p1, 0x7f

    .line 81
    .line 82
    or-int/lit16 p1, p1, 0x80

    .line 83
    int-to-byte p1, p1

    .line 84
    .line 85
    .line 86
    invoke-static {v0, v1, v2, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 87
    return-void
.end method

.method private g0(I)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 5
    .line 6
    const-wide/16 v3, 0x1

    .line 7
    .line 8
    sub-long v5, v1, v3

    .line 9
    .line 10
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 11
    .line 12
    ushr-int/lit8 v5, p1, 0x15

    .line 13
    int-to-byte v5, v5

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 19
    .line 20
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 21
    .line 22
    sub-long v5, v1, v3

    .line 23
    .line 24
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 25
    .line 26
    ushr-int/lit8 v5, p1, 0xe

    .line 27
    .line 28
    and-int/lit8 v5, v5, 0x7f

    .line 29
    .line 30
    or-int/lit16 v5, v5, 0x80

    .line 31
    int-to-byte v5, v5

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 37
    .line 38
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 39
    .line 40
    sub-long v5, v1, v3

    .line 41
    .line 42
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 43
    .line 44
    ushr-int/lit8 v5, p1, 0x7

    .line 45
    .line 46
    and-int/lit8 v5, v5, 0x7f

    .line 47
    .line 48
    or-int/lit16 v5, v5, 0x80

    .line 49
    int-to-byte v5, v5

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 53
    .line 54
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 55
    .line 56
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 57
    .line 58
    sub-long v3, v1, v3

    .line 59
    .line 60
    iput-wide v3, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 61
    .line 62
    and-int/lit8 p1, p1, 0x7f

    .line 63
    .line 64
    or-int/lit16 p1, p1, 0x80

    .line 65
    int-to-byte p1, p1

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v1, v2, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 69
    return-void
.end method

.method private h0(I)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 5
    .line 6
    const-wide/16 v3, 0x1

    .line 7
    .line 8
    sub-long v3, v1, v3

    .line 9
    .line 10
    iput-wide v3, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 11
    int-to-byte p1, p1

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, v2, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 15
    return-void
.end method

.method private i0(I)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 5
    .line 6
    const-wide/16 v3, 0x1

    .line 7
    .line 8
    sub-long v5, v1, v3

    .line 9
    .line 10
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 11
    .line 12
    ushr-int/lit8 v5, p1, 0xe

    .line 13
    int-to-byte v5, v5

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 19
    .line 20
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 21
    .line 22
    sub-long v5, v1, v3

    .line 23
    .line 24
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 25
    .line 26
    ushr-int/lit8 v5, p1, 0x7

    .line 27
    .line 28
    and-int/lit8 v5, v5, 0x7f

    .line 29
    .line 30
    or-int/lit16 v5, v5, 0x80

    .line 31
    int-to-byte v5, v5

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 37
    .line 38
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 39
    .line 40
    sub-long v3, v1, v3

    .line 41
    .line 42
    iput-wide v3, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 43
    .line 44
    and-int/lit8 p1, p1, 0x7f

    .line 45
    .line 46
    or-int/lit16 p1, p1, 0x80

    .line 47
    int-to-byte p1, p1

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1, v2, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 51
    return-void
.end method

.method private j0(I)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 5
    .line 6
    const-wide/16 v3, 0x1

    .line 7
    .line 8
    sub-long v5, v1, v3

    .line 9
    .line 10
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 11
    .line 12
    ushr-int/lit8 v5, p1, 0x7

    .line 13
    int-to-byte v5, v5

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 19
    .line 20
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 21
    .line 22
    sub-long v3, v1, v3

    .line 23
    .line 24
    iput-wide v3, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 25
    .line 26
    and-int/lit8 p1, p1, 0x7f

    .line 27
    .line 28
    or-int/lit16 p1, p1, 0x80

    .line 29
    int-to-byte p1, p1

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1, v2, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 33
    return-void
.end method

.method private k0(J)V
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 5
    .line 6
    const-wide/16 v3, 0x1

    .line 7
    .line 8
    sub-long v5, v1, v3

    .line 9
    .line 10
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 11
    .line 12
    const/16 v5, 0x31

    .line 13
    .line 14
    ushr-long v5, p1, v5

    .line 15
    long-to-int v5, v5

    .line 16
    int-to-byte v5, v5

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 22
    .line 23
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 24
    .line 25
    sub-long v5, v1, v3

    .line 26
    .line 27
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 28
    .line 29
    const/16 v5, 0x2a

    .line 30
    .line 31
    ushr-long v5, p1, v5

    .line 32
    .line 33
    const-wide/16 v7, 0x7f

    .line 34
    and-long/2addr v5, v7

    .line 35
    .line 36
    const-wide/16 v9, 0x80

    .line 37
    or-long/2addr v5, v9

    .line 38
    long-to-int v5, v5

    .line 39
    int-to-byte v5, v5

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 45
    .line 46
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 47
    .line 48
    sub-long v5, v1, v3

    .line 49
    .line 50
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 51
    .line 52
    const/16 v5, 0x23

    .line 53
    .line 54
    ushr-long v5, p1, v5

    .line 55
    and-long/2addr v5, v7

    .line 56
    or-long/2addr v5, v9

    .line 57
    long-to-int v5, v5

    .line 58
    int-to-byte v5, v5

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 62
    .line 63
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 64
    .line 65
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 66
    .line 67
    sub-long v5, v1, v3

    .line 68
    .line 69
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 70
    .line 71
    const/16 v5, 0x1c

    .line 72
    .line 73
    ushr-long v5, p1, v5

    .line 74
    and-long/2addr v5, v7

    .line 75
    or-long/2addr v5, v9

    .line 76
    long-to-int v5, v5

    .line 77
    int-to-byte v5, v5

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 81
    .line 82
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 83
    .line 84
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 85
    .line 86
    sub-long v5, v1, v3

    .line 87
    .line 88
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 89
    .line 90
    const/16 v5, 0x15

    .line 91
    .line 92
    ushr-long v5, p1, v5

    .line 93
    and-long/2addr v5, v7

    .line 94
    or-long/2addr v5, v9

    .line 95
    long-to-int v5, v5

    .line 96
    int-to-byte v5, v5

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 100
    .line 101
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 102
    .line 103
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 104
    .line 105
    sub-long v5, v1, v3

    .line 106
    .line 107
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 108
    .line 109
    const/16 v5, 0xe

    .line 110
    .line 111
    ushr-long v5, p1, v5

    .line 112
    and-long/2addr v5, v7

    .line 113
    or-long/2addr v5, v9

    .line 114
    long-to-int v5, v5

    .line 115
    int-to-byte v5, v5

    .line 116
    .line 117
    .line 118
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 119
    .line 120
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 121
    .line 122
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 123
    .line 124
    sub-long v5, v1, v3

    .line 125
    .line 126
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 127
    const/4 v5, 0x7

    .line 128
    .line 129
    ushr-long v5, p1, v5

    .line 130
    and-long/2addr v5, v7

    .line 131
    or-long/2addr v5, v9

    .line 132
    long-to-int v5, v5

    .line 133
    int-to-byte v5, v5

    .line 134
    .line 135
    .line 136
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 137
    .line 138
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 139
    .line 140
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 141
    .line 142
    sub-long v3, v1, v3

    .line 143
    .line 144
    iput-wide v3, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 145
    and-long/2addr p1, v7

    .line 146
    or-long/2addr p1, v9

    .line 147
    long-to-int p1, p1

    .line 148
    int-to-byte p1, p1

    .line 149
    .line 150
    .line 151
    invoke-static {v0, v1, v2, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 152
    return-void
.end method

.method private l0(J)V
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 5
    .line 6
    const-wide/16 v3, 0x1

    .line 7
    .line 8
    sub-long v5, v1, v3

    .line 9
    .line 10
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 11
    .line 12
    const/16 v5, 0x1c

    .line 13
    .line 14
    ushr-long v5, p1, v5

    .line 15
    long-to-int v5, v5

    .line 16
    int-to-byte v5, v5

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 22
    .line 23
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 24
    .line 25
    sub-long v5, v1, v3

    .line 26
    .line 27
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 28
    .line 29
    const/16 v5, 0x15

    .line 30
    .line 31
    ushr-long v5, p1, v5

    .line 32
    .line 33
    const-wide/16 v7, 0x7f

    .line 34
    and-long/2addr v5, v7

    .line 35
    .line 36
    const-wide/16 v9, 0x80

    .line 37
    or-long/2addr v5, v9

    .line 38
    long-to-int v5, v5

    .line 39
    int-to-byte v5, v5

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 45
    .line 46
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 47
    .line 48
    sub-long v5, v1, v3

    .line 49
    .line 50
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 51
    .line 52
    const/16 v5, 0xe

    .line 53
    .line 54
    ushr-long v5, p1, v5

    .line 55
    and-long/2addr v5, v7

    .line 56
    or-long/2addr v5, v9

    .line 57
    long-to-int v5, v5

    .line 58
    int-to-byte v5, v5

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 62
    .line 63
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 64
    .line 65
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 66
    .line 67
    sub-long v5, v1, v3

    .line 68
    .line 69
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 70
    const/4 v5, 0x7

    .line 71
    .line 72
    ushr-long v5, p1, v5

    .line 73
    and-long/2addr v5, v7

    .line 74
    or-long/2addr v5, v9

    .line 75
    long-to-int v5, v5

    .line 76
    int-to-byte v5, v5

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 80
    .line 81
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 82
    .line 83
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 84
    .line 85
    sub-long v3, v1, v3

    .line 86
    .line 87
    iput-wide v3, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 88
    and-long/2addr p1, v7

    .line 89
    or-long/2addr p1, v9

    .line 90
    long-to-int p1, p1

    .line 91
    int-to-byte p1, p1

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v1, v2, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 95
    return-void
.end method

.method private m0(J)V
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 5
    .line 6
    const-wide/16 v3, 0x1

    .line 7
    .line 8
    sub-long v5, v1, v3

    .line 9
    .line 10
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 11
    .line 12
    const/16 v5, 0x15

    .line 13
    .line 14
    ushr-long v5, p1, v5

    .line 15
    long-to-int v5, v5

    .line 16
    int-to-byte v5, v5

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 22
    .line 23
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 24
    .line 25
    sub-long v5, v1, v3

    .line 26
    .line 27
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 28
    .line 29
    const/16 v5, 0xe

    .line 30
    .line 31
    ushr-long v5, p1, v5

    .line 32
    .line 33
    const-wide/16 v7, 0x7f

    .line 34
    and-long/2addr v5, v7

    .line 35
    .line 36
    const-wide/16 v9, 0x80

    .line 37
    or-long/2addr v5, v9

    .line 38
    long-to-int v5, v5

    .line 39
    int-to-byte v5, v5

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 45
    .line 46
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 47
    .line 48
    sub-long v5, v1, v3

    .line 49
    .line 50
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 51
    const/4 v5, 0x7

    .line 52
    .line 53
    ushr-long v5, p1, v5

    .line 54
    and-long/2addr v5, v7

    .line 55
    or-long/2addr v5, v9

    .line 56
    long-to-int v5, v5

    .line 57
    int-to-byte v5, v5

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 61
    .line 62
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 63
    .line 64
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 65
    .line 66
    sub-long v3, v1, v3

    .line 67
    .line 68
    iput-wide v3, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 69
    and-long/2addr p1, v7

    .line 70
    or-long/2addr p1, v9

    .line 71
    long-to-int p1, p1

    .line 72
    int-to-byte p1, p1

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v1, v2, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 76
    return-void
.end method

.method private n0(J)V
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 5
    .line 6
    const-wide/16 v3, 0x1

    .line 7
    .line 8
    sub-long v5, v1, v3

    .line 9
    .line 10
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 11
    .line 12
    const/16 v5, 0x38

    .line 13
    .line 14
    ushr-long v5, p1, v5

    .line 15
    long-to-int v5, v5

    .line 16
    int-to-byte v5, v5

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 22
    .line 23
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 24
    .line 25
    sub-long v5, v1, v3

    .line 26
    .line 27
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 28
    .line 29
    const/16 v5, 0x31

    .line 30
    .line 31
    ushr-long v5, p1, v5

    .line 32
    .line 33
    const-wide/16 v7, 0x7f

    .line 34
    and-long/2addr v5, v7

    .line 35
    .line 36
    const-wide/16 v9, 0x80

    .line 37
    or-long/2addr v5, v9

    .line 38
    long-to-int v5, v5

    .line 39
    int-to-byte v5, v5

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 45
    .line 46
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 47
    .line 48
    sub-long v5, v1, v3

    .line 49
    .line 50
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 51
    .line 52
    const/16 v5, 0x2a

    .line 53
    .line 54
    ushr-long v5, p1, v5

    .line 55
    and-long/2addr v5, v7

    .line 56
    or-long/2addr v5, v9

    .line 57
    long-to-int v5, v5

    .line 58
    int-to-byte v5, v5

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 62
    .line 63
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 64
    .line 65
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 66
    .line 67
    sub-long v5, v1, v3

    .line 68
    .line 69
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 70
    .line 71
    const/16 v5, 0x23

    .line 72
    .line 73
    ushr-long v5, p1, v5

    .line 74
    and-long/2addr v5, v7

    .line 75
    or-long/2addr v5, v9

    .line 76
    long-to-int v5, v5

    .line 77
    int-to-byte v5, v5

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 81
    .line 82
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 83
    .line 84
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 85
    .line 86
    sub-long v5, v1, v3

    .line 87
    .line 88
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 89
    .line 90
    const/16 v5, 0x1c

    .line 91
    .line 92
    ushr-long v5, p1, v5

    .line 93
    and-long/2addr v5, v7

    .line 94
    or-long/2addr v5, v9

    .line 95
    long-to-int v5, v5

    .line 96
    int-to-byte v5, v5

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 100
    .line 101
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 102
    .line 103
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 104
    .line 105
    sub-long v5, v1, v3

    .line 106
    .line 107
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 108
    .line 109
    const/16 v5, 0x15

    .line 110
    .line 111
    ushr-long v5, p1, v5

    .line 112
    and-long/2addr v5, v7

    .line 113
    or-long/2addr v5, v9

    .line 114
    long-to-int v5, v5

    .line 115
    int-to-byte v5, v5

    .line 116
    .line 117
    .line 118
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 119
    .line 120
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 121
    .line 122
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 123
    .line 124
    sub-long v5, v1, v3

    .line 125
    .line 126
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 127
    .line 128
    const/16 v5, 0xe

    .line 129
    .line 130
    ushr-long v5, p1, v5

    .line 131
    and-long/2addr v5, v7

    .line 132
    or-long/2addr v5, v9

    .line 133
    long-to-int v5, v5

    .line 134
    int-to-byte v5, v5

    .line 135
    .line 136
    .line 137
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 138
    .line 139
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 140
    .line 141
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 142
    .line 143
    sub-long v5, v1, v3

    .line 144
    .line 145
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 146
    const/4 v5, 0x7

    .line 147
    .line 148
    ushr-long v5, p1, v5

    .line 149
    and-long/2addr v5, v7

    .line 150
    or-long/2addr v5, v9

    .line 151
    long-to-int v5, v5

    .line 152
    int-to-byte v5, v5

    .line 153
    .line 154
    .line 155
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 156
    .line 157
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 158
    .line 159
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 160
    .line 161
    sub-long v3, v1, v3

    .line 162
    .line 163
    iput-wide v3, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 164
    and-long/2addr p1, v7

    .line 165
    or-long/2addr p1, v9

    .line 166
    long-to-int p1, p1

    .line 167
    int-to-byte p1, p1

    .line 168
    .line 169
    .line 170
    invoke-static {v0, v1, v2, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 171
    return-void
.end method

.method private o0(J)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 5
    .line 6
    const-wide/16 v3, 0x1

    .line 7
    .line 8
    sub-long v3, v1, v3

    .line 9
    .line 10
    iput-wide v3, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 11
    long-to-int p1, p1

    .line 12
    int-to-byte p1, p1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, v2, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 16
    return-void
.end method

.method private p0(J)V
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 5
    .line 6
    const-wide/16 v3, 0x1

    .line 7
    .line 8
    sub-long v5, v1, v3

    .line 9
    .line 10
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 11
    .line 12
    const/16 v5, 0x2a

    .line 13
    .line 14
    ushr-long v5, p1, v5

    .line 15
    long-to-int v5, v5

    .line 16
    int-to-byte v5, v5

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 22
    .line 23
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 24
    .line 25
    sub-long v5, v1, v3

    .line 26
    .line 27
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 28
    .line 29
    const/16 v5, 0x23

    .line 30
    .line 31
    ushr-long v5, p1, v5

    .line 32
    .line 33
    const-wide/16 v7, 0x7f

    .line 34
    and-long/2addr v5, v7

    .line 35
    .line 36
    const-wide/16 v9, 0x80

    .line 37
    or-long/2addr v5, v9

    .line 38
    long-to-int v5, v5

    .line 39
    int-to-byte v5, v5

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 45
    .line 46
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 47
    .line 48
    sub-long v5, v1, v3

    .line 49
    .line 50
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 51
    .line 52
    const/16 v5, 0x1c

    .line 53
    .line 54
    ushr-long v5, p1, v5

    .line 55
    and-long/2addr v5, v7

    .line 56
    or-long/2addr v5, v9

    .line 57
    long-to-int v5, v5

    .line 58
    int-to-byte v5, v5

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 62
    .line 63
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 64
    .line 65
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 66
    .line 67
    sub-long v5, v1, v3

    .line 68
    .line 69
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 70
    .line 71
    const/16 v5, 0x15

    .line 72
    .line 73
    ushr-long v5, p1, v5

    .line 74
    and-long/2addr v5, v7

    .line 75
    or-long/2addr v5, v9

    .line 76
    long-to-int v5, v5

    .line 77
    int-to-byte v5, v5

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 81
    .line 82
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 83
    .line 84
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 85
    .line 86
    sub-long v5, v1, v3

    .line 87
    .line 88
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 89
    .line 90
    const/16 v5, 0xe

    .line 91
    .line 92
    ushr-long v5, p1, v5

    .line 93
    and-long/2addr v5, v7

    .line 94
    or-long/2addr v5, v9

    .line 95
    long-to-int v5, v5

    .line 96
    int-to-byte v5, v5

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 100
    .line 101
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 102
    .line 103
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 104
    .line 105
    sub-long v5, v1, v3

    .line 106
    .line 107
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 108
    const/4 v5, 0x7

    .line 109
    .line 110
    ushr-long v5, p1, v5

    .line 111
    and-long/2addr v5, v7

    .line 112
    or-long/2addr v5, v9

    .line 113
    long-to-int v5, v5

    .line 114
    int-to-byte v5, v5

    .line 115
    .line 116
    .line 117
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 118
    .line 119
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 120
    .line 121
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 122
    .line 123
    sub-long v3, v1, v3

    .line 124
    .line 125
    iput-wide v3, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 126
    and-long/2addr p1, v7

    .line 127
    or-long/2addr p1, v9

    .line 128
    long-to-int p1, p1

    .line 129
    int-to-byte p1, p1

    .line 130
    .line 131
    .line 132
    invoke-static {v0, v1, v2, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 133
    return-void
.end method

.method private q0(J)V
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 5
    .line 6
    const-wide/16 v3, 0x1

    .line 7
    .line 8
    sub-long v5, v1, v3

    .line 9
    .line 10
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 11
    .line 12
    const/16 v5, 0x23

    .line 13
    .line 14
    ushr-long v5, p1, v5

    .line 15
    long-to-int v5, v5

    .line 16
    int-to-byte v5, v5

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 22
    .line 23
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 24
    .line 25
    sub-long v5, v1, v3

    .line 26
    .line 27
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 28
    .line 29
    const/16 v5, 0x1c

    .line 30
    .line 31
    ushr-long v5, p1, v5

    .line 32
    .line 33
    const-wide/16 v7, 0x7f

    .line 34
    and-long/2addr v5, v7

    .line 35
    .line 36
    const-wide/16 v9, 0x80

    .line 37
    or-long/2addr v5, v9

    .line 38
    long-to-int v5, v5

    .line 39
    int-to-byte v5, v5

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 45
    .line 46
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 47
    .line 48
    sub-long v5, v1, v3

    .line 49
    .line 50
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 51
    .line 52
    const/16 v5, 0x15

    .line 53
    .line 54
    ushr-long v5, p1, v5

    .line 55
    and-long/2addr v5, v7

    .line 56
    or-long/2addr v5, v9

    .line 57
    long-to-int v5, v5

    .line 58
    int-to-byte v5, v5

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 62
    .line 63
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 64
    .line 65
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 66
    .line 67
    sub-long v5, v1, v3

    .line 68
    .line 69
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 70
    .line 71
    const/16 v5, 0xe

    .line 72
    .line 73
    ushr-long v5, p1, v5

    .line 74
    and-long/2addr v5, v7

    .line 75
    or-long/2addr v5, v9

    .line 76
    long-to-int v5, v5

    .line 77
    int-to-byte v5, v5

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 81
    .line 82
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 83
    .line 84
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 85
    .line 86
    sub-long v5, v1, v3

    .line 87
    .line 88
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 89
    const/4 v5, 0x7

    .line 90
    .line 91
    ushr-long v5, p1, v5

    .line 92
    and-long/2addr v5, v7

    .line 93
    or-long/2addr v5, v9

    .line 94
    long-to-int v5, v5

    .line 95
    int-to-byte v5, v5

    .line 96
    .line 97
    .line 98
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 99
    .line 100
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 101
    .line 102
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 103
    .line 104
    sub-long v3, v1, v3

    .line 105
    .line 106
    iput-wide v3, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 107
    and-long/2addr p1, v7

    .line 108
    or-long/2addr p1, v9

    .line 109
    long-to-int p1, p1

    .line 110
    int-to-byte p1, p1

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v1, v2, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 114
    return-void
.end method

.method private r0(J)V
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 5
    .line 6
    const-wide/16 v3, 0x1

    .line 7
    .line 8
    sub-long v5, v1, v3

    .line 9
    .line 10
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 11
    .line 12
    const/16 v5, 0x3f

    .line 13
    .line 14
    ushr-long v5, p1, v5

    .line 15
    long-to-int v5, v5

    .line 16
    int-to-byte v5, v5

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 22
    .line 23
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 24
    .line 25
    sub-long v5, v1, v3

    .line 26
    .line 27
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 28
    .line 29
    const/16 v5, 0x38

    .line 30
    .line 31
    ushr-long v5, p1, v5

    .line 32
    .line 33
    const-wide/16 v7, 0x7f

    .line 34
    and-long/2addr v5, v7

    .line 35
    .line 36
    const-wide/16 v9, 0x80

    .line 37
    or-long/2addr v5, v9

    .line 38
    long-to-int v5, v5

    .line 39
    int-to-byte v5, v5

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 45
    .line 46
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 47
    .line 48
    sub-long v5, v1, v3

    .line 49
    .line 50
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 51
    .line 52
    const/16 v5, 0x31

    .line 53
    .line 54
    ushr-long v5, p1, v5

    .line 55
    and-long/2addr v5, v7

    .line 56
    or-long/2addr v5, v9

    .line 57
    long-to-int v5, v5

    .line 58
    int-to-byte v5, v5

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 62
    .line 63
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 64
    .line 65
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 66
    .line 67
    sub-long v5, v1, v3

    .line 68
    .line 69
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 70
    .line 71
    const/16 v5, 0x2a

    .line 72
    .line 73
    ushr-long v5, p1, v5

    .line 74
    and-long/2addr v5, v7

    .line 75
    or-long/2addr v5, v9

    .line 76
    long-to-int v5, v5

    .line 77
    int-to-byte v5, v5

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 81
    .line 82
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 83
    .line 84
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 85
    .line 86
    sub-long v5, v1, v3

    .line 87
    .line 88
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 89
    .line 90
    const/16 v5, 0x23

    .line 91
    .line 92
    ushr-long v5, p1, v5

    .line 93
    and-long/2addr v5, v7

    .line 94
    or-long/2addr v5, v9

    .line 95
    long-to-int v5, v5

    .line 96
    int-to-byte v5, v5

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 100
    .line 101
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 102
    .line 103
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 104
    .line 105
    sub-long v5, v1, v3

    .line 106
    .line 107
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 108
    .line 109
    const/16 v5, 0x1c

    .line 110
    .line 111
    ushr-long v5, p1, v5

    .line 112
    and-long/2addr v5, v7

    .line 113
    or-long/2addr v5, v9

    .line 114
    long-to-int v5, v5

    .line 115
    int-to-byte v5, v5

    .line 116
    .line 117
    .line 118
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 119
    .line 120
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 121
    .line 122
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 123
    .line 124
    sub-long v5, v1, v3

    .line 125
    .line 126
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 127
    .line 128
    const/16 v5, 0x15

    .line 129
    .line 130
    ushr-long v5, p1, v5

    .line 131
    and-long/2addr v5, v7

    .line 132
    or-long/2addr v5, v9

    .line 133
    long-to-int v5, v5

    .line 134
    int-to-byte v5, v5

    .line 135
    .line 136
    .line 137
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 138
    .line 139
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 140
    .line 141
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 142
    .line 143
    sub-long v5, v1, v3

    .line 144
    .line 145
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 146
    .line 147
    const/16 v5, 0xe

    .line 148
    .line 149
    ushr-long v5, p1, v5

    .line 150
    and-long/2addr v5, v7

    .line 151
    or-long/2addr v5, v9

    .line 152
    long-to-int v5, v5

    .line 153
    int-to-byte v5, v5

    .line 154
    .line 155
    .line 156
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 157
    .line 158
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 159
    .line 160
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 161
    .line 162
    sub-long v5, v1, v3

    .line 163
    .line 164
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 165
    const/4 v5, 0x7

    .line 166
    .line 167
    ushr-long v5, p1, v5

    .line 168
    and-long/2addr v5, v7

    .line 169
    or-long/2addr v5, v9

    .line 170
    long-to-int v5, v5

    .line 171
    int-to-byte v5, v5

    .line 172
    .line 173
    .line 174
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 175
    .line 176
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 177
    .line 178
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 179
    .line 180
    sub-long v3, v1, v3

    .line 181
    .line 182
    iput-wide v3, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 183
    and-long/2addr p1, v7

    .line 184
    or-long/2addr p1, v9

    .line 185
    long-to-int p1, p1

    .line 186
    int-to-byte p1, p1

    .line 187
    .line 188
    .line 189
    invoke-static {v0, v1, v2, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 190
    return-void
.end method

.method private s0(J)V
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 5
    .line 6
    const-wide/16 v3, 0x1

    .line 7
    .line 8
    sub-long v5, v1, v3

    .line 9
    .line 10
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 11
    long-to-int v5, p1

    .line 12
    .line 13
    ushr-int/lit8 v5, v5, 0xe

    .line 14
    int-to-byte v5, v5

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 20
    .line 21
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 22
    .line 23
    sub-long v5, v1, v3

    .line 24
    .line 25
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 26
    const/4 v5, 0x7

    .line 27
    .line 28
    ushr-long v5, p1, v5

    .line 29
    .line 30
    const-wide/16 v7, 0x7f

    .line 31
    and-long/2addr v5, v7

    .line 32
    .line 33
    const-wide/16 v9, 0x80

    .line 34
    or-long/2addr v5, v9

    .line 35
    long-to-int v5, v5

    .line 36
    int-to-byte v5, v5

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 40
    .line 41
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 42
    .line 43
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 44
    .line 45
    sub-long v3, v1, v3

    .line 46
    .line 47
    iput-wide v3, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 48
    and-long/2addr p1, v7

    .line 49
    or-long/2addr p1, v9

    .line 50
    long-to-int p1, p1

    .line 51
    int-to-byte p1, p1

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1, v2, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 55
    return-void
.end method

.method private t0(J)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 5
    .line 6
    const-wide/16 v3, 0x1

    .line 7
    .line 8
    sub-long v5, v1, v3

    .line 9
    .line 10
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 11
    const/4 v5, 0x7

    .line 12
    .line 13
    ushr-long v5, p1, v5

    .line 14
    long-to-int v5, v5

    .line 15
    int-to-byte v5, v5

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 21
    .line 22
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 23
    .line 24
    sub-long v3, v1, v3

    .line 25
    .line 26
    iput-wide v3, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 27
    long-to-int p1, p1

    .line 28
    .line 29
    and-int/lit8 p1, p1, 0x7f

    .line 30
    .line 31
    or-int/lit16 p1, p1, 0x80

    .line 32
    int-to-byte p1, p1

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1, v2, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 36
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
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->U(I)V

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    int-to-long v0, p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->V(J)V

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
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->U(I)V

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
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->V(J)V

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
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->U(I)V

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
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->h0(I)V

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
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->j0(I)V

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
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->i0(I)V

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
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->g0(I)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_3
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->f0(I)V

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
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->r0(J)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :pswitch_1
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->n0(J)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :pswitch_2
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->k0(J)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :pswitch_3
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->p0(J)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :pswitch_4
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->q0(J)V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :pswitch_5
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->l0(J)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :pswitch_6
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->m0(J)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :pswitch_7
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->s0(J)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :pswitch_8
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->t0(J)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :pswitch_9
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->o0(J)V

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

.method X()I
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->limitMinusOne:J

    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method Y()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->allocatedBuffer:Landroidx/datastore/preferences/protobuf/AllocatedBuffer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter;->totalDoneBytes:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->X()I

    .line 10
    move-result v1

    .line 11
    add-int/2addr v0, v1

    .line 12
    .line 13
    iput v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter;->totalDoneBytes:I

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->allocatedBuffer:Landroidx/datastore/preferences/protobuf/AllocatedBuffer;

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->W()I

    .line 19
    move-result v1

    .line 20
    .line 21
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->allocatedBuffer:Landroidx/datastore/preferences/protobuf/AllocatedBuffer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/AllocatedBuffer;->b()I

    .line 25
    move-result v2

    .line 26
    sub-int/2addr v1, v2

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/AllocatedBuffer;->h(I)Landroidx/datastore/preferences/protobuf/AllocatedBuffer;

    .line 32
    const/4 v0, 0x0

    .line 33
    .line 34
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->allocatedBuffer:Landroidx/datastore/preferences/protobuf/AllocatedBuffer;

    .line 35
    .line 36
    const-wide/16 v0, 0x0

    .line 37
    .line 38
    iput-wide v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 39
    .line 40
    iput-wide v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->limitMinusOne:J

    .line 41
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
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->q(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    .line 12
    move-result p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->U(I)V

    .line 16
    const/4 p2, 0x2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->P(II)V

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
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->l()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p3, p2, p0}, Landroidx/datastore/preferences/protobuf/Schema;->a(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->l()I

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
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->q(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->U(I)V

    .line 21
    const/4 p2, 0x2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->P(II)V

    .line 25
    return-void
.end method

.method c0()I
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    iget-wide v2, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->offsetMinusOne:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public d0(B)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 5
    .line 6
    const-wide/16 v3, 0x1

    .line 7
    .line 8
    sub-long v3, v1, v3

    .line 9
    .line 10
    iput-wide v3, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, v2, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 14
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
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->P(II)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p3, p2, p0}, Landroidx/datastore/preferences/protobuf/Schema;->a(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 8
    const/4 p2, 0x3

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->P(II)V

    .line 12
    return-void
.end method

.method e0(Ljava/lang/String;)V
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->q(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    move-result v0

    .line 12
    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    :goto_0
    const/16 v1, 0x80

    .line 16
    .line 17
    const-wide/16 v2, 0x1

    .line 18
    .line 19
    if-ltz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 23
    move-result v4

    .line 24
    .line 25
    if-ge v4, v1, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 28
    .line 29
    iget-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 30
    .line 31
    sub-long v2, v5, v2

    .line 32
    .line 33
    iput-wide v2, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 34
    int-to-byte v2, v4

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v5, v6, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 38
    .line 39
    add-int/lit8 v0, v0, -0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v4, -0x1

    .line 42
    .line 43
    if-ne v0, v4, :cond_1

    .line 44
    return-void

    .line 45
    .line 46
    :cond_1
    :goto_1
    if-ltz v0, :cond_8

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 50
    move-result v5

    .line 51
    .line 52
    if-ge v5, v1, :cond_2

    .line 53
    .line 54
    iget-wide v6, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 55
    .line 56
    iget-wide v8, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->offsetMinusOne:J

    .line 57
    .line 58
    cmp-long v8, v6, v8

    .line 59
    .line 60
    if-lez v8, :cond_2

    .line 61
    .line 62
    iget-object v8, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 63
    .line 64
    sub-long v9, v6, v2

    .line 65
    .line 66
    iput-wide v9, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 67
    int-to-byte v5, v5

    .line 68
    .line 69
    .line 70
    invoke-static {v8, v6, v7, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 71
    .line 72
    goto/16 :goto_2

    .line 73
    .line 74
    :cond_2
    const/16 v6, 0x800

    .line 75
    .line 76
    if-ge v5, v6, :cond_3

    .line 77
    .line 78
    iget-wide v6, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 79
    .line 80
    iget-wide v8, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->offset:J

    .line 81
    .line 82
    cmp-long v8, v6, v8

    .line 83
    .line 84
    if-lez v8, :cond_3

    .line 85
    .line 86
    iget-object v8, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 87
    .line 88
    sub-long v9, v6, v2

    .line 89
    .line 90
    iput-wide v9, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 91
    .line 92
    and-int/lit8 v9, v5, 0x3f

    .line 93
    or-int/2addr v9, v1

    .line 94
    int-to-byte v9, v9

    .line 95
    .line 96
    .line 97
    invoke-static {v8, v6, v7, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 98
    .line 99
    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 100
    .line 101
    iget-wide v7, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 102
    .line 103
    sub-long v9, v7, v2

    .line 104
    .line 105
    iput-wide v9, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 106
    .line 107
    ushr-int/lit8 v5, v5, 0x6

    .line 108
    .line 109
    or-int/lit16 v5, v5, 0x3c0

    .line 110
    int-to-byte v5, v5

    .line 111
    .line 112
    .line 113
    invoke-static {v6, v7, v8, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 114
    .line 115
    goto/16 :goto_2

    .line 116
    .line 117
    .line 118
    :cond_3
    const v6, 0xd800

    .line 119
    .line 120
    if-lt v5, v6, :cond_4

    .line 121
    .line 122
    .line 123
    const v6, 0xdfff

    .line 124
    .line 125
    if-ge v6, v5, :cond_5

    .line 126
    .line 127
    :cond_4
    iget-wide v6, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 128
    .line 129
    iget-wide v8, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->offset:J

    .line 130
    add-long/2addr v8, v2

    .line 131
    .line 132
    cmp-long v8, v6, v8

    .line 133
    .line 134
    if-lez v8, :cond_5

    .line 135
    .line 136
    iget-object v8, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 137
    .line 138
    sub-long v9, v6, v2

    .line 139
    .line 140
    iput-wide v9, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 141
    .line 142
    and-int/lit8 v9, v5, 0x3f

    .line 143
    or-int/2addr v9, v1

    .line 144
    int-to-byte v9, v9

    .line 145
    .line 146
    .line 147
    invoke-static {v8, v6, v7, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 148
    .line 149
    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 150
    .line 151
    iget-wide v7, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 152
    .line 153
    sub-long v9, v7, v2

    .line 154
    .line 155
    iput-wide v9, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 156
    .line 157
    ushr-int/lit8 v9, v5, 0x6

    .line 158
    .line 159
    and-int/lit8 v9, v9, 0x3f

    .line 160
    or-int/2addr v9, v1

    .line 161
    int-to-byte v9, v9

    .line 162
    .line 163
    .line 164
    invoke-static {v6, v7, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 165
    .line 166
    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 167
    .line 168
    iget-wide v7, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 169
    .line 170
    sub-long v9, v7, v2

    .line 171
    .line 172
    iput-wide v9, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 173
    .line 174
    ushr-int/lit8 v5, v5, 0xc

    .line 175
    .line 176
    or-int/lit16 v5, v5, 0x1e0

    .line 177
    int-to-byte v5, v5

    .line 178
    .line 179
    .line 180
    invoke-static {v6, v7, v8, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 181
    goto :goto_2

    .line 182
    .line 183
    :cond_5
    iget-wide v6, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 184
    .line 185
    iget-wide v8, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->offset:J

    .line 186
    .line 187
    const-wide/16 v10, 0x2

    .line 188
    add-long/2addr v8, v10

    .line 189
    .line 190
    cmp-long v6, v6, v8

    .line 191
    .line 192
    if-lez v6, :cond_7

    .line 193
    .line 194
    if-eqz v0, :cond_6

    .line 195
    .line 196
    add-int/lit8 v6, v0, -0x1

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    .line 200
    move-result v6

    .line 201
    .line 202
    .line 203
    invoke-static {v6, v5}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 204
    move-result v7

    .line 205
    .line 206
    if-eqz v7, :cond_6

    .line 207
    .line 208
    add-int/lit8 v0, v0, -0x1

    .line 209
    .line 210
    .line 211
    invoke-static {v6, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    .line 212
    move-result v5

    .line 213
    .line 214
    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 215
    .line 216
    iget-wide v7, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 217
    .line 218
    sub-long v9, v7, v2

    .line 219
    .line 220
    iput-wide v9, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 221
    .line 222
    and-int/lit8 v9, v5, 0x3f

    .line 223
    or-int/2addr v9, v1

    .line 224
    int-to-byte v9, v9

    .line 225
    .line 226
    .line 227
    invoke-static {v6, v7, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 228
    .line 229
    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 230
    .line 231
    iget-wide v7, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 232
    .line 233
    sub-long v9, v7, v2

    .line 234
    .line 235
    iput-wide v9, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 236
    .line 237
    ushr-int/lit8 v9, v5, 0x6

    .line 238
    .line 239
    and-int/lit8 v9, v9, 0x3f

    .line 240
    or-int/2addr v9, v1

    .line 241
    int-to-byte v9, v9

    .line 242
    .line 243
    .line 244
    invoke-static {v6, v7, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 245
    .line 246
    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 247
    .line 248
    iget-wide v7, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 249
    .line 250
    sub-long v9, v7, v2

    .line 251
    .line 252
    iput-wide v9, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 253
    .line 254
    ushr-int/lit8 v9, v5, 0xc

    .line 255
    .line 256
    and-int/lit8 v9, v9, 0x3f

    .line 257
    or-int/2addr v9, v1

    .line 258
    int-to-byte v9, v9

    .line 259
    .line 260
    .line 261
    invoke-static {v6, v7, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 262
    .line 263
    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 264
    .line 265
    iget-wide v7, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 266
    .line 267
    sub-long v9, v7, v2

    .line 268
    .line 269
    iput-wide v9, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 270
    .line 271
    ushr-int/lit8 v5, v5, 0x12

    .line 272
    .line 273
    or-int/lit16 v5, v5, 0xf0

    .line 274
    int-to-byte v5, v5

    .line 275
    .line 276
    .line 277
    invoke-static {v6, v7, v8, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 278
    goto :goto_2

    .line 279
    .line 280
    :cond_6
    new-instance p1, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;

    .line 281
    .line 282
    add-int/lit8 v1, v0, -0x1

    .line 283
    .line 284
    .line 285
    invoke-direct {p1, v1, v0}, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    .line 286
    throw p1

    .line 287
    .line 288
    .line 289
    :cond_7
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->q(I)V

    .line 290
    .line 291
    add-int/lit8 v0, v0, 0x1

    .line 292
    :goto_2
    add-int/2addr v0, v4

    .line 293
    .line 294
    goto/16 :goto_1

    .line 295
    :cond_8
    return-void
.end method

.method public g([BII)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ltz p2, :cond_0

    .line 4
    .line 5
    add-int v1, p2, p3

    .line 6
    array-length v2, p1

    .line 7
    .line 8
    if-gt v1, v2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->q(I)V

    .line 12
    .line 13
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 14
    int-to-long v3, p3

    .line 15
    sub-long/2addr v1, v3

    .line 16
    .line 17
    iput-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->W()I

    .line 23
    move-result v2

    .line 24
    add-int/2addr v2, v0

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    return-void

    .line 29
    .line 30
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 31
    const/4 v2, 0x3

    .line 32
    .line 33
    new-array v2, v2, [Ljava/lang/Object;

    .line 34
    array-length p1, p1

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object p1

    .line 39
    const/4 v3, 0x0

    .line 40
    .line 41
    aput-object p1, v2, v3

    .line 42
    .line 43
    .line 44
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    aput-object p1, v2, v0

    .line 48
    const/4 p1, 0x2

    .line 49
    .line 50
    .line 51
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    aput-object p2, v2, p1

    .line 55
    .line 56
    const-string p1, "value.length=%d, offset=%d, length=%d"

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 64
    throw v1
.end method

.method public h(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->c0()I

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
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter;->buffers:Ljava/util/ArrayDeque;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/AllocatedBuffer;->i(Ljava/nio/ByteBuffer;)Landroidx/datastore/preferences/protobuf/AllocatedBuffer;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->Z()V

    .line 28
    .line 29
    :cond_0
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 30
    int-to-long v3, v0

    .line 31
    sub-long/2addr v1, v3

    .line 32
    .line 33
    iput-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->W()I

    .line 39
    move-result v2

    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 45
    return-void
.end method

.method public i([BII)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ltz p2, :cond_1

    .line 4
    .line 5
    add-int v1, p2, p3

    .line 6
    array-length v2, p1

    .line 7
    .line 8
    if-gt v1, v2, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->c0()I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-ge v1, p3, :cond_0

    .line 15
    .line 16
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter;->totalDoneBytes:I

    .line 17
    add-int/2addr v0, p3

    .line 18
    .line 19
    iput v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter;->totalDoneBytes:I

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter;->buffers:Ljava/util/ArrayDeque;

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/AllocatedBuffer;->k([BII)Landroidx/datastore/preferences/protobuf/AllocatedBuffer;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->Z()V

    .line 32
    return-void

    .line 33
    .line 34
    :cond_0
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 35
    int-to-long v3, p3

    .line 36
    sub-long/2addr v1, v3

    .line 37
    .line 38
    iput-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->W()I

    .line 44
    move-result v2

    .line 45
    add-int/2addr v2, v0

    .line 46
    .line 47
    .line 48
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    return-void

    .line 50
    .line 51
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 52
    const/4 v2, 0x3

    .line 53
    .line 54
    new-array v2, v2, [Ljava/lang/Object;

    .line 55
    array-length p1, p1

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object p1

    .line 60
    const/4 v3, 0x0

    .line 61
    .line 62
    aput-object p1, v2, v3

    .line 63
    .line 64
    .line 65
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    aput-object p1, v2, v0

    .line 69
    const/4 p1, 0x2

    .line 70
    .line 71
    .line 72
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object p2

    .line 74
    .line 75
    aput-object p2, v2, p1

    .line 76
    .line 77
    const-string p1, "value.length=%d, offset=%d, length=%d"

    .line 78
    .line 79
    .line 80
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    .line 84
    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 85
    throw v1
.end method

.method public l()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter;->totalDoneBytes:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->X()I

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
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->c0()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ge v0, p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->a0(I)V

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
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->d0(B)V

    .line 5
    return-void
.end method

.method w(I)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 5
    .line 6
    const-wide/16 v3, 0x1

    .line 7
    .line 8
    sub-long v5, v1, v3

    .line 9
    .line 10
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 11
    .line 12
    shr-int/lit8 v5, p1, 0x18

    .line 13
    .line 14
    and-int/lit16 v5, v5, 0xff

    .line 15
    int-to-byte v5, v5

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 21
    .line 22
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 23
    .line 24
    sub-long v5, v1, v3

    .line 25
    .line 26
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 27
    .line 28
    shr-int/lit8 v5, p1, 0x10

    .line 29
    .line 30
    and-int/lit16 v5, v5, 0xff

    .line 31
    int-to-byte v5, v5

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 37
    .line 38
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 39
    .line 40
    sub-long v5, v1, v3

    .line 41
    .line 42
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 43
    .line 44
    shr-int/lit8 v5, p1, 0x8

    .line 45
    .line 46
    and-int/lit16 v5, v5, 0xff

    .line 47
    int-to-byte v5, v5

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 53
    .line 54
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 55
    .line 56
    sub-long v3, v1, v3

    .line 57
    .line 58
    iput-wide v3, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 59
    .line 60
    and-int/lit16 p1, p1, 0xff

    .line 61
    int-to-byte p1, p1

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v1, v2, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 65
    return-void
.end method

.method public writeBool(IZ)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->q(I)V

    .line 5
    int-to-byte p2, p2

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->d0(B)V

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->P(II)V

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
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->P(II)V

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
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->q(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->w(I)V

    .line 9
    const/4 p2, 0x5

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->P(II)V

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
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->q(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->z(J)V

    .line 9
    const/4 p2, 0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->P(II)V

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
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->q(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->E(I)V

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->P(II)V

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
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->l()I

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
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->l()I

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
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->q(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->U(I)V

    .line 25
    const/4 p2, 0x2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->P(II)V

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
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->q(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->J(I)V

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->P(II)V

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
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->q(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->M(J)V

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->P(II)V

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
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->P(II)V

    .line 5
    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->l()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->e0(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->l()I

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
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->q(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->U(I)V

    .line 21
    const/4 p2, 0x2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->P(II)V

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
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->q(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->U(I)V

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->P(II)V

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
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->q(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->V(J)V

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->P(II)V

    .line 13
    return-void
.end method

.method z(J)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 5
    .line 6
    const-wide/16 v3, 0x1

    .line 7
    .line 8
    sub-long v5, v1, v3

    .line 9
    .line 10
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 11
    .line 12
    const/16 v5, 0x38

    .line 13
    .line 14
    shr-long v5, p1, v5

    .line 15
    long-to-int v5, v5

    .line 16
    .line 17
    and-int/lit16 v5, v5, 0xff

    .line 18
    int-to-byte v5, v5

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 24
    .line 25
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 26
    .line 27
    sub-long v5, v1, v3

    .line 28
    .line 29
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 30
    .line 31
    const/16 v5, 0x30

    .line 32
    .line 33
    shr-long v5, p1, v5

    .line 34
    long-to-int v5, v5

    .line 35
    .line 36
    and-int/lit16 v5, v5, 0xff

    .line 37
    int-to-byte v5, v5

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 41
    .line 42
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 43
    .line 44
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 45
    .line 46
    sub-long v5, v1, v3

    .line 47
    .line 48
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 49
    .line 50
    const/16 v5, 0x28

    .line 51
    .line 52
    shr-long v5, p1, v5

    .line 53
    long-to-int v5, v5

    .line 54
    .line 55
    and-int/lit16 v5, v5, 0xff

    .line 56
    int-to-byte v5, v5

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 62
    .line 63
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 64
    .line 65
    sub-long v5, v1, v3

    .line 66
    .line 67
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 68
    .line 69
    const/16 v5, 0x20

    .line 70
    .line 71
    shr-long v5, p1, v5

    .line 72
    long-to-int v5, v5

    .line 73
    .line 74
    and-int/lit16 v5, v5, 0xff

    .line 75
    int-to-byte v5, v5

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 79
    .line 80
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 81
    .line 82
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 83
    .line 84
    sub-long v5, v1, v3

    .line 85
    .line 86
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 87
    .line 88
    const/16 v5, 0x18

    .line 89
    .line 90
    shr-long v5, p1, v5

    .line 91
    long-to-int v5, v5

    .line 92
    .line 93
    and-int/lit16 v5, v5, 0xff

    .line 94
    int-to-byte v5, v5

    .line 95
    .line 96
    .line 97
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 98
    .line 99
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 100
    .line 101
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 102
    .line 103
    sub-long v5, v1, v3

    .line 104
    .line 105
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 106
    .line 107
    const/16 v5, 0x10

    .line 108
    .line 109
    shr-long v5, p1, v5

    .line 110
    long-to-int v5, v5

    .line 111
    .line 112
    and-int/lit16 v5, v5, 0xff

    .line 113
    int-to-byte v5, v5

    .line 114
    .line 115
    .line 116
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 117
    .line 118
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 119
    .line 120
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 121
    .line 122
    sub-long v5, v1, v3

    .line 123
    .line 124
    iput-wide v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 125
    .line 126
    const/16 v5, 0x8

    .line 127
    .line 128
    shr-long v5, p1, v5

    .line 129
    long-to-int v5, v5

    .line 130
    .line 131
    and-int/lit16 v5, v5, 0xff

    .line 132
    int-to-byte v5, v5

    .line 133
    .line 134
    .line 135
    invoke-static {v0, v1, v2, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 136
    .line 137
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->buffer:[B

    .line 138
    .line 139
    iget-wide v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 140
    .line 141
    sub-long v3, v1, v3

    .line 142
    .line 143
    iput-wide v3, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;->pos:J

    .line 144
    long-to-int p1, p1

    .line 145
    .line 146
    and-int/lit16 p1, p1, 0xff

    .line 147
    int-to-byte p1, p1

    .line 148
    .line 149
    .line 150
    invoke-static {v0, v1, v2, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 151
    return-void
.end method
