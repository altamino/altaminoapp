.class public Lcom/narvii/pushservice/GifDec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/pushservice/GifDec$GifFrame;
    }
.end annotation


# static fields
.field protected static final MAX_STACK_SIZE:I = 0x1000

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2


# instance fields
.field protected act:[I

.field protected bgColor:I

.field protected bgIndex:I

.field protected block:[B

.field protected blockSize:I

.field protected currentFrame:Lcom/narvii/pushservice/GifDec$GifFrame;

.field protected frameCount:I

.field protected framePointer:I

.field protected frames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/pushservice/GifDec$GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field protected gct:[I

.field protected gctFlag:Z

.field protected gctSize:I

.field protected height:I

.field protected lctFlag:Z

.field protected lctSize:I

.field protected loopCount:I

.field protected pixelAspect:I

.field protected rawData:Ljava/nio/ByteBuffer;

.field protected status:I

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/pushservice/GifDec;->loopCount:I

    .line 7
    .line 8
    const/16 v0, 0x100

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/pushservice/GifDec;->block:[B

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    iput v0, p0, Lcom/narvii/pushservice/GifDec;->blockSize:I

    .line 16
    return-void
.end method


# virtual methods
.method protected decodeBitmapData()V
    .locals 19

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    iget v1, v0, Lcom/narvii/pushservice/GifDec;->width:I

    .line 8
    .line 9
    iget v2, v0, Lcom/narvii/pushservice/GifDec;->height:I

    .line 10
    mul-int/2addr v1, v2

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/pushservice/GifDec;->read()I

    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    .line 17
    shl-int v4, v3, v2

    .line 18
    .line 19
    add-int/lit8 v5, v4, 0x1

    .line 20
    .line 21
    add-int/lit8 v6, v4, 0x2

    .line 22
    add-int/2addr v2, v3

    .line 23
    .line 24
    shl-int v7, v3, v2

    .line 25
    sub-int/2addr v7, v3

    .line 26
    move v13, v2

    .line 27
    move v9, v6

    .line 28
    move v15, v7

    .line 29
    const/4 v10, 0x0

    .line 30
    const/4 v11, 0x0

    .line 31
    const/4 v12, 0x0

    .line 32
    const/4 v14, 0x0

    .line 33
    .line 34
    const/16 v16, 0x0

    .line 35
    .line 36
    const/16 v17, 0x0

    .line 37
    .line 38
    const/16 v18, -0x1

    .line 39
    .line 40
    :goto_0
    if-ge v10, v1, :cond_9

    .line 41
    .line 42
    if-nez v11, :cond_8

    .line 43
    .line 44
    if-ge v12, v13, :cond_2

    .line 45
    .line 46
    if-nez v16, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/pushservice/GifDec;->readBlock()I

    .line 50
    move-result v16

    .line 51
    .line 52
    if-gtz v16, :cond_0

    .line 53
    goto :goto_3

    .line 54
    .line 55
    :cond_0
    const/16 v17, 0x0

    .line 56
    .line 57
    :cond_1
    iget-object v8, v0, Lcom/narvii/pushservice/GifDec;->block:[B

    .line 58
    .line 59
    aget-byte v8, v8, v17

    .line 60
    .line 61
    and-int/lit16 v8, v8, 0xff

    .line 62
    shl-int/2addr v8, v12

    .line 63
    add-int/2addr v14, v8

    .line 64
    .line 65
    add-int/lit8 v12, v12, 0x8

    .line 66
    .line 67
    add-int/lit8 v17, v17, 0x1

    .line 68
    const/4 v8, -0x1

    .line 69
    .line 70
    add-int/lit8 v16, v16, -0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    const/4 v8, -0x1

    .line 73
    .line 74
    and-int v3, v14, v15

    .line 75
    shr-int/2addr v14, v13

    .line 76
    sub-int/2addr v12, v13

    .line 77
    .line 78
    if-gt v3, v9, :cond_9

    .line 79
    .line 80
    if-ne v3, v5, :cond_3

    .line 81
    goto :goto_3

    .line 82
    .line 83
    :cond_3
    if-ne v3, v4, :cond_4

    .line 84
    move v13, v2

    .line 85
    move v9, v6

    .line 86
    move v15, v7

    .line 87
    .line 88
    move/from16 v18, v8

    .line 89
    :goto_1
    const/4 v3, 0x1

    .line 90
    goto :goto_0

    .line 91
    .line 92
    :cond_4
    move/from16 v0, v18

    .line 93
    .line 94
    if-ne v0, v8, :cond_5

    .line 95
    .line 96
    move-object/from16 v0, p0

    .line 97
    .line 98
    move/from16 v18, v3

    .line 99
    goto :goto_1

    .line 100
    .line 101
    :cond_5
    const/16 v0, 0x1000

    .line 102
    .line 103
    if-lt v9, v0, :cond_6

    .line 104
    goto :goto_3

    .line 105
    .line 106
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 107
    .line 108
    and-int v18, v9, v15

    .line 109
    .line 110
    if-nez v18, :cond_7

    .line 111
    .line 112
    if-ge v9, v0, :cond_7

    .line 113
    .line 114
    add-int/lit8 v13, v13, 0x1

    .line 115
    add-int/2addr v15, v9

    .line 116
    .line 117
    :cond_7
    move/from16 v18, v3

    .line 118
    goto :goto_2

    .line 119
    .line 120
    :cond_8
    move/from16 v0, v18

    .line 121
    const/4 v8, -0x1

    .line 122
    .line 123
    :goto_2
    add-int/lit8 v11, v11, -0x1

    .line 124
    .line 125
    add-int/lit8 v10, v10, 0x1

    .line 126
    .line 127
    move-object/from16 v0, p0

    .line 128
    goto :goto_1

    .line 129
    :cond_9
    :goto_3
    return-void
.end method

.method protected err()Z
    .locals 1

    iget v0, p0, Lcom/narvii/pushservice/GifDec;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected init()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput v0, p0, Lcom/narvii/pushservice/GifDec;->status:I

    .line 4
    .line 5
    iput v0, p0, Lcom/narvii/pushservice/GifDec;->frameCount:I

    .line 6
    const/4 v0, -0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/narvii/pushservice/GifDec;->framePointer:I

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/pushservice/GifDec;->frames:Ljava/util/ArrayList;

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/pushservice/GifDec;->gct:[I

    .line 19
    return-void
.end method

.method protected read()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/narvii/pushservice/GifDec;->rawData:Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/narvii/pushservice/GifDec;->status:I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read([BII)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->init()V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/pushservice/GifDec;->rawData:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/narvii/pushservice/GifDec;->rawData:Ljava/nio/ByteBuffer;

    .line 4
    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readHeader()V

    .line 6
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->err()Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    new-instance p1, Lcom/narvii/pushservice/GifDec$GifFrame;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/narvii/pushservice/GifDec$GifFrame;-><init>(Lcom/narvii/pushservice/b;)V

    iput-object p1, p0, Lcom/narvii/pushservice/GifDec;->currentFrame:Lcom/narvii/pushservice/GifDec$GifFrame;

    .line 8
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readContents()V

    iget p1, p0, Lcom/narvii/pushservice/GifDec;->frameCount:I

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    iput p1, p0, Lcom/narvii/pushservice/GifDec;->status:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    iput p1, p0, Lcom/narvii/pushservice/GifDec;->status:I

    :cond_1
    :goto_0
    iget p1, p0, Lcom/narvii/pushservice/GifDec;->status:I

    return p1
.end method

.method protected readBitmap()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pushservice/GifDec;->currentFrame:Lcom/narvii/pushservice/GifDec$GifFrame;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readShort()I

    .line 6
    move-result v1

    .line 7
    .line 8
    iput v1, v0, Lcom/narvii/pushservice/GifDec$GifFrame;->ix:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/pushservice/GifDec;->currentFrame:Lcom/narvii/pushservice/GifDec$GifFrame;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readShort()I

    .line 14
    move-result v1

    .line 15
    .line 16
    iput v1, v0, Lcom/narvii/pushservice/GifDec$GifFrame;->iy:I

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/pushservice/GifDec;->currentFrame:Lcom/narvii/pushservice/GifDec$GifFrame;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readShort()I

    .line 22
    move-result v1

    .line 23
    .line 24
    iput v1, v0, Lcom/narvii/pushservice/GifDec$GifFrame;->iw:I

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/pushservice/GifDec;->currentFrame:Lcom/narvii/pushservice/GifDec$GifFrame;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readShort()I

    .line 30
    move-result v1

    .line 31
    .line 32
    iput v1, v0, Lcom/narvii/pushservice/GifDec$GifFrame;->ih:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->read()I

    .line 36
    move-result v0

    .line 37
    .line 38
    and-int/lit16 v1, v0, 0x80

    .line 39
    const/4 v2, 0x0

    .line 40
    const/4 v3, 0x1

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    move v1, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move v1, v2

    .line 46
    .line 47
    :goto_0
    iput-boolean v1, p0, Lcom/narvii/pushservice/GifDec;->lctFlag:Z

    .line 48
    .line 49
    and-int/lit8 v1, v0, 0x7

    .line 50
    add-int/2addr v1, v3

    .line 51
    int-to-double v4, v1

    .line 52
    .line 53
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 54
    .line 55
    .line 56
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 57
    move-result-wide v4

    .line 58
    double-to-int v1, v4

    .line 59
    .line 60
    iput v1, p0, Lcom/narvii/pushservice/GifDec;->lctSize:I

    .line 61
    .line 62
    iget-object v4, p0, Lcom/narvii/pushservice/GifDec;->currentFrame:Lcom/narvii/pushservice/GifDec$GifFrame;

    .line 63
    .line 64
    and-int/lit8 v0, v0, 0x40

    .line 65
    .line 66
    if-eqz v0, :cond_1

    .line 67
    move v2, v3

    .line 68
    .line 69
    :cond_1
    iput-boolean v2, v4, Lcom/narvii/pushservice/GifDec$GifFrame;->interlace:Z

    .line 70
    .line 71
    iget-boolean v0, p0, Lcom/narvii/pushservice/GifDec;->lctFlag:Z

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v1}, Lcom/narvii/pushservice/GifDec;->readColorTable(I)[I

    .line 77
    move-result-object v0

    .line 78
    .line 79
    iput-object v0, v4, Lcom/narvii/pushservice/GifDec$GifFrame;->lct:[I

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    const/4 v0, 0x0

    .line 82
    .line 83
    iput-object v0, v4, Lcom/narvii/pushservice/GifDec$GifFrame;->lct:[I

    .line 84
    .line 85
    :goto_1
    iget-object v0, p0, Lcom/narvii/pushservice/GifDec;->currentFrame:Lcom/narvii/pushservice/GifDec$GifFrame;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/narvii/pushservice/GifDec;->rawData:Ljava/nio/ByteBuffer;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 91
    move-result v1

    .line 92
    .line 93
    iput v1, v0, Lcom/narvii/pushservice/GifDec$GifFrame;->bufferFrameStart:I

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->decodeBitmapData()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->skip()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->err()Z

    .line 103
    move-result v0

    .line 104
    .line 105
    if-eqz v0, :cond_3

    .line 106
    return-void

    .line 107
    .line 108
    :cond_3
    iget v0, p0, Lcom/narvii/pushservice/GifDec;->frameCount:I

    .line 109
    add-int/2addr v0, v3

    .line 110
    .line 111
    iput v0, p0, Lcom/narvii/pushservice/GifDec;->frameCount:I

    .line 112
    .line 113
    iget-object v0, p0, Lcom/narvii/pushservice/GifDec;->frames:Ljava/util/ArrayList;

    .line 114
    .line 115
    iget-object v1, p0, Lcom/narvii/pushservice/GifDec;->currentFrame:Lcom/narvii/pushservice/GifDec$GifFrame;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method protected readBlock()I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->read()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/pushservice/GifDec;->blockSize:I

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/narvii/pushservice/GifDec;->blockSize:I

    .line 12
    .line 13
    if-ge v1, v0, :cond_0

    .line 14
    sub-int/2addr v0, v1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/pushservice/GifDec;->rawData:Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/narvii/pushservice/GifDec;->block:[B

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    add-int/2addr v1, v0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    const/4 v0, 0x1

    .line 25
    .line 26
    iput v0, p0, Lcom/narvii/pushservice/GifDec;->status:I

    .line 27
    :cond_0
    return v1
.end method

.method protected readColorTable(I)[I
    .locals 9

    .line 1
    .line 2
    mul-int/lit8 v0, p1, 0x3

    .line 3
    .line 4
    new-array v0, v0, [B

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/narvii/pushservice/GifDec;->rawData:Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    const/16 v2, 0x100

    .line 13
    .line 14
    new-array v1, v2, [I

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    .line 18
    :goto_0
    if-ge v2, p1, :cond_0

    .line 19
    .line 20
    add-int/lit8 v4, v3, 0x1

    .line 21
    .line 22
    aget-byte v5, v0, v3

    .line 23
    .line 24
    and-int/lit16 v5, v5, 0xff

    .line 25
    .line 26
    add-int/lit8 v6, v3, 0x2

    .line 27
    .line 28
    aget-byte v4, v0, v4

    .line 29
    .line 30
    and-int/lit16 v4, v4, 0xff

    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x3

    .line 33
    .line 34
    aget-byte v6, v0, v6

    .line 35
    .line 36
    and-int/lit16 v6, v6, 0xff

    .line 37
    .line 38
    add-int/lit8 v7, v2, 0x1

    .line 39
    .line 40
    shl-int/lit8 v5, v5, 0x10

    .line 41
    .line 42
    const/high16 v8, -0x1000000

    .line 43
    or-int/2addr v5, v8

    .line 44
    .line 45
    shl-int/lit8 v4, v4, 0x8

    .line 46
    or-int/2addr v4, v5

    .line 47
    or-int/2addr v4, v6

    .line 48
    .line 49
    aput v4, v1, v2
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    move v2, v7

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    const/4 p1, 0x1

    .line 53
    .line 54
    iput p1, p0, Lcom/narvii/pushservice/GifDec;->status:I

    .line 55
    :cond_0
    return-object v1
.end method

.method protected readContents()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    :goto_0
    if-nez v1, :cond_9

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->err()Z

    .line 8
    move-result v2

    .line 9
    .line 10
    if-nez v2, :cond_9

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->read()I

    .line 14
    move-result v2

    .line 15
    .line 16
    const/16 v3, 0x21

    .line 17
    const/4 v4, 0x1

    .line 18
    .line 19
    if-eq v2, v3, :cond_2

    .line 20
    .line 21
    const/16 v3, 0x2c

    .line 22
    .line 23
    if-eq v2, v3, :cond_1

    .line 24
    .line 25
    const/16 v3, 0x3b

    .line 26
    .line 27
    if-eq v2, v3, :cond_0

    .line 28
    .line 29
    iput v4, p0, Lcom/narvii/pushservice/GifDec;->status:I

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v1, v4

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readBitmap()V

    .line 36
    return-void

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->read()I

    .line 40
    move-result v2

    .line 41
    .line 42
    if-eq v2, v4, :cond_8

    .line 43
    .line 44
    const/16 v3, 0xf9

    .line 45
    .line 46
    if-eq v2, v3, :cond_7

    .line 47
    .line 48
    const/16 v3, 0xfe

    .line 49
    .line 50
    if-eq v2, v3, :cond_6

    .line 51
    .line 52
    const/16 v3, 0xff

    .line 53
    .line 54
    if-eq v2, v3, :cond_3

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->skip()V

    .line 58
    goto :goto_0

    .line 59
    .line 60
    .line 61
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readBlock()I

    .line 62
    .line 63
    const-string v2, ""

    .line 64
    move v3, v0

    .line 65
    .line 66
    :goto_1
    const/16 v4, 0xb

    .line 67
    .line 68
    if-ge v3, v4, :cond_4

    .line 69
    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    iget-object v2, p0, Lcom/narvii/pushservice/GifDec;->block:[B

    .line 79
    .line 80
    aget-byte v2, v2, v3

    .line 81
    int-to-char v2, v2

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v2

    .line 89
    .line 90
    add-int/lit8 v3, v3, 0x1

    .line 91
    goto :goto_1

    .line 92
    .line 93
    :cond_4
    const-string v3, "NETSCAPE2.0"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result v2

    .line 98
    .line 99
    if-eqz v2, :cond_5

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readNetscapeExt()V

    .line 103
    goto :goto_0

    .line 104
    .line 105
    .line 106
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->skip()V

    .line 107
    goto :goto_0

    .line 108
    .line 109
    .line 110
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->skip()V

    .line 111
    goto :goto_0

    .line 112
    .line 113
    .line 114
    :cond_7
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readGraphicControlExt()V

    .line 115
    goto :goto_0

    .line 116
    .line 117
    .line 118
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->skip()V

    .line 119
    goto :goto_0

    .line 120
    :cond_9
    return-void
.end method

.method protected readGraphicControlExt()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->read()I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->read()I

    .line 7
    move-result v0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/pushservice/GifDec;->currentFrame:Lcom/narvii/pushservice/GifDec$GifFrame;

    .line 10
    .line 11
    and-int/lit8 v2, v0, 0x1c

    .line 12
    .line 13
    shr-int/lit8 v2, v2, 0x2

    .line 14
    .line 15
    iput v2, v1, Lcom/narvii/pushservice/GifDec$GifFrame;->dispose:I

    .line 16
    const/4 v3, 0x1

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    iput v3, v1, Lcom/narvii/pushservice/GifDec$GifFrame;->dispose:I

    .line 21
    :cond_0
    and-int/2addr v0, v3

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v3, 0x0

    .line 26
    .line 27
    :goto_0
    iput-boolean v3, v1, Lcom/narvii/pushservice/GifDec$GifFrame;->transparency:Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readShort()I

    .line 31
    move-result v0

    .line 32
    .line 33
    mul-int/lit8 v0, v0, 0xa

    .line 34
    .line 35
    iput v0, v1, Lcom/narvii/pushservice/GifDec$GifFrame;->delay:I

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/pushservice/GifDec;->currentFrame:Lcom/narvii/pushservice/GifDec$GifFrame;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->read()I

    .line 41
    move-result v1

    .line 42
    .line 43
    iput v1, v0, Lcom/narvii/pushservice/GifDec$GifFrame;->transIndex:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->read()I

    .line 47
    return-void
.end method

.method protected readHeader()V
    .locals 3

    .line 1
    .line 2
    const-string v0, ""

    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    const/4 v2, 0x6

    .line 5
    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->read()I

    .line 18
    move-result v0

    .line 19
    int-to-char v0, v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    const-string v1, "GIF"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    const/4 v0, 0x1

    .line 39
    .line 40
    iput v0, p0, Lcom/narvii/pushservice/GifDec;->status:I

    .line 41
    return-void

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readLSD()V

    .line 45
    .line 46
    iget-boolean v0, p0, Lcom/narvii/pushservice/GifDec;->gctFlag:Z

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->err()Z

    .line 52
    move-result v0

    .line 53
    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    iget v0, p0, Lcom/narvii/pushservice/GifDec;->gctSize:I

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Lcom/narvii/pushservice/GifDec;->readColorTable(I)[I

    .line 60
    move-result-object v0

    .line 61
    .line 62
    iput-object v0, p0, Lcom/narvii/pushservice/GifDec;->gct:[I

    .line 63
    .line 64
    iget v1, p0, Lcom/narvii/pushservice/GifDec;->bgIndex:I

    .line 65
    .line 66
    aget v0, v0, v1

    .line 67
    .line 68
    iput v0, p0, Lcom/narvii/pushservice/GifDec;->bgColor:I

    .line 69
    :cond_2
    return-void
.end method

.method protected readLSD()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readShort()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/pushservice/GifDec;->width:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readShort()I

    .line 10
    move-result v0

    .line 11
    .line 12
    iput v0, p0, Lcom/narvii/pushservice/GifDec;->height:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->read()I

    .line 16
    move-result v0

    .line 17
    .line 18
    and-int/lit16 v1, v0, 0x80

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    .line 25
    :goto_0
    iput-boolean v1, p0, Lcom/narvii/pushservice/GifDec;->gctFlag:Z

    .line 26
    .line 27
    and-int/lit8 v0, v0, 0x7

    .line 28
    const/4 v1, 0x2

    .line 29
    .line 30
    shl-int v0, v1, v0

    .line 31
    .line 32
    iput v0, p0, Lcom/narvii/pushservice/GifDec;->gctSize:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->read()I

    .line 36
    move-result v0

    .line 37
    .line 38
    iput v0, p0, Lcom/narvii/pushservice/GifDec;->bgIndex:I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->read()I

    .line 42
    move-result v0

    .line 43
    .line 44
    iput v0, p0, Lcom/narvii/pushservice/GifDec;->pixelAspect:I

    .line 45
    return-void
.end method

.method protected readNetscapeExt()V
    .locals 3

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readBlock()I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/pushservice/GifDec;->block:[B

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    aget-byte v1, v0, v1

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    aget-byte v1, v0, v2

    .line 14
    .line 15
    and-int/lit16 v1, v1, 0xff

    .line 16
    const/4 v2, 0x2

    .line 17
    .line 18
    aget-byte v0, v0, v2

    .line 19
    .line 20
    and-int/lit16 v0, v0, 0xff

    .line 21
    .line 22
    shl-int/lit8 v0, v0, 0x8

    .line 23
    or-int/2addr v0, v1

    .line 24
    .line 25
    iput v0, p0, Lcom/narvii/pushservice/GifDec;->loopCount:I

    .line 26
    .line 27
    :cond_1
    iget v0, p0, Lcom/narvii/pushservice/GifDec;->blockSize:I

    .line 28
    .line 29
    if-lez v0, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->err()Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    :cond_2
    return-void
.end method

.method protected readShort()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pushservice/GifDec;->rawData:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected skip()V
    .locals 1

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readBlock()I

    .line 4
    .line 5
    iget v0, p0, Lcom/narvii/pushservice/GifDec;->blockSize:I

    .line 6
    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->err()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    :cond_1
    return-void
.end method
