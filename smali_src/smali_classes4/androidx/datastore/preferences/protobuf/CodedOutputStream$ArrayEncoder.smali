.class Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;
.super Landroidx/datastore/preferences/protobuf/CodedOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/CodedOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayEncoder"
.end annotation


# instance fields
.field private final buffer:[B

.field private final limit:I

.field private final offset:I

.field private position:I


# direct methods
.method constructor <init>([BII)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;-><init>(Landroidx/datastore/preferences/protobuf/CodedOutputStream$1;)V

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    or-int v0, p2, p3

    .line 9
    array-length v1, p1

    .line 10
    .line 11
    add-int v2, p2, p3

    .line 12
    sub-int/2addr v1, v2

    .line 13
    or-int/2addr v0, v1

    .line 14
    .line 15
    if-ltz v0, :cond_0

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 18
    .line 19
    iput p2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->offset:I

    .line 20
    .line 21
    iput p2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 22
    .line 23
    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    .line 24
    return-void

    .line 25
    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 27
    const/4 v1, 0x3

    .line 28
    .line 29
    new-array v1, v1, [Ljava/lang/Object;

    .line 30
    array-length p1, p1

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object p1

    .line 35
    const/4 v2, 0x0

    .line 36
    .line 37
    aput-object p1, v1, v2

    .line 38
    const/4 p1, 0x1

    .line 39
    .line 40
    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    aput-object p2, v1, p1

    .line 45
    const/4 p1, 0x2

    .line 46
    .line 47
    .line 48
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    aput-object p2, v1, p1

    .line 52
    .line 53
    const-string p1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    throw v0

    .line 62
    .line 63
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 64
    .line 65
    const-string p2, "buffer"

    .line 66
    .line 67
    .line 68
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 69
    throw p1
.end method


# virtual methods
.method public final F0(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->S0(I)V

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    int-to-long v0, p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->T0(J)V

    .line 11
    :goto_0
    return-void
.end method

.method public final H0(ILandroidx/datastore/preferences/protobuf/MessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->R0(II)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->J0(Landroidx/datastore/preferences/protobuf/MessageLite;)V

    .line 8
    return-void
.end method

.method final I0(ILandroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->R0(II)V

    .line 5
    move-object p1, p2

    .line 6
    .line 7
    check-cast p1, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p3}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->e(Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 11
    move-result p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->S0(I)V

    .line 15
    .line 16
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->wrapper:Landroidx/datastore/preferences/protobuf/CodedOutputStreamWriter;

    .line 17
    .line 18
    .line 19
    invoke-interface {p3, p2, p1}, Landroidx/datastore/preferences/protobuf/Schema;->a(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    .line 20
    return-void
.end method

.method public final J0(Landroidx/datastore/preferences/protobuf/MessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/MessageLite;->getSerializedSize()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->S0(I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p0}, Landroidx/datastore/preferences/protobuf/MessageLite;->b(Landroidx/datastore/preferences/protobuf/CodedOutputStream;)V

    .line 11
    return-void
.end method

.method public final K0(ILandroidx/datastore/preferences/protobuf/MessageLite;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->R0(II)V

    .line 6
    const/4 v2, 0x2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v2, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32(II)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->H0(ILandroidx/datastore/preferences/protobuf/MessageLite;)V

    .line 13
    const/4 p1, 0x4

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->R0(II)V

    .line 17
    return-void
.end method

.method public final L0(ILandroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->R0(II)V

    .line 6
    const/4 v2, 0x2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v2, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->writeUInt32(II)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->a(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    .line 13
    const/4 p1, 0x4

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->R0(II)V

    .line 17
    return-void
.end method

.method public final Q0(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    move-result v1

    .line 7
    .line 8
    mul-int/lit8 v1, v1, 0x3

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    move-result v2

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f0(I)I

    .line 20
    move-result v2

    .line 21
    .line 22
    if-ne v2, v1, :cond_0

    .line 23
    .line 24
    add-int v1, v0, v2

    .line 25
    .line 26
    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 27
    .line 28
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->q0()I

    .line 32
    move-result v4

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v3, v1, v4}, Landroidx/datastore/preferences/protobuf/Utf8;->i(Ljava/lang/CharSequence;[BII)I

    .line 36
    move-result v1

    .line 37
    .line 38
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 39
    .line 40
    sub-int v3, v1, v0

    .line 41
    sub-int/2addr v3, v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->S0(I)V

    .line 45
    .line 46
    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 47
    goto :goto_2

    .line 48
    :catch_0
    move-exception p1

    .line 49
    goto :goto_0

    .line 50
    :catch_1
    move-exception v1

    .line 51
    goto :goto_1

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/Utf8;->k(Ljava/lang/CharSequence;)I

    .line 55
    move-result v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->S0(I)V

    .line 59
    .line 60
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 61
    .line 62
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->q0()I

    .line 66
    move-result v3

    .line 67
    .line 68
    .line 69
    invoke-static {p1, v1, v2, v3}, Landroidx/datastore/preferences/protobuf/Utf8;->i(Ljava/lang/CharSequence;[BII)I

    .line 70
    move-result v1

    .line 71
    .line 72
    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I
    :try_end_0
    .catch Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_2

    .line 74
    .line 75
    :goto_0
    new-instance v0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutOfSpaceException;

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    .line 79
    throw v0

    .line 80
    .line 81
    :goto_1
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->l0(Ljava/lang/String;Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;)V

    .line 85
    :goto_2
    return-void
.end method

.method public final R0(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/datastore/preferences/protobuf/WireFormat;->c(II)I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->S0(I)V

    .line 8
    return-void
.end method

.method public final S0(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->j()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Android;->c()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_4

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->q0()I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x5

    .line 18
    .line 19
    if-lt v0, v1, :cond_4

    .line 20
    .line 21
    and-int/lit8 v0, p1, -0x80

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 26
    .line 27
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 28
    .line 29
    add-int/lit8 v2, v1, 0x1

    .line 30
    .line 31
    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 32
    int-to-long v1, v1

    .line 33
    int-to-byte p1, p1

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1, v2, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 37
    return-void

    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 40
    .line 41
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 42
    .line 43
    add-int/lit8 v2, v1, 0x1

    .line 44
    .line 45
    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 46
    int-to-long v1, v1

    .line 47
    .line 48
    or-int/lit16 v3, p1, 0x80

    .line 49
    int-to-byte v3, v3

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1, v2, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 53
    .line 54
    ushr-int/lit8 v0, p1, 0x7

    .line 55
    .line 56
    and-int/lit8 v1, v0, -0x80

    .line 57
    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 61
    .line 62
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 63
    .line 64
    add-int/lit8 v2, v1, 0x1

    .line 65
    .line 66
    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 67
    int-to-long v1, v1

    .line 68
    int-to-byte v0, v0

    .line 69
    .line 70
    .line 71
    invoke-static {p1, v1, v2, v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 72
    return-void

    .line 73
    .line 74
    :cond_1
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 75
    .line 76
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 77
    .line 78
    add-int/lit8 v3, v2, 0x1

    .line 79
    .line 80
    iput v3, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 81
    int-to-long v2, v2

    .line 82
    .line 83
    or-int/lit16 v0, v0, 0x80

    .line 84
    int-to-byte v0, v0

    .line 85
    .line 86
    .line 87
    invoke-static {v1, v2, v3, v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 88
    .line 89
    ushr-int/lit8 v0, p1, 0xe

    .line 90
    .line 91
    and-int/lit8 v1, v0, -0x80

    .line 92
    .line 93
    if-nez v1, :cond_2

    .line 94
    .line 95
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 96
    .line 97
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 98
    .line 99
    add-int/lit8 v2, v1, 0x1

    .line 100
    .line 101
    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 102
    int-to-long v1, v1

    .line 103
    int-to-byte v0, v0

    .line 104
    .line 105
    .line 106
    invoke-static {p1, v1, v2, v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 107
    return-void

    .line 108
    .line 109
    :cond_2
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 110
    .line 111
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 112
    .line 113
    add-int/lit8 v3, v2, 0x1

    .line 114
    .line 115
    iput v3, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 116
    int-to-long v2, v2

    .line 117
    .line 118
    or-int/lit16 v0, v0, 0x80

    .line 119
    int-to-byte v0, v0

    .line 120
    .line 121
    .line 122
    invoke-static {v1, v2, v3, v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 123
    .line 124
    ushr-int/lit8 v0, p1, 0x15

    .line 125
    .line 126
    and-int/lit8 v1, v0, -0x80

    .line 127
    .line 128
    if-nez v1, :cond_3

    .line 129
    .line 130
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 131
    .line 132
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 133
    .line 134
    add-int/lit8 v2, v1, 0x1

    .line 135
    .line 136
    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 137
    int-to-long v1, v1

    .line 138
    int-to-byte v0, v0

    .line 139
    .line 140
    .line 141
    invoke-static {p1, v1, v2, v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 142
    return-void

    .line 143
    .line 144
    :cond_3
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 145
    .line 146
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 147
    .line 148
    add-int/lit8 v3, v2, 0x1

    .line 149
    .line 150
    iput v3, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 151
    int-to-long v2, v2

    .line 152
    .line 153
    or-int/lit16 v0, v0, 0x80

    .line 154
    int-to-byte v0, v0

    .line 155
    .line 156
    .line 157
    invoke-static {v1, v2, v3, v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 158
    .line 159
    ushr-int/lit8 p1, p1, 0x1c

    .line 160
    .line 161
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 162
    .line 163
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 164
    .line 165
    add-int/lit8 v2, v1, 0x1

    .line 166
    .line 167
    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 168
    int-to-long v1, v1

    .line 169
    int-to-byte p1, p1

    .line 170
    .line 171
    .line 172
    invoke-static {v0, v1, v2, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 173
    return-void

    .line 174
    .line 175
    :cond_4
    :goto_0
    and-int/lit8 v0, p1, -0x80

    .line 176
    .line 177
    if-nez v0, :cond_5

    .line 178
    .line 179
    :try_start_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 180
    .line 181
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 182
    .line 183
    add-int/lit8 v2, v1, 0x1

    .line 184
    .line 185
    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 186
    int-to-byte p1, p1

    .line 187
    .line 188
    aput-byte p1, v0, v1

    .line 189
    return-void

    .line 190
    :catch_0
    move-exception p1

    .line 191
    goto :goto_1

    .line 192
    .line 193
    :cond_5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 194
    .line 195
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 196
    .line 197
    add-int/lit8 v2, v1, 0x1

    .line 198
    .line 199
    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 200
    .line 201
    and-int/lit8 v2, p1, 0x7f

    .line 202
    .line 203
    or-int/lit16 v2, v2, 0x80

    .line 204
    int-to-byte v2, v2

    .line 205
    .line 206
    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .line 208
    ushr-int/lit8 p1, p1, 0x7

    .line 209
    goto :goto_0

    .line 210
    .line 211
    :goto_1
    new-instance v0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutOfSpaceException;

    .line 212
    const/4 v1, 0x3

    .line 213
    .line 214
    new-array v1, v1, [Ljava/lang/Object;

    .line 215
    .line 216
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 217
    .line 218
    .line 219
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    move-result-object v2

    .line 221
    const/4 v3, 0x0

    .line 222
    .line 223
    aput-object v2, v1, v3

    .line 224
    .line 225
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    .line 226
    .line 227
    .line 228
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    move-result-object v2

    .line 230
    const/4 v3, 0x1

    .line 231
    .line 232
    aput-object v2, v1, v3

    .line 233
    const/4 v2, 0x2

    .line 234
    .line 235
    .line 236
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    move-result-object v3

    .line 238
    .line 239
    aput-object v3, v1, v2

    .line 240
    .line 241
    const-string v2, "Pos: %d, limit: %d, len: %d"

    .line 242
    .line 243
    .line 244
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 245
    move-result-object v1

    .line 246
    .line 247
    .line 248
    invoke-direct {v0, v1, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    throw v0
.end method

.method public final T0(J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->j()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x7

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    const-wide/16 v4, -0x80

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->q0()I

    .line 15
    move-result v0

    .line 16
    .line 17
    const/16 v6, 0xa

    .line 18
    .line 19
    if-lt v0, v6, :cond_1

    .line 20
    .line 21
    :goto_0
    and-long v6, p1, v4

    .line 22
    .line 23
    cmp-long v0, v6, v2

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 28
    .line 29
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 30
    .line 31
    add-int/lit8 v2, v1, 0x1

    .line 32
    .line 33
    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 34
    int-to-long v1, v1

    .line 35
    long-to-int p1, p1

    .line 36
    int-to-byte p1, p1

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1, v2, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 40
    return-void

    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 43
    .line 44
    iget v6, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 45
    .line 46
    add-int/lit8 v7, v6, 0x1

    .line 47
    .line 48
    iput v7, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 49
    int-to-long v6, v6

    .line 50
    long-to-int v8, p1

    .line 51
    .line 52
    and-int/lit8 v8, v8, 0x7f

    .line 53
    .line 54
    or-int/lit16 v8, v8, 0x80

    .line 55
    int-to-byte v8, v8

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->O([BJB)V

    .line 59
    ushr-long/2addr p1, v1

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_1
    :goto_1
    and-long v6, p1, v4

    .line 63
    .line 64
    cmp-long v0, v6, v2

    .line 65
    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    :try_start_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 69
    .line 70
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 71
    .line 72
    add-int/lit8 v2, v1, 0x1

    .line 73
    .line 74
    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 75
    long-to-int p1, p1

    .line 76
    int-to-byte p1, p1

    .line 77
    .line 78
    aput-byte p1, v0, v1

    .line 79
    return-void

    .line 80
    :catch_0
    move-exception p1

    .line 81
    goto :goto_2

    .line 82
    .line 83
    :cond_2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 84
    .line 85
    iget v6, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 86
    .line 87
    add-int/lit8 v7, v6, 0x1

    .line 88
    .line 89
    iput v7, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 90
    long-to-int v7, p1

    .line 91
    .line 92
    and-int/lit8 v7, v7, 0x7f

    .line 93
    .line 94
    or-int/lit16 v7, v7, 0x80

    .line 95
    int-to-byte v7, v7

    .line 96
    .line 97
    aput-byte v7, v0, v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    ushr-long/2addr p1, v1

    .line 99
    goto :goto_1

    .line 100
    .line 101
    :goto_2
    new-instance p2, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutOfSpaceException;

    .line 102
    const/4 v0, 0x3

    .line 103
    .line 104
    new-array v0, v0, [Ljava/lang/Object;

    .line 105
    .line 106
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 107
    .line 108
    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    move-result-object v1

    .line 111
    const/4 v2, 0x0

    .line 112
    .line 113
    aput-object v1, v0, v2

    .line 114
    .line 115
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    .line 116
    .line 117
    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    move-result-object v1

    .line 120
    const/4 v2, 0x1

    .line 121
    .line 122
    aput-object v1, v0, v2

    .line 123
    const/4 v1, 0x2

    .line 124
    .line 125
    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object v2

    .line 128
    .line 129
    aput-object v2, v0, v1

    .line 130
    .line 131
    const-string v1, "Pos: %d, limit: %d, len: %d"

    .line 132
    .line 133
    .line 134
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    .line 138
    invoke-direct {p2, v0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    throw p2
.end method

.method public final U0()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final V0(Ljava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 4
    move-result v0

    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 7
    .line 8
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    iget p1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 14
    add-int/2addr p1, v0

    .line 15
    .line 16
    iput p1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p1

    .line 19
    .line 20
    new-instance v1, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutOfSpaceException;

    .line 21
    const/4 v2, 0x3

    .line 22
    .line 23
    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    .line 25
    iget v3, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 26
    .line 27
    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v3

    .line 30
    const/4 v4, 0x0

    .line 31
    .line 32
    aput-object v3, v2, v4

    .line 33
    .line 34
    iget v3, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    .line 35
    .line 36
    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v3

    .line 39
    const/4 v4, 0x1

    .line 40
    .line 41
    aput-object v3, v2, v4

    .line 42
    const/4 v3, 0x2

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    aput-object v0, v2, v3

    .line 49
    .line 50
    const-string v0, "Pos: %d, limit: %d, len: %d"

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, v0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    throw v1
.end method

.method public final a(ILandroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->R0(II)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->v0(Landroidx/datastore/preferences/protobuf/ByteString;)V

    .line 8
    return-void
.end method

.method public final g([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    .line 9
    iget p1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 10
    add-int/2addr p1, p3

    .line 11
    .line 12
    iput p1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-void

    .line 14
    :catch_0
    move-exception p1

    .line 15
    .line 16
    new-instance p2, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutOfSpaceException;

    .line 17
    const/4 v0, 0x3

    .line 18
    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    .line 20
    .line 21
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x1

    .line 36
    .line 37
    aput-object v1, v0, v2

    .line 38
    const/4 v1, 0x2

    .line 39
    .line 40
    .line 41
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object p3

    .line 43
    .line 44
    aput-object p3, v0, v1

    .line 45
    .line 46
    const-string p3, "Pos: %d, limit: %d, len: %d"

    .line 47
    .line 48
    .line 49
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    move-result-object p3

    .line 51
    .line 52
    .line 53
    invoke-direct {p2, p3, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    throw p2
.end method

.method public final h(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->V0(Ljava/nio/ByteBuffer;)V

    .line 4
    return-void
.end method

.method public final i([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->g([BII)V

    .line 4
    return-void
.end method

.method public k0()V
    .locals 0

    .line 1
    return-void
.end method

.method public final q0()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final r0(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 9
    .line 10
    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p1

    .line 13
    .line 14
    new-instance v0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutOfSpaceException;

    .line 15
    const/4 v1, 0x3

    .line 16
    .line 17
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    .line 19
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    aput-object v2, v1, v3

    .line 27
    .line 28
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    aput-object v2, v1, v3

    .line 36
    const/4 v2, 0x2

    .line 37
    .line 38
    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    aput-object v3, v1, v2

    .line 43
    .line 44
    const-string v2, "Pos: %d, limit: %d, len: %d"

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    throw v0
.end method

.method public final u0([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->S0(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->g([BII)V

    .line 7
    return-void
.end method

.method public final v0(Landroidx/datastore/preferences/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->S0(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p0}, Landroidx/datastore/preferences/protobuf/ByteString;->M(Landroidx/datastore/preferences/protobuf/ByteOutput;)V

    .line 11
    return-void
.end method

.method public final writeBool(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->R0(II)V

    .line 5
    int-to-byte p1, p2

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->r0(B)V

    .line 9
    return-void
.end method

.method public final writeFixed32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->R0(II)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->y0(I)V

    .line 8
    return-void
.end method

.method public final writeFixed64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->R0(II)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->z0(J)V

    .line 8
    return-void
.end method

.method public final writeInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->R0(II)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->F0(I)V

    .line 8
    return-void
.end method

.method public final writeString(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->R0(II)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->Q0(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public final writeUInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->R0(II)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->S0(I)V

    .line 8
    return-void
.end method

.method public final writeUInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->R0(II)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->T0(J)V

    .line 8
    return-void
.end method

.method public final y0(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    and-int/lit16 v3, p1, 0xff

    .line 9
    int-to-byte v3, v3

    .line 10
    .line 11
    aput-byte v3, v0, v1

    .line 12
    .line 13
    add-int/lit8 v3, v1, 0x2

    .line 14
    .line 15
    shr-int/lit8 v4, p1, 0x8

    .line 16
    .line 17
    and-int/lit16 v4, v4, 0xff

    .line 18
    int-to-byte v4, v4

    .line 19
    .line 20
    aput-byte v4, v0, v2

    .line 21
    .line 22
    add-int/lit8 v2, v1, 0x3

    .line 23
    .line 24
    shr-int/lit8 v4, p1, 0x10

    .line 25
    .line 26
    and-int/lit16 v4, v4, 0xff

    .line 27
    int-to-byte v4, v4

    .line 28
    .line 29
    aput-byte v4, v0, v3

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x4

    .line 32
    .line 33
    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 34
    .line 35
    shr-int/lit8 p1, p1, 0x18

    .line 36
    .line 37
    and-int/lit16 p1, p1, 0xff

    .line 38
    int-to-byte p1, p1

    .line 39
    .line 40
    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    return-void

    .line 42
    :catch_0
    move-exception p1

    .line 43
    .line 44
    new-instance v0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutOfSpaceException;

    .line 45
    const/4 v1, 0x3

    .line 46
    .line 47
    new-array v1, v1, [Ljava/lang/Object;

    .line 48
    .line 49
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 50
    .line 51
    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v2

    .line 54
    const/4 v3, 0x0

    .line 55
    .line 56
    aput-object v2, v1, v3

    .line 57
    .line 58
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    .line 59
    .line 60
    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v2

    .line 63
    const/4 v3, 0x1

    .line 64
    .line 65
    aput-object v2, v1, v3

    .line 66
    .line 67
    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v2

    .line 70
    const/4 v3, 0x2

    .line 71
    .line 72
    aput-object v2, v1, v3

    .line 73
    .line 74
    const-string v2, "Pos: %d, limit: %d, len: %d"

    .line 75
    .line 76
    .line 77
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, v1, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    throw v0
.end method

.method public final z0(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->buffer:[B

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    long-to-int v3, p1

    .line 8
    .line 9
    and-int/lit16 v3, v3, 0xff

    .line 10
    int-to-byte v3, v3

    .line 11
    .line 12
    aput-byte v3, v0, v1

    .line 13
    .line 14
    add-int/lit8 v3, v1, 0x2

    .line 15
    .line 16
    const/16 v4, 0x8

    .line 17
    .line 18
    shr-long v5, p1, v4

    .line 19
    long-to-int v5, v5

    .line 20
    .line 21
    and-int/lit16 v5, v5, 0xff

    .line 22
    int-to-byte v5, v5

    .line 23
    .line 24
    aput-byte v5, v0, v2

    .line 25
    .line 26
    add-int/lit8 v2, v1, 0x3

    .line 27
    .line 28
    const/16 v5, 0x10

    .line 29
    .line 30
    shr-long v5, p1, v5

    .line 31
    long-to-int v5, v5

    .line 32
    .line 33
    and-int/lit16 v5, v5, 0xff

    .line 34
    int-to-byte v5, v5

    .line 35
    .line 36
    aput-byte v5, v0, v3

    .line 37
    .line 38
    add-int/lit8 v3, v1, 0x4

    .line 39
    .line 40
    const/16 v5, 0x18

    .line 41
    .line 42
    shr-long v5, p1, v5

    .line 43
    long-to-int v5, v5

    .line 44
    .line 45
    and-int/lit16 v5, v5, 0xff

    .line 46
    int-to-byte v5, v5

    .line 47
    .line 48
    aput-byte v5, v0, v2

    .line 49
    .line 50
    add-int/lit8 v2, v1, 0x5

    .line 51
    .line 52
    const/16 v5, 0x20

    .line 53
    .line 54
    shr-long v5, p1, v5

    .line 55
    long-to-int v5, v5

    .line 56
    .line 57
    and-int/lit16 v5, v5, 0xff

    .line 58
    int-to-byte v5, v5

    .line 59
    .line 60
    aput-byte v5, v0, v3

    .line 61
    .line 62
    add-int/lit8 v3, v1, 0x6

    .line 63
    .line 64
    const/16 v5, 0x28

    .line 65
    .line 66
    shr-long v5, p1, v5

    .line 67
    long-to-int v5, v5

    .line 68
    .line 69
    and-int/lit16 v5, v5, 0xff

    .line 70
    int-to-byte v5, v5

    .line 71
    .line 72
    aput-byte v5, v0, v2

    .line 73
    .line 74
    add-int/lit8 v2, v1, 0x7

    .line 75
    .line 76
    const/16 v5, 0x30

    .line 77
    .line 78
    shr-long v5, p1, v5

    .line 79
    long-to-int v5, v5

    .line 80
    .line 81
    and-int/lit16 v5, v5, 0xff

    .line 82
    int-to-byte v5, v5

    .line 83
    .line 84
    aput-byte v5, v0, v3

    .line 85
    add-int/2addr v1, v4

    .line 86
    .line 87
    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 88
    .line 89
    const/16 v1, 0x38

    .line 90
    shr-long/2addr p1, v1

    .line 91
    long-to-int p1, p1

    .line 92
    .line 93
    and-int/lit16 p1, p1, 0xff

    .line 94
    int-to-byte p1, p1

    .line 95
    .line 96
    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    return-void

    .line 98
    :catch_0
    move-exception p1

    .line 99
    .line 100
    new-instance p2, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutOfSpaceException;

    .line 101
    const/4 v0, 0x3

    .line 102
    .line 103
    new-array v0, v0, [Ljava/lang/Object;

    .line 104
    .line 105
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->position:I

    .line 106
    .line 107
    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    move-result-object v1

    .line 110
    const/4 v2, 0x0

    .line 111
    .line 112
    aput-object v1, v0, v2

    .line 113
    .line 114
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->limit:I

    .line 115
    .line 116
    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object v1

    .line 119
    const/4 v2, 0x1

    .line 120
    .line 121
    aput-object v1, v0, v2

    .line 122
    .line 123
    .line 124
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    move-result-object v1

    .line 126
    const/4 v2, 0x2

    .line 127
    .line 128
    aput-object v1, v0, v2

    .line 129
    .line 130
    const-string v1, "Pos: %d, limit: %d, len: %d"

    .line 131
    .line 132
    .line 133
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    .line 136
    .line 137
    invoke-direct {p2, v0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    throw p2
.end method
