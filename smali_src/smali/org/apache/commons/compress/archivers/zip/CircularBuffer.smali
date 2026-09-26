.class Lorg/apache/commons/compress/archivers/zip/CircularBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final buffer:[B

.field private readIndex:I

.field private final size:I

.field private writeIndex:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->size:I

    .line 6
    .line 7
    new-array p1, p1, [B

    .line 8
    .line 9
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->buffer:[B

    .line 10
    return-void
.end method


# virtual methods
.method public available()Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->readIndex:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->writeIndex:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public copy(II)V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->writeIndex:I

    .line 3
    sub-int/2addr v0, p1

    .line 4
    add-int/2addr p2, v0

    .line 5
    .line 6
    :goto_0
    if-ge v0, p2, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->buffer:[B

    .line 9
    .line 10
    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->writeIndex:I

    .line 11
    .line 12
    iget v2, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->size:I

    .line 13
    .line 14
    add-int v3, v0, v2

    .line 15
    rem-int/2addr v3, v2

    .line 16
    .line 17
    aget-byte v3, p1, v3

    .line 18
    .line 19
    aput-byte v3, p1, v1

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    rem-int/2addr v1, v2

    .line 23
    .line 24
    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->writeIndex:I

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method public get()I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->available()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->buffer:[B

    .line 9
    .line 10
    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->readIndex:I

    .line 11
    .line 12
    aget-byte v0, v0, v1

    .line 13
    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    iget v2, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->size:I

    .line 17
    rem-int/2addr v1, v2

    .line 18
    .line 19
    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->readIndex:I

    .line 20
    .line 21
    and-int/lit16 v0, v0, 0xff

    .line 22
    return v0

    .line 23
    :cond_0
    const/4 v0, -0x1

    .line 24
    return v0
.end method

.method public put(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->buffer:[B

    .line 3
    .line 4
    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->writeIndex:I

    .line 5
    int-to-byte p1, p1

    .line 6
    .line 7
    aput-byte p1, v0, v1

    .line 8
    .line 9
    add-int/lit8 v1, v1, 0x1

    .line 10
    .line 11
    iget p1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->size:I

    .line 12
    rem-int/2addr v1, p1

    .line 13
    .line 14
    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->writeIndex:I

    .line 15
    return-void
.end method
