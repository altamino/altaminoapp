.class public Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;
.super Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;,
        Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;
    }
.end annotation


# static fields
.field private static final END_MARK:[B


# instance fields
.field private final blockData:[B

.field private blockDependencyBuffer:[B

.field private final blockHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

.field private collectedBlockDependencyBytes:I

.field private final contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

.field private currentIndex:I

.field private finished:Z

.field private final oneByte:[B

.field private final out:Ljava/io/OutputStream;

.field private final params:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->END_MARK:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->DEFAULT:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->oneByte:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->finished:Z

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->currentIndex:I

    .line 3
    new-instance v0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    iput-object p2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->params:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;

    .line 4
    invoke-static {p2}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->access$000(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;->getSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockData:[B

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 5
    invoke-static {p2}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->access$100(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    .line 6
    sget-object v0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->LZ4_SIGNATURE:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 7
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->writeFrameDescriptor()V

    .line 8
    invoke-static {p2}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->access$200(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, 0x10000

    new-array v1, p1, [B

    :cond_1
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockDependencyBuffer:[B

    return-void
.end method

.method private appendToBlockDependencyBuffer([BII)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockDependencyBuffer:[B

    .line 3
    array-length v0, v0

    .line 4
    .line 5
    .line 6
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 7
    move-result p3

    .line 8
    .line 9
    if-lez p3, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockDependencyBuffer:[B

    .line 12
    array-length v1, v0

    .line 13
    sub-int/2addr v1, p3

    .line 14
    .line 15
    if-lez v1, :cond_0

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockDependencyBuffer:[B

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    iget p1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->collectedBlockDependencyBytes:I

    .line 27
    add-int/2addr p1, p3

    .line 28
    .line 29
    iget-object p2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockDependencyBuffer:[B

    .line 30
    array-length p2, p2

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 34
    move-result p1

    .line 35
    .line 36
    iput p1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->collectedBlockDependencyBytes:I

    .line 37
    :cond_1
    return-void
.end method

.method private flushBlock()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->params:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->access$200(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 12
    .line 13
    new-instance v2, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;

    .line 14
    .line 15
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->params:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;

    .line 16
    .line 17
    .line 18
    invoke-static {v3}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->access$400(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v1, v3}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/compressors/lz77support/Parameters;)V

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockDependencyBuffer:[B

    .line 27
    array-length v4, v3

    .line 28
    .line 29
    iget v5, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->collectedBlockDependencyBytes:I

    .line 30
    sub-int/2addr v4, v5

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->prefill([BII)V

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockData:[B

    .line 40
    .line 41
    iget v4, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->currentIndex:I

    .line 42
    const/4 v5, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3, v5, v4}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->close()V

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockData:[B

    .line 53
    .line 54
    iget v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->currentIndex:I

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, v0, v5, v2}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->appendToBlockDependencyBuffer([BII)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 61
    move-result-object v0

    .line 62
    array-length v1, v0

    .line 63
    .line 64
    iget v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->currentIndex:I

    .line 65
    const/4 v3, 0x4

    .line 66
    .line 67
    if-le v1, v2, :cond_2

    .line 68
    .line 69
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 70
    .line 71
    const/high16 v1, -0x80000000

    .line 72
    or-int/2addr v1, v2

    .line 73
    int-to-long v1, v1

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/compress/utils/ByteUtils;->toLittleEndian(Ljava/io/OutputStream;JI)V

    .line 77
    .line 78
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 79
    .line 80
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockData:[B

    .line 81
    .line 82
    iget v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->currentIndex:I

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 86
    .line 87
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->params:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->access$100(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Z

    .line 91
    move-result v0

    .line 92
    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    .line 96
    .line 97
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockData:[B

    .line 98
    .line 99
    iget v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->currentIndex:I

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1, v5, v2}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->update([BII)V

    .line 103
    goto :goto_1

    .line 104
    .line 105
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 106
    array-length v2, v0

    .line 107
    int-to-long v6, v2

    .line 108
    .line 109
    .line 110
    invoke-static {v1, v6, v7, v3}, Lorg/apache/commons/compress/utils/ByteUtils;->toLittleEndian(Ljava/io/OutputStream;JI)V

    .line 111
    .line 112
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 116
    .line 117
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->params:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;

    .line 118
    .line 119
    .line 120
    invoke-static {v1}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->access$100(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Z

    .line 121
    move-result v1

    .line 122
    .line 123
    if-eqz v1, :cond_3

    .line 124
    .line 125
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    .line 126
    array-length v2, v0

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v0, v5, v2}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->update([BII)V

    .line 130
    .line 131
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->params:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;

    .line 132
    .line 133
    .line 134
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->access$100(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Z

    .line 135
    move-result v0

    .line 136
    .line 137
    if-eqz v0, :cond_4

    .line 138
    .line 139
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 140
    .line 141
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->getValue()J

    .line 145
    move-result-wide v1

    .line 146
    .line 147
    .line 148
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/compress/utils/ByteUtils;->toLittleEndian(Ljava/io/OutputStream;JI)V

    .line 149
    .line 150
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->reset()V

    .line 154
    .line 155
    :cond_4
    iput v5, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->currentIndex:I

    .line 156
    return-void

    .line 157
    :goto_2
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 158
    :catchall_1
    move-exception v1

    .line 159
    .line 160
    .line 161
    :try_start_2
    invoke-virtual {v2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 162
    goto :goto_3

    .line 163
    :catchall_2
    move-exception v2

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 167
    :goto_3
    throw v1
.end method

.method private writeFrameDescriptor()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->params:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->access$200(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/16 v0, 0x60

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    const/16 v0, 0x40

    .line 14
    .line 15
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->params:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->access$300(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    or-int/lit8 v0, v0, 0x4

    .line 24
    .line 25
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->params:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->access$100(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    or-int/lit8 v0, v0, 0x10

    .line 34
    .line 35
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 39
    .line 40
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->update(I)V

    .line 44
    .line 45
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->params:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->access$000(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$BlockSize;->getIndex()I

    .line 53
    move-result v0

    .line 54
    .line 55
    shl-int/lit8 v0, v0, 0x4

    .line 56
    .line 57
    and-int/lit8 v0, v0, 0x70

    .line 58
    .line 59
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 63
    .line 64
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->update(I)V

    .line 68
    .line 69
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 70
    .line 71
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->getValue()J

    .line 75
    move-result-wide v1

    .line 76
    .line 77
    const/16 v3, 0x8

    .line 78
    shr-long/2addr v1, v3

    .line 79
    .line 80
    const-wide/16 v3, 0xff

    .line 81
    and-long/2addr v1, v3

    .line 82
    long-to-int v1, v1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 86
    .line 87
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->reset()V

    .line 91
    return-void
.end method

.method private writeTrailer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 3
    .line 4
    sget-object v1, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->END_MARK:[B

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->params:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->access$300(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 18
    .line 19
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->getValue()J

    .line 23
    move-result-wide v1

    .line 24
    const/4 v3, 0x4

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/compress/utils/ByteUtils;->toLittleEndian(Ljava/io/OutputStream;JI)V

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->finish()V

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 9
    return-void
.end method

.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->finished:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->currentIndex:I

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->flushBlock()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->writeTrailer()V

    .line 15
    const/4 v0, 0x1

    .line 16
    .line 17
    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->finished:Z

    .line 18
    :cond_1
    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->oneByte:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    .line 1
    aput-byte p1, v0, v1

    .line 2
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->params:Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;

    .line 3
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;->access$300(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->update([BII)V

    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->currentIndex:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockData:[B

    .line 5
    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 6
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->flushBlock()V

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockData:[B

    .line 7
    array-length v1, v0

    if-le p3, v1, :cond_1

    const/4 v1, 0x0

    .line 8
    array-length v2, v0

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockData:[B

    .line 9
    array-length v1, v0

    add-int/2addr p2, v1

    .line 10
    array-length v1, v0

    sub-int/2addr p3, v1

    .line 11
    array-length v0, v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->currentIndex:I

    .line 12
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->flushBlock()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->blockData:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->currentIndex:I

    .line 13
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->currentIndex:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;->currentIndex:I

    return-void
.end method
