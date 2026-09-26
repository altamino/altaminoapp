.class abstract Landroidx/datastore/preferences/protobuf/BinaryWriter;
.super Landroidx/datastore/preferences/protobuf/ByteOutput;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/Writer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeDirectWriter;,
        Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeDirectWriter;,
        Landroidx/datastore/preferences/protobuf/BinaryWriter$UnsafeHeapWriter;,
        Landroidx/datastore/preferences/protobuf/BinaryWriter$SafeHeapWriter;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHUNK_SIZE:I = 0x1000

.field private static final MAP_KEY_NUMBER:I = 0x1

.field private static final MAP_VALUE_NUMBER:I = 0x2


# instance fields
.field private final alloc:Landroidx/datastore/preferences/protobuf/BufferAllocator;

.field final buffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/datastore/preferences/protobuf/AllocatedBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final chunkSize:I

.field totalDoneBytes:I


# direct methods
.method private final A(ILandroidx/datastore/preferences/protobuf/LongArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/LongArrayList;->size()I

    .line 6
    move-result p3

    .line 7
    .line 8
    mul-int/lit8 p3, p3, 0x8

    .line 9
    .line 10
    add-int/lit8 p3, p3, 0xa

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->q(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 17
    move-result p3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/LongArrayList;->size()I

    .line 21
    move-result v0

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    :goto_0
    if-ltz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/LongArrayList;->getLong(I)J

    .line 29
    move-result-wide v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1, v2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->z(J)V

    .line 33
    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 39
    move-result p2

    .line 40
    sub-int/2addr p2, p3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->U(I)V

    .line 44
    const/4 p2, 0x2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->P(II)V

    .line 48
    goto :goto_2

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/LongArrayList;->size()I

    .line 52
    move-result p3

    .line 53
    .line 54
    add-int/lit8 p3, p3, -0x1

    .line 55
    .line 56
    :goto_1
    if-ltz p3, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p3}, Landroidx/datastore/preferences/protobuf/LongArrayList;->getLong(I)J

    .line 60
    move-result-wide v0

    .line 61
    .line 62
    .line 63
    invoke-interface {p0, p1, v0, v1}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed64(IJ)V

    .line 64
    .line 65
    add-int/lit8 p3, p3, -0x1

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    :goto_2
    return-void
.end method

.method private final B(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 6
    move-result p3

    .line 7
    .line 8
    mul-int/lit8 p3, p3, 0x8

    .line 9
    .line 10
    add-int/lit8 p3, p3, 0xa

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->q(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 17
    move-result p3

    .line 18
    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 21
    move-result v0

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    :goto_0
    if-ltz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    check-cast v1, Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 35
    move-result-wide v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1, v2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->z(J)V

    .line 39
    .line 40
    add-int/lit8 v0, v0, -0x1

    .line 41
    goto :goto_0

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 45
    move-result p2

    .line 46
    sub-int/2addr p2, p3

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->U(I)V

    .line 50
    const/4 p2, 0x2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->P(II)V

    .line 54
    goto :goto_2

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 58
    move-result p3

    .line 59
    .line 60
    add-int/lit8 p3, p3, -0x1

    .line 61
    .line 62
    :goto_1
    if-ltz p3, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    check-cast v0, Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 72
    move-result-wide v0

    .line 73
    .line 74
    .line 75
    invoke-interface {p0, p1, v0, v1}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed64(IJ)V

    .line 76
    .line 77
    add-int/lit8 p3, p3, -0x1

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    :goto_2
    return-void
.end method

.method private final C(ILandroidx/datastore/preferences/protobuf/FloatArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size()I

    .line 6
    move-result p3

    .line 7
    .line 8
    mul-int/lit8 p3, p3, 0x4

    .line 9
    .line 10
    add-int/lit8 p3, p3, 0xa

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->q(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 17
    move-result p3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size()I

    .line 21
    move-result v0

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    :goto_0
    if-ltz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/FloatArrayList;->getFloat(I)F

    .line 29
    move-result v1

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 33
    move-result v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->w(I)V

    .line 37
    .line 38
    add-int/lit8 v0, v0, -0x1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 43
    move-result p2

    .line 44
    sub-int/2addr p2, p3

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->U(I)V

    .line 48
    const/4 p2, 0x2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->P(II)V

    .line 52
    goto :goto_2

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size()I

    .line 56
    move-result p3

    .line 57
    .line 58
    add-int/lit8 p3, p3, -0x1

    .line 59
    .line 60
    :goto_1
    if-ltz p3, :cond_2

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p3}, Landroidx/datastore/preferences/protobuf/FloatArrayList;->getFloat(I)F

    .line 64
    move-result v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->writeFloat(IF)V

    .line 68
    .line 69
    add-int/lit8 p3, p3, -0x1

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    :goto_2
    return-void
.end method

.method private final D(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 6
    move-result p3

    .line 7
    .line 8
    mul-int/lit8 p3, p3, 0x4

    .line 9
    .line 10
    add-int/lit8 p3, p3, 0xa

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->q(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 17
    move-result p3

    .line 18
    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 21
    move-result v0

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    :goto_0
    if-ltz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    check-cast v1, Ljava/lang/Float;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 35
    move-result v1

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 39
    move-result v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->w(I)V

    .line 43
    .line 44
    add-int/lit8 v0, v0, -0x1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 49
    move-result p2

    .line 50
    sub-int/2addr p2, p3

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->U(I)V

    .line 54
    const/4 p2, 0x2

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->P(II)V

    .line 58
    goto :goto_2

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 62
    move-result p3

    .line 63
    .line 64
    add-int/lit8 p3, p3, -0x1

    .line 65
    .line 66
    :goto_1
    if-ltz p3, :cond_2

    .line 67
    .line 68
    .line 69
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    check-cast v0, Ljava/lang/Float;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 76
    move-result v0

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->writeFloat(IF)V

    .line 80
    .line 81
    add-int/lit8 p3, p3, -0x1

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    :goto_2
    return-void
.end method

.method private final F(ILandroidx/datastore/preferences/protobuf/IntArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/IntArrayList;->size()I

    .line 6
    move-result p3

    .line 7
    .line 8
    mul-int/lit8 p3, p3, 0xa

    .line 9
    .line 10
    add-int/lit8 p3, p3, 0xa

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->q(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 17
    move-result p3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/IntArrayList;->size()I

    .line 21
    move-result v0

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    :goto_0
    if-ltz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/IntArrayList;->getInt(I)I

    .line 29
    move-result v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->E(I)V

    .line 33
    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 39
    move-result p2

    .line 40
    sub-int/2addr p2, p3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->U(I)V

    .line 44
    const/4 p2, 0x2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->P(II)V

    .line 48
    goto :goto_2

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/IntArrayList;->size()I

    .line 52
    move-result p3

    .line 53
    .line 54
    add-int/lit8 p3, p3, -0x1

    .line 55
    .line 56
    :goto_1
    if-ltz p3, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p3}, Landroidx/datastore/preferences/protobuf/IntArrayList;->getInt(I)I

    .line 60
    move-result v0

    .line 61
    .line 62
    .line 63
    invoke-interface {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt32(II)V

    .line 64
    .line 65
    add-int/lit8 p3, p3, -0x1

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    :goto_2
    return-void
.end method

.method private final G(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 6
    move-result p3

    .line 7
    .line 8
    mul-int/lit8 p3, p3, 0xa

    .line 9
    .line 10
    add-int/lit8 p3, p3, 0xa

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->q(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 17
    move-result p3

    .line 18
    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 21
    move-result v0

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    :goto_0
    if-ltz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    check-cast v1, Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 35
    move-result v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->E(I)V

    .line 39
    .line 40
    add-int/lit8 v0, v0, -0x1

    .line 41
    goto :goto_0

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 45
    move-result p2

    .line 46
    sub-int/2addr p2, p3

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->U(I)V

    .line 50
    const/4 p2, 0x2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->P(II)V

    .line 54
    goto :goto_2

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 58
    move-result p3

    .line 59
    .line 60
    add-int/lit8 p3, p3, -0x1

    .line 61
    .line 62
    :goto_1
    if-ltz p3, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    check-cast v0, Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 72
    move-result v0

    .line 73
    .line 74
    .line 75
    invoke-interface {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt32(II)V

    .line 76
    .line 77
    add-int/lit8 p3, p3, -0x1

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    :goto_2
    return-void
.end method

.method private H(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p2, Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-interface {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Writer;->writeString(ILjava/lang/String;)V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    check-cast p2, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Writer;->a(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 16
    :goto_0
    return-void
.end method

.method static final I(Landroidx/datastore/preferences/protobuf/Writer;ILandroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/datastore/preferences/protobuf/BinaryWriter$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 7
    .line 8
    aget v0, v0, v1

    .line 9
    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    const-string p3, "Unsupported map value type for: "

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p0

    .line 35
    .line 36
    :pswitch_0
    instance-of p2, p3, Landroidx/datastore/preferences/protobuf/Internal$EnumLite;

    .line 37
    .line 38
    if-eqz p2, :cond_0

    .line 39
    .line 40
    check-cast p3, Landroidx/datastore/preferences/protobuf/Internal$EnumLite;

    .line 41
    .line 42
    .line 43
    invoke-interface {p3}, Landroidx/datastore/preferences/protobuf/Internal$EnumLite;->getNumber()I

    .line 44
    move-result p2

    .line 45
    .line 46
    .line 47
    invoke-interface {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Writer;->writeEnum(II)V

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_0
    instance-of p2, p3, Ljava/lang/Integer;

    .line 52
    .line 53
    if-eqz p2, :cond_1

    .line 54
    .line 55
    check-cast p3, Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 59
    move-result p2

    .line 60
    .line 61
    .line 62
    invoke-interface {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Writer;->writeEnum(II)V

    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    const-string p1, "Unexpected type for enum in map."

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p0

    .line 73
    .line 74
    :pswitch_1
    check-cast p3, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 75
    .line 76
    .line 77
    invoke-interface {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/Writer;->a(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    .line 82
    :pswitch_2
    invoke-interface {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :pswitch_3
    check-cast p3, Ljava/lang/Double;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    .line 90
    move-result-wide p2

    .line 91
    .line 92
    .line 93
    invoke-interface {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/Writer;->writeDouble(ID)V

    .line 94
    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :pswitch_4
    check-cast p3, Ljava/lang/Float;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 101
    move-result p2

    .line 102
    .line 103
    .line 104
    invoke-interface {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Writer;->writeFloat(IF)V

    .line 105
    .line 106
    goto/16 :goto_0

    .line 107
    .line 108
    :pswitch_5
    check-cast p3, Ljava/lang/Long;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 112
    move-result-wide p2

    .line 113
    .line 114
    .line 115
    invoke-interface {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt64(IJ)V

    .line 116
    .line 117
    goto/16 :goto_0

    .line 118
    .line 119
    :pswitch_6
    check-cast p3, Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 123
    move-result p2

    .line 124
    .line 125
    .line 126
    invoke-interface {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt32(II)V

    .line 127
    goto :goto_0

    .line 128
    .line 129
    :pswitch_7
    check-cast p3, Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    invoke-interface {p0, p1, p3}, Landroidx/datastore/preferences/protobuf/Writer;->writeString(ILjava/lang/String;)V

    .line 133
    goto :goto_0

    .line 134
    .line 135
    :pswitch_8
    check-cast p3, Ljava/lang/Long;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 139
    move-result-wide p2

    .line 140
    .line 141
    .line 142
    invoke-interface {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt64(IJ)V

    .line 143
    goto :goto_0

    .line 144
    .line 145
    :pswitch_9
    check-cast p3, Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 149
    move-result p2

    .line 150
    .line 151
    .line 152
    invoke-interface {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt32(II)V

    .line 153
    goto :goto_0

    .line 154
    .line 155
    :pswitch_a
    check-cast p3, Ljava/lang/Long;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 159
    move-result-wide p2

    .line 160
    .line 161
    .line 162
    invoke-interface {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/Writer;->writeSFixed64(IJ)V

    .line 163
    goto :goto_0

    .line 164
    .line 165
    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 169
    move-result p2

    .line 170
    .line 171
    .line 172
    invoke-interface {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Writer;->writeSFixed32(II)V

    .line 173
    goto :goto_0

    .line 174
    .line 175
    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 179
    move-result-wide p2

    .line 180
    .line 181
    .line 182
    invoke-interface {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt64(IJ)V

    .line 183
    goto :goto_0

    .line 184
    .line 185
    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 189
    move-result p2

    .line 190
    .line 191
    .line 192
    invoke-interface {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt32(II)V

    .line 193
    goto :goto_0

    .line 194
    .line 195
    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 199
    move-result-wide p2

    .line 200
    .line 201
    .line 202
    invoke-interface {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed64(IJ)V

    .line 203
    goto :goto_0

    .line 204
    .line 205
    :pswitch_f
    check-cast p3, Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 209
    move-result p2

    .line 210
    .line 211
    .line 212
    invoke-interface {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed32(II)V

    .line 213
    goto :goto_0

    .line 214
    .line 215
    :pswitch_10
    check-cast p3, Ljava/lang/Boolean;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 219
    move-result p2

    .line 220
    .line 221
    .line 222
    invoke-interface {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Writer;->writeBool(IZ)V

    .line 223
    :goto_0
    return-void

    .line 224
    nop

    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method private final K(ILandroidx/datastore/preferences/protobuf/IntArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/IntArrayList;->size()I

    .line 6
    move-result p3

    .line 7
    .line 8
    mul-int/lit8 p3, p3, 0x5

    .line 9
    .line 10
    add-int/lit8 p3, p3, 0xa

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->q(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 17
    move-result p3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/IntArrayList;->size()I

    .line 21
    move-result v0

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    :goto_0
    if-ltz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/IntArrayList;->getInt(I)I

    .line 29
    move-result v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->J(I)V

    .line 33
    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 39
    move-result p2

    .line 40
    sub-int/2addr p2, p3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->U(I)V

    .line 44
    const/4 p2, 0x2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->P(II)V

    .line 48
    goto :goto_2

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/IntArrayList;->size()I

    .line 52
    move-result p3

    .line 53
    .line 54
    add-int/lit8 p3, p3, -0x1

    .line 55
    .line 56
    :goto_1
    if-ltz p3, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p3}, Landroidx/datastore/preferences/protobuf/IntArrayList;->getInt(I)I

    .line 60
    move-result v0

    .line 61
    .line 62
    .line 63
    invoke-interface {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt32(II)V

    .line 64
    .line 65
    add-int/lit8 p3, p3, -0x1

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    :goto_2
    return-void
.end method

.method private final L(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 6
    move-result p3

    .line 7
    .line 8
    mul-int/lit8 p3, p3, 0x5

    .line 9
    .line 10
    add-int/lit8 p3, p3, 0xa

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->q(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 17
    move-result p3

    .line 18
    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 21
    move-result v0

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    :goto_0
    if-ltz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    check-cast v1, Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 35
    move-result v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->J(I)V

    .line 39
    .line 40
    add-int/lit8 v0, v0, -0x1

    .line 41
    goto :goto_0

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 45
    move-result p2

    .line 46
    sub-int/2addr p2, p3

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->U(I)V

    .line 50
    const/4 p2, 0x2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->P(II)V

    .line 54
    goto :goto_2

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 58
    move-result p3

    .line 59
    .line 60
    add-int/lit8 p3, p3, -0x1

    .line 61
    .line 62
    :goto_1
    if-ltz p3, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    check-cast v0, Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 72
    move-result v0

    .line 73
    .line 74
    .line 75
    invoke-interface {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt32(II)V

    .line 76
    .line 77
    add-int/lit8 p3, p3, -0x1

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    :goto_2
    return-void
.end method

.method private final N(ILandroidx/datastore/preferences/protobuf/LongArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/LongArrayList;->size()I

    .line 6
    move-result p3

    .line 7
    .line 8
    mul-int/lit8 p3, p3, 0xa

    .line 9
    .line 10
    add-int/lit8 p3, p3, 0xa

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->q(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 17
    move-result p3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/LongArrayList;->size()I

    .line 21
    move-result v0

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    :goto_0
    if-ltz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/LongArrayList;->getLong(I)J

    .line 29
    move-result-wide v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1, v2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->M(J)V

    .line 33
    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 39
    move-result p2

    .line 40
    sub-int/2addr p2, p3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->U(I)V

    .line 44
    const/4 p2, 0x2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->P(II)V

    .line 48
    goto :goto_2

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/LongArrayList;->size()I

    .line 52
    move-result p3

    .line 53
    .line 54
    add-int/lit8 p3, p3, -0x1

    .line 55
    .line 56
    :goto_1
    if-ltz p3, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p3}, Landroidx/datastore/preferences/protobuf/LongArrayList;->getLong(I)J

    .line 60
    move-result-wide v0

    .line 61
    .line 62
    .line 63
    invoke-interface {p0, p1, v0, v1}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt64(IJ)V

    .line 64
    .line 65
    add-int/lit8 p3, p3, -0x1

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    :goto_2
    return-void
.end method

.method private final O(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 6
    move-result p3

    .line 7
    .line 8
    mul-int/lit8 p3, p3, 0xa

    .line 9
    .line 10
    add-int/lit8 p3, p3, 0xa

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->q(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 17
    move-result p3

    .line 18
    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 21
    move-result v0

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    :goto_0
    if-ltz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    check-cast v1, Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 35
    move-result-wide v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1, v2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->M(J)V

    .line 39
    .line 40
    add-int/lit8 v0, v0, -0x1

    .line 41
    goto :goto_0

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 45
    move-result p2

    .line 46
    sub-int/2addr p2, p3

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->U(I)V

    .line 50
    const/4 p2, 0x2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->P(II)V

    .line 54
    goto :goto_2

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 58
    move-result p3

    .line 59
    .line 60
    add-int/lit8 p3, p3, -0x1

    .line 61
    .line 62
    :goto_1
    if-ltz p3, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    check-cast v0, Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 72
    move-result-wide v0

    .line 73
    .line 74
    .line 75
    invoke-interface {p0, p1, v0, v1}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt64(IJ)V

    .line 76
    .line 77
    add-int/lit8 p3, p3, -0x1

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    :goto_2
    return-void
.end method

.method private final Q(ILandroidx/datastore/preferences/protobuf/IntArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/IntArrayList;->size()I

    .line 6
    move-result p3

    .line 7
    .line 8
    mul-int/lit8 p3, p3, 0x5

    .line 9
    .line 10
    add-int/lit8 p3, p3, 0xa

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->q(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 17
    move-result p3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/IntArrayList;->size()I

    .line 21
    move-result v0

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    :goto_0
    if-ltz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/IntArrayList;->getInt(I)I

    .line 29
    move-result v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->U(I)V

    .line 33
    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 39
    move-result p2

    .line 40
    sub-int/2addr p2, p3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->U(I)V

    .line 44
    const/4 p2, 0x2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->P(II)V

    .line 48
    goto :goto_2

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/IntArrayList;->size()I

    .line 52
    move-result p3

    .line 53
    .line 54
    add-int/lit8 p3, p3, -0x1

    .line 55
    .line 56
    :goto_1
    if-ltz p3, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p3}, Landroidx/datastore/preferences/protobuf/IntArrayList;->getInt(I)I

    .line 60
    move-result v0

    .line 61
    .line 62
    .line 63
    invoke-interface {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt32(II)V

    .line 64
    .line 65
    add-int/lit8 p3, p3, -0x1

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    :goto_2
    return-void
.end method

.method private final R(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 6
    move-result p3

    .line 7
    .line 8
    mul-int/lit8 p3, p3, 0x5

    .line 9
    .line 10
    add-int/lit8 p3, p3, 0xa

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->q(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 17
    move-result p3

    .line 18
    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 21
    move-result v0

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    :goto_0
    if-ltz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    check-cast v1, Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 35
    move-result v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->U(I)V

    .line 39
    .line 40
    add-int/lit8 v0, v0, -0x1

    .line 41
    goto :goto_0

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 45
    move-result p2

    .line 46
    sub-int/2addr p2, p3

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->U(I)V

    .line 50
    const/4 p2, 0x2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->P(II)V

    .line 54
    goto :goto_2

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 58
    move-result p3

    .line 59
    .line 60
    add-int/lit8 p3, p3, -0x1

    .line 61
    .line 62
    :goto_1
    if-ltz p3, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    check-cast v0, Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 72
    move-result v0

    .line 73
    .line 74
    .line 75
    invoke-interface {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt32(II)V

    .line 76
    .line 77
    add-int/lit8 p3, p3, -0x1

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    :goto_2
    return-void
.end method

.method private final S(ILandroidx/datastore/preferences/protobuf/LongArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/LongArrayList;->size()I

    .line 6
    move-result p3

    .line 7
    .line 8
    mul-int/lit8 p3, p3, 0xa

    .line 9
    .line 10
    add-int/lit8 p3, p3, 0xa

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->q(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 17
    move-result p3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/LongArrayList;->size()I

    .line 21
    move-result v0

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    :goto_0
    if-ltz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/LongArrayList;->getLong(I)J

    .line 29
    move-result-wide v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1, v2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->V(J)V

    .line 33
    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 39
    move-result p2

    .line 40
    sub-int/2addr p2, p3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->U(I)V

    .line 44
    const/4 p2, 0x2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->P(II)V

    .line 48
    goto :goto_2

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/LongArrayList;->size()I

    .line 52
    move-result p3

    .line 53
    .line 54
    add-int/lit8 p3, p3, -0x1

    .line 55
    .line 56
    :goto_1
    if-ltz p3, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p3}, Landroidx/datastore/preferences/protobuf/LongArrayList;->getLong(I)J

    .line 60
    move-result-wide v0

    .line 61
    .line 62
    .line 63
    invoke-interface {p0, p1, v0, v1}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt64(IJ)V

    .line 64
    .line 65
    add-int/lit8 p3, p3, -0x1

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    :goto_2
    return-void
.end method

.method private final T(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 6
    move-result p3

    .line 7
    .line 8
    mul-int/lit8 p3, p3, 0xa

    .line 9
    .line 10
    add-int/lit8 p3, p3, 0xa

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->q(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 17
    move-result p3

    .line 18
    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 21
    move-result v0

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    :goto_0
    if-ltz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    check-cast v1, Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 35
    move-result-wide v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1, v2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->V(J)V

    .line 39
    .line 40
    add-int/lit8 v0, v0, -0x1

    .line 41
    goto :goto_0

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 45
    move-result p2

    .line 46
    sub-int/2addr p2, p3

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->U(I)V

    .line 50
    const/4 p2, 0x2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->P(II)V

    .line 54
    goto :goto_2

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 58
    move-result p3

    .line 59
    .line 60
    add-int/lit8 p3, p3, -0x1

    .line 61
    .line 62
    :goto_1
    if-ltz p3, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    check-cast v0, Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 72
    move-result-wide v0

    .line 73
    .line 74
    .line 75
    invoke-interface {p0, p1, v0, v1}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt64(IJ)V

    .line 76
    .line 77
    add-int/lit8 p3, p3, -0x1

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic j(J)B
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->k(J)B

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static k(J)B
    .locals 6

    .line 1
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    int-to-byte v0, v0

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_4

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    :cond_4
    return v0
.end method

.method private final s(ILandroidx/datastore/preferences/protobuf/BooleanArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size()I

    .line 6
    move-result p3

    .line 7
    .line 8
    add-int/lit8 p3, p3, 0xa

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->q(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 15
    move-result p3

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size()I

    .line 19
    move-result v0

    .line 20
    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    :goto_0
    if-ltz v0, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->getBoolean(I)Z

    .line 27
    move-result v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->r(Z)V

    .line 31
    .line 32
    add-int/lit8 v0, v0, -0x1

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 37
    move-result p2

    .line 38
    sub-int/2addr p2, p3

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->U(I)V

    .line 42
    const/4 p2, 0x2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->P(II)V

    .line 46
    goto :goto_2

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->size()I

    .line 50
    move-result p3

    .line 51
    .line 52
    add-int/lit8 p3, p3, -0x1

    .line 53
    .line 54
    :goto_1
    if-ltz p3, :cond_2

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p3}, Landroidx/datastore/preferences/protobuf/BooleanArrayList;->getBoolean(I)Z

    .line 58
    move-result v0

    .line 59
    .line 60
    .line 61
    invoke-interface {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/Writer;->writeBool(IZ)V

    .line 62
    .line 63
    add-int/lit8 p3, p3, -0x1

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    :goto_2
    return-void
.end method

.method private final t(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 6
    move-result p3

    .line 7
    .line 8
    add-int/lit8 p3, p3, 0xa

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->q(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 15
    move-result p3

    .line 16
    .line 17
    .line 18
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 19
    move-result v0

    .line 20
    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    :goto_0
    if-ltz v0, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    move-result v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->r(Z)V

    .line 37
    .line 38
    add-int/lit8 v0, v0, -0x1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 43
    move-result p2

    .line 44
    sub-int/2addr p2, p3

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->U(I)V

    .line 48
    const/4 p2, 0x2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->P(II)V

    .line 52
    goto :goto_2

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 56
    move-result p3

    .line 57
    .line 58
    add-int/lit8 p3, p3, -0x1

    .line 59
    .line 60
    :goto_1
    if-ltz p3, :cond_2

    .line 61
    .line 62
    .line 63
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    check-cast v0, Ljava/lang/Boolean;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 70
    move-result v0

    .line 71
    .line 72
    .line 73
    invoke-interface {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/Writer;->writeBool(IZ)V

    .line 74
    .line 75
    add-int/lit8 p3, p3, -0x1

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    :goto_2
    return-void
.end method

.method private final u(ILandroidx/datastore/preferences/protobuf/DoubleArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/DoubleArrayList;->size()I

    .line 6
    move-result p3

    .line 7
    .line 8
    mul-int/lit8 p3, p3, 0x8

    .line 9
    .line 10
    add-int/lit8 p3, p3, 0xa

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->q(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 17
    move-result p3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/DoubleArrayList;->size()I

    .line 21
    move-result v0

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    :goto_0
    if-ltz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/DoubleArrayList;->getDouble(I)D

    .line 29
    move-result-wide v1

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 33
    move-result-wide v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1, v2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->z(J)V

    .line 37
    .line 38
    add-int/lit8 v0, v0, -0x1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 43
    move-result p2

    .line 44
    sub-int/2addr p2, p3

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->U(I)V

    .line 48
    const/4 p2, 0x2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->P(II)V

    .line 52
    goto :goto_2

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/DoubleArrayList;->size()I

    .line 56
    move-result p3

    .line 57
    .line 58
    add-int/lit8 p3, p3, -0x1

    .line 59
    .line 60
    :goto_1
    if-ltz p3, :cond_2

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p3}, Landroidx/datastore/preferences/protobuf/DoubleArrayList;->getDouble(I)D

    .line 64
    move-result-wide v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1, v0, v1}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->writeDouble(ID)V

    .line 68
    .line 69
    add-int/lit8 p3, p3, -0x1

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    :goto_2
    return-void
.end method

.method private final v(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 6
    move-result p3

    .line 7
    .line 8
    mul-int/lit8 p3, p3, 0x8

    .line 9
    .line 10
    add-int/lit8 p3, p3, 0xa

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->q(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 17
    move-result p3

    .line 18
    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 21
    move-result v0

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    :goto_0
    if-ltz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    check-cast v1, Ljava/lang/Double;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 35
    move-result-wide v1

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 39
    move-result-wide v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1, v2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->z(J)V

    .line 43
    .line 44
    add-int/lit8 v0, v0, -0x1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 49
    move-result p2

    .line 50
    sub-int/2addr p2, p3

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->U(I)V

    .line 54
    const/4 p2, 0x2

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->P(II)V

    .line 58
    goto :goto_2

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 62
    move-result p3

    .line 63
    .line 64
    add-int/lit8 p3, p3, -0x1

    .line 65
    .line 66
    :goto_1
    if-ltz p3, :cond_2

    .line 67
    .line 68
    .line 69
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    check-cast v0, Ljava/lang/Double;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 76
    move-result-wide v0

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1, v0, v1}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->writeDouble(ID)V

    .line 80
    .line 81
    add-int/lit8 p3, p3, -0x1

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    :goto_2
    return-void
.end method

.method private final x(ILandroidx/datastore/preferences/protobuf/IntArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/IntArrayList;->size()I

    .line 6
    move-result p3

    .line 7
    .line 8
    mul-int/lit8 p3, p3, 0x4

    .line 9
    .line 10
    add-int/lit8 p3, p3, 0xa

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->q(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 17
    move-result p3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/IntArrayList;->size()I

    .line 21
    move-result v0

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    :goto_0
    if-ltz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroidx/datastore/preferences/protobuf/IntArrayList;->getInt(I)I

    .line 29
    move-result v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->w(I)V

    .line 33
    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 39
    move-result p2

    .line 40
    sub-int/2addr p2, p3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->U(I)V

    .line 44
    const/4 p2, 0x2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->P(II)V

    .line 48
    goto :goto_2

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/IntArrayList;->size()I

    .line 52
    move-result p3

    .line 53
    .line 54
    add-int/lit8 p3, p3, -0x1

    .line 55
    .line 56
    :goto_1
    if-ltz p3, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p3}, Landroidx/datastore/preferences/protobuf/IntArrayList;->getInt(I)I

    .line 60
    move-result v0

    .line 61
    .line 62
    .line 63
    invoke-interface {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed32(II)V

    .line 64
    .line 65
    add-int/lit8 p3, p3, -0x1

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    :goto_2
    return-void
.end method

.method private final y(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 6
    move-result p3

    .line 7
    .line 8
    mul-int/lit8 p3, p3, 0x4

    .line 9
    .line 10
    add-int/lit8 p3, p3, 0xa

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->q(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 17
    move-result p3

    .line 18
    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 21
    move-result v0

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    :goto_0
    if-ltz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    check-cast v1, Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 35
    move-result v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->w(I)V

    .line 39
    .line 40
    add-int/lit8 v0, v0, -0x1

    .line 41
    goto :goto_0

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 45
    move-result p2

    .line 46
    sub-int/2addr p2, p3

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->U(I)V

    .line 50
    const/4 p2, 0x2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->P(II)V

    .line 54
    goto :goto_2

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 58
    move-result p3

    .line 59
    .line 60
    add-int/lit8 p3, p3, -0x1

    .line 61
    .line 62
    :goto_1
    if-ltz p3, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    check-cast v0, Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 72
    move-result v0

    .line 73
    .line 74
    .line 75
    invoke-interface {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed32(II)V

    .line 76
    .line 77
    add-int/lit8 p3, p3, -0x1

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method abstract E(I)V
.end method

.method abstract J(I)V
.end method

.method abstract M(J)V
.end method

.method abstract P(II)V
.end method

.method abstract U(I)V
.end method

.method abstract V(J)V
.end method

.method public c(ILandroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
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
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    move-result-object p3

    .line 5
    .line 6
    .line 7
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p3

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Ljava/util/Map$Entry;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 24
    move-result v1

    .line 25
    .line 26
    iget-object v2, p2, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->valueType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    const/4 v4, 0x2

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v4, v2, v3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->I(Landroidx/datastore/preferences/protobuf/Writer;ILandroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 35
    .line 36
    iget-object v2, p2, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->keyType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    const/4 v3, 0x1

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v3, v2, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->I(Landroidx/datastore/preferences/protobuf/Writer;ILandroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->l()I

    .line 48
    move-result v0

    .line 49
    sub-int/2addr v0, v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->U(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1, v4}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->P(II)V

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method public final d(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Schema;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Landroidx/datastore/preferences/protobuf/Schema;",
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
    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    :goto_0
    if-ltz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, p1, v1, p3}, Landroidx/datastore/preferences/protobuf/Writer;->e(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 16
    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public final f(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Schema;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Landroidx/datastore/preferences/protobuf/Schema;",
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
    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    :goto_0
    if-ltz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, p1, v1, p3}, Landroidx/datastore/preferences/protobuf/Writer;->b(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 16
    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public final fieldOrder()Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;->DESCENDING:Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;

    .line 3
    return-object v0
.end method

.method public abstract l()I
.end method

.method final m()Landroidx/datastore/preferences/protobuf/AllocatedBuffer;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter;->alloc:Landroidx/datastore/preferences/protobuf/BufferAllocator;

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter;->chunkSize:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/BufferAllocator;->a(I)Landroidx/datastore/preferences/protobuf/AllocatedBuffer;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method final n(I)Landroidx/datastore/preferences/protobuf/AllocatedBuffer;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter;->alloc:Landroidx/datastore/preferences/protobuf/BufferAllocator;

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter;->chunkSize:I

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 8
    move-result p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/BufferAllocator;->a(I)Landroidx/datastore/preferences/protobuf/AllocatedBuffer;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method final o()Landroidx/datastore/preferences/protobuf/AllocatedBuffer;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter;->alloc:Landroidx/datastore/preferences/protobuf/BufferAllocator;

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter;->chunkSize:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/BufferAllocator;->b(I)Landroidx/datastore/preferences/protobuf/AllocatedBuffer;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method final p(I)Landroidx/datastore/preferences/protobuf/AllocatedBuffer;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter;->alloc:Landroidx/datastore/preferences/protobuf/BufferAllocator;

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/BinaryWriter;->chunkSize:I

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 8
    move-result p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/BufferAllocator;->b(I)Landroidx/datastore/preferences/protobuf/AllocatedBuffer;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method abstract q(I)V
.end method

.method abstract r(Z)V
.end method

.method abstract w(I)V
.end method

.method public final writeBoolList(ILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/BooleanArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p2, Landroidx/datastore/preferences/protobuf/BooleanArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->s(ILandroidx/datastore/preferences/protobuf/BooleanArrayList;Z)V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->t(ILjava/util/List;Z)V

    .line 14
    :goto_0
    return-void
.end method

.method public final writeBytesList(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/datastore/preferences/protobuf/ByteString;",
            ">;)V"
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
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    :goto_0
    if-ltz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    check-cast v1, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, p1, v1}, Landroidx/datastore/preferences/protobuf/Writer;->a(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 18
    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method public final writeDouble(ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 4
    move-result-wide p2

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed64(IJ)V

    .line 8
    return-void
.end method

.method public final writeDoubleList(ILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/DoubleArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p2, Landroidx/datastore/preferences/protobuf/DoubleArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->u(ILandroidx/datastore/preferences/protobuf/DoubleArrayList;Z)V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->v(ILjava/util/List;Z)V

    .line 14
    :goto_0
    return-void
.end method

.method public final writeEnum(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt32(II)V

    .line 4
    return-void
.end method

.method public final writeEnumList(ILjava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->writeInt32List(ILjava/util/List;Z)V

    .line 4
    return-void
.end method

.method public final writeFixed32List(ILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/IntArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p2, Landroidx/datastore/preferences/protobuf/IntArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->x(ILandroidx/datastore/preferences/protobuf/IntArrayList;Z)V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->y(ILjava/util/List;Z)V

    .line 14
    :goto_0
    return-void
.end method

.method public final writeFixed64List(ILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/LongArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p2, Landroidx/datastore/preferences/protobuf/LongArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->A(ILandroidx/datastore/preferences/protobuf/LongArrayList;Z)V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->B(ILjava/util/List;Z)V

    .line 14
    :goto_0
    return-void
.end method

.method public final writeFloat(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 4
    move-result p2

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed32(II)V

    .line 8
    return-void
.end method

.method public final writeFloatList(ILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/FloatArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p2, Landroidx/datastore/preferences/protobuf/FloatArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->C(ILandroidx/datastore/preferences/protobuf/FloatArrayList;Z)V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->D(ILjava/util/List;Z)V

    .line 14
    :goto_0
    return-void
.end method

.method public final writeInt32List(ILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/IntArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p2, Landroidx/datastore/preferences/protobuf/IntArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->F(ILandroidx/datastore/preferences/protobuf/IntArrayList;Z)V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->G(ILjava/util/List;Z)V

    .line 14
    :goto_0
    return-void
.end method

.method public final writeInt64(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt64(IJ)V

    .line 4
    return-void
.end method

.method public final writeInt64List(ILjava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->writeUInt64List(ILjava/util/List;Z)V

    .line 4
    return-void
.end method

.method public final writeMessageSetItem(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v1, v0}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->P(II)V

    .line 6
    .line 7
    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 8
    const/4 v2, 0x3

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast p2, Landroidx/datastore/preferences/protobuf/ByteString;

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v2, p2}, Landroidx/datastore/preferences/protobuf/Writer;->a(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-interface {p0, v2, p2}, Landroidx/datastore/preferences/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    .line 20
    :goto_0
    const/4 p2, 0x2

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, p2, p1}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt32(II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1, v2}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->P(II)V

    .line 27
    return-void
.end method

.method public final writeSFixed32(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed32(II)V

    .line 4
    return-void
.end method

.method public final writeSFixed32List(ILjava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->writeFixed32List(ILjava/util/List;Z)V

    .line 4
    return-void
.end method

.method public final writeSFixed64(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed64(IJ)V

    .line 4
    return-void
.end method

.method public final writeSFixed64List(ILjava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->writeFixed64List(ILjava/util/List;Z)V

    .line 4
    return-void
.end method

.method public final writeSInt32List(ILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/IntArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p2, Landroidx/datastore/preferences/protobuf/IntArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->K(ILandroidx/datastore/preferences/protobuf/IntArrayList;Z)V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->L(ILjava/util/List;Z)V

    .line 14
    :goto_0
    return-void
.end method

.method public final writeSInt64List(ILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/LongArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p2, Landroidx/datastore/preferences/protobuf/LongArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->N(ILandroidx/datastore/preferences/protobuf/LongArrayList;Z)V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->O(ILjava/util/List;Z)V

    .line 14
    :goto_0
    return-void
.end method

.method public final writeStringList(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/LazyStringList;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Landroidx/datastore/preferences/protobuf/LazyStringList;

    .line 8
    .line 9
    .line 10
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 11
    move-result p2

    .line 12
    .line 13
    add-int/lit8 p2, p2, -0x1

    .line 14
    .line 15
    :goto_0
    if-ltz p2, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p2}, Landroidx/datastore/preferences/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1, v1}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->H(ILjava/lang/Object;)V

    .line 23
    .line 24
    add-int/lit8 p2, p2, -0x1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 29
    move-result v0

    .line 30
    .line 31
    add-int/lit8 v0, v0, -0x1

    .line 32
    .line 33
    :goto_1
    if-ltz v0, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    check-cast v1, Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-interface {p0, p1, v1}, Landroidx/datastore/preferences/protobuf/Writer;->writeString(ILjava/lang/String;)V

    .line 43
    .line 44
    add-int/lit8 v0, v0, -0x1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    return-void
.end method

.method public final writeUInt32List(ILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/IntArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p2, Landroidx/datastore/preferences/protobuf/IntArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->Q(ILandroidx/datastore/preferences/protobuf/IntArrayList;Z)V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->R(ILjava/util/List;Z)V

    .line 14
    :goto_0
    return-void
.end method

.method public final writeUInt64List(ILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Landroidx/datastore/preferences/protobuf/LongArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p2, Landroidx/datastore/preferences/protobuf/LongArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->S(ILandroidx/datastore/preferences/protobuf/LongArrayList;Z)V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/BinaryWriter;->T(ILjava/util/List;Z)V

    .line 14
    :goto_0
    return-void
.end method

.method abstract z(J)V
.end method
