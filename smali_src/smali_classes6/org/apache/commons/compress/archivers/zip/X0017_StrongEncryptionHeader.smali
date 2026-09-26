.class public Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;
.super Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;
.source "SourceFile"


# instance fields
.field private algId:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

.field private bitlen:I

.field private erdData:[B

.field private flags:I

.field private format:I

.field private hashAlg:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

.field private hashSize:I

.field private ivData:[B

.field private keyBlob:[B

.field private rcount:J

.field private recipientKeyHash:[B

.field private vCRC32:[B

.field private vData:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 3
    .line 4
    const/16 v1, 0x17

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getEncryptionAlgorithm()Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->algId:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    return-object v0
.end method

.method public getHashAlgorithm()Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashAlg:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    return-object v0
.end method

.method public getRecordCount()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->rcount:J

    return-wide v0
.end method

.method public parseCentralDirectoryFormat([BII)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 4
    move-result p3

    .line 5
    .line 6
    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->format:I

    .line 7
    .line 8
    add-int/lit8 p3, p2, 0x2

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 12
    move-result p3

    .line 13
    .line 14
    .line 15
    invoke-static {p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->getAlgorithmByCode(I)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    .line 16
    move-result-object p3

    .line 17
    .line 18
    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->algId:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    .line 19
    .line 20
    add-int/lit8 p3, p2, 0x4

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 24
    move-result p3

    .line 25
    .line 26
    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->bitlen:I

    .line 27
    .line 28
    add-int/lit8 p3, p2, 0x6

    .line 29
    .line 30
    .line 31
    invoke-static {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 32
    move-result p3

    .line 33
    .line 34
    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->flags:I

    .line 35
    .line 36
    add-int/lit8 p3, p2, 0x8

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    .line 40
    move-result-wide v0

    .line 41
    .line 42
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->rcount:J

    .line 43
    .line 44
    const-wide/16 v2, 0x0

    .line 45
    .line 46
    cmp-long p3, v0, v2

    .line 47
    .line 48
    if-lez p3, :cond_1

    .line 49
    .line 50
    add-int/lit8 p3, p2, 0xc

    .line 51
    .line 52
    .line 53
    invoke-static {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 54
    move-result p3

    .line 55
    .line 56
    .line 57
    invoke-static {p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->getAlgorithmByCode(I)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 58
    move-result-object p3

    .line 59
    .line 60
    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashAlg:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 61
    .line 62
    add-int/lit8 p2, p2, 0xe

    .line 63
    .line 64
    .line 65
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 66
    move-result p1

    .line 67
    .line 68
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    .line 69
    .line 70
    :goto_0
    iget-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->rcount:J

    .line 71
    .line 72
    cmp-long p1, v2, p1

    .line 73
    .line 74
    if-gez p1, :cond_1

    .line 75
    const/4 p1, 0x0

    .line 76
    .line 77
    :goto_1
    iget p2, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    .line 78
    .line 79
    if-ge p1, p2, :cond_0

    .line 80
    .line 81
    add-int/lit8 p1, p1, 0x1

    .line 82
    goto :goto_1

    .line 83
    .line 84
    :cond_0
    const-wide/16 p1, 0x1

    .line 85
    add-long/2addr v2, p1

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    return-void
.end method

.method public parseFileFormat([BII)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 4
    move-result p3

    .line 5
    .line 6
    new-array v0, p3, [B

    .line 7
    .line 8
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->ivData:[B

    .line 9
    .line 10
    add-int/lit8 v1, p2, 0x4

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v1, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    add-int/2addr p2, p3

    .line 16
    .line 17
    add-int/lit8 p3, p2, 0x6

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 21
    move-result p3

    .line 22
    .line 23
    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->format:I

    .line 24
    .line 25
    add-int/lit8 p3, p2, 0x8

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 29
    move-result p3

    .line 30
    .line 31
    .line 32
    invoke-static {p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->getAlgorithmByCode(I)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    .line 33
    move-result-object p3

    .line 34
    .line 35
    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->algId:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    .line 36
    .line 37
    add-int/lit8 p3, p2, 0xa

    .line 38
    .line 39
    .line 40
    invoke-static {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 41
    move-result p3

    .line 42
    .line 43
    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->bitlen:I

    .line 44
    .line 45
    add-int/lit8 p3, p2, 0xc

    .line 46
    .line 47
    .line 48
    invoke-static {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 49
    move-result p3

    .line 50
    .line 51
    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->flags:I

    .line 52
    .line 53
    add-int/lit8 p3, p2, 0xe

    .line 54
    .line 55
    .line 56
    invoke-static {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 57
    move-result p3

    .line 58
    .line 59
    new-array v0, p3, [B

    .line 60
    .line 61
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->erdData:[B

    .line 62
    .line 63
    add-int/lit8 v1, p2, 0x10

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v1, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    add-int/2addr v1, p3

    .line 68
    .line 69
    .line 70
    invoke-static {p1, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    .line 71
    move-result-wide v0

    .line 72
    .line 73
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->rcount:J

    .line 74
    .line 75
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 76
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    const-string v3, "rcount: "

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->rcount:J

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    .line 99
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->rcount:J

    .line 100
    .line 101
    const-wide/16 v3, 0x0

    .line 102
    .line 103
    cmp-long v0, v0, v3

    .line 104
    const/4 v1, 0x4

    .line 105
    .line 106
    if-nez v0, :cond_0

    .line 107
    .line 108
    add-int/lit8 v0, p2, 0x14

    .line 109
    add-int/2addr v0, p3

    .line 110
    .line 111
    .line 112
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 113
    move-result v0

    .line 114
    .line 115
    add-int/lit8 v3, v0, -0x4

    .line 116
    .line 117
    new-array v4, v3, [B

    .line 118
    .line 119
    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->vData:[B

    .line 120
    .line 121
    new-array v5, v1, [B

    .line 122
    .line 123
    iput-object v5, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->vCRC32:[B

    .line 124
    .line 125
    add-int/lit8 p2, p2, 0x16

    .line 126
    add-int/2addr p2, p3

    .line 127
    .line 128
    .line 129
    invoke-static {p1, p2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    add-int/2addr p2, v0

    .line 131
    sub-int/2addr p2, v1

    .line 132
    .line 133
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->vCRC32:[B

    .line 134
    .line 135
    .line 136
    invoke-static {p1, p2, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    goto :goto_0

    .line 138
    .line 139
    :cond_0
    add-int/lit8 v0, p2, 0x14

    .line 140
    add-int/2addr v0, p3

    .line 141
    .line 142
    .line 143
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 144
    move-result v0

    .line 145
    .line 146
    .line 147
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->getAlgorithmByCode(I)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 148
    move-result-object v0

    .line 149
    .line 150
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashAlg:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 151
    .line 152
    add-int/lit8 v0, p2, 0x16

    .line 153
    add-int/2addr v0, p3

    .line 154
    .line 155
    .line 156
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 157
    move-result v3

    .line 158
    .line 159
    iput v3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    .line 160
    .line 161
    add-int/lit8 v3, p2, 0x18

    .line 162
    add-int/2addr v3, p3

    .line 163
    .line 164
    .line 165
    invoke-static {p1, v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 166
    move-result v4

    .line 167
    .line 168
    iget v5, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    .line 169
    .line 170
    new-array v6, v5, [B

    .line 171
    .line 172
    iput-object v6, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->recipientKeyHash:[B

    .line 173
    .line 174
    sub-int v7, v4, v5

    .line 175
    .line 176
    new-array v7, v7, [B

    .line 177
    .line 178
    iput-object v7, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->keyBlob:[B

    .line 179
    .line 180
    .line 181
    invoke-static {p1, v3, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    .line 183
    iget v5, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    .line 184
    add-int/2addr v3, v5

    .line 185
    .line 186
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->keyBlob:[B

    .line 187
    .line 188
    sub-int v5, v4, v5

    .line 189
    .line 190
    .line 191
    invoke-static {p1, v3, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    .line 193
    add-int/lit8 p2, p2, 0x1a

    .line 194
    add-int/2addr p2, p3

    .line 195
    add-int/2addr p2, v4

    .line 196
    .line 197
    .line 198
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    .line 199
    move-result p2

    .line 200
    .line 201
    add-int/lit8 p3, p2, -0x4

    .line 202
    .line 203
    new-array v3, p3, [B

    .line 204
    .line 205
    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->vData:[B

    .line 206
    .line 207
    new-array v5, v1, [B

    .line 208
    .line 209
    iput-object v5, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->vCRC32:[B

    .line 210
    add-int/2addr v0, v4

    .line 211
    .line 212
    .line 213
    invoke-static {p1, v0, v3, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    add-int/2addr v0, p2

    .line 215
    sub-int/2addr v0, v1

    .line 216
    .line 217
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->vCRC32:[B

    .line 218
    .line 219
    .line 220
    invoke-static {p1, v0, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    :goto_0
    return-void
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->parseFromCentralDirectoryData([BII)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->parseCentralDirectoryFormat([BII)V

    .line 7
    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->parseFromLocalFileData([BII)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->parseFileFormat([BII)V

    .line 7
    return-void
.end method
