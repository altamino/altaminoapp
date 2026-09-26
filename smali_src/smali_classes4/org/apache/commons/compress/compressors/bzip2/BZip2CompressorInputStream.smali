.class public Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/compressors/bzip2/BZip2Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    }
.end annotation


# static fields
.field private static final EOF:I = 0x0

.field private static final NO_RAND_PART_A_STATE:I = 0x5

.field private static final NO_RAND_PART_B_STATE:I = 0x6

.field private static final NO_RAND_PART_C_STATE:I = 0x7

.field private static final RAND_PART_A_STATE:I = 0x2

.field private static final RAND_PART_B_STATE:I = 0x3

.field private static final RAND_PART_C_STATE:I = 0x4

.field private static final START_BLOCK_STATE:I = 0x1


# instance fields
.field private bin:Lorg/apache/commons/compress/utils/BitInputStream;

.field private blockRandomised:Z

.field private blockSize100k:I

.field private computedBlockCRC:I

.field private computedCombinedCRC:I

.field private final crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

.field private currentState:I

.field private data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

.field private final decompressConcatenated:Z

.field private last:I

.field private nInUse:I

.field private origPtr:I

.field private storedBlockCRC:I

.field private storedCombinedCRC:I

.field private su_ch2:I

.field private su_chPrev:I

.field private su_count:I

.field private su_i2:I

.field private su_j2:I

.field private su_rNToGo:I

.field private su_rTPos:I

.field private su_tPos:I

.field private su_z:C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 3
    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 4
    new-instance v1, Lorg/apache/commons/compress/utils/BitInputStream;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-ne p1, v2, :cond_0

    new-instance v2, Lorg/apache/commons/compress/utils/CloseShieldFilterInputStream;

    invoke-direct {v2, p1}, Lorg/apache/commons/compress/utils/CloseShieldFilterInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v2

    :cond_0
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, p1, v2}, Lorg/apache/commons/compress/utils/BitInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    iput-boolean p2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->decompressConcatenated:Z

    .line 5
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->init(Z)Z

    .line 6
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->initBlock()V

    return-void
.end method

.method private static bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z
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
    invoke-static {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 5
    move-result p0

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method private static bsGetInt(Lorg/apache/commons/compress/utils/BitInputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x20

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 6
    move-result p0

    .line 7
    int-to-char p0, p0

    .line 8
    return p0
.end method

.method private static bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    .line 4
    move-result-wide p0

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v0, p0, v0

    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    long-to-int p0, p0

    .line 12
    return p0

    .line 13
    .line 14
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 15
    .line 16
    const-string p1, "unexpected end of stream"

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p0
.end method

.method private static checkBounds(IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "Corrupted input, "

    .line 3
    .line 4
    if-ltz p0, :cond_1

    .line 5
    .line 6
    if-ge p0, p1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 10
    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string p2, " value too big"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p0

    .line 34
    .line 35
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 36
    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string p2, " value negative"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p0
.end method

.method private complete()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetInt(Lorg/apache/commons/compress/utils/BitInputStream;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedCombinedCRC:I

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    iput-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 15
    .line 16
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 17
    .line 18
    if-ne v0, v2, :cond_2

    .line 19
    .line 20
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->decompressConcatenated:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->init(Z)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    :cond_0
    const/4 v1, 0x1

    .line 30
    :cond_1
    return v1

    .line 31
    .line 32
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 33
    .line 34
    const-string v1, "BZip2 CRC error"

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 38
    throw v0
.end method

.method private createHuffmanDecodingTables(II)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 5
    .line 6
    iget-object v2, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->temp_charArray2d:[[C

    .line 7
    .line 8
    iget-object v3, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    .line 9
    .line 10
    iget-object v4, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    .line 11
    .line 12
    iget-object v5, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    .line 13
    .line 14
    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    .line 15
    const/4 v6, 0x0

    .line 16
    .line 17
    move/from16 v7, p2

    .line 18
    move v8, v6

    .line 19
    .line 20
    :goto_0
    if-ge v8, v7, :cond_3

    .line 21
    .line 22
    aget-object v9, v2, v8

    .line 23
    .line 24
    const/16 v10, 0x20

    .line 25
    .line 26
    move/from16 v11, p1

    .line 27
    move v15, v6

    .line 28
    .line 29
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, -0x1

    .line 30
    .line 31
    if-ltz v11, :cond_2

    .line 32
    .line 33
    aget-char v12, v9, v11

    .line 34
    .line 35
    if-le v12, v15, :cond_1

    .line 36
    move v15, v12

    .line 37
    .line 38
    :cond_1
    if-ge v12, v10, :cond_0

    .line 39
    move v10, v12

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_2
    aget-object v11, v4, v8

    .line 43
    .line 44
    aget-object v12, v5, v8

    .line 45
    .line 46
    aget-object v13, v1, v8

    .line 47
    .line 48
    aget-object v14, v2, v8

    .line 49
    move v9, v15

    .line 50
    move v15, v10

    .line 51
    .line 52
    move/from16 v16, v9

    .line 53
    .line 54
    move/from16 v17, p1

    .line 55
    .line 56
    .line 57
    invoke-static/range {v11 .. v17}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->hbCreateDecodeTables([I[I[I[CIII)V

    .line 58
    .line 59
    aput v10, v3, v8

    .line 60
    .line 61
    add-int/lit8 v8, v8, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    return-void
.end method

.method private endBlock()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->getFinalCRC()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedBlockCRC:I

    .line 9
    .line 10
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedBlockCRC:I

    .line 11
    .line 12
    if-ne v1, v0, :cond_0

    .line 13
    .line 14
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 15
    .line 16
    shl-int/lit8 v2, v1, 0x1

    .line 17
    .line 18
    ushr-int/lit8 v1, v1, 0x1f

    .line 19
    or-int/2addr v1, v2

    .line 20
    xor-int/2addr v0, v1

    .line 21
    .line 22
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 23
    return-void

    .line 24
    .line 25
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedCombinedCRC:I

    .line 26
    .line 27
    shl-int/lit8 v2, v0, 0x1

    .line 28
    .line 29
    ushr-int/lit8 v0, v0, 0x1f

    .line 30
    or-int/2addr v0, v2

    .line 31
    xor-int/2addr v0, v1

    .line 32
    .line 33
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 34
    .line 35
    new-instance v0, Ljava/io/IOException;

    .line 36
    .line 37
    const-string v1, "BZip2 CRC error"

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 41
    throw v0
.end method

.method private getAndMoveToFrontDecode()V
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 5
    .line 6
    const/16 v2, 0x18

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 10
    move-result v2

    .line 11
    .line 12
    iput v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->origPtr:I

    .line 13
    .line 14
    .line 15
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->recvDecodingTables()V

    .line 16
    .line 17
    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 18
    .line 19
    iget-object v3, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    .line 20
    .line 21
    iget-object v4, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->unzftab:[I

    .line 22
    .line 23
    iget-object v5, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    .line 24
    .line 25
    iget-object v6, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->seqToUnseq:[B

    .line 26
    .line 27
    iget-object v7, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->getAndMoveToFrontDecode_yy:[C

    .line 28
    .line 29
    iget-object v8, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    .line 30
    .line 31
    iget-object v9, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    .line 32
    .line 33
    iget-object v10, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    .line 34
    .line 35
    iget-object v2, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    .line 36
    .line 37
    iget v11, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockSize100k:I

    .line 38
    .line 39
    .line 40
    const v12, 0x186a0

    .line 41
    mul-int/2addr v11, v12

    .line 42
    .line 43
    const/16 v13, 0x100

    .line 44
    :goto_0
    const/4 v14, -0x1

    .line 45
    add-int/2addr v13, v14

    .line 46
    const/4 v15, 0x0

    .line 47
    .line 48
    if-ltz v13, :cond_0

    .line 49
    int-to-char v14, v13

    .line 50
    .line 51
    aput-char v14, v7, v13

    .line 52
    .line 53
    aput v15, v4, v13

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_0
    iget v13, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->nInUse:I

    .line 57
    const/4 v14, 0x1

    .line 58
    add-int/2addr v13, v14

    .line 59
    .line 60
    .line 61
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->getAndMoveToFrontDecode0()I

    .line 62
    move-result v16

    .line 63
    .line 64
    aget-byte v12, v5, v15

    .line 65
    .line 66
    and-int/lit16 v12, v12, 0xff

    .line 67
    const/4 v15, 0x6

    .line 68
    .line 69
    const-string v14, "zt"

    .line 70
    .line 71
    .line 72
    invoke-static {v12, v15, v14}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 73
    .line 74
    aget-object v18, v10, v12

    .line 75
    .line 76
    aget-object v19, v9, v12

    .line 77
    .line 78
    aget-object v20, v2, v12

    .line 79
    .line 80
    aget v12, v8, v12

    .line 81
    .line 82
    const/16 v21, 0x31

    .line 83
    .line 84
    move/from16 v22, v12

    .line 85
    .line 86
    move/from16 v15, v16

    .line 87
    .line 88
    move/from16 v24, v21

    .line 89
    const/4 v12, -0x1

    .line 90
    .line 91
    const/16 v23, 0x0

    .line 92
    .line 93
    :goto_1
    if-eq v15, v13, :cond_e

    .line 94
    .line 95
    move/from16 v25, v13

    .line 96
    .line 97
    const-string v13, "zvec"

    .line 98
    .line 99
    const-string v0, "groupNo"

    .line 100
    .line 101
    move-object/from16 v26, v13

    .line 102
    .line 103
    const-string v13, "yy"

    .line 104
    .line 105
    move-object/from16 v27, v1

    .line 106
    .line 107
    const-string v1, "block overrun"

    .line 108
    .line 109
    move-object/from16 v28, v1

    .line 110
    .line 111
    const-string v1, "zn"

    .line 112
    .line 113
    move-object/from16 v29, v1

    .line 114
    .line 115
    if-eqz v15, :cond_1

    .line 116
    const/4 v1, 0x1

    .line 117
    .line 118
    if-ne v15, v1, :cond_2

    .line 119
    .line 120
    :cond_1
    move-object/from16 v31, v8

    .line 121
    .line 122
    move/from16 v30, v11

    .line 123
    .line 124
    move-object/from16 v8, v26

    .line 125
    .line 126
    move-object/from16 v11, v27

    .line 127
    .line 128
    move-object/from16 v1, v29

    .line 129
    .line 130
    move/from16 v26, v15

    .line 131
    .line 132
    move-object/from16 v15, v28

    .line 133
    .line 134
    goto/16 :goto_7

    .line 135
    .line 136
    :cond_2
    add-int/lit8 v12, v12, 0x1

    .line 137
    .line 138
    if-ge v12, v11, :cond_7

    .line 139
    .line 140
    const/16 v1, 0x101

    .line 141
    .line 142
    move/from16 v30, v11

    .line 143
    .line 144
    const-string v11, "nextSym"

    .line 145
    .line 146
    .line 147
    invoke-static {v15, v1, v11}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 148
    .line 149
    add-int/lit8 v1, v15, -0x1

    .line 150
    .line 151
    aget-char v11, v7, v1

    .line 152
    .line 153
    move-object/from16 v31, v8

    .line 154
    .line 155
    const/16 v8, 0x100

    .line 156
    .line 157
    .line 158
    invoke-static {v11, v8, v13}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 159
    .line 160
    aget-byte v8, v6, v11

    .line 161
    .line 162
    and-int/lit16 v13, v8, 0xff

    .line 163
    .line 164
    aget v28, v4, v13

    .line 165
    .line 166
    const/16 v17, 0x1

    .line 167
    .line 168
    add-int/lit8 v28, v28, 0x1

    .line 169
    .line 170
    aput v28, v4, v13

    .line 171
    .line 172
    aput-byte v8, v3, v12

    .line 173
    .line 174
    const/16 v8, 0x10

    .line 175
    .line 176
    if-gt v15, v8, :cond_4

    .line 177
    .line 178
    :goto_2
    if-lez v1, :cond_3

    .line 179
    .line 180
    add-int/lit8 v8, v1, -0x1

    .line 181
    .line 182
    aget-char v13, v7, v8

    .line 183
    .line 184
    aput-char v13, v7, v1

    .line 185
    move v1, v8

    .line 186
    goto :goto_2

    .line 187
    :cond_3
    const/4 v8, 0x0

    .line 188
    goto :goto_3

    .line 189
    :cond_4
    const/4 v8, 0x0

    .line 190
    const/4 v13, 0x1

    .line 191
    .line 192
    .line 193
    invoke-static {v7, v8, v7, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    .line 195
    :goto_3
    aput-char v11, v7, v8

    .line 196
    .line 197
    if-nez v24, :cond_5

    .line 198
    .line 199
    add-int/lit8 v1, v23, 0x1

    .line 200
    .line 201
    const/16 v8, 0x4652

    .line 202
    .line 203
    .line 204
    invoke-static {v1, v8, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 205
    .line 206
    aget-byte v0, v5, v1

    .line 207
    .line 208
    and-int/lit16 v0, v0, 0xff

    .line 209
    const/4 v8, 0x6

    .line 210
    .line 211
    .line 212
    invoke-static {v0, v8, v14}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 213
    .line 214
    aget-object v8, v10, v0

    .line 215
    .line 216
    aget-object v11, v9, v0

    .line 217
    .line 218
    aget-object v13, v2, v0

    .line 219
    .line 220
    aget v0, v31, v0

    .line 221
    .line 222
    move/from16 v23, v1

    .line 223
    .line 224
    move-object/from16 v18, v8

    .line 225
    .line 226
    move-object/from16 v19, v11

    .line 227
    .line 228
    move-object/from16 v20, v13

    .line 229
    .line 230
    move/from16 v24, v21

    .line 231
    .line 232
    :goto_4
    move-object/from16 v1, v29

    .line 233
    .line 234
    const/16 v8, 0x102

    .line 235
    goto :goto_5

    .line 236
    .line 237
    :cond_5
    add-int/lit8 v24, v24, -0x1

    .line 238
    .line 239
    move/from16 v0, v22

    .line 240
    goto :goto_4

    .line 241
    .line 242
    .line 243
    :goto_5
    invoke-static {v0, v8, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 244
    .line 245
    move-object/from16 v11, v27

    .line 246
    .line 247
    .line 248
    invoke-static {v11, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 249
    move-result v13

    .line 250
    move v15, v0

    .line 251
    .line 252
    :goto_6
    aget v8, v19, v15

    .line 253
    .line 254
    if-le v13, v8, :cond_6

    .line 255
    .line 256
    add-int/lit8 v15, v15, 0x1

    .line 257
    .line 258
    const/16 v8, 0x102

    .line 259
    .line 260
    .line 261
    invoke-static {v15, v8, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 262
    .line 263
    shl-int/lit8 v13, v13, 0x1

    .line 264
    const/4 v8, 0x1

    .line 265
    .line 266
    .line 267
    invoke-static {v11, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 268
    move-result v22

    .line 269
    .line 270
    or-int v13, v13, v22

    .line 271
    goto :goto_6

    .line 272
    .line 273
    :cond_6
    aget v1, v18, v15

    .line 274
    sub-int/2addr v13, v1

    .line 275
    .line 276
    move-object/from16 v8, v26

    .line 277
    .line 278
    const/16 v1, 0x102

    .line 279
    .line 280
    .line 281
    invoke-static {v13, v1, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 282
    .line 283
    aget v15, v20, v13

    .line 284
    .line 285
    move/from16 v22, v0

    .line 286
    move-object v1, v11

    .line 287
    .line 288
    move/from16 v13, v25

    .line 289
    .line 290
    move/from16 v11, v30

    .line 291
    .line 292
    move-object/from16 v8, v31

    .line 293
    .line 294
    move-object/from16 v0, p0

    .line 295
    .line 296
    goto/16 :goto_1

    .line 297
    .line 298
    :cond_7
    new-instance v0, Ljava/io/IOException;

    .line 299
    .line 300
    move-object/from16 v1, v28

    .line 301
    .line 302
    .line 303
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 304
    throw v0

    .line 305
    .line 306
    :goto_7
    move/from16 v27, v24

    .line 307
    .line 308
    const/16 v28, -0x1

    .line 309
    .line 310
    move/from16 v24, v22

    .line 311
    .line 312
    move-object/from16 v22, v19

    .line 313
    .line 314
    move/from16 v19, v12

    .line 315
    .line 316
    move/from16 v12, v26

    .line 317
    .line 318
    move/from16 v26, v23

    .line 319
    .line 320
    move-object/from16 v23, v20

    .line 321
    .line 322
    move-object/from16 v20, v18

    .line 323
    .line 324
    const/16 v18, 0x1

    .line 325
    .line 326
    :goto_8
    if-nez v12, :cond_8

    .line 327
    .line 328
    add-int v28, v28, v18

    .line 329
    .line 330
    move-object/from16 v29, v15

    .line 331
    goto :goto_9

    .line 332
    .line 333
    :cond_8
    move-object/from16 v29, v15

    .line 334
    const/4 v15, 0x1

    .line 335
    .line 336
    if-ne v12, v15, :cond_b

    .line 337
    .line 338
    shl-int/lit8 v12, v18, 0x1

    .line 339
    .line 340
    add-int v28, v28, v12

    .line 341
    .line 342
    :goto_9
    if-nez v27, :cond_9

    .line 343
    .line 344
    add-int/lit8 v12, v26, 0x1

    .line 345
    .line 346
    const/16 v15, 0x4652

    .line 347
    .line 348
    .line 349
    invoke-static {v12, v15, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 350
    .line 351
    aget-byte v15, v5, v12

    .line 352
    .line 353
    and-int/lit16 v15, v15, 0xff

    .line 354
    .line 355
    move-object/from16 v32, v0

    .line 356
    const/4 v0, 0x6

    .line 357
    .line 358
    .line 359
    invoke-static {v15, v0, v14}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 360
    .line 361
    aget-object v20, v10, v15

    .line 362
    .line 363
    aget-object v22, v9, v15

    .line 364
    .line 365
    aget-object v23, v2, v15

    .line 366
    .line 367
    aget v24, v31, v15

    .line 368
    .line 369
    move/from16 v26, v12

    .line 370
    .line 371
    move/from16 v27, v21

    .line 372
    .line 373
    :goto_a
    move/from16 v12, v24

    .line 374
    .line 375
    const/16 v15, 0x102

    .line 376
    goto :goto_b

    .line 377
    .line 378
    :cond_9
    move-object/from16 v32, v0

    .line 379
    const/4 v0, 0x6

    .line 380
    .line 381
    add-int/lit8 v27, v27, -0x1

    .line 382
    goto :goto_a

    .line 383
    .line 384
    .line 385
    :goto_b
    invoke-static {v12, v15, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 386
    .line 387
    .line 388
    invoke-static {v11, v12}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 389
    move-result v16

    .line 390
    .line 391
    move/from16 v0, v16

    .line 392
    .line 393
    move/from16 v16, v12

    .line 394
    .line 395
    :goto_c
    aget v15, v22, v16

    .line 396
    .line 397
    if-le v0, v15, :cond_a

    .line 398
    .line 399
    add-int/lit8 v15, v16, 0x1

    .line 400
    .line 401
    move-object/from16 v33, v2

    .line 402
    .line 403
    const/16 v2, 0x102

    .line 404
    .line 405
    .line 406
    invoke-static {v15, v2, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 407
    .line 408
    shl-int/lit8 v0, v0, 0x1

    .line 409
    const/4 v2, 0x1

    .line 410
    .line 411
    .line 412
    invoke-static {v11, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 413
    move-result v16

    .line 414
    .line 415
    or-int v0, v0, v16

    .line 416
    .line 417
    move/from16 v16, v15

    .line 418
    .line 419
    move-object/from16 v2, v33

    .line 420
    goto :goto_c

    .line 421
    .line 422
    :cond_a
    move-object/from16 v33, v2

    .line 423
    const/4 v2, 0x1

    .line 424
    .line 425
    aget v15, v20, v16

    .line 426
    sub-int/2addr v0, v15

    .line 427
    .line 428
    const/16 v15, 0x102

    .line 429
    .line 430
    .line 431
    invoke-static {v0, v15, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 432
    .line 433
    aget v0, v23, v0

    .line 434
    .line 435
    shl-int/lit8 v18, v18, 0x1

    .line 436
    .line 437
    move/from16 v24, v12

    .line 438
    .line 439
    move-object/from16 v15, v29

    .line 440
    .line 441
    move-object/from16 v2, v33

    .line 442
    move v12, v0

    .line 443
    .line 444
    move-object/from16 v0, v32

    .line 445
    goto :goto_8

    .line 446
    .line 447
    :cond_b
    move-object/from16 v33, v2

    .line 448
    move v2, v15

    .line 449
    const/4 v0, 0x0

    .line 450
    .line 451
    aget-char v1, v7, v0

    .line 452
    .line 453
    const/16 v8, 0x100

    .line 454
    .line 455
    .line 456
    invoke-static {v1, v8, v13}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 457
    .line 458
    aget-byte v1, v6, v1

    .line 459
    .line 460
    and-int/lit16 v13, v1, 0xff

    .line 461
    .line 462
    aget v15, v4, v13

    .line 463
    .line 464
    add-int/lit8 v16, v28, 0x1

    .line 465
    .line 466
    add-int v15, v15, v16

    .line 467
    .line 468
    aput v15, v4, v13

    .line 469
    .line 470
    move/from16 v13, v19

    .line 471
    .line 472
    :goto_d
    add-int/lit8 v15, v28, -0x1

    .line 473
    .line 474
    if-ltz v28, :cond_c

    .line 475
    .line 476
    add-int/lit8 v13, v13, 0x1

    .line 477
    .line 478
    aput-byte v1, v3, v13

    .line 479
    .line 480
    move/from16 v28, v15

    .line 481
    goto :goto_d

    .line 482
    .line 483
    :cond_c
    move/from16 v15, v30

    .line 484
    .line 485
    if-ge v13, v15, :cond_d

    .line 486
    .line 487
    move-object/from16 v0, p0

    .line 488
    move-object v1, v11

    .line 489
    move v11, v15

    .line 490
    .line 491
    move-object/from16 v18, v20

    .line 492
    .line 493
    move-object/from16 v19, v22

    .line 494
    .line 495
    move-object/from16 v20, v23

    .line 496
    .line 497
    move/from16 v22, v24

    .line 498
    .line 499
    move/from16 v23, v26

    .line 500
    .line 501
    move/from16 v24, v27

    .line 502
    .line 503
    move-object/from16 v8, v31

    .line 504
    .line 505
    move-object/from16 v2, v33

    .line 506
    move v15, v12

    .line 507
    move v12, v13

    .line 508
    .line 509
    move/from16 v13, v25

    .line 510
    .line 511
    goto/16 :goto_1

    .line 512
    .line 513
    :cond_d
    new-instance v0, Ljava/io/IOException;

    .line 514
    .line 515
    move-object/from16 v1, v29

    .line 516
    .line 517
    .line 518
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 519
    throw v0

    .line 520
    .line 521
    :cond_e
    iput v12, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    .line 522
    return-void
.end method

.method private getAndMoveToFrontDecode0()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 3
    .line 4
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    aget-byte v1, v1, v2

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    const/4 v2, 0x6

    .line 11
    .line 12
    const-string v3, "zt"

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 16
    .line 17
    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    .line 18
    .line 19
    aget-object v2, v2, v1

    .line 20
    .line 21
    iget-object v3, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    .line 22
    .line 23
    aget v3, v3, v1

    .line 24
    .line 25
    const/16 v4, 0x102

    .line 26
    .line 27
    const-string v5, "zn"

    .line 28
    .line 29
    .line 30
    invoke-static {v3, v4, v5}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 31
    .line 32
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 33
    .line 34
    .line 35
    invoke-static {v6, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 36
    move-result v6

    .line 37
    .line 38
    :goto_0
    aget v7, v2, v3

    .line 39
    .line 40
    if-le v6, v7, :cond_0

    .line 41
    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    .line 45
    invoke-static {v3, v4, v5}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 46
    .line 47
    shl-int/lit8 v6, v6, 0x1

    .line 48
    .line 49
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 50
    const/4 v8, 0x1

    .line 51
    .line 52
    .line 53
    invoke-static {v7, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 54
    move-result v7

    .line 55
    or-int/2addr v6, v7

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_0
    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    .line 59
    .line 60
    aget-object v2, v2, v1

    .line 61
    .line 62
    aget v2, v2, v3

    .line 63
    sub-int/2addr v6, v2

    .line 64
    .line 65
    const-string v2, "zvec"

    .line 66
    .line 67
    .line 68
    invoke-static {v6, v4, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 69
    .line 70
    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    .line 71
    .line 72
    aget-object v0, v0, v1

    .line 73
    .line 74
    aget v0, v0, v6

    .line 75
    return v0
.end method

.method private static hbCreateDecodeTables([I[I[I[CIII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, p4

    .line 3
    move v2, v0

    .line 4
    .line 5
    :goto_0
    if-gt v1, p5, :cond_2

    .line 6
    move v3, v0

    .line 7
    .line 8
    :goto_1
    if-ge v3, p6, :cond_1

    .line 9
    .line 10
    aget-char v4, p3, v3

    .line 11
    .line 12
    if-ne v4, v1, :cond_0

    .line 13
    .line 14
    add-int/lit8 v4, v2, 0x1

    .line 15
    .line 16
    aput v3, p2, v2

    .line 17
    move v2, v4

    .line 18
    .line 19
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_2
    const/16 p2, 0x17

    .line 26
    move v1, p2

    .line 27
    .line 28
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 29
    .line 30
    if-lez v1, :cond_3

    .line 31
    .line 32
    aput v0, p1, v1

    .line 33
    .line 34
    aput v0, p0, v1

    .line 35
    goto :goto_2

    .line 36
    :cond_3
    move v1, v0

    .line 37
    :goto_3
    const/4 v2, 0x1

    .line 38
    .line 39
    if-ge v1, p6, :cond_4

    .line 40
    .line 41
    aget-char v3, p3, v1

    .line 42
    .line 43
    const/16 v4, 0x102

    .line 44
    .line 45
    const-string v5, "length"

    .line 46
    .line 47
    .line 48
    invoke-static {v3, v4, v5}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 49
    add-int/2addr v3, v2

    .line 50
    .line 51
    aget v4, p1, v3

    .line 52
    add-int/2addr v4, v2

    .line 53
    .line 54
    aput v4, p1, v3

    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    goto :goto_3

    .line 58
    .line 59
    :cond_4
    aget p3, p1, v0

    .line 60
    move p6, v2

    .line 61
    .line 62
    :goto_4
    if-ge p6, p2, :cond_5

    .line 63
    .line 64
    aget v1, p1, p6

    .line 65
    add-int/2addr p3, v1

    .line 66
    .line 67
    aput p3, p1, p6

    .line 68
    .line 69
    add-int/lit8 p6, p6, 0x1

    .line 70
    goto :goto_4

    .line 71
    .line 72
    :cond_5
    aget p2, p1, p4

    .line 73
    move p3, p4

    .line 74
    .line 75
    :goto_5
    if-gt p3, p5, :cond_6

    .line 76
    .line 77
    add-int/lit8 p6, p3, 0x1

    .line 78
    .line 79
    aget v1, p1, p6

    .line 80
    .line 81
    sub-int p2, v1, p2

    .line 82
    add-int/2addr v0, p2

    .line 83
    .line 84
    add-int/lit8 p2, v0, -0x1

    .line 85
    .line 86
    aput p2, p0, p3

    .line 87
    shl-int/2addr v0, v2

    .line 88
    move p3, p6

    .line 89
    move p2, v1

    .line 90
    goto :goto_5

    .line 91
    :cond_6
    add-int/2addr p4, v2

    .line 92
    .line 93
    :goto_6
    if-gt p4, p5, :cond_7

    .line 94
    .line 95
    add-int/lit8 p2, p4, -0x1

    .line 96
    .line 97
    aget p2, p0, p2

    .line 98
    add-int/2addr p2, v2

    .line 99
    shl-int/2addr p2, v2

    .line 100
    .line 101
    aget p3, p1, p4

    .line 102
    sub-int/2addr p2, p3

    .line 103
    .line 104
    aput p2, p1, p4

    .line 105
    .line 106
    add-int/lit8 p4, p4, 0x1

    .line 107
    goto :goto_6

    .line 108
    :cond_7
    return-void
.end method

.method private init(Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 3
    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/BitInputStream;->clearBitCache()V

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->readNextByte(Lorg/apache/commons/compress/utils/BitInputStream;)I

    .line 15
    move-result v0

    .line 16
    const/4 v1, -0x1

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    return v2

    .line 23
    .line 24
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->readNextByte(Lorg/apache/commons/compress/utils/BitInputStream;)I

    .line 28
    move-result v1

    .line 29
    .line 30
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->readNextByte(Lorg/apache/commons/compress/utils/BitInputStream;)I

    .line 34
    move-result v3

    .line 35
    .line 36
    const/16 v4, 0x42

    .line 37
    .line 38
    if-ne v0, v4, :cond_4

    .line 39
    .line 40
    const/16 v0, 0x5a

    .line 41
    .line 42
    if-ne v1, v0, :cond_4

    .line 43
    .line 44
    const/16 v0, 0x68

    .line 45
    .line 46
    if-eq v3, v0, :cond_2

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->readNextByte(Lorg/apache/commons/compress/utils/BitInputStream;)I

    .line 53
    move-result p1

    .line 54
    .line 55
    const/16 v0, 0x31

    .line 56
    .line 57
    if-lt p1, v0, :cond_3

    .line 58
    .line 59
    const/16 v0, 0x39

    .line 60
    .line 61
    if-gt p1, v0, :cond_3

    .line 62
    .line 63
    add-int/lit8 p1, p1, -0x30

    .line 64
    .line 65
    iput p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockSize100k:I

    .line 66
    .line 67
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 68
    const/4 p1, 0x1

    .line 69
    return p1

    .line 70
    .line 71
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 72
    .line 73
    const-string v0, "BZip2 block size is invalid"

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p1

    .line 78
    .line 79
    :cond_4
    :goto_0
    new-instance v0, Ljava/io/IOException;

    .line 80
    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    const-string p1, "Stream is not in the BZip2 format"

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :cond_5
    const-string p1, "Garbage after a valid BZip2 stream"

    .line 87
    .line 88
    .line 89
    :goto_1
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 90
    throw v0

    .line 91
    .line 92
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 93
    .line 94
    const-string v0, "No InputStream"

    .line 95
    .line 96
    .line 97
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 98
    throw p1
.end method

.method private initBlock()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 3
    .line 4
    .line 5
    :cond_0
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    .line 10
    move-result v2

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    .line 14
    move-result v3

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    .line 18
    move-result v4

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    .line 22
    move-result v5

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    .line 26
    move-result v6

    .line 27
    .line 28
    const/16 v7, 0x17

    .line 29
    .line 30
    if-ne v1, v7, :cond_2

    .line 31
    .line 32
    const/16 v7, 0x72

    .line 33
    .line 34
    if-ne v2, v7, :cond_2

    .line 35
    .line 36
    const/16 v7, 0x45

    .line 37
    .line 38
    if-ne v3, v7, :cond_2

    .line 39
    .line 40
    const/16 v7, 0x38

    .line 41
    .line 42
    if-ne v4, v7, :cond_2

    .line 43
    .line 44
    const/16 v7, 0x50

    .line 45
    .line 46
    if-ne v5, v7, :cond_2

    .line 47
    .line 48
    const/16 v7, 0x90

    .line 49
    .line 50
    if-eq v6, v7, :cond_1

    .line 51
    goto :goto_0

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->complete()Z

    .line 55
    move-result v1

    .line 56
    .line 57
    if-eqz v1, :cond_0

    .line 58
    return-void

    .line 59
    .line 60
    :cond_2
    :goto_0
    const/16 v7, 0x31

    .line 61
    const/4 v8, 0x0

    .line 62
    .line 63
    if-ne v1, v7, :cond_5

    .line 64
    .line 65
    const/16 v1, 0x41

    .line 66
    .line 67
    if-ne v2, v1, :cond_5

    .line 68
    .line 69
    const/16 v1, 0x59

    .line 70
    .line 71
    if-ne v3, v1, :cond_5

    .line 72
    .line 73
    const/16 v2, 0x26

    .line 74
    .line 75
    if-ne v4, v2, :cond_5

    .line 76
    .line 77
    const/16 v2, 0x53

    .line 78
    .line 79
    if-ne v5, v2, :cond_5

    .line 80
    .line 81
    if-ne v6, v1, :cond_5

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetInt(Lorg/apache/commons/compress/utils/BitInputStream;)I

    .line 85
    move-result v1

    .line 86
    .line 87
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedBlockCRC:I

    .line 88
    const/4 v1, 0x1

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 92
    move-result v0

    .line 93
    .line 94
    if-ne v0, v1, :cond_3

    .line 95
    move v8, v1

    .line 96
    .line 97
    :cond_3
    iput-boolean v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockRandomised:Z

    .line 98
    .line 99
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 100
    .line 101
    if-nez v0, :cond_4

    .line 102
    .line 103
    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 104
    .line 105
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockSize100k:I

    .line 106
    .line 107
    .line 108
    invoke-direct {v0, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;-><init>(I)V

    .line 109
    .line 110
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 111
    .line 112
    .line 113
    :cond_4
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->getAndMoveToFrontDecode()V

    .line 114
    .line 115
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->initialiseCRC()V

    .line 119
    .line 120
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 121
    return-void

    .line 122
    .line 123
    :cond_5
    iput v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 124
    .line 125
    new-instance v0, Ljava/io/IOException;

    .line 126
    .line 127
    const-string v1, "bad block header"

    .line 128
    .line 129
    .line 130
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 131
    throw v0
.end method

.method private makeMaps()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 3
    .line 4
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->inUse:[Z

    .line 5
    .line 6
    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->seqToUnseq:[B

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    .line 10
    :goto_0
    const/16 v4, 0x100

    .line 11
    .line 12
    if-ge v2, v4, :cond_1

    .line 13
    .line 14
    aget-boolean v4, v1, v2

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    add-int/lit8 v4, v3, 0x1

    .line 19
    int-to-byte v5, v2

    .line 20
    .line 21
    aput-byte v5, v0, v3

    .line 22
    move v3, v4

    .line 23
    .line 24
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->nInUse:I

    .line 28
    return-void
.end method

.method public static matches([BI)Z
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    if-lt p1, v0, :cond_0

    .line 5
    .line 6
    aget-byte p1, p0, v1

    .line 7
    .line 8
    const/16 v0, 0x42

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    .line 13
    aget-byte v0, p0, p1

    .line 14
    .line 15
    const/16 v2, 0x5a

    .line 16
    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    const/4 v0, 0x2

    .line 19
    .line 20
    aget-byte p0, p0, v0

    .line 21
    .line 22
    const/16 v0, 0x68

    .line 23
    .line 24
    if-ne p0, v0, :cond_0

    .line 25
    move v1, p1

    .line 26
    :cond_0
    return v1
.end method

.method private read0()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 3
    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 11
    throw v0

    .line 12
    .line 13
    .line 14
    :pswitch_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartC()I

    .line 15
    move-result v0

    .line 16
    return v0

    .line 17
    .line 18
    .line 19
    :pswitch_1
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartB()I

    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    .line 23
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 27
    throw v0

    .line 28
    .line 29
    .line 30
    :pswitch_3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartC()I

    .line 31
    move-result v0

    .line 32
    return v0

    .line 33
    .line 34
    .line 35
    :pswitch_4
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartB()I

    .line 36
    move-result v0

    .line 37
    return v0

    .line 38
    .line 39
    :pswitch_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 43
    throw v0

    .line 44
    .line 45
    .line 46
    :pswitch_6
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupBlock()I

    .line 47
    move-result v0

    .line 48
    return v0

    .line 49
    :pswitch_7
    const/4 v0, -0x1

    .line 50
    return v0

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
    :pswitch_data_0
    .packed-switch 0x0
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

.method private readNextByte(Lorg/apache/commons/compress/utils/BitInputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    .line 6
    move-result-wide v0

    .line 7
    long-to-int p1, v0

    .line 8
    return p1
.end method

.method private recvDecodingTables()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 5
    .line 6
    iget-object v2, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->inUse:[Z

    .line 7
    .line 8
    iget-object v3, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->recvDecodingTables_pos:[B

    .line 9
    .line 10
    iget-object v4, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    .line 11
    .line 12
    iget-object v5, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selectorMtf:[B

    .line 13
    const/4 v6, 0x0

    .line 14
    move v7, v6

    .line 15
    move v8, v7

    .line 16
    .line 17
    :goto_0
    const/16 v9, 0x10

    .line 18
    const/4 v10, 0x1

    .line 19
    .line 20
    if-ge v7, v9, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z

    .line 24
    move-result v9

    .line 25
    .line 26
    if-eqz v9, :cond_0

    .line 27
    .line 28
    shl-int v9, v10, v7

    .line 29
    or-int/2addr v8, v9

    .line 30
    .line 31
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-static {v2, v6}, Ljava/util/Arrays;->fill([ZZ)V

    .line 36
    move v7, v6

    .line 37
    .line 38
    :goto_1
    if-ge v7, v9, :cond_4

    .line 39
    .line 40
    shl-int v11, v10, v7

    .line 41
    and-int/2addr v11, v8

    .line 42
    .line 43
    if-eqz v11, :cond_3

    .line 44
    .line 45
    shl-int/lit8 v11, v7, 0x4

    .line 46
    move v12, v6

    .line 47
    .line 48
    :goto_2
    if-ge v12, v9, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z

    .line 52
    move-result v13

    .line 53
    .line 54
    if-eqz v13, :cond_2

    .line 55
    .line 56
    add-int v13, v11, v12

    .line 57
    .line 58
    aput-boolean v10, v2, v13

    .line 59
    .line 60
    :cond_2
    add-int/lit8 v12, v12, 0x1

    .line 61
    goto :goto_2

    .line 62
    .line 63
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 64
    goto :goto_1

    .line 65
    .line 66
    .line 67
    :cond_4
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->makeMaps()V

    .line 68
    .line 69
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->nInUse:I

    .line 70
    .line 71
    add-int/lit8 v2, v2, 0x2

    .line 72
    const/4 v7, 0x3

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v7}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 76
    move-result v7

    .line 77
    .line 78
    const/16 v8, 0xf

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 82
    move-result v8

    .line 83
    .line 84
    const/16 v9, 0x103

    .line 85
    .line 86
    const-string v11, "alphaSize"

    .line 87
    .line 88
    .line 89
    invoke-static {v2, v9, v11}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 90
    const/4 v9, 0x7

    .line 91
    .line 92
    const-string v11, "nGroups"

    .line 93
    .line 94
    .line 95
    invoke-static {v7, v9, v11}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 96
    .line 97
    const/16 v9, 0x4653

    .line 98
    .line 99
    const-string v11, "nSelectors"

    .line 100
    .line 101
    .line 102
    invoke-static {v8, v9, v11}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 103
    move v9, v6

    .line 104
    .line 105
    :goto_3
    if-ge v9, v8, :cond_6

    .line 106
    move v11, v6

    .line 107
    .line 108
    .line 109
    :goto_4
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z

    .line 110
    move-result v12

    .line 111
    .line 112
    if-eqz v12, :cond_5

    .line 113
    .line 114
    add-int/lit8 v11, v11, 0x1

    .line 115
    goto :goto_4

    .line 116
    :cond_5
    int-to-byte v11, v11

    .line 117
    .line 118
    aput-byte v11, v5, v9

    .line 119
    .line 120
    add-int/lit8 v9, v9, 0x1

    .line 121
    goto :goto_3

    .line 122
    :cond_6
    move v9, v7

    .line 123
    :goto_5
    const/4 v11, -0x1

    .line 124
    add-int/2addr v9, v11

    .line 125
    .line 126
    if-ltz v9, :cond_7

    .line 127
    int-to-byte v11, v9

    .line 128
    .line 129
    aput-byte v11, v3, v9

    .line 130
    goto :goto_5

    .line 131
    :cond_7
    move v9, v6

    .line 132
    .line 133
    :goto_6
    if-ge v9, v8, :cond_9

    .line 134
    .line 135
    aget-byte v12, v5, v9

    .line 136
    .line 137
    and-int/lit16 v12, v12, 0xff

    .line 138
    const/4 v13, 0x6

    .line 139
    .line 140
    const-string v14, "selectorMtf"

    .line 141
    .line 142
    .line 143
    invoke-static {v12, v13, v14}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 144
    .line 145
    aget-byte v13, v3, v12

    .line 146
    .line 147
    :goto_7
    if-lez v12, :cond_8

    .line 148
    .line 149
    add-int/lit8 v14, v12, -0x1

    .line 150
    .line 151
    aget-byte v14, v3, v14

    .line 152
    .line 153
    aput-byte v14, v3, v12

    .line 154
    .line 155
    add-int/lit8 v12, v12, -0x1

    .line 156
    goto :goto_7

    .line 157
    .line 158
    :cond_8
    aput-byte v13, v3, v6

    .line 159
    .line 160
    aput-byte v13, v4, v9

    .line 161
    .line 162
    add-int/lit8 v9, v9, 0x1

    .line 163
    goto :goto_6

    .line 164
    .line 165
    :cond_9
    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->temp_charArray2d:[[C

    .line 166
    move v3, v6

    .line 167
    .line 168
    :goto_8
    if-ge v3, v7, :cond_d

    .line 169
    const/4 v4, 0x5

    .line 170
    .line 171
    .line 172
    invoke-static {v0, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    .line 173
    move-result v4

    .line 174
    .line 175
    aget-object v5, v1, v3

    .line 176
    move v8, v6

    .line 177
    .line 178
    :goto_9
    if-ge v8, v2, :cond_c

    .line 179
    .line 180
    .line 181
    :goto_a
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z

    .line 182
    move-result v9

    .line 183
    .line 184
    if-eqz v9, :cond_b

    .line 185
    .line 186
    .line 187
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z

    .line 188
    move-result v9

    .line 189
    .line 190
    if-eqz v9, :cond_a

    .line 191
    move v9, v11

    .line 192
    goto :goto_b

    .line 193
    :cond_a
    move v9, v10

    .line 194
    :goto_b
    add-int/2addr v4, v9

    .line 195
    goto :goto_a

    .line 196
    :cond_b
    int-to-char v9, v4

    .line 197
    .line 198
    aput-char v9, v5, v8

    .line 199
    .line 200
    add-int/lit8 v8, v8, 0x1

    .line 201
    goto :goto_9

    .line 202
    .line 203
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 204
    goto :goto_8

    .line 205
    .line 206
    .line 207
    :cond_d
    invoke-direct {p0, v2, v7}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->createHuffmanDecodingTables(II)V

    .line 208
    return-void
.end method

.method private setupBlock()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 3
    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_2

    .line 10
    .line 11
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->cftab:[I

    .line 12
    .line 13
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    .line 14
    const/4 v3, 0x1

    .line 15
    add-int/2addr v2, v3

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->initTT(I)[I

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 22
    .line 23
    iget-object v5, v4, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    .line 24
    const/4 v6, 0x0

    .line 25
    .line 26
    aput v6, v1, v6

    .line 27
    .line 28
    iget-object v4, v4, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->unzftab:[I

    .line 29
    .line 30
    const/16 v7, 0x100

    .line 31
    .line 32
    .line 33
    invoke-static {v4, v6, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    aget v4, v1, v6

    .line 36
    .line 37
    :goto_0
    if-gt v3, v7, :cond_1

    .line 38
    .line 39
    aget v8, v1, v3

    .line 40
    add-int/2addr v4, v8

    .line 41
    .line 42
    aput v4, v1, v3

    .line 43
    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_1
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    .line 48
    move v4, v6

    .line 49
    .line 50
    :goto_1
    if-gt v4, v3, :cond_2

    .line 51
    .line 52
    aget-byte v8, v5, v4

    .line 53
    .line 54
    and-int/lit16 v8, v8, 0xff

    .line 55
    .line 56
    aget v9, v1, v8

    .line 57
    .line 58
    add-int/lit8 v10, v9, 0x1

    .line 59
    .line 60
    aput v10, v1, v8

    .line 61
    .line 62
    const-string v8, "tt index"

    .line 63
    .line 64
    .line 65
    invoke-static {v9, v2, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 66
    .line 67
    aput v4, v0, v9

    .line 68
    .line 69
    add-int/lit8 v4, v4, 0x1

    .line 70
    goto :goto_1

    .line 71
    .line 72
    :cond_2
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->origPtr:I

    .line 73
    .line 74
    if-ltz v1, :cond_4

    .line 75
    array-length v2, v0

    .line 76
    .line 77
    if-ge v1, v2, :cond_4

    .line 78
    .line 79
    aget v0, v0, v1

    .line 80
    .line 81
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 82
    .line 83
    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 84
    .line 85
    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 86
    .line 87
    iput v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 88
    .line 89
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockRandomised:Z

    .line 90
    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 94
    .line 95
    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    .line 96
    .line 97
    .line 98
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()I

    .line 99
    move-result v0

    .line 100
    return v0

    .line 101
    .line 102
    .line 103
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()I

    .line 104
    move-result v0

    .line 105
    return v0

    .line 106
    .line 107
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 108
    .line 109
    const-string v1, "stream corrupted"

    .line 110
    .line 111
    .line 112
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 113
    throw v0

    .line 114
    :cond_5
    :goto_2
    const/4 v0, -0x1

    .line 115
    return v0
.end method

.method private setupNoRandPartA()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 3
    .line 4
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    .line 5
    .line 6
    if-gt v0, v1, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 9
    .line 10
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    .line 11
    .line 12
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 13
    .line 14
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    .line 15
    .line 16
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 17
    .line 18
    aget-byte v1, v1, v2

    .line 19
    .line 20
    and-int/lit16 v1, v1, 0xff

    .line 21
    .line 22
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 23
    .line 24
    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    .line 25
    array-length v0, v0

    .line 26
    .line 27
    const-string v3, "su_tPos"

    .line 28
    .line 29
    .line 30
    invoke-static {v2, v0, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 31
    .line 32
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 33
    .line 34
    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    .line 35
    .line 36
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 37
    .line 38
    aget v0, v0, v2

    .line 39
    .line 40
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 41
    .line 42
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 47
    const/4 v0, 0x6

    .line 48
    .line 49
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 50
    .line 51
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    .line 55
    return v1

    .line 56
    :cond_0
    const/4 v0, 0x5

    .line 57
    .line 58
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->endBlock()V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->initBlock()V

    .line 65
    .line 66
    .line 67
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupBlock()I

    .line 68
    move-result v0

    .line 69
    return v0
.end method

.method private setupNoRandPartB()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 3
    .line 4
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()I

    .line 13
    move-result v0

    .line 14
    return v0

    .line 15
    .line 16
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 17
    add-int/2addr v0, v2

    .line 18
    .line 19
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 20
    const/4 v1, 0x4

    .line 21
    .line 22
    if-lt v0, v1, :cond_1

    .line 23
    .line 24
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 25
    .line 26
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 27
    .line 28
    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    .line 29
    array-length v1, v1

    .line 30
    .line 31
    const-string v2, "su_tPos"

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 35
    .line 36
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 37
    .line 38
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    .line 39
    .line 40
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 41
    .line 42
    aget-byte v1, v1, v2

    .line 43
    .line 44
    and-int/lit16 v1, v1, 0xff

    .line 45
    int-to-char v1, v1

    .line 46
    .line 47
    iput-char v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 48
    .line 49
    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    .line 50
    .line 51
    aget v0, v0, v2

    .line 52
    .line 53
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 54
    const/4 v0, 0x0

    .line 55
    .line 56
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartC()I

    .line 60
    move-result v0

    .line 61
    return v0

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()I

    .line 65
    move-result v0

    .line 66
    return v0
.end method

.method private setupNoRandPartC()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 3
    .line 4
    iget-char v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 9
    .line 10
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    .line 14
    .line 15
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 20
    const/4 v1, 0x7

    .line 21
    .line 22
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 23
    return v0

    .line 24
    .line 25
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 30
    const/4 v0, 0x0

    .line 31
    .line 32
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()I

    .line 36
    move-result v0

    .line 37
    return v0
.end method

.method private setupRandPartA()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 3
    .line 4
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    .line 5
    .line 6
    if-gt v0, v1, :cond_3

    .line 7
    .line 8
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 9
    .line 10
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    .line 11
    .line 12
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 13
    .line 14
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    .line 15
    .line 16
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 17
    .line 18
    aget-byte v1, v1, v2

    .line 19
    .line 20
    and-int/lit16 v1, v1, 0xff

    .line 21
    .line 22
    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    .line 23
    array-length v0, v0

    .line 24
    .line 25
    const-string v3, "su_tPos"

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v0, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 29
    .line 30
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 31
    .line 32
    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    .line 33
    .line 34
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 35
    .line 36
    aget v0, v0, v2

    .line 37
    .line 38
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 39
    .line 40
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 41
    const/4 v2, 0x0

    .line 42
    const/4 v3, 0x1

    .line 43
    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/Rand;->rNums(I)I

    .line 50
    move-result v0

    .line 51
    sub-int/2addr v0, v3

    .line 52
    .line 53
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 54
    .line 55
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    .line 56
    add-int/2addr v0, v3

    .line 57
    .line 58
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    .line 59
    .line 60
    const/16 v4, 0x200

    .line 61
    .line 62
    if-ne v0, v4, :cond_1

    .line 63
    .line 64
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    sub-int/2addr v0, v3

    .line 67
    .line 68
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 69
    .line 70
    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 71
    .line 72
    if-ne v0, v3, :cond_2

    .line 73
    move v2, v3

    .line 74
    .line 75
    :cond_2
    xor-int v0, v1, v2

    .line 76
    .line 77
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 78
    .line 79
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 80
    add-int/2addr v1, v3

    .line 81
    .line 82
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 83
    const/4 v1, 0x3

    .line 84
    .line 85
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 86
    .line 87
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    .line 91
    return v0

    .line 92
    .line 93
    .line 94
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->endBlock()V

    .line 95
    .line 96
    .line 97
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->initBlock()V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupBlock()I

    .line 101
    move-result v0

    .line 102
    return v0
.end method

.method private setupRandPartB()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 3
    .line 4
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 11
    .line 12
    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()I

    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    .line 19
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 20
    add-int/2addr v0, v3

    .line 21
    .line 22
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 23
    const/4 v1, 0x4

    .line 24
    .line 25
    if-lt v0, v1, :cond_4

    .line 26
    .line 27
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 28
    .line 29
    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    .line 30
    .line 31
    iget v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 32
    .line 33
    aget-byte v2, v2, v4

    .line 34
    .line 35
    and-int/lit16 v2, v2, 0xff

    .line 36
    int-to-char v2, v2

    .line 37
    .line 38
    iput-char v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 39
    .line 40
    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    .line 41
    array-length v0, v0

    .line 42
    .line 43
    const-string v2, "su_tPos"

    .line 44
    .line 45
    .line 46
    invoke-static {v4, v0, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 47
    .line 48
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 49
    .line 50
    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    .line 51
    .line 52
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 53
    .line 54
    aget v0, v0, v2

    .line 55
    .line 56
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 57
    .line 58
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 59
    const/4 v2, 0x0

    .line 60
    .line 61
    if-nez v0, :cond_1

    .line 62
    .line 63
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/Rand;->rNums(I)I

    .line 67
    move-result v0

    .line 68
    sub-int/2addr v0, v3

    .line 69
    .line 70
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 71
    .line 72
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    .line 73
    add-int/2addr v0, v3

    .line 74
    .line 75
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    .line 76
    .line 77
    const/16 v4, 0x200

    .line 78
    .line 79
    if-ne v0, v4, :cond_2

    .line 80
    .line 81
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    sub-int/2addr v0, v3

    .line 84
    .line 85
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 86
    .line 87
    :cond_2
    :goto_0
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 88
    .line 89
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 90
    .line 91
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 92
    .line 93
    if-ne v0, v3, :cond_3

    .line 94
    .line 95
    iget-char v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 96
    xor-int/2addr v0, v3

    .line 97
    int-to-char v0, v0

    .line 98
    .line 99
    iput-char v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 100
    .line 101
    .line 102
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartC()I

    .line 103
    move-result v0

    .line 104
    return v0

    .line 105
    .line 106
    :cond_4
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 107
    .line 108
    .line 109
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()I

    .line 110
    move-result v0

    .line 111
    return v0
.end method

.method private setupRandPartC()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 3
    .line 4
    iget-char v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 9
    .line 10
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->updateCRC(I)V

    .line 14
    .line 15
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 20
    .line 21
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 22
    return v0

    .line 23
    :cond_0
    const/4 v0, 0x2

    .line 24
    .line 25
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 26
    .line 27
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 32
    const/4 v0, 0x0

    .line 33
    .line 34
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()I

    .line 38
    move-result v0

    .line 39
    return v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/BitInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 11
    .line 12
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    .line 16
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 17
    .line 18
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 19
    throw v0

    .line 20
    :cond_0
    :goto_0
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    if-eqz v0, :cond_1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->read0()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    return v0

    .line 3
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ") < 0."

    const-string v1, "offs("

    if-ltz p2, :cond_6

    if-ltz p3, :cond_5

    add-int v0, p2, p3

    .line 4
    array-length v2, p1

    if-gt v0, v2, :cond_4

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    if-eqz v1, :cond_3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move p3, p2

    :goto_0
    if-ge p3, v0, :cond_1

    .line 5
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->read0()I

    move-result v1

    if-ltz v1, :cond_1

    add-int/lit8 v2, p3, 0x1

    int-to-byte v1, v1

    .line 6
    aput-byte v1, p1, p3

    const/4 p3, 0x1

    .line 7
    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    move p3, v2

    goto :goto_0

    :cond_1
    if-ne p3, p2, :cond_2

    const/4 p1, -0x1

    goto :goto_1

    :cond_2
    sub-int p1, p3, p2

    :goto_1
    return p1

    .line 8
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") + len("

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") > dest.length("

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "len("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
