.class public Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;
    }
.end annotation


# static fields
.field public static final DEFAULT_BLOCK_SIZE:I = 0x8000

.field private static final TAG_MASK:I = 0x3


# instance fields
.field private endReached:Z

.field private final size:I

.field private state:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

.field private uncompressedBytesRemaining:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x8000

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 3
    sget-object p1, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;->NO_BLOCK:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->state:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->endReached:Z

    .line 4
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readSize()J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->size:I

    iput p1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->uncompressedBytesRemaining:I

    return-void
.end method

.method private fill()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->uncompressedBytesRemaining:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-boolean v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->endReached:Z

    .line 8
    return-void

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->readOneByte()I

    .line 12
    move-result v0

    .line 13
    const/4 v2, -0x1

    .line 14
    .line 15
    if-eq v0, v2, :cond_6

    .line 16
    .line 17
    and-int/lit8 v3, v0, 0x3

    .line 18
    .line 19
    if-eqz v3, :cond_5

    .line 20
    const/4 v4, 0x4

    .line 21
    const/4 v5, 0x3

    .line 22
    .line 23
    if-eq v3, v1, :cond_3

    .line 24
    const/4 v2, 0x2

    .line 25
    .line 26
    if-eq v3, v2, :cond_2

    .line 27
    .line 28
    if-eq v3, v5, :cond_1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    shr-int/2addr v0, v2

    .line 31
    add-int/2addr v0, v1

    .line 32
    .line 33
    iget v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->uncompressedBytesRemaining:I

    .line 34
    sub-int/2addr v1, v0

    .line 35
    .line 36
    iput v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->uncompressedBytesRemaining:I

    .line 37
    .line 38
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->supplier:Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v4}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;I)J

    .line 42
    move-result-wide v1

    .line 43
    long-to-int v1, v1

    .line 44
    .line 45
    .line 46
    const v2, 0x7fffffff

    .line 47
    and-int/2addr v1, v2

    .line 48
    int-to-long v2, v0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->startBackReference(IJ)V

    .line 52
    .line 53
    sget-object v0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;->IN_BACK_REFERENCE:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    .line 54
    .line 55
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->state:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    shr-int/2addr v0, v2

    .line 58
    add-int/2addr v0, v1

    .line 59
    .line 60
    iget v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->uncompressedBytesRemaining:I

    .line 61
    sub-int/2addr v1, v0

    .line 62
    .line 63
    iput v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->uncompressedBytesRemaining:I

    .line 64
    .line 65
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->supplier:Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v2}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;I)J

    .line 69
    move-result-wide v1

    .line 70
    long-to-int v1, v1

    .line 71
    int-to-long v2, v0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->startBackReference(IJ)V

    .line 75
    .line 76
    sget-object v0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;->IN_BACK_REFERENCE:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    .line 77
    .line 78
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->state:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :cond_3
    shr-int/lit8 v1, v0, 0x2

    .line 82
    .line 83
    and-int/lit8 v1, v1, 0x7

    .line 84
    add-int/2addr v1, v4

    .line 85
    .line 86
    iget v3, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->uncompressedBytesRemaining:I

    .line 87
    sub-int/2addr v3, v1

    .line 88
    .line 89
    iput v3, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->uncompressedBytesRemaining:I

    .line 90
    .line 91
    and-int/lit16 v0, v0, 0xe0

    .line 92
    shl-int/2addr v0, v5

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->readOneByte()I

    .line 96
    move-result v3

    .line 97
    .line 98
    if-eq v3, v2, :cond_4

    .line 99
    or-int/2addr v0, v3

    .line 100
    int-to-long v1, v1

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->startBackReference(IJ)V

    .line 104
    .line 105
    sget-object v0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;->IN_BACK_REFERENCE:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    .line 106
    .line 107
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->state:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    .line 108
    goto :goto_0

    .line 109
    .line 110
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 111
    .line 112
    const-string v1, "Premature end of stream reading back-reference length"

    .line 113
    .line 114
    .line 115
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 116
    throw v0

    .line 117
    .line 118
    .line 119
    :cond_5
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->readLiteralLength(I)I

    .line 120
    move-result v0

    .line 121
    .line 122
    iget v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->uncompressedBytesRemaining:I

    .line 123
    sub-int/2addr v1, v0

    .line 124
    .line 125
    iput v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->uncompressedBytesRemaining:I

    .line 126
    int-to-long v0, v0

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->startLiteral(J)V

    .line 130
    .line 131
    sget-object v0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;->IN_LITERAL:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    .line 132
    .line 133
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->state:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    .line 134
    :goto_0
    return-void

    .line 135
    .line 136
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 137
    .line 138
    const-string v1, "Premature end of stream reading block start"

    .line 139
    .line 140
    .line 141
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 142
    throw v0
.end method

.method private readLiteralLength(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    shr-int/2addr p1, v0

    .line 3
    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    goto :goto_1

    .line 7
    .line 8
    :pswitch_0
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->supplier:Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;

    .line 9
    const/4 v0, 0x4

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;I)J

    .line 13
    move-result-wide v0

    .line 14
    :goto_0
    long-to-int p1, v0

    .line 15
    goto :goto_1

    .line 16
    .line 17
    :pswitch_1
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->supplier:Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;

    .line 18
    const/4 v0, 0x3

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;I)J

    .line 22
    move-result-wide v0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :pswitch_2
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->supplier:Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;I)J

    .line 29
    move-result-wide v0

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->readOneByte()I

    .line 34
    move-result p1

    .line 35
    const/4 v0, -0x1

    .line 36
    .line 37
    if-eq p1, v0, :cond_0

    .line 38
    .line 39
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 40
    return p1

    .line 41
    .line 42
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 43
    .line 44
    const-string v0, "Premature end of stream reading literal length"

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p1

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
    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readSize()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->readOneByte()I

    .line 7
    move-result v3

    .line 8
    const/4 v4, -0x1

    .line 9
    .line 10
    if-eq v3, v4, :cond_1

    .line 11
    .line 12
    and-int/lit8 v4, v3, 0x7f

    .line 13
    .line 14
    add-int/lit8 v5, v0, 0x1

    .line 15
    .line 16
    mul-int/lit8 v0, v0, 0x7

    .line 17
    .line 18
    shl-int v0, v4, v0

    .line 19
    int-to-long v6, v0

    .line 20
    or-long/2addr v1, v6

    .line 21
    .line 22
    and-int/lit16 v0, v3, 0x80

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    return-wide v1

    .line 26
    :cond_0
    move v0, v5

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 30
    .line 31
    const-string v1, "Premature end of stream reading size"

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 35
    throw v0
.end method


# virtual methods
.method public getSize()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->size:I

    return v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->endReached:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 p1, -0x1

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    sget-object v0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$1;->$SwitchMap$org$apache$commons$compress$compressors$snappy$SnappyCompressorInputStream$State:[I

    .line 9
    .line 10
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->state:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    move-result v1

    .line 15
    .line 16
    aget v0, v0, v1

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    if-eq v0, v1, :cond_7

    .line 20
    const/4 v1, 0x2

    .line 21
    .line 22
    if-eq v0, v1, :cond_4

    .line 23
    const/4 v1, 0x3

    .line 24
    .line 25
    if-ne v0, v1, :cond_3

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->readBackReference([BII)I

    .line 29
    move-result v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->hasMoreDataInBlock()Z

    .line 33
    move-result v1

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    sget-object v1, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;->NO_BLOCK:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    .line 38
    .line 39
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->state:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    .line 40
    .line 41
    :cond_1
    if-lez v0, :cond_2

    .line 42
    goto :goto_0

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->read([BII)I

    .line 46
    move-result v0

    .line 47
    :goto_0
    return v0

    .line 48
    .line 49
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 50
    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    const-string p3, "Unknown stream state "

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    iget-object p3, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->state:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p2

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p1

    .line 73
    .line 74
    .line 75
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->readLiteral([BII)I

    .line 76
    move-result v0

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->hasMoreDataInBlock()Z

    .line 80
    move-result v1

    .line 81
    .line 82
    if-nez v1, :cond_5

    .line 83
    .line 84
    sget-object v1, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;->NO_BLOCK:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    .line 85
    .line 86
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->state:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream$State;

    .line 87
    .line 88
    :cond_5
    if-lez v0, :cond_6

    .line 89
    goto :goto_1

    .line 90
    .line 91
    .line 92
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->read([BII)I

    .line 93
    move-result v0

    .line 94
    :goto_1
    return v0

    .line 95
    .line 96
    .line 97
    :cond_7
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->fill()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->read([BII)I

    .line 101
    move-result p1

    .line 102
    return p1
.end method
