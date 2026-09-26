.class public Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "SourceFile"


# static fields
.field static final COMPRESSED_CHUNK_TYPE:I = 0x0

.field static final MASK_OFFSET:J = 0xa282ead8L

.field private static final MAX_SKIPPABLE_TYPE:I = 0xfd

.field private static final MAX_UNSKIPPABLE_TYPE:I = 0x7f

.field private static final MIN_UNSKIPPABLE_TYPE:I = 0x2

.field private static final PADDING_CHUNK_TYPE:I = 0xfe

.field private static final STREAM_IDENTIFIER_TYPE:I = 0xff

.field static final SZ_SIGNATURE:[B

.field private static final UNCOMPRESSED_CHUNK_TYPE:I = 0x1


# instance fields
.field private final blockSize:I

.field private final checksum:Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;

.field private currentCompressedChunk:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;

.field private final dialect:Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

.field private endReached:Z

.field private expectedChecksum:J

.field private final in:Ljava/io/PushbackInputStream;

.field private inUncompressedChunk:Z

.field private final oneByte:[B

.field private final supplier:Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;

.field private uncompressedBytesRemaining:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->SZ_SIGNATURE:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        0x6t
        0x0t
        0x0t
        0x73t
        0x4et
        0x61t
        0x50t
        0x70t
        0x59t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;->STANDARD:Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->oneByte:[B

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->expectedChecksum:J

    .line 4
    new-instance v1, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;

    invoke-direct {v1}, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->checksum:Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;

    .line 5
    new-instance v1, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream$1;

    invoke-direct {v1, p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream$1;-><init>(Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;)V

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->supplier:Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;

    .line 6
    new-instance v1, Ljava/io/PushbackInputStream;

    invoke-direct {v1, p1, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->in:Ljava/io/PushbackInputStream;

    iput p2, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->blockSize:I

    iput-object p3, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->dialect:Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

    .line 7
    invoke-virtual {p3}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;->hasStreamIdentifier()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->readStreamIdentifier()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x8000

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;-><init>(Ljava/io/InputStream;ILorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->readOneByte()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static matches([BI)Z
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->SZ_SIGNATURE:[B

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-ge p1, v1, :cond_0

    .line 7
    return v2

    .line 8
    :cond_0
    array-length p1, p0

    .line 9
    array-length v1, v0

    .line 10
    .line 11
    if-le p1, v1, :cond_1

    .line 12
    array-length p1, v0

    .line 13
    .line 14
    new-array p1, p1, [B

    .line 15
    array-length v1, v0

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    move-object p0, p1

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method private readCrc()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->in:Ljava/io/PushbackInputStream;

    .line 6
    .line 7
    .line 8
    invoke-static {v2, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 9
    move-result v2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    .line 13
    .line 14
    if-ne v2, v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian([B)J

    .line 18
    move-result-wide v0

    .line 19
    return-wide v0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 22
    .line 23
    const-string v1, "premature end of stream"

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 27
    throw v0
.end method

.method private readNextBlock()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->verifyLastChecksumAndReset()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->inUncompressedChunk:Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->readOneByte()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, -0x1

    .line 12
    const/4 v2, 0x1

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iput-boolean v2, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->endReached:Z

    .line 17
    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :cond_0
    const/16 v1, 0xff

    .line 21
    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->in:Ljava/io/PushbackInputStream;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 28
    .line 29
    const-wide/16 v0, 0x1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->pushedBackBytes(J)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->readStreamIdentifier()V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->readNextBlock()V

    .line 39
    .line 40
    goto/16 :goto_4

    .line 41
    .line 42
    :cond_1
    const/16 v1, 0xfe

    .line 43
    .line 44
    if-eq v0, v1, :cond_9

    .line 45
    .line 46
    const/16 v1, 0x7f

    .line 47
    .line 48
    if-le v0, v1, :cond_2

    .line 49
    .line 50
    const/16 v3, 0xfd

    .line 51
    .line 52
    if-gt v0, v3, :cond_2

    .line 53
    .line 54
    goto/16 :goto_3

    .line 55
    :cond_2
    const/4 v3, 0x2

    .line 56
    .line 57
    if-lt v0, v3, :cond_4

    .line 58
    .line 59
    if-le v0, v1, :cond_3

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_3
    new-instance v1, Ljava/io/IOException;

    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    const-string v3, "unskippable chunk with type "

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v3, " (hex "

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v0, ") detected."

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    .line 99
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 100
    throw v1

    .line 101
    .line 102
    :cond_4
    :goto_0
    if-ne v0, v2, :cond_5

    .line 103
    .line 104
    iput-boolean v2, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->inUncompressedChunk:Z

    .line 105
    .line 106
    .line 107
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->readSize()I

    .line 108
    move-result v0

    .line 109
    .line 110
    add-int/lit8 v0, v0, -0x4

    .line 111
    .line 112
    iput v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->uncompressedBytesRemaining:I

    .line 113
    .line 114
    .line 115
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->readCrc()J

    .line 116
    move-result-wide v0

    .line 117
    .line 118
    .line 119
    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->unmask(J)J

    .line 120
    move-result-wide v0

    .line 121
    .line 122
    iput-wide v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->expectedChecksum:J

    .line 123
    goto :goto_4

    .line 124
    .line 125
    :cond_5
    if-nez v0, :cond_8

    .line 126
    .line 127
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->dialect:Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;->usesChecksumWithCompressedChunks()Z

    .line 131
    move-result v0

    .line 132
    .line 133
    .line 134
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->readSize()I

    .line 135
    move-result v1

    .line 136
    int-to-long v1, v1

    .line 137
    .line 138
    if-eqz v0, :cond_6

    .line 139
    .line 140
    const-wide/16 v3, 0x4

    .line 141
    goto :goto_1

    .line 142
    .line 143
    :cond_6
    const-wide/16 v3, 0x0

    .line 144
    :goto_1
    sub-long/2addr v1, v3

    .line 145
    .line 146
    if-eqz v0, :cond_7

    .line 147
    .line 148
    .line 149
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->readCrc()J

    .line 150
    move-result-wide v3

    .line 151
    .line 152
    .line 153
    invoke-static {v3, v4}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->unmask(J)J

    .line 154
    move-result-wide v3

    .line 155
    .line 156
    iput-wide v3, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->expectedChecksum:J

    .line 157
    goto :goto_2

    .line 158
    .line 159
    :cond_7
    const-wide/16 v3, -0x1

    .line 160
    .line 161
    iput-wide v3, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->expectedChecksum:J

    .line 162
    .line 163
    :goto_2
    new-instance v0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;

    .line 164
    .line 165
    new-instance v3, Lorg/apache/commons/compress/utils/BoundedInputStream;

    .line 166
    .line 167
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->in:Ljava/io/PushbackInputStream;

    .line 168
    .line 169
    .line 170
    invoke-direct {v3, v4, v1, v2}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 171
    .line 172
    iget v1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->blockSize:I

    .line 173
    .line 174
    .line 175
    invoke-direct {v0, v3, v1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 176
    .line 177
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->currentCompressedChunk:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->getBytesRead()J

    .line 181
    move-result-wide v0

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(J)V

    .line 185
    goto :goto_4

    .line 186
    .line 187
    :cond_8
    new-instance v1, Ljava/io/IOException;

    .line 188
    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    const-string v3, "unknown chunk type "

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    const-string v0, " detected."

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object v0

    .line 210
    .line 211
    .line 212
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 213
    throw v1

    .line 214
    .line 215
    .line 216
    :cond_9
    :goto_3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->skipBlock()V

    .line 217
    .line 218
    .line 219
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->readNextBlock()V

    .line 220
    :goto_4
    return-void
.end method

.method private readOnce([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->inUncompressedChunk:Z

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->uncompressedBytesRemaining:I

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    .line 11
    move-result p3

    .line 12
    .line 13
    if-nez p3, :cond_0

    .line 14
    return v1

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->in:Ljava/io/PushbackInputStream;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PushbackInputStream;->read([BII)I

    .line 20
    move-result p3

    .line 21
    .line 22
    if-eq p3, v1, :cond_1

    .line 23
    .line 24
    iget v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->uncompressedBytesRemaining:I

    .line 25
    sub-int/2addr v0, p3

    .line 26
    .line 27
    iput v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->uncompressedBytesRemaining:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    .line 31
    :cond_1
    :goto_0
    move v1, p3

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->currentCompressedChunk:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->getBytesRead()J

    .line 40
    move-result-wide v2

    .line 41
    .line 42
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->currentCompressedChunk:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;->read([BII)I

    .line 46
    move-result p3

    .line 47
    .line 48
    if-ne p3, v1, :cond_3

    .line 49
    .line 50
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->currentCompressedChunk:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->close()V

    .line 54
    const/4 v0, 0x0

    .line 55
    .line 56
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->currentCompressedChunk:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->currentCompressedChunk:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->getBytesRead()J

    .line 63
    move-result-wide v0

    .line 64
    sub-long/2addr v0, v2

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(J)V

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_4
    :goto_1
    if-lez v1, :cond_5

    .line 71
    .line 72
    iget-object p3, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->checksum:Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, p1, p2, v1}, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->update([BII)V

    .line 76
    :cond_5
    return v1
.end method

.method private readOneByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->in:Ljava/io/PushbackInputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    .line 14
    .line 15
    and-int/lit16 v0, v0, 0xff

    .line 16
    return v0

    .line 17
    :cond_0
    return v1
.end method

.method private readSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->supplier:Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;

    .line 3
    const/4 v1, 0x3

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;I)J

    .line 7
    move-result-wide v0

    .line 8
    long-to-int v0, v0

    .line 9
    return v0
.end method

.method private readStreamIdentifier()V
    .locals 3
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
    new-array v1, v0, [B

    .line 5
    .line 6
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->in:Ljava/io/PushbackInputStream;

    .line 7
    .line 8
    .line 9
    invoke-static {v2, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 10
    move-result v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    .line 14
    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->matches([BI)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    return-void

    .line 23
    .line 24
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 25
    .line 26
    const-string v1, "Not a framed Snappy stream"

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 30
    throw v0
.end method

.method private skipBlock()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->readSize()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->in:Ljava/io/PushbackInputStream;

    .line 7
    int-to-long v2, v0

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v2, v3}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    .line 11
    move-result-wide v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(J)V

    .line 15
    .line 16
    cmp-long v0, v0, v2

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    return-void

    .line 20
    .line 21
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 22
    .line 23
    const-string v1, "premature end of stream"

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 27
    throw v0
.end method

.method static unmask(J)J
    .locals 5

    const-wide v0, 0xa282ead8L

    sub-long/2addr p0, v0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    const/16 v2, 0x11

    shr-long v2, p0, v2

    const/16 v4, 0xf

    shl-long/2addr p0, v4

    or-long/2addr p0, v2

    and-long/2addr p0, v0

    return-wide p0
.end method

.method private verifyLastChecksumAndReset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->expectedChecksum:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v2, v0, v2

    .line 7
    .line 8
    if-ltz v2, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->checksum:Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->getValue()J

    .line 14
    move-result-wide v2

    .line 15
    .line 16
    cmp-long v0, v0, v2

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 22
    .line 23
    const-string v1, "Checksum verification failed"

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 27
    throw v0

    .line 28
    .line 29
    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    .line 30
    .line 31
    iput-wide v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->expectedChecksum:J

    .line 32
    .line 33
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->checksum:Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/snappy/PureJavaCrc32C;->reset()V

    .line 37
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->inUncompressedChunk:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->uncompressedBytesRemaining:I

    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->in:Ljava/io/PushbackInputStream;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->available()I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->currentCompressedChunk:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->available()I

    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->currentCompressedChunk:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->close()V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->currentCompressedChunk:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->in:Ljava/io/PushbackInputStream;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    .line 16
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->oneByte:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->oneByte:[B

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->readOnce([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->readNextBlock()V

    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->endReached:Z

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->readOnce([BII)I

    move-result v0

    :cond_1
    return v0
.end method
