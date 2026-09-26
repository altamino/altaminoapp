.class final Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;
.super Landroidx/datastore/preferences/protobuf/CodedInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArrayDecoder"
.end annotation


# instance fields
.field private final buffer:[B

.field private bufferSizeAfterLimit:I

.field private currentLimit:I

.field private enableAliasing:Z

.field private final immutable:Z

.field private lastTag:I

.field private limit:I

.field private pos:I

.field private startPos:I


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;-><init>(Landroidx/datastore/preferences/protobuf/CodedInputStream$1;)V

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    add-int/2addr p3, p2

    iput p3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iput p2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    iput p2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->startPos:I

    iput-boolean p4, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->immutable:Z

    return-void
.end method

.method synthetic constructor <init>([BIIZLandroidx/datastore/preferences/protobuf/CodedInputStream$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;-><init>([BIIZ)V

    return-void
.end method

.method private N()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->bufferSizeAfterLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->startPos:I

    sub-int v1, v0, v1

    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->bufferSizeAfterLimit:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->bufferSizeAfterLimit:I

    :goto_0
    return-void
.end method

.method private Q()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 5
    sub-int/2addr v0, v1

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->R()V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->S()V

    .line 17
    :goto_0
    return-void
.end method

.method private R()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    const/16 v1, 0xa

    .line 4
    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    .line 8
    .line 9
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 10
    .line 11
    add-int/lit8 v3, v2, 0x1

    .line 12
    .line 13
    iput v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 14
    .line 15
    aget-byte v1, v1, v2

    .line 16
    .line 17
    if-ltz v1, :cond_0

    .line 18
    return-void

    .line 19
    .line 20
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->e()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 25
    move-result-object v0

    .line 26
    throw v0
.end method

.method private S()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    const/16 v1, 0xa

    .line 4
    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->G()B

    .line 9
    move-result v1

    .line 10
    .line 11
    if-ltz v1, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->e()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 19
    move-result-object v0

    .line 20
    throw v0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->K()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    .line 9
    .line 10
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 11
    sub-int/2addr v1, v2

    .line 12
    .line 13
    if-gt v0, v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Ljava/lang/String;

    .line 16
    .line 17
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    .line 18
    .line 19
    sget-object v4, Landroidx/datastore/preferences/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 23
    .line 24
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 25
    add-int/2addr v2, v0

    .line 26
    .line 27
    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 28
    return-object v1

    .line 29
    .line 30
    :cond_0
    if-nez v0, :cond_1

    .line 31
    .line 32
    const-string v0, ""

    .line 33
    return-object v0

    .line 34
    .line 35
    :cond_1
    if-gez v0, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->f()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 39
    move-result-object v0

    .line 40
    throw v0

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->k()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 44
    move-result-object v0

    .line 45
    throw v0
.end method

.method public B()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->K()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    .line 9
    .line 10
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 11
    sub-int/2addr v1, v2

    .line 12
    .line 13
    if-gt v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2, v0}, Landroidx/datastore/preferences/protobuf/Utf8;->h([BII)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 22
    add-int/2addr v2, v0

    .line 23
    .line 24
    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 25
    return-object v1

    .line 26
    .line 27
    :cond_0
    if-nez v0, :cond_1

    .line 28
    .line 29
    const-string v0, ""

    .line 30
    return-object v0

    .line 31
    .line 32
    :cond_1
    if-gtz v0, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->f()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 36
    move-result-object v0

    .line 37
    throw v0

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->k()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 41
    move-result-object v0

    .line 42
    throw v0
.end method

.method public C()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->e()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    .line 10
    return v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->K()I

    .line 14
    move-result v0

    .line 15
    .line 16
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/WireFormat;->a(I)I

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    .line 25
    return v0

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->b()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 29
    move-result-object v0

    .line 30
    throw v0
.end method

.method public D()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->K()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public E()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->L()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public F(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/WireFormat;->b(I)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    if-eq v0, v1, :cond_4

    .line 10
    const/4 v2, 0x2

    .line 11
    .line 12
    if-eq v0, v2, :cond_3

    .line 13
    const/4 v2, 0x3

    .line 14
    const/4 v3, 0x4

    .line 15
    .line 16
    if-eq v0, v2, :cond_2

    .line 17
    .line 18
    if-eq v0, v3, :cond_1

    .line 19
    const/4 p1, 0x5

    .line 20
    .line 21
    if-ne v0, p1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->P(I)V

    .line 25
    return v1

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->d()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 29
    move-result-object p1

    .line 30
    throw p1

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    return p1

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->O()V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/WireFormat;->a(I)I

    .line 39
    move-result p1

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v3}, Landroidx/datastore/preferences/protobuf/WireFormat;->c(II)I

    .line 43
    move-result p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->a(I)V

    .line 47
    return v1

    .line 48
    .line 49
    .line 50
    :cond_3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->K()I

    .line 51
    move-result p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->P(I)V

    .line 55
    return v1

    .line 56
    .line 57
    :cond_4
    const/16 p1, 0x8

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->P(I)V

    .line 61
    return v1

    .line 62
    .line 63
    .line 64
    :cond_5
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->Q()V

    .line 65
    return v1
.end method

.method public G()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    .line 9
    .line 10
    add-int/lit8 v2, v0, 0x1

    .line 11
    .line 12
    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 13
    .line 14
    aget-byte v0, v1, v0

    .line 15
    return v0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->k()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 19
    move-result-object v0

    .line 20
    throw v0
.end method

.method public H(I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-lez p1, :cond_0

    .line 3
    .line 4
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    .line 5
    .line 6
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 7
    sub-int/2addr v0, v1

    .line 8
    .line 9
    if-gt p1, v0, :cond_0

    .line 10
    add-int/2addr p1, v1

    .line 11
    .line 12
    iput p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    .line 21
    :cond_0
    if-gtz p1, :cond_2

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    sget-object p1, Landroidx/datastore/preferences/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    .line 26
    return-object p1

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->f()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 30
    move-result-object p1

    .line 31
    throw p1

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->k()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 35
    move-result-object p1

    .line 36
    throw p1
.end method

.method public I()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    .line 5
    sub-int/2addr v1, v0

    .line 6
    const/4 v2, 0x4

    .line 7
    .line 8
    if-lt v1, v2, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    .line 11
    .line 12
    add-int/lit8 v2, v0, 0x4

    .line 13
    .line 14
    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 15
    .line 16
    aget-byte v2, v1, v0

    .line 17
    .line 18
    and-int/lit16 v2, v2, 0xff

    .line 19
    .line 20
    add-int/lit8 v3, v0, 0x1

    .line 21
    .line 22
    aget-byte v3, v1, v3

    .line 23
    .line 24
    and-int/lit16 v3, v3, 0xff

    .line 25
    .line 26
    shl-int/lit8 v3, v3, 0x8

    .line 27
    or-int/2addr v2, v3

    .line 28
    .line 29
    add-int/lit8 v3, v0, 0x2

    .line 30
    .line 31
    aget-byte v3, v1, v3

    .line 32
    .line 33
    and-int/lit16 v3, v3, 0xff

    .line 34
    .line 35
    shl-int/lit8 v3, v3, 0x10

    .line 36
    or-int/2addr v2, v3

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x3

    .line 39
    .line 40
    aget-byte v0, v1, v0

    .line 41
    .line 42
    and-int/lit16 v0, v0, 0xff

    .line 43
    .line 44
    shl-int/lit8 v0, v0, 0x18

    .line 45
    or-int/2addr v0, v2

    .line 46
    return v0

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->k()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 50
    move-result-object v0

    .line 51
    throw v0
.end method

.method public J()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    .line 5
    sub-int/2addr v1, v0

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    .line 12
    .line 13
    add-int/lit8 v3, v0, 0x8

    .line 14
    .line 15
    iput v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 16
    .line 17
    aget-byte v3, v1, v0

    .line 18
    int-to-long v3, v3

    .line 19
    .line 20
    const-wide/16 v5, 0xff

    .line 21
    and-long/2addr v3, v5

    .line 22
    .line 23
    add-int/lit8 v7, v0, 0x1

    .line 24
    .line 25
    aget-byte v7, v1, v7

    .line 26
    int-to-long v7, v7

    .line 27
    and-long/2addr v7, v5

    .line 28
    shl-long/2addr v7, v2

    .line 29
    .line 30
    or-long v2, v3, v7

    .line 31
    .line 32
    add-int/lit8 v4, v0, 0x2

    .line 33
    .line 34
    aget-byte v4, v1, v4

    .line 35
    int-to-long v7, v4

    .line 36
    and-long/2addr v7, v5

    .line 37
    .line 38
    const/16 v4, 0x10

    .line 39
    shl-long/2addr v7, v4

    .line 40
    or-long/2addr v2, v7

    .line 41
    .line 42
    add-int/lit8 v4, v0, 0x3

    .line 43
    .line 44
    aget-byte v4, v1, v4

    .line 45
    int-to-long v7, v4

    .line 46
    and-long/2addr v7, v5

    .line 47
    .line 48
    const/16 v4, 0x18

    .line 49
    shl-long/2addr v7, v4

    .line 50
    or-long/2addr v2, v7

    .line 51
    .line 52
    add-int/lit8 v4, v0, 0x4

    .line 53
    .line 54
    aget-byte v4, v1, v4

    .line 55
    int-to-long v7, v4

    .line 56
    and-long/2addr v7, v5

    .line 57
    .line 58
    const/16 v4, 0x20

    .line 59
    shl-long/2addr v7, v4

    .line 60
    or-long/2addr v2, v7

    .line 61
    .line 62
    add-int/lit8 v4, v0, 0x5

    .line 63
    .line 64
    aget-byte v4, v1, v4

    .line 65
    int-to-long v7, v4

    .line 66
    and-long/2addr v7, v5

    .line 67
    .line 68
    const/16 v4, 0x28

    .line 69
    shl-long/2addr v7, v4

    .line 70
    or-long/2addr v2, v7

    .line 71
    .line 72
    add-int/lit8 v4, v0, 0x6

    .line 73
    .line 74
    aget-byte v4, v1, v4

    .line 75
    int-to-long v7, v4

    .line 76
    and-long/2addr v7, v5

    .line 77
    .line 78
    const/16 v4, 0x30

    .line 79
    shl-long/2addr v7, v4

    .line 80
    or-long/2addr v2, v7

    .line 81
    .line 82
    add-int/lit8 v0, v0, 0x7

    .line 83
    .line 84
    aget-byte v0, v1, v0

    .line 85
    int-to-long v0, v0

    .line 86
    and-long/2addr v0, v5

    .line 87
    .line 88
    const/16 v4, 0x38

    .line 89
    shl-long/2addr v0, v4

    .line 90
    or-long/2addr v0, v2

    .line 91
    return-wide v0

    .line 92
    .line 93
    .line 94
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->k()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 95
    move-result-object v0

    .line 96
    throw v0
.end method

.method public K()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    .line 5
    .line 6
    if-ne v1, v0, :cond_0

    .line 7
    goto :goto_2

    .line 8
    .line 9
    :cond_0
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    .line 10
    .line 11
    add-int/lit8 v3, v0, 0x1

    .line 12
    .line 13
    aget-byte v4, v2, v0

    .line 14
    .line 15
    if-ltz v4, :cond_1

    .line 16
    .line 17
    iput v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 18
    return v4

    .line 19
    :cond_1
    sub-int/2addr v1, v3

    .line 20
    .line 21
    const/16 v5, 0x9

    .line 22
    .line 23
    if-ge v1, v5, :cond_2

    .line 24
    goto :goto_2

    .line 25
    .line 26
    :cond_2
    add-int/lit8 v1, v0, 0x2

    .line 27
    .line 28
    aget-byte v3, v2, v3

    .line 29
    .line 30
    shl-int/lit8 v3, v3, 0x7

    .line 31
    xor-int/2addr v3, v4

    .line 32
    .line 33
    if-gez v3, :cond_3

    .line 34
    .line 35
    xor-int/lit8 v0, v3, -0x80

    .line 36
    goto :goto_3

    .line 37
    .line 38
    :cond_3
    add-int/lit8 v4, v0, 0x3

    .line 39
    .line 40
    aget-byte v1, v2, v1

    .line 41
    .line 42
    shl-int/lit8 v1, v1, 0xe

    .line 43
    xor-int/2addr v1, v3

    .line 44
    .line 45
    if-ltz v1, :cond_4

    .line 46
    .line 47
    xor-int/lit16 v0, v1, 0x3f80

    .line 48
    :goto_0
    move v1, v4

    .line 49
    goto :goto_3

    .line 50
    .line 51
    :cond_4
    add-int/lit8 v3, v0, 0x4

    .line 52
    .line 53
    aget-byte v4, v2, v4

    .line 54
    .line 55
    shl-int/lit8 v4, v4, 0x15

    .line 56
    xor-int/2addr v1, v4

    .line 57
    .line 58
    if-gez v1, :cond_5

    .line 59
    .line 60
    .line 61
    const v0, -0x1fc080

    .line 62
    xor-int/2addr v0, v1

    .line 63
    :goto_1
    move v1, v3

    .line 64
    goto :goto_3

    .line 65
    .line 66
    :cond_5
    add-int/lit8 v4, v0, 0x5

    .line 67
    .line 68
    aget-byte v3, v2, v3

    .line 69
    .line 70
    shl-int/lit8 v5, v3, 0x1c

    .line 71
    xor-int/2addr v1, v5

    .line 72
    .line 73
    .line 74
    const v5, 0xfe03f80

    .line 75
    xor-int/2addr v1, v5

    .line 76
    .line 77
    if-gez v3, :cond_7

    .line 78
    .line 79
    add-int/lit8 v3, v0, 0x6

    .line 80
    .line 81
    aget-byte v4, v2, v4

    .line 82
    .line 83
    if-gez v4, :cond_8

    .line 84
    .line 85
    add-int/lit8 v4, v0, 0x7

    .line 86
    .line 87
    aget-byte v3, v2, v3

    .line 88
    .line 89
    if-gez v3, :cond_7

    .line 90
    .line 91
    add-int/lit8 v3, v0, 0x8

    .line 92
    .line 93
    aget-byte v4, v2, v4

    .line 94
    .line 95
    if-gez v4, :cond_8

    .line 96
    .line 97
    add-int/lit8 v4, v0, 0x9

    .line 98
    .line 99
    aget-byte v3, v2, v3

    .line 100
    .line 101
    if-gez v3, :cond_7

    .line 102
    .line 103
    add-int/lit8 v0, v0, 0xa

    .line 104
    .line 105
    aget-byte v2, v2, v4

    .line 106
    .line 107
    if-gez v2, :cond_6

    .line 108
    .line 109
    .line 110
    :goto_2
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->M()J

    .line 111
    move-result-wide v0

    .line 112
    long-to-int v0, v0

    .line 113
    return v0

    .line 114
    :cond_6
    move v6, v1

    .line 115
    move v1, v0

    .line 116
    move v0, v6

    .line 117
    goto :goto_3

    .line 118
    :cond_7
    move v0, v1

    .line 119
    goto :goto_0

    .line 120
    :cond_8
    move v0, v1

    .line 121
    goto :goto_1

    .line 122
    .line 123
    :goto_3
    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 124
    return v0
.end method

.method public L()J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    .line 5
    .line 6
    if-ne v1, v0, :cond_0

    .line 7
    .line 8
    goto/16 :goto_2

    .line 9
    .line 10
    :cond_0
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    .line 11
    .line 12
    add-int/lit8 v3, v0, 0x1

    .line 13
    .line 14
    aget-byte v4, v2, v0

    .line 15
    .line 16
    if-ltz v4, :cond_1

    .line 17
    .line 18
    iput v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 19
    int-to-long v0, v4

    .line 20
    return-wide v0

    .line 21
    :cond_1
    sub-int/2addr v1, v3

    .line 22
    .line 23
    const/16 v5, 0x9

    .line 24
    .line 25
    if-ge v1, v5, :cond_2

    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_2
    add-int/lit8 v1, v0, 0x2

    .line 30
    .line 31
    aget-byte v3, v2, v3

    .line 32
    .line 33
    shl-int/lit8 v3, v3, 0x7

    .line 34
    xor-int/2addr v3, v4

    .line 35
    .line 36
    if-gez v3, :cond_3

    .line 37
    .line 38
    xor-int/lit8 v0, v3, -0x80

    .line 39
    int-to-long v2, v0

    .line 40
    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_3
    add-int/lit8 v4, v0, 0x3

    .line 44
    .line 45
    aget-byte v1, v2, v1

    .line 46
    .line 47
    shl-int/lit8 v1, v1, 0xe

    .line 48
    xor-int/2addr v1, v3

    .line 49
    .line 50
    if-ltz v1, :cond_4

    .line 51
    .line 52
    xor-int/lit16 v0, v1, 0x3f80

    .line 53
    int-to-long v2, v0

    .line 54
    move v1, v4

    .line 55
    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :cond_4
    add-int/lit8 v3, v0, 0x4

    .line 59
    .line 60
    aget-byte v4, v2, v4

    .line 61
    .line 62
    shl-int/lit8 v4, v4, 0x15

    .line 63
    xor-int/2addr v1, v4

    .line 64
    .line 65
    if-gez v1, :cond_5

    .line 66
    .line 67
    .line 68
    const v0, -0x1fc080

    .line 69
    xor-int/2addr v0, v1

    .line 70
    int-to-long v0, v0

    .line 71
    move-wide v10, v0

    .line 72
    move v1, v3

    .line 73
    move-wide v2, v10

    .line 74
    .line 75
    goto/16 :goto_3

    .line 76
    :cond_5
    int-to-long v4, v1

    .line 77
    .line 78
    add-int/lit8 v1, v0, 0x5

    .line 79
    .line 80
    aget-byte v3, v2, v3

    .line 81
    int-to-long v6, v3

    .line 82
    .line 83
    const/16 v3, 0x1c

    .line 84
    shl-long/2addr v6, v3

    .line 85
    .line 86
    xor-long v3, v4, v6

    .line 87
    .line 88
    const-wide/16 v5, 0x0

    .line 89
    .line 90
    cmp-long v7, v3, v5

    .line 91
    .line 92
    if-ltz v7, :cond_6

    .line 93
    .line 94
    .line 95
    const-wide/32 v5, 0xfe03f80

    .line 96
    .line 97
    :goto_0
    xor-long v2, v3, v5

    .line 98
    goto :goto_3

    .line 99
    .line 100
    :cond_6
    add-int/lit8 v7, v0, 0x6

    .line 101
    .line 102
    aget-byte v1, v2, v1

    .line 103
    int-to-long v8, v1

    .line 104
    .line 105
    const/16 v1, 0x23

    .line 106
    shl-long/2addr v8, v1

    .line 107
    xor-long/2addr v3, v8

    .line 108
    .line 109
    cmp-long v1, v3, v5

    .line 110
    .line 111
    if-gez v1, :cond_7

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    const-wide v0, -0x7f01fc080L

    .line 117
    .line 118
    :goto_1
    xor-long v2, v3, v0

    .line 119
    move v1, v7

    .line 120
    goto :goto_3

    .line 121
    .line 122
    :cond_7
    add-int/lit8 v1, v0, 0x7

    .line 123
    .line 124
    aget-byte v7, v2, v7

    .line 125
    int-to-long v7, v7

    .line 126
    .line 127
    const/16 v9, 0x2a

    .line 128
    shl-long/2addr v7, v9

    .line 129
    xor-long/2addr v3, v7

    .line 130
    .line 131
    cmp-long v7, v3, v5

    .line 132
    .line 133
    if-ltz v7, :cond_8

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    const-wide v5, 0x3f80fe03f80L

    .line 139
    goto :goto_0

    .line 140
    .line 141
    :cond_8
    add-int/lit8 v7, v0, 0x8

    .line 142
    .line 143
    aget-byte v1, v2, v1

    .line 144
    int-to-long v8, v1

    .line 145
    .line 146
    const/16 v1, 0x31

    .line 147
    shl-long/2addr v8, v1

    .line 148
    xor-long/2addr v3, v8

    .line 149
    .line 150
    cmp-long v1, v3, v5

    .line 151
    .line 152
    if-gez v1, :cond_9

    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    const-wide v0, -0x1fc07f01fc080L

    .line 158
    goto :goto_1

    .line 159
    .line 160
    :cond_9
    add-int/lit8 v1, v0, 0x9

    .line 161
    .line 162
    aget-byte v7, v2, v7

    .line 163
    int-to-long v7, v7

    .line 164
    .line 165
    const/16 v9, 0x38

    .line 166
    shl-long/2addr v7, v9

    .line 167
    xor-long/2addr v3, v7

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    const-wide v7, 0xfe03f80fe03f80L

    .line 173
    xor-long/2addr v3, v7

    .line 174
    .line 175
    cmp-long v7, v3, v5

    .line 176
    .line 177
    if-gez v7, :cond_b

    .line 178
    .line 179
    add-int/lit8 v0, v0, 0xa

    .line 180
    .line 181
    aget-byte v1, v2, v1

    .line 182
    int-to-long v1, v1

    .line 183
    .line 184
    cmp-long v1, v1, v5

    .line 185
    .line 186
    if-gez v1, :cond_a

    .line 187
    .line 188
    .line 189
    :goto_2
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->M()J

    .line 190
    move-result-wide v0

    .line 191
    return-wide v0

    .line 192
    :cond_a
    move v1, v0

    .line 193
    :cond_b
    move-wide v2, v3

    .line 194
    .line 195
    :goto_3
    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 196
    return-wide v2
.end method

.method M()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    .line 5
    :goto_0
    const/16 v3, 0x40

    .line 6
    .line 7
    if-ge v2, v3, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->G()B

    .line 11
    move-result v3

    .line 12
    .line 13
    and-int/lit8 v4, v3, 0x7f

    .line 14
    int-to-long v4, v4

    .line 15
    shl-long/2addr v4, v2

    .line 16
    or-long/2addr v0, v4

    .line 17
    .line 18
    and-int/lit16 v3, v3, 0x80

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    return-wide v0

    .line 22
    .line 23
    :cond_0
    add-int/lit8 v2, v2, 0x7

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->e()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 28
    move-result-object v0

    .line 29
    throw v0
.end method

.method public O()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->C()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->F(I)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    :cond_1
    return-void
.end method

.method public P(I)V
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
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    .line 5
    .line 6
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 7
    sub-int/2addr v0, v1

    .line 8
    .line 9
    if-gt p1, v0, :cond_0

    .line 10
    add-int/2addr v1, p1

    .line 11
    .line 12
    iput v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    if-gez p1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->f()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 19
    move-result-object p1

    .line 20
    throw p1

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->k()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 24
    move-result-object p1

    .line 25
    throw p1
.end method

.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->lastTag:I

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->a()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 9
    move-result-object p1

    .line 10
    throw p1
.end method

.method public d()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->startPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public e()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->N()V

    .line 6
    return-void
.end method

.method public m(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    .line 2
    if-ltz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->d()I

    .line 6
    move-result v0

    .line 7
    add-int/2addr p1, v0

    .line 8
    .line 9
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    .line 10
    .line 11
    if-gt p1, v0, :cond_0

    .line 12
    .line 13
    iput p1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->currentLimit:I

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->N()V

    .line 17
    return v0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->k()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 21
    move-result-object p1

    .line 22
    throw p1

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->f()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 26
    move-result-object p1

    .line 27
    throw p1
.end method

.method public n()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->L()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public o()Landroidx/datastore/preferences/protobuf/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->K()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-lez v0, :cond_1

    .line 7
    .line 8
    iget v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->limit:I

    .line 9
    .line 10
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 11
    sub-int/2addr v1, v2

    .line 12
    .line 13
    if-gt v0, v1, :cond_1

    .line 14
    .line 15
    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->immutable:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->enableAliasing:Z

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2, v0}, Landroidx/datastore/preferences/protobuf/ByteString;->L([BII)Landroidx/datastore/preferences/protobuf/ByteString;

    .line 27
    move-result-object v1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->buffer:[B

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v2, v0}, Landroidx/datastore/preferences/protobuf/ByteString;->p([BII)Landroidx/datastore/preferences/protobuf/ByteString;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    :goto_0
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 37
    add-int/2addr v2, v0

    .line 38
    .line 39
    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->pos:I

    .line 40
    return-object v1

    .line 41
    .line 42
    :cond_1
    if-nez v0, :cond_2

    .line 43
    .line 44
    sget-object v0, Landroidx/datastore/preferences/protobuf/ByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString;

    .line 45
    return-object v0

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->H(I)[B

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ByteString;->K([B)Landroidx/datastore/preferences/protobuf/ByteString;

    .line 53
    move-result-object v0

    .line 54
    return-object v0
.end method

.method public p()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->J()J

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

.method public q()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->K()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public r()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->I()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public s()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->J()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public t()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->I()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public u()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->K()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public v()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->L()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public w()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->I()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public x()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->J()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public y()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->K()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->b(I)I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public z()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$ArrayDecoder;->L()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream;->c(J)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method
