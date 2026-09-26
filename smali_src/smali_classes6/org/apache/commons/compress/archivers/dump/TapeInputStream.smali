.class Lorg/apache/commons/compress/archivers/dump/TapeInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# static fields
.field private static final RECORD_SIZE:I = 0x400


# instance fields
.field private blockBuffer:[B

.field private blockSize:I

.field private bytesRead:J

.field private currBlkIdx:I

.field private isCompressed:Z

.field private readOffset:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    const/16 p1, 0x400

    .line 6
    .line 7
    new-array v0, p1, [B

    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    .line 10
    const/4 v0, -0x1

    .line 11
    .line 12
    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    .line 13
    .line 14
    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    .line 15
    .line 16
    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    .line 17
    const/4 p1, 0x0

    .line 18
    .line 19
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->isCompressed:Z

    .line 20
    .line 21
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    .line 24
    return-void
.end method

.method private readBlock(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 3
    .line 4
    if-eqz v0, :cond_8

    .line 5
    .line 6
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->isCompressed:Z

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_7

    .line 11
    .line 12
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    .line 13
    const/4 v3, -0x1

    .line 14
    .line 15
    if-ne v0, v3, :cond_0

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    .line 20
    const/4 v3, 0x4

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0, v2, v3}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)V

    .line 24
    .line 25
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    .line 26
    .line 27
    const-wide/16 v6, 0x4

    .line 28
    add-long/2addr v4, v6

    .line 29
    .line 30
    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    .line 31
    .line 32
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    .line 36
    move-result v0

    .line 37
    .line 38
    and-int/lit8 v4, v0, 0x1

    .line 39
    .line 40
    if-ne v4, v1, :cond_6

    .line 41
    .line 42
    shr-int/lit8 v4, v0, 0x1

    .line 43
    shr-int/2addr v0, v3

    .line 44
    .line 45
    .line 46
    const v3, 0xfffffff

    .line 47
    and-int/2addr v0, v3

    .line 48
    .line 49
    new-array v3, v0, [B

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v3, v2, v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)V

    .line 53
    .line 54
    iget-wide v5, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    .line 55
    int-to-long v7, v0

    .line 56
    add-long/2addr v5, v7

    .line 57
    .line 58
    iput-wide v5, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    .line 59
    .line 60
    if-nez p1, :cond_1

    .line 61
    .line 62
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 66
    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :cond_1
    sget-object p1, Lorg/apache/commons/compress/archivers/dump/TapeInputStream$1;->$SwitchMap$org$apache$commons$compress$archivers$dump$DumpArchiveConstants$COMPRESSION_TYPE:[I

    .line 70
    const/4 v5, 0x3

    .line 71
    and-int/2addr v4, v5

    .line 72
    .line 73
    .line 74
    invoke-static {v4}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;->find(I)Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;

    .line 75
    move-result-object v4

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 79
    move-result v4

    .line 80
    .line 81
    aget p1, p1, v4

    .line 82
    .line 83
    if-eq p1, v1, :cond_4

    .line 84
    const/4 v0, 0x2

    .line 85
    .line 86
    if-eq p1, v0, :cond_3

    .line 87
    .line 88
    if-eq p1, v5, :cond_2

    .line 89
    .line 90
    new-instance p1, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;

    .line 91
    .line 92
    .line 93
    invoke-direct {p1}, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;-><init>()V

    .line 94
    throw p1

    .line 95
    .line 96
    :cond_2
    new-instance p1, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;

    .line 97
    .line 98
    const-string v0, "LZO"

    .line 99
    .line 100
    .line 101
    invoke-direct {p1, v0}, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 102
    throw p1

    .line 103
    .line 104
    :cond_3
    new-instance p1, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;

    .line 105
    .line 106
    const-string v0, "BZLIB2"

    .line 107
    .line 108
    .line 109
    invoke-direct {p1, v0}, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 110
    throw p1

    .line 111
    .line 112
    :cond_4
    new-instance p1, Ljava/util/zip/Inflater;

    .line 113
    .line 114
    .line 115
    invoke-direct {p1}, Ljava/util/zip/Inflater;-><init>()V

    .line 116
    .line 117
    .line 118
    :try_start_0
    invoke-virtual {p1, v3, v2, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 119
    .line 120
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0}, Ljava/util/zip/Inflater;->inflate([B)I

    .line 124
    move-result v0

    .line 125
    .line 126
    iget v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .line 128
    if-ne v0, v3, :cond_5

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->end()V

    .line 132
    goto :goto_2

    .line 133
    .line 134
    :cond_5
    :try_start_1
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/ShortFileException;

    .line 135
    .line 136
    .line 137
    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/ShortFileException;-><init>()V

    .line 138
    throw v0
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :catchall_0
    move-exception v0

    .line 140
    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .line 143
    :try_start_2
    new-instance v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;

    .line 144
    .line 145
    const-string v2, "bad data"

    .line 146
    .line 147
    .line 148
    invoke-direct {v1, v2, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    .line 151
    .line 152
    :goto_0
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->end()V

    .line 153
    throw v0

    .line 154
    .line 155
    :cond_6
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    .line 156
    .line 157
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    .line 158
    .line 159
    .line 160
    invoke-direct {p0, p1, v2, v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)V

    .line 161
    .line 162
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    .line 163
    .line 164
    iget p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    .line 165
    int-to-long v5, p1

    .line 166
    add-long/2addr v3, v5

    .line 167
    .line 168
    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    .line 169
    goto :goto_2

    .line 170
    .line 171
    :cond_7
    :goto_1
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    .line 172
    .line 173
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    .line 174
    .line 175
    .line 176
    invoke-direct {p0, p1, v2, v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)V

    .line 177
    .line 178
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    .line 179
    .line 180
    iget p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    .line 181
    int-to-long v5, p1

    .line 182
    add-long/2addr v3, v5

    .line 183
    .line 184
    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    .line 185
    .line 186
    :goto_2
    iget p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    .line 187
    add-int/2addr p1, v1

    .line 188
    .line 189
    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    .line 190
    .line 191
    iput v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    .line 192
    return-void

    .line 193
    .line 194
    :cond_8
    new-instance p1, Ljava/io/IOException;

    .line 195
    .line 196
    const-string v0, "input buffer is closed"

    .line 197
    .line 198
    .line 199
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 200
    throw p1
.end method

.method private readFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    .line 6
    move-result p1

    .line 7
    .line 8
    if-lt p1, p3, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    new-instance p1, Lorg/apache/commons/compress/archivers/dump/ShortFileException;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1}, Lorg/apache/commons/compress/archivers/dump/ShortFileException;-><init>()V

    .line 15
    throw p1
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
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    .line 3
    .line 4
    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    sub-int/2addr v1, v0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 7
    .line 8
    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 16
    :cond_0
    return-void
.end method

.method public getBytesRead()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    return-wide v0
.end method

.method public peek()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    .line 3
    .line 4
    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readBlock(Z)V
    :try_end_0
    .catch Lorg/apache/commons/compress/archivers/dump/ShortFileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    const/4 v0, 0x0

    .line 13
    return-object v0

    .line 14
    .line 15
    :cond_0
    :goto_0
    const/16 v0, 0x400

    .line 16
    .line 17
    new-array v1, v0, [B

    .line 18
    .line 19
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    .line 20
    .line 21
    iget v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    .line 22
    const/4 v4, 0x0

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    return-object v1
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "all reads must be multiple of record size (1024 bytes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    rem-int/lit16 v0, p3, 0x400

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readBlock(Z)V
    :try_end_0
    .catch Lorg/apache/commons/compress/archivers/dump/ShortFileException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p1, -0x1

    return p1

    :cond_0
    :goto_1
    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    sub-int v2, p3, v0

    add-int v3, v1, v2

    iget v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    if-gt v3, v4, :cond_1

    goto :goto_2

    :cond_1
    sub-int v2, v4, v1

    :goto_2
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    .line 4
    invoke-static {v3, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    add-int/2addr v0, v2

    add-int/2addr p2, v2

    goto :goto_0

    :cond_2
    return v0

    .line 5
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "all reads must be multiple of record size (1024 bytes."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readRecord()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x400

    .line 3
    .line 4
    new-array v1, v0, [B

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->read([BII)I

    .line 9
    move-result v0

    .line 10
    const/4 v2, -0x1

    .line 11
    .line 12
    if-eq v2, v0, :cond_0

    .line 13
    return-object v1

    .line 14
    .line 15
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/ShortFileException;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/ShortFileException;-><init>()V

    .line 19
    throw v0
.end method

.method public resetBlockSize(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iput-boolean p2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->isCompressed:Z

    .line 3
    .line 4
    const/16 p2, 0x400

    .line 5
    mul-int/2addr p1, p2

    .line 6
    .line 7
    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    .line 10
    .line 11
    new-array p1, p1, [B

    .line 12
    .line 13
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    .line 19
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    .line 20
    .line 21
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    .line 22
    sub-int/2addr v0, p2

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)V

    .line 26
    .line 27
    iput v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    .line 28
    .line 29
    iput p2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    .line 30
    return-void
.end method

.method public skip(J)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const-wide/16 v0, 0x400

    .line 3
    .line 4
    rem-long v0, p1, v0

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-nez v0, :cond_4

    .line 11
    .line 12
    :goto_0
    cmp-long v0, v2, p1

    .line 13
    .line 14
    if-gez v0, :cond_3

    .line 15
    .line 16
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    .line 17
    .line 18
    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    sub-long v4, p1, v2

    .line 23
    int-to-long v0, v1

    .line 24
    .line 25
    cmp-long v0, v4, v0

    .line 26
    .line 27
    if-gez v0, :cond_0

    .line 28
    const/4 v0, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    .line 32
    .line 33
    :goto_1
    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readBlock(Z)V
    :try_end_0
    .catch Lorg/apache/commons/compress/archivers/dump/ShortFileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_2

    .line 35
    .line 36
    :catch_0
    const-wide/16 p1, -0x1

    .line 37
    return-wide p1

    .line 38
    .line 39
    :cond_1
    :goto_2
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    .line 40
    int-to-long v4, v0

    .line 41
    .line 42
    sub-long v6, p1, v2

    .line 43
    add-long/2addr v4, v6

    .line 44
    .line 45
    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    .line 46
    int-to-long v8, v1

    .line 47
    .line 48
    cmp-long v4, v4, v8

    .line 49
    .line 50
    if-gtz v4, :cond_2

    .line 51
    goto :goto_3

    .line 52
    :cond_2
    int-to-long v4, v1

    .line 53
    int-to-long v6, v0

    .line 54
    .line 55
    sub-long v6, v4, v6

    .line 56
    :goto_3
    int-to-long v0, v0

    .line 57
    add-long/2addr v0, v6

    .line 58
    long-to-int v0, v0

    .line 59
    .line 60
    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    .line 61
    add-long/2addr v2, v6

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    return-wide v2

    .line 64
    .line 65
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    const-string p2, "all reads must be multiple of record size (1024 bytes."

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p1
.end method
