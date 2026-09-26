.class final Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;
.super Landroidx/datastore/preferences/protobuf/BinaryWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/BinaryWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeHeapWriter"
.end annotation


# instance fields
.field private allocatedBuffer:Landroidx/datastore/preferences/protobuf/AllocatedBuffer;

.field private buffer:[B

.field private limit:I

.field private limitMinusOne:I

.field private offset:I

.field private offsetMinusOne:I

.field private pos:I


# direct methods
.method private Y()V
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
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->a0(Landroidx/datastore/preferences/protobuf/AllocatedBuffer;)V

    .line 8
    return-void
.end method

.method private Z(I)V
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
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->a0(Landroidx/datastore/preferences/protobuf/AllocatedBuffer;)V

    .line 8
    return-void
.end method

.method private a0(Landroidx/datastore/preferences/protobuf/AllocatedBuffer;)V
    .locals 2

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
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->X()V

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter;->buffers:Ljava/util/ArrayDeque;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 15
    .line 16
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->allocatedBuffer:Landroidx/datastore/preferences/protobuf/AllocatedBuffer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/AllocatedBuffer;->a()[B

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

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
    .line 33
    iput v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->limit:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/AllocatedBuffer;->g()I

    .line 37
    move-result p1

    .line 38
    add-int/2addr v0, p1

    .line 39
    .line 40
    iput v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->offset:I

    .line 41
    .line 42
    add-int/lit8 v0, v0, -0x1

    .line 43
    .line 44
    iput v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->offsetMinusOne:I

    .line 45
    .line 46
    iget p1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->limit:I

    .line 47
    .line 48
    add-int/lit8 p1, p1, -0x1

    .line 49
    .line 50
    iput p1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->limitMinusOne:I

    .line 51
    .line 52
    iput p1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 53
    return-void

    .line 54
    .line 55
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 56
    .line 57
    const-string v0, "Allocator returned non-heap buffer"

    .line 58
    .line 59
    .line 60
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 61
    throw p1
.end method

.method private e0(I)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, -0x1

    .line 7
    .line 8
    ushr-int/lit8 v3, p1, 0x1c

    .line 9
    int-to-byte v3, v3

    .line 10
    .line 11
    aput-byte v3, v0, v1

    .line 12
    .line 13
    add-int/lit8 v3, v1, -0x2

    .line 14
    .line 15
    ushr-int/lit8 v4, p1, 0x15

    .line 16
    .line 17
    and-int/lit8 v4, v4, 0x7f

    .line 18
    .line 19
    or-int/lit16 v4, v4, 0x80

    .line 20
    int-to-byte v4, v4

    .line 21
    .line 22
    aput-byte v4, v0, v2

    .line 23
    .line 24
    add-int/lit8 v2, v1, -0x3

    .line 25
    .line 26
    ushr-int/lit8 v4, p1, 0xe

    .line 27
    .line 28
    and-int/lit8 v4, v4, 0x7f

    .line 29
    .line 30
    or-int/lit16 v4, v4, 0x80

    .line 31
    int-to-byte v4, v4

    .line 32
    .line 33
    aput-byte v4, v0, v3

    .line 34
    .line 35
    add-int/lit8 v3, v1, -0x4

    .line 36
    .line 37
    ushr-int/lit8 v4, p1, 0x7

    .line 38
    .line 39
    and-int/lit8 v4, v4, 0x7f

    .line 40
    .line 41
    or-int/lit16 v4, v4, 0x80

    .line 42
    int-to-byte v4, v4

    .line 43
    .line 44
    aput-byte v4, v0, v2

    .line 45
    .line 46
    add-int/lit8 v1, v1, -0x5

    .line 47
    .line 48
    iput v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 49
    .line 50
    and-int/lit8 p1, p1, 0x7f

    .line 51
    .line 52
    or-int/lit16 p1, p1, 0x80

    .line 53
    int-to-byte p1, p1

    .line 54
    .line 55
    aput-byte p1, v0, v3

    .line 56
    return-void
.end method

.method private f0(I)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, -0x1

    .line 7
    .line 8
    ushr-int/lit8 v3, p1, 0x15

    .line 9
    int-to-byte v3, v3

    .line 10
    .line 11
    aput-byte v3, v0, v1

    .line 12
    .line 13
    add-int/lit8 v3, v1, -0x2

    .line 14
    .line 15
    ushr-int/lit8 v4, p1, 0xe

    .line 16
    .line 17
    and-int/lit8 v4, v4, 0x7f

    .line 18
    .line 19
    or-int/lit16 v4, v4, 0x80

    .line 20
    int-to-byte v4, v4

    .line 21
    .line 22
    aput-byte v4, v0, v2

    .line 23
    .line 24
    add-int/lit8 v2, v1, -0x3

    .line 25
    .line 26
    ushr-int/lit8 v4, p1, 0x7

    .line 27
    .line 28
    and-int/lit8 v4, v4, 0x7f

    .line 29
    .line 30
    or-int/lit16 v4, v4, 0x80

    .line 31
    int-to-byte v4, v4

    .line 32
    .line 33
    aput-byte v4, v0, v3

    .line 34
    .line 35
    add-int/lit8 v1, v1, -0x4

    .line 36
    .line 37
    iput v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 38
    .line 39
    and-int/lit8 p1, p1, 0x7f

    .line 40
    .line 41
    or-int/lit16 p1, p1, 0x80

    .line 42
    int-to-byte p1, p1

    .line 43
    .line 44
    aput-byte p1, v0, v2

    .line 45
    return-void
.end method

.method private g0(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, -0x1

    .line 7
    .line 8
    iput v2, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 9
    int-to-byte p1, p1

    .line 10
    .line 11
    aput-byte p1, v0, v1

    .line 12
    return-void
.end method

.method private h0(I)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, -0x1

    .line 7
    .line 8
    ushr-int/lit8 v3, p1, 0xe

    .line 9
    int-to-byte v3, v3

    .line 10
    .line 11
    aput-byte v3, v0, v1

    .line 12
    .line 13
    add-int/lit8 v3, v1, -0x2

    .line 14
    .line 15
    ushr-int/lit8 v4, p1, 0x7

    .line 16
    .line 17
    and-int/lit8 v4, v4, 0x7f

    .line 18
    .line 19
    or-int/lit16 v4, v4, 0x80

    .line 20
    int-to-byte v4, v4

    .line 21
    .line 22
    aput-byte v4, v0, v2

    .line 23
    .line 24
    add-int/lit8 v1, v1, -0x3

    .line 25
    .line 26
    iput v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 27
    .line 28
    and-int/lit8 p1, p1, 0x7f

    .line 29
    .line 30
    or-int/lit16 p1, p1, 0x80

    .line 31
    int-to-byte p1, p1

    .line 32
    .line 33
    aput-byte p1, v0, v3

    .line 34
    return-void
.end method

.method private i0(I)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, -0x1

    .line 7
    .line 8
    ushr-int/lit8 v3, p1, 0x7

    .line 9
    int-to-byte v3, v3

    .line 10
    .line 11
    aput-byte v3, v0, v1

    .line 12
    .line 13
    add-int/lit8 v1, v1, -0x2

    .line 14
    .line 15
    iput v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 16
    .line 17
    and-int/lit8 p1, p1, 0x7f

    .line 18
    .line 19
    or-int/lit16 p1, p1, 0x80

    .line 20
    int-to-byte p1, p1

    .line 21
    .line 22
    aput-byte p1, v0, v2

    .line 23
    return-void
.end method

.method private j0(J)V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, -0x1

    .line 7
    .line 8
    const/16 v3, 0x31

    .line 9
    .line 10
    ushr-long v3, p1, v3

    .line 11
    long-to-int v3, v3

    .line 12
    int-to-byte v3, v3

    .line 13
    .line 14
    aput-byte v3, v0, v1

    .line 15
    .line 16
    add-int/lit8 v3, v1, -0x2

    .line 17
    .line 18
    const/16 v4, 0x2a

    .line 19
    .line 20
    ushr-long v4, p1, v4

    .line 21
    .line 22
    const-wide/16 v6, 0x7f

    .line 23
    and-long/2addr v4, v6

    .line 24
    .line 25
    const-wide/16 v8, 0x80

    .line 26
    or-long/2addr v4, v8

    .line 27
    long-to-int v4, v4

    .line 28
    int-to-byte v4, v4

    .line 29
    .line 30
    aput-byte v4, v0, v2

    .line 31
    .line 32
    add-int/lit8 v2, v1, -0x3

    .line 33
    .line 34
    const/16 v4, 0x23

    .line 35
    .line 36
    ushr-long v4, p1, v4

    .line 37
    and-long/2addr v4, v6

    .line 38
    or-long/2addr v4, v8

    .line 39
    long-to-int v4, v4

    .line 40
    int-to-byte v4, v4

    .line 41
    .line 42
    aput-byte v4, v0, v3

    .line 43
    .line 44
    add-int/lit8 v3, v1, -0x4

    .line 45
    .line 46
    const/16 v4, 0x1c

    .line 47
    .line 48
    ushr-long v4, p1, v4

    .line 49
    and-long/2addr v4, v6

    .line 50
    or-long/2addr v4, v8

    .line 51
    long-to-int v4, v4

    .line 52
    int-to-byte v4, v4

    .line 53
    .line 54
    aput-byte v4, v0, v2

    .line 55
    .line 56
    add-int/lit8 v2, v1, -0x5

    .line 57
    .line 58
    const/16 v4, 0x15

    .line 59
    .line 60
    ushr-long v4, p1, v4

    .line 61
    and-long/2addr v4, v6

    .line 62
    or-long/2addr v4, v8

    .line 63
    long-to-int v4, v4

    .line 64
    int-to-byte v4, v4

    .line 65
    .line 66
    aput-byte v4, v0, v3

    .line 67
    .line 68
    add-int/lit8 v3, v1, -0x6

    .line 69
    .line 70
    const/16 v4, 0xe

    .line 71
    .line 72
    ushr-long v4, p1, v4

    .line 73
    and-long/2addr v4, v6

    .line 74
    or-long/2addr v4, v8

    .line 75
    long-to-int v4, v4

    .line 76
    int-to-byte v4, v4

    .line 77
    .line 78
    aput-byte v4, v0, v2

    .line 79
    .line 80
    add-int/lit8 v2, v1, -0x7

    .line 81
    const/4 v4, 0x7

    .line 82
    .line 83
    ushr-long v4, p1, v4

    .line 84
    and-long/2addr v4, v6

    .line 85
    or-long/2addr v4, v8

    .line 86
    long-to-int v4, v4

    .line 87
    int-to-byte v4, v4

    .line 88
    .line 89
    aput-byte v4, v0, v3

    .line 90
    .line 91
    add-int/lit8 v1, v1, -0x8

    .line 92
    .line 93
    iput v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 94
    and-long/2addr p1, v6

    .line 95
    or-long/2addr p1, v8

    .line 96
    long-to-int p1, p1

    .line 97
    int-to-byte p1, p1

    .line 98
    .line 99
    aput-byte p1, v0, v2

    .line 100
    return-void
.end method

.method private k0(J)V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, -0x1

    .line 7
    .line 8
    const/16 v3, 0x1c

    .line 9
    .line 10
    ushr-long v3, p1, v3

    .line 11
    long-to-int v3, v3

    .line 12
    int-to-byte v3, v3

    .line 13
    .line 14
    aput-byte v3, v0, v1

    .line 15
    .line 16
    add-int/lit8 v3, v1, -0x2

    .line 17
    .line 18
    const/16 v4, 0x15

    .line 19
    .line 20
    ushr-long v4, p1, v4

    .line 21
    .line 22
    const-wide/16 v6, 0x7f

    .line 23
    and-long/2addr v4, v6

    .line 24
    .line 25
    const-wide/16 v8, 0x80

    .line 26
    or-long/2addr v4, v8

    .line 27
    long-to-int v4, v4

    .line 28
    int-to-byte v4, v4

    .line 29
    .line 30
    aput-byte v4, v0, v2

    .line 31
    .line 32
    add-int/lit8 v2, v1, -0x3

    .line 33
    .line 34
    const/16 v4, 0xe

    .line 35
    .line 36
    ushr-long v4, p1, v4

    .line 37
    and-long/2addr v4, v6

    .line 38
    or-long/2addr v4, v8

    .line 39
    long-to-int v4, v4

    .line 40
    int-to-byte v4, v4

    .line 41
    .line 42
    aput-byte v4, v0, v3

    .line 43
    .line 44
    add-int/lit8 v3, v1, -0x4

    .line 45
    const/4 v4, 0x7

    .line 46
    .line 47
    ushr-long v4, p1, v4

    .line 48
    and-long/2addr v4, v6

    .line 49
    or-long/2addr v4, v8

    .line 50
    long-to-int v4, v4

    .line 51
    int-to-byte v4, v4

    .line 52
    .line 53
    aput-byte v4, v0, v2

    .line 54
    .line 55
    add-int/lit8 v1, v1, -0x5

    .line 56
    .line 57
    iput v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 58
    and-long/2addr p1, v6

    .line 59
    or-long/2addr p1, v8

    .line 60
    long-to-int p1, p1

    .line 61
    int-to-byte p1, p1

    .line 62
    .line 63
    aput-byte p1, v0, v3

    .line 64
    return-void
.end method

.method private l0(J)V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, -0x1

    .line 7
    .line 8
    const/16 v3, 0x15

    .line 9
    .line 10
    ushr-long v3, p1, v3

    .line 11
    long-to-int v3, v3

    .line 12
    int-to-byte v3, v3

    .line 13
    .line 14
    aput-byte v3, v0, v1

    .line 15
    .line 16
    add-int/lit8 v3, v1, -0x2

    .line 17
    .line 18
    const/16 v4, 0xe

    .line 19
    .line 20
    ushr-long v4, p1, v4

    .line 21
    .line 22
    const-wide/16 v6, 0x7f

    .line 23
    and-long/2addr v4, v6

    .line 24
    .line 25
    const-wide/16 v8, 0x80

    .line 26
    or-long/2addr v4, v8

    .line 27
    long-to-int v4, v4

    .line 28
    int-to-byte v4, v4

    .line 29
    .line 30
    aput-byte v4, v0, v2

    .line 31
    .line 32
    add-int/lit8 v2, v1, -0x3

    .line 33
    const/4 v4, 0x7

    .line 34
    .line 35
    ushr-long v4, p1, v4

    .line 36
    and-long/2addr v4, v6

    .line 37
    or-long/2addr v4, v8

    .line 38
    long-to-int v4, v4

    .line 39
    int-to-byte v4, v4

    .line 40
    .line 41
    aput-byte v4, v0, v3

    .line 42
    .line 43
    add-int/lit8 v1, v1, -0x4

    .line 44
    .line 45
    iput v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 46
    and-long/2addr p1, v6

    .line 47
    or-long/2addr p1, v8

    .line 48
    long-to-int p1, p1

    .line 49
    int-to-byte p1, p1

    .line 50
    .line 51
    aput-byte p1, v0, v2

    .line 52
    return-void
.end method

.method private m0(J)V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, -0x1

    .line 7
    .line 8
    const/16 v3, 0x38

    .line 9
    .line 10
    ushr-long v3, p1, v3

    .line 11
    long-to-int v3, v3

    .line 12
    int-to-byte v3, v3

    .line 13
    .line 14
    aput-byte v3, v0, v1

    .line 15
    .line 16
    add-int/lit8 v3, v1, -0x2

    .line 17
    .line 18
    const/16 v4, 0x31

    .line 19
    .line 20
    ushr-long v4, p1, v4

    .line 21
    .line 22
    const-wide/16 v6, 0x7f

    .line 23
    and-long/2addr v4, v6

    .line 24
    .line 25
    const-wide/16 v8, 0x80

    .line 26
    or-long/2addr v4, v8

    .line 27
    long-to-int v4, v4

    .line 28
    int-to-byte v4, v4

    .line 29
    .line 30
    aput-byte v4, v0, v2

    .line 31
    .line 32
    add-int/lit8 v2, v1, -0x3

    .line 33
    .line 34
    const/16 v4, 0x2a

    .line 35
    .line 36
    ushr-long v4, p1, v4

    .line 37
    and-long/2addr v4, v6

    .line 38
    or-long/2addr v4, v8

    .line 39
    long-to-int v4, v4

    .line 40
    int-to-byte v4, v4

    .line 41
    .line 42
    aput-byte v4, v0, v3

    .line 43
    .line 44
    add-int/lit8 v3, v1, -0x4

    .line 45
    .line 46
    const/16 v4, 0x23

    .line 47
    .line 48
    ushr-long v4, p1, v4

    .line 49
    and-long/2addr v4, v6

    .line 50
    or-long/2addr v4, v8

    .line 51
    long-to-int v4, v4

    .line 52
    int-to-byte v4, v4

    .line 53
    .line 54
    aput-byte v4, v0, v2

    .line 55
    .line 56
    add-int/lit8 v2, v1, -0x5

    .line 57
    .line 58
    const/16 v4, 0x1c

    .line 59
    .line 60
    ushr-long v4, p1, v4

    .line 61
    and-long/2addr v4, v6

    .line 62
    or-long/2addr v4, v8

    .line 63
    long-to-int v4, v4

    .line 64
    int-to-byte v4, v4

    .line 65
    .line 66
    aput-byte v4, v0, v3

    .line 67
    .line 68
    add-int/lit8 v3, v1, -0x6

    .line 69
    .line 70
    const/16 v4, 0x15

    .line 71
    .line 72
    ushr-long v4, p1, v4

    .line 73
    and-long/2addr v4, v6

    .line 74
    or-long/2addr v4, v8

    .line 75
    long-to-int v4, v4

    .line 76
    int-to-byte v4, v4

    .line 77
    .line 78
    aput-byte v4, v0, v2

    .line 79
    .line 80
    add-int/lit8 v2, v1, -0x7

    .line 81
    .line 82
    const/16 v4, 0xe

    .line 83
    .line 84
    ushr-long v4, p1, v4

    .line 85
    and-long/2addr v4, v6

    .line 86
    or-long/2addr v4, v8

    .line 87
    long-to-int v4, v4

    .line 88
    int-to-byte v4, v4

    .line 89
    .line 90
    aput-byte v4, v0, v3

    .line 91
    .line 92
    add-int/lit8 v3, v1, -0x8

    .line 93
    const/4 v4, 0x7

    .line 94
    .line 95
    ushr-long v4, p1, v4

    .line 96
    and-long/2addr v4, v6

    .line 97
    or-long/2addr v4, v8

    .line 98
    long-to-int v4, v4

    .line 99
    int-to-byte v4, v4

    .line 100
    .line 101
    aput-byte v4, v0, v2

    .line 102
    .line 103
    add-int/lit8 v1, v1, -0x9

    .line 104
    .line 105
    iput v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 106
    and-long/2addr p1, v6

    .line 107
    or-long/2addr p1, v8

    .line 108
    long-to-int p1, p1

    .line 109
    int-to-byte p1, p1

    .line 110
    .line 111
    aput-byte p1, v0, v3

    .line 112
    return-void
.end method

.method private n0(J)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, -0x1

    .line 7
    .line 8
    iput v2, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 9
    long-to-int p1, p1

    .line 10
    int-to-byte p1, p1

    .line 11
    .line 12
    aput-byte p1, v0, v1

    .line 13
    return-void
.end method

.method private o0(J)V
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, -0x1

    .line 7
    .line 8
    const/16 v3, 0x2a

    .line 9
    .line 10
    ushr-long v3, p1, v3

    .line 11
    long-to-int v3, v3

    .line 12
    int-to-byte v3, v3

    .line 13
    .line 14
    aput-byte v3, v0, v1

    .line 15
    .line 16
    add-int/lit8 v3, v1, -0x2

    .line 17
    .line 18
    const/16 v4, 0x23

    .line 19
    .line 20
    ushr-long v4, p1, v4

    .line 21
    .line 22
    const-wide/16 v6, 0x7f

    .line 23
    and-long/2addr v4, v6

    .line 24
    .line 25
    const-wide/16 v8, 0x80

    .line 26
    or-long/2addr v4, v8

    .line 27
    long-to-int v4, v4

    .line 28
    int-to-byte v4, v4

    .line 29
    .line 30
    aput-byte v4, v0, v2

    .line 31
    .line 32
    add-int/lit8 v2, v1, -0x3

    .line 33
    .line 34
    const/16 v4, 0x1c

    .line 35
    .line 36
    ushr-long v4, p1, v4

    .line 37
    and-long/2addr v4, v6

    .line 38
    or-long/2addr v4, v8

    .line 39
    long-to-int v4, v4

    .line 40
    int-to-byte v4, v4

    .line 41
    .line 42
    aput-byte v4, v0, v3

    .line 43
    .line 44
    add-int/lit8 v3, v1, -0x4

    .line 45
    .line 46
    const/16 v4, 0x15

    .line 47
    .line 48
    ushr-long v4, p1, v4

    .line 49
    and-long/2addr v4, v6

    .line 50
    or-long/2addr v4, v8

    .line 51
    long-to-int v4, v4

    .line 52
    int-to-byte v4, v4

    .line 53
    .line 54
    aput-byte v4, v0, v2

    .line 55
    .line 56
    add-int/lit8 v2, v1, -0x5

    .line 57
    .line 58
    const/16 v4, 0xe

    .line 59
    .line 60
    ushr-long v4, p1, v4

    .line 61
    and-long/2addr v4, v6

    .line 62
    or-long/2addr v4, v8

    .line 63
    long-to-int v4, v4

    .line 64
    int-to-byte v4, v4

    .line 65
    .line 66
    aput-byte v4, v0, v3

    .line 67
    .line 68
    add-int/lit8 v3, v1, -0x6

    .line 69
    const/4 v4, 0x7

    .line 70
    .line 71
    ushr-long v10, p1, v4

    .line 72
    and-long/2addr v10, v6

    .line 73
    or-long/2addr v10, v8

    .line 74
    long-to-int v5, v10

    .line 75
    int-to-byte v5, v5

    .line 76
    .line 77
    aput-byte v5, v0, v2

    .line 78
    sub-int/2addr v1, v4

    .line 79
    .line 80
    iput v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 81
    and-long/2addr p1, v6

    .line 82
    or-long/2addr p1, v8

    .line 83
    long-to-int p1, p1

    .line 84
    int-to-byte p1, p1

    .line 85
    .line 86
    aput-byte p1, v0, v3

    .line 87
    return-void
.end method

.method private p0(J)V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, -0x1

    .line 7
    .line 8
    const/16 v3, 0x23

    .line 9
    .line 10
    ushr-long v3, p1, v3

    .line 11
    long-to-int v3, v3

    .line 12
    int-to-byte v3, v3

    .line 13
    .line 14
    aput-byte v3, v0, v1

    .line 15
    .line 16
    add-int/lit8 v3, v1, -0x2

    .line 17
    .line 18
    const/16 v4, 0x1c

    .line 19
    .line 20
    ushr-long v4, p1, v4

    .line 21
    .line 22
    const-wide/16 v6, 0x7f

    .line 23
    and-long/2addr v4, v6

    .line 24
    .line 25
    const-wide/16 v8, 0x80

    .line 26
    or-long/2addr v4, v8

    .line 27
    long-to-int v4, v4

    .line 28
    int-to-byte v4, v4

    .line 29
    .line 30
    aput-byte v4, v0, v2

    .line 31
    .line 32
    add-int/lit8 v2, v1, -0x3

    .line 33
    .line 34
    const/16 v4, 0x15

    .line 35
    .line 36
    ushr-long v4, p1, v4

    .line 37
    and-long/2addr v4, v6

    .line 38
    or-long/2addr v4, v8

    .line 39
    long-to-int v4, v4

    .line 40
    int-to-byte v4, v4

    .line 41
    .line 42
    aput-byte v4, v0, v3

    .line 43
    .line 44
    add-int/lit8 v3, v1, -0x4

    .line 45
    .line 46
    const/16 v4, 0xe

    .line 47
    .line 48
    ushr-long v4, p1, v4

    .line 49
    and-long/2addr v4, v6

    .line 50
    or-long/2addr v4, v8

    .line 51
    long-to-int v4, v4

    .line 52
    int-to-byte v4, v4

    .line 53
    .line 54
    aput-byte v4, v0, v2

    .line 55
    .line 56
    add-int/lit8 v2, v1, -0x5

    .line 57
    const/4 v4, 0x7

    .line 58
    .line 59
    ushr-long v4, p1, v4

    .line 60
    and-long/2addr v4, v6

    .line 61
    or-long/2addr v4, v8

    .line 62
    long-to-int v4, v4

    .line 63
    int-to-byte v4, v4

    .line 64
    .line 65
    aput-byte v4, v0, v3

    .line 66
    .line 67
    add-int/lit8 v1, v1, -0x6

    .line 68
    .line 69
    iput v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 70
    and-long/2addr p1, v6

    .line 71
    or-long/2addr p1, v8

    .line 72
    long-to-int p1, p1

    .line 73
    int-to-byte p1, p1

    .line 74
    .line 75
    aput-byte p1, v0, v2

    .line 76
    return-void
.end method

.method private q0(J)V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, -0x1

    .line 7
    .line 8
    const/16 v3, 0x3f

    .line 9
    .line 10
    ushr-long v3, p1, v3

    .line 11
    long-to-int v3, v3

    .line 12
    int-to-byte v3, v3

    .line 13
    .line 14
    aput-byte v3, v0, v1

    .line 15
    .line 16
    add-int/lit8 v3, v1, -0x2

    .line 17
    .line 18
    const/16 v4, 0x38

    .line 19
    .line 20
    ushr-long v4, p1, v4

    .line 21
    .line 22
    const-wide/16 v6, 0x7f

    .line 23
    and-long/2addr v4, v6

    .line 24
    .line 25
    const-wide/16 v8, 0x80

    .line 26
    or-long/2addr v4, v8

    .line 27
    long-to-int v4, v4

    .line 28
    int-to-byte v4, v4

    .line 29
    .line 30
    aput-byte v4, v0, v2

    .line 31
    .line 32
    add-int/lit8 v2, v1, -0x3

    .line 33
    .line 34
    const/16 v4, 0x31

    .line 35
    .line 36
    ushr-long v4, p1, v4

    .line 37
    and-long/2addr v4, v6

    .line 38
    or-long/2addr v4, v8

    .line 39
    long-to-int v4, v4

    .line 40
    int-to-byte v4, v4

    .line 41
    .line 42
    aput-byte v4, v0, v3

    .line 43
    .line 44
    add-int/lit8 v3, v1, -0x4

    .line 45
    .line 46
    const/16 v4, 0x2a

    .line 47
    .line 48
    ushr-long v4, p1, v4

    .line 49
    and-long/2addr v4, v6

    .line 50
    or-long/2addr v4, v8

    .line 51
    long-to-int v4, v4

    .line 52
    int-to-byte v4, v4

    .line 53
    .line 54
    aput-byte v4, v0, v2

    .line 55
    .line 56
    add-int/lit8 v2, v1, -0x5

    .line 57
    .line 58
    const/16 v4, 0x23

    .line 59
    .line 60
    ushr-long v4, p1, v4

    .line 61
    and-long/2addr v4, v6

    .line 62
    or-long/2addr v4, v8

    .line 63
    long-to-int v4, v4

    .line 64
    int-to-byte v4, v4

    .line 65
    .line 66
    aput-byte v4, v0, v3

    .line 67
    .line 68
    add-int/lit8 v3, v1, -0x6

    .line 69
    .line 70
    const/16 v4, 0x1c

    .line 71
    .line 72
    ushr-long v4, p1, v4

    .line 73
    and-long/2addr v4, v6

    .line 74
    or-long/2addr v4, v8

    .line 75
    long-to-int v4, v4

    .line 76
    int-to-byte v4, v4

    .line 77
    .line 78
    aput-byte v4, v0, v2

    .line 79
    .line 80
    add-int/lit8 v2, v1, -0x7

    .line 81
    .line 82
    const/16 v4, 0x15

    .line 83
    .line 84
    ushr-long v4, p1, v4

    .line 85
    and-long/2addr v4, v6

    .line 86
    or-long/2addr v4, v8

    .line 87
    long-to-int v4, v4

    .line 88
    int-to-byte v4, v4

    .line 89
    .line 90
    aput-byte v4, v0, v3

    .line 91
    .line 92
    add-int/lit8 v3, v1, -0x8

    .line 93
    .line 94
    const/16 v4, 0xe

    .line 95
    .line 96
    ushr-long v4, p1, v4

    .line 97
    and-long/2addr v4, v6

    .line 98
    or-long/2addr v4, v8

    .line 99
    long-to-int v4, v4

    .line 100
    int-to-byte v4, v4

    .line 101
    .line 102
    aput-byte v4, v0, v2

    .line 103
    .line 104
    add-int/lit8 v2, v1, -0x9

    .line 105
    const/4 v4, 0x7

    .line 106
    .line 107
    ushr-long v4, p1, v4

    .line 108
    and-long/2addr v4, v6

    .line 109
    or-long/2addr v4, v8

    .line 110
    long-to-int v4, v4

    .line 111
    int-to-byte v4, v4

    .line 112
    .line 113
    aput-byte v4, v0, v3

    .line 114
    .line 115
    add-int/lit8 v1, v1, -0xa

    .line 116
    .line 117
    iput v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 118
    and-long/2addr p1, v6

    .line 119
    or-long/2addr p1, v8

    .line 120
    long-to-int p1, p1

    .line 121
    int-to-byte p1, p1

    .line 122
    .line 123
    aput-byte p1, v0, v2

    .line 124
    return-void
.end method

.method private r0(J)V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, -0x1

    .line 7
    long-to-int v3, p1

    .line 8
    .line 9
    ushr-int/lit8 v3, v3, 0xe

    .line 10
    int-to-byte v3, v3

    .line 11
    .line 12
    aput-byte v3, v0, v1

    .line 13
    .line 14
    add-int/lit8 v3, v1, -0x2

    .line 15
    const/4 v4, 0x7

    .line 16
    .line 17
    ushr-long v4, p1, v4

    .line 18
    .line 19
    const-wide/16 v6, 0x7f

    .line 20
    and-long/2addr v4, v6

    .line 21
    .line 22
    const-wide/16 v8, 0x80

    .line 23
    or-long/2addr v4, v8

    .line 24
    long-to-int v4, v4

    .line 25
    int-to-byte v4, v4

    .line 26
    .line 27
    aput-byte v4, v0, v2

    .line 28
    .line 29
    add-int/lit8 v1, v1, -0x3

    .line 30
    .line 31
    iput v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 32
    and-long/2addr p1, v6

    .line 33
    or-long/2addr p1, v8

    .line 34
    long-to-int p1, p1

    .line 35
    int-to-byte p1, p1

    .line 36
    .line 37
    aput-byte p1, v0, v3

    .line 38
    return-void
.end method

.method private s0(J)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, -0x1

    .line 7
    const/4 v3, 0x7

    .line 8
    .line 9
    ushr-long v3, p1, v3

    .line 10
    long-to-int v3, v3

    .line 11
    int-to-byte v3, v3

    .line 12
    .line 13
    aput-byte v3, v0, v1

    .line 14
    .line 15
    add-int/lit8 v1, v1, -0x2

    .line 16
    .line 17
    iput v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 18
    long-to-int p1, p1

    .line 19
    .line 20
    and-int/lit8 p1, p1, 0x7f

    .line 21
    .line 22
    or-int/lit16 p1, p1, 0x80

    .line 23
    int-to-byte p1, p1

    .line 24
    .line 25
    aput-byte p1, v0, v2

    .line 26
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
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->U(I)V

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    int-to-long v0, p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->V(J)V

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
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->U(I)V

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
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->V(J)V

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
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->U(I)V

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
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->g0(I)V

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
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->i0(I)V

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
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->h0(I)V

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
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->f0(I)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_3
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->e0(I)V

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
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->q0(J)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :pswitch_1
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->m0(J)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :pswitch_2
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->j0(J)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :pswitch_3
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->o0(J)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :pswitch_4
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->p0(J)V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :pswitch_5
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->k0(J)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :pswitch_6
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->l0(J)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :pswitch_7
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->r0(J)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :pswitch_8
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->s0(J)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :pswitch_9
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->n0(J)V

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

.method W()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->limitMinusOne:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method X()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->allocatedBuffer:Landroidx/datastore/preferences/protobuf/AllocatedBuffer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter;->totalDoneBytes:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->W()I

    .line 10
    move-result v1

    .line 11
    add-int/2addr v0, v1

    .line 12
    .line 13
    iput v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter;->totalDoneBytes:I

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->allocatedBuffer:Landroidx/datastore/preferences/protobuf/AllocatedBuffer;

    .line 16
    .line 17
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/AllocatedBuffer;->b()I

    .line 21
    move-result v2

    .line 22
    sub-int/2addr v1, v2

    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/AllocatedBuffer;->h(I)Landroidx/datastore/preferences/protobuf/AllocatedBuffer;

    .line 28
    const/4 v0, 0x0

    .line 29
    .line 30
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->allocatedBuffer:Landroidx/datastore/preferences/protobuf/AllocatedBuffer;

    .line 31
    const/4 v0, 0x0

    .line 32
    .line 33
    iput v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 34
    .line 35
    iput v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->limitMinusOne:I

    .line 36
    :cond_0
    return-void
.end method

.method public a(ILandroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->q(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    .line 12
    move-result p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->U(I)V

    .line 16
    const/4 p2, 0x2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->P(II)V

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
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->l()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p3, p2, p0}, Landroidx/datastore/preferences/protobuf/Schema;->a(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->l()I

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
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->q(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->U(I)V

    .line 21
    const/4 p2, 0x2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->P(II)V

    .line 25
    return-void
.end method

.method b0()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->offsetMinusOne:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public c0(B)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, -0x1

    .line 7
    .line 8
    iput v2, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 9
    .line 10
    aput-byte p1, v0, v1

    .line 11
    return-void
.end method

.method d0(Ljava/lang/String;)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->q(I)V

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
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 16
    sub-int/2addr v1, v0

    .line 17
    .line 18
    iput v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 19
    .line 20
    :goto_0
    const/16 v1, 0x80

    .line 21
    .line 22
    if-ltz v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 26
    move-result v2

    .line 27
    .line 28
    if-ge v2, v1, :cond_0

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    .line 31
    .line 32
    iget v3, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 33
    add-int/2addr v3, v0

    .line 34
    int-to-byte v2, v2

    .line 35
    .line 36
    aput-byte v2, v1, v3

    .line 37
    .line 38
    add-int/lit8 v0, v0, -0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v2, -0x1

    .line 41
    .line 42
    if-ne v0, v2, :cond_1

    .line 43
    .line 44
    iget p1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 45
    .line 46
    add-int/lit8 p1, p1, -0x1

    .line 47
    .line 48
    iput p1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 49
    return-void

    .line 50
    .line 51
    :cond_1
    iget v3, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 52
    add-int/2addr v3, v0

    .line 53
    .line 54
    iput v3, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 55
    .line 56
    :goto_1
    if-ltz v0, :cond_8

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 60
    move-result v3

    .line 61
    .line 62
    if-ge v3, v1, :cond_2

    .line 63
    .line 64
    iget v4, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 65
    .line 66
    iget v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->offsetMinusOne:I

    .line 67
    .line 68
    if-le v4, v5, :cond_2

    .line 69
    .line 70
    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    .line 71
    .line 72
    add-int/lit8 v6, v4, -0x1

    .line 73
    .line 74
    iput v6, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 75
    int-to-byte v3, v3

    .line 76
    .line 77
    aput-byte v3, v5, v4

    .line 78
    .line 79
    goto/16 :goto_2

    .line 80
    .line 81
    :cond_2
    const/16 v4, 0x800

    .line 82
    .line 83
    if-ge v3, v4, :cond_3

    .line 84
    .line 85
    iget v4, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 86
    .line 87
    iget v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->offset:I

    .line 88
    .line 89
    if-le v4, v5, :cond_3

    .line 90
    .line 91
    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    .line 92
    .line 93
    add-int/lit8 v6, v4, -0x1

    .line 94
    .line 95
    and-int/lit8 v7, v3, 0x3f

    .line 96
    or-int/2addr v7, v1

    .line 97
    int-to-byte v7, v7

    .line 98
    .line 99
    aput-byte v7, v5, v4

    .line 100
    .line 101
    add-int/lit8 v4, v4, -0x2

    .line 102
    .line 103
    iput v4, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 104
    .line 105
    ushr-int/lit8 v3, v3, 0x6

    .line 106
    .line 107
    or-int/lit16 v3, v3, 0x3c0

    .line 108
    int-to-byte v3, v3

    .line 109
    .line 110
    aput-byte v3, v5, v6

    .line 111
    .line 112
    goto/16 :goto_2

    .line 113
    .line 114
    .line 115
    :cond_3
    const v4, 0xd800

    .line 116
    .line 117
    if-lt v3, v4, :cond_4

    .line 118
    .line 119
    .line 120
    const v4, 0xdfff

    .line 121
    .line 122
    if-ge v4, v3, :cond_5

    .line 123
    .line 124
    :cond_4
    iget v4, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 125
    .line 126
    iget v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->offset:I

    .line 127
    .line 128
    add-int/lit8 v5, v5, 0x1

    .line 129
    .line 130
    if-le v4, v5, :cond_5

    .line 131
    .line 132
    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    .line 133
    .line 134
    add-int/lit8 v6, v4, -0x1

    .line 135
    .line 136
    and-int/lit8 v7, v3, 0x3f

    .line 137
    or-int/2addr v7, v1

    .line 138
    int-to-byte v7, v7

    .line 139
    .line 140
    aput-byte v7, v5, v4

    .line 141
    .line 142
    add-int/lit8 v7, v4, -0x2

    .line 143
    .line 144
    ushr-int/lit8 v8, v3, 0x6

    .line 145
    .line 146
    and-int/lit8 v8, v8, 0x3f

    .line 147
    or-int/2addr v8, v1

    .line 148
    int-to-byte v8, v8

    .line 149
    .line 150
    aput-byte v8, v5, v6

    .line 151
    .line 152
    add-int/lit8 v4, v4, -0x3

    .line 153
    .line 154
    iput v4, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 155
    .line 156
    ushr-int/lit8 v3, v3, 0xc

    .line 157
    .line 158
    or-int/lit16 v3, v3, 0x1e0

    .line 159
    int-to-byte v3, v3

    .line 160
    .line 161
    aput-byte v3, v5, v7

    .line 162
    goto :goto_2

    .line 163
    .line 164
    :cond_5
    iget v4, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 165
    .line 166
    iget v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->offset:I

    .line 167
    .line 168
    add-int/lit8 v5, v5, 0x2

    .line 169
    .line 170
    if-le v4, v5, :cond_7

    .line 171
    .line 172
    if-eqz v0, :cond_6

    .line 173
    .line 174
    add-int/lit8 v4, v0, -0x1

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 178
    move-result v4

    .line 179
    .line 180
    .line 181
    invoke-static {v4, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    .line 182
    move-result v5

    .line 183
    .line 184
    if-eqz v5, :cond_6

    .line 185
    .line 186
    add-int/lit8 v0, v0, -0x1

    .line 187
    .line 188
    .line 189
    invoke-static {v4, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    .line 190
    move-result v3

    .line 191
    .line 192
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    .line 193
    .line 194
    iget v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 195
    .line 196
    add-int/lit8 v6, v5, -0x1

    .line 197
    .line 198
    and-int/lit8 v7, v3, 0x3f

    .line 199
    or-int/2addr v7, v1

    .line 200
    int-to-byte v7, v7

    .line 201
    .line 202
    aput-byte v7, v4, v5

    .line 203
    .line 204
    add-int/lit8 v7, v5, -0x2

    .line 205
    .line 206
    ushr-int/lit8 v8, v3, 0x6

    .line 207
    .line 208
    and-int/lit8 v8, v8, 0x3f

    .line 209
    or-int/2addr v8, v1

    .line 210
    int-to-byte v8, v8

    .line 211
    .line 212
    aput-byte v8, v4, v6

    .line 213
    .line 214
    add-int/lit8 v6, v5, -0x3

    .line 215
    .line 216
    ushr-int/lit8 v8, v3, 0xc

    .line 217
    .line 218
    and-int/lit8 v8, v8, 0x3f

    .line 219
    or-int/2addr v8, v1

    .line 220
    int-to-byte v8, v8

    .line 221
    .line 222
    aput-byte v8, v4, v7

    .line 223
    .line 224
    add-int/lit8 v5, v5, -0x4

    .line 225
    .line 226
    iput v5, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 227
    .line 228
    ushr-int/lit8 v3, v3, 0x12

    .line 229
    .line 230
    or-int/lit16 v3, v3, 0xf0

    .line 231
    int-to-byte v3, v3

    .line 232
    .line 233
    aput-byte v3, v4, v6

    .line 234
    goto :goto_2

    .line 235
    .line 236
    :cond_6
    new-instance p1, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;

    .line 237
    .line 238
    add-int/lit8 v1, v0, -0x1

    .line 239
    .line 240
    .line 241
    invoke-direct {p1, v1, v0}, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    .line 242
    throw p1

    .line 243
    .line 244
    .line 245
    :cond_7
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->q(I)V

    .line 246
    .line 247
    add-int/lit8 v0, v0, 0x1

    .line 248
    :goto_2
    add-int/2addr v0, v2

    .line 249
    .line 250
    goto/16 :goto_1

    .line 251
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
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->P(II)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p3, p2, p0}, Landroidx/datastore/preferences/protobuf/Schema;->a(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 8
    const/4 p2, 0x3

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->P(II)V

    .line 12
    return-void
.end method

.method public g([BII)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->b0()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ge v0, p3, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->Z(I)V

    .line 10
    .line 11
    :cond_0
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 12
    sub-int/2addr v0, p3

    .line 13
    .line 14
    iput v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    return-void
.end method

.method public h(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->b0()I

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
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->Y()V

    .line 28
    .line 29
    :cond_0
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 30
    sub-int/2addr v1, v0

    .line 31
    .line 32
    iput v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 33
    .line 34
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v2, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 40
    return-void
.end method

.method public i([BII)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->b0()I

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
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->Y()V

    .line 24
    return-void

    .line 25
    .line 26
    :cond_0
    iget v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 27
    sub-int/2addr v0, p3

    .line 28
    .line 29
    iput v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 30
    .line 31
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    .line 32
    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
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
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->W()I

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
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->b0()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ge v0, p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->Z(I)V

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
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->c0(B)V

    .line 5
    return-void
.end method

.method w(I)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, -0x1

    .line 7
    .line 8
    shr-int/lit8 v3, p1, 0x18

    .line 9
    .line 10
    and-int/lit16 v3, v3, 0xff

    .line 11
    int-to-byte v3, v3

    .line 12
    .line 13
    aput-byte v3, v0, v1

    .line 14
    .line 15
    add-int/lit8 v3, v1, -0x2

    .line 16
    .line 17
    shr-int/lit8 v4, p1, 0x10

    .line 18
    .line 19
    and-int/lit16 v4, v4, 0xff

    .line 20
    int-to-byte v4, v4

    .line 21
    .line 22
    aput-byte v4, v0, v2

    .line 23
    .line 24
    add-int/lit8 v2, v1, -0x3

    .line 25
    .line 26
    shr-int/lit8 v4, p1, 0x8

    .line 27
    .line 28
    and-int/lit16 v4, v4, 0xff

    .line 29
    int-to-byte v4, v4

    .line 30
    .line 31
    aput-byte v4, v0, v3

    .line 32
    .line 33
    add-int/lit8 v1, v1, -0x4

    .line 34
    .line 35
    iput v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 36
    .line 37
    and-int/lit16 p1, p1, 0xff

    .line 38
    int-to-byte p1, p1

    .line 39
    .line 40
    aput-byte p1, v0, v2

    .line 41
    return-void
.end method

.method public writeBool(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x6

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->q(I)V

    .line 5
    int-to-byte p2, p2

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->c0(B)V

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->P(II)V

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
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->P(II)V

    .line 5
    return-void
.end method

.method public writeFixed32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x9

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->q(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->w(I)V

    .line 9
    const/4 p2, 0x5

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->P(II)V

    .line 13
    return-void
.end method

.method public writeFixed64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0xd

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->q(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->z(J)V

    .line 9
    const/4 p2, 0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->P(II)V

    .line 13
    return-void
.end method

.method public writeInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0xf

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->q(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->E(I)V

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->P(II)V

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
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->l()I

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
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->l()I

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
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->q(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->U(I)V

    .line 25
    const/4 p2, 0x2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->P(II)V

    .line 29
    return-void
.end method

.method public writeSInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0xa

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->q(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->J(I)V

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->P(II)V

    .line 13
    return-void
.end method

.method public writeSInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0xf

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->q(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->M(J)V

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->P(II)V

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
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->P(II)V

    .line 5
    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->l()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->d0(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->l()I

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
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->q(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->U(I)V

    .line 21
    const/4 p2, 0x2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->P(II)V

    .line 25
    return-void
.end method

.method public writeUInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0xa

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->q(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->U(I)V

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->P(II)V

    .line 13
    return-void
.end method

.method public writeUInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0xf

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->q(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->V(J)V

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->P(II)V

    .line 13
    return-void
.end method

.method z(J)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->buffer:[B

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, -0x1

    .line 7
    .line 8
    const/16 v3, 0x38

    .line 9
    .line 10
    shr-long v3, p1, v3

    .line 11
    long-to-int v3, v3

    .line 12
    .line 13
    and-int/lit16 v3, v3, 0xff

    .line 14
    int-to-byte v3, v3

    .line 15
    .line 16
    aput-byte v3, v0, v1

    .line 17
    .line 18
    add-int/lit8 v3, v1, -0x2

    .line 19
    .line 20
    const/16 v4, 0x30

    .line 21
    .line 22
    shr-long v4, p1, v4

    .line 23
    long-to-int v4, v4

    .line 24
    .line 25
    and-int/lit16 v4, v4, 0xff

    .line 26
    int-to-byte v4, v4

    .line 27
    .line 28
    aput-byte v4, v0, v2

    .line 29
    .line 30
    add-int/lit8 v2, v1, -0x3

    .line 31
    .line 32
    const/16 v4, 0x28

    .line 33
    .line 34
    shr-long v4, p1, v4

    .line 35
    long-to-int v4, v4

    .line 36
    .line 37
    and-int/lit16 v4, v4, 0xff

    .line 38
    int-to-byte v4, v4

    .line 39
    .line 40
    aput-byte v4, v0, v3

    .line 41
    .line 42
    add-int/lit8 v3, v1, -0x4

    .line 43
    .line 44
    const/16 v4, 0x20

    .line 45
    .line 46
    shr-long v4, p1, v4

    .line 47
    long-to-int v4, v4

    .line 48
    .line 49
    and-int/lit16 v4, v4, 0xff

    .line 50
    int-to-byte v4, v4

    .line 51
    .line 52
    aput-byte v4, v0, v2

    .line 53
    .line 54
    add-int/lit8 v2, v1, -0x5

    .line 55
    .line 56
    const/16 v4, 0x18

    .line 57
    .line 58
    shr-long v4, p1, v4

    .line 59
    long-to-int v4, v4

    .line 60
    .line 61
    and-int/lit16 v4, v4, 0xff

    .line 62
    int-to-byte v4, v4

    .line 63
    .line 64
    aput-byte v4, v0, v3

    .line 65
    .line 66
    add-int/lit8 v3, v1, -0x6

    .line 67
    .line 68
    const/16 v4, 0x10

    .line 69
    .line 70
    shr-long v4, p1, v4

    .line 71
    long-to-int v4, v4

    .line 72
    .line 73
    and-int/lit16 v4, v4, 0xff

    .line 74
    int-to-byte v4, v4

    .line 75
    .line 76
    aput-byte v4, v0, v2

    .line 77
    .line 78
    add-int/lit8 v2, v1, -0x7

    .line 79
    .line 80
    const/16 v4, 0x8

    .line 81
    .line 82
    shr-long v5, p1, v4

    .line 83
    long-to-int v5, v5

    .line 84
    .line 85
    and-int/lit16 v5, v5, 0xff

    .line 86
    int-to-byte v5, v5

    .line 87
    .line 88
    aput-byte v5, v0, v3

    .line 89
    sub-int/2addr v1, v4

    .line 90
    .line 91
    iput v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;->pos:I

    .line 92
    long-to-int p1, p1

    .line 93
    .line 94
    and-int/lit16 p1, p1, 0xff

    .line 95
    int-to-byte p1, p1

    .line 96
    .line 97
    aput-byte p1, v0, v2

    .line 98
    return-void
.end method
