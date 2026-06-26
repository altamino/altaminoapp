.class public Lcom/narvii/pushservice/GifDec;
.super Ljava/lang/Object;
.source "GifDec.java"


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

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput v0, p0, Lcom/narvii/pushservice/GifDec;->loopCount:I

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 52
    iput-object v0, p0, Lcom/narvii/pushservice/GifDec;->block:[B

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/narvii/pushservice/GifDec;->blockSize:I

    return-void
.end method


# virtual methods
.method protected decodeBitmapData()V
    .locals 19

    move-object/from16 v0, p0

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 118
    iget v1, v0, Lcom/narvii/pushservice/GifDec;->width:I

    iget v2, v0, Lcom/narvii/pushservice/GifDec;->height:I

    mul-int v1, v1, v2

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/pushservice/GifDec;->read()I

    move-result v2

    const/4 v3, 0x1

    shl-int v4, v3, v2

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v4, 0x2

    add-int/2addr v2, v3

    shl-int v7, v3, v2

    sub-int/2addr v7, v3

    move v13, v2

    move v8, v6

    move v15, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_0
    const/16 v18, -0x1

    :goto_1
    if-ge v10, v1, :cond_9

    if-nez v11, :cond_8

    if-ge v12, v13, :cond_2

    if-nez v16, :cond_1

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/pushservice/GifDec;->readBlock()I

    move-result v16

    if-gtz v16, :cond_0

    goto :goto_3

    :cond_0
    const/16 v17, 0x0

    .line 144
    :cond_1
    iget-object v9, v0, Lcom/narvii/pushservice/GifDec;->block:[B

    aget-byte v9, v9, v17

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v12

    add-int/2addr v14, v9

    add-int/lit8 v12, v12, 0x8

    add-int/lit8 v17, v17, 0x1

    const/4 v9, -0x1

    add-int/lit8 v16, v16, -0x1

    goto :goto_1

    :cond_2
    const/4 v9, -0x1

    and-int v3, v14, v15

    shr-int/2addr v14, v13

    sub-int/2addr v12, v13

    if-gt v3, v8, :cond_9

    if-ne v3, v5, :cond_3

    goto :goto_3

    :cond_3
    if-ne v3, v4, :cond_4

    move v13, v2

    move v8, v6

    move v15, v7

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    move/from16 v0, v18

    if-ne v0, v9, :cond_5

    move-object/from16 v0, p0

    move/from16 v18, v3

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/16 v0, 0x1000

    if-lt v8, v0, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v8, v8, 0x1

    and-int v18, v8, v15

    if-nez v18, :cond_7

    if-ge v8, v0, :cond_7

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v15, v8

    :cond_7
    move/from16 v18, v3

    goto :goto_2

    :cond_8
    move/from16 v0, v18

    const/4 v9, -0x1

    :goto_2
    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    :cond_9
    :goto_3
    return-void
.end method

.method protected err()Z
    .locals 1

    .line 196
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

    const/4 v0, 0x0

    .line 203
    iput v0, p0, Lcom/narvii/pushservice/GifDec;->status:I

    .line 204
    iput v0, p0, Lcom/narvii/pushservice/GifDec;->frameCount:I

    const/4 v0, -0x1

    .line 205
    iput v0, p0, Lcom/narvii/pushservice/GifDec;->framePointer:I

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/pushservice/GifDec;->frames:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lcom/narvii/pushservice/GifDec;->gct:[I

    return-void
.end method

.method protected read()I
    .locals 1

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/narvii/pushservice/GifDec;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    .line 218
    iput v0, p0, Lcom/narvii/pushservice/GifDec;->status:I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read([BII)I
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->init()V

    if-eqz p1, :cond_0

    .line 91
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/pushservice/GifDec;->rawData:Ljava/nio/ByteBuffer;

    .line 92
    iget-object p1, p0, Lcom/narvii/pushservice/GifDec;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 93
    iget-object p1, p0, Lcom/narvii/pushservice/GifDec;->rawData:Ljava/nio/ByteBuffer;

    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 95
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readHeader()V

    .line 96
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->err()Z

    move-result p1

    if-nez p1, :cond_1

    .line 97
    new-instance p1, Lcom/narvii/pushservice/GifDec$GifFrame;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/narvii/pushservice/GifDec$GifFrame;-><init>(Lcom/narvii/pushservice/GifDec$1;)V

    iput-object p1, p0, Lcom/narvii/pushservice/GifDec;->currentFrame:Lcom/narvii/pushservice/GifDec$GifFrame;

    .line 98
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readContents()V

    .line 99
    iget p1, p0, Lcom/narvii/pushservice/GifDec;->frameCount:I

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    .line 100
    iput p1, p0, Lcom/narvii/pushservice/GifDec;->status:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 104
    iput p1, p0, Lcom/narvii/pushservice/GifDec;->status:I

    .line 107
    :cond_1
    :goto_0
    iget p1, p0, Lcom/narvii/pushservice/GifDec;->status:I

    return p1
.end method

.method protected readBitmap()V
    .locals 8

    .line 367
    iget-object v0, p0, Lcom/narvii/pushservice/GifDec;->currentFrame:Lcom/narvii/pushservice/GifDec$GifFrame;

    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readShort()I

    move-result v1

    iput v1, v0, Lcom/narvii/pushservice/GifDec$GifFrame;->ix:I

    .line 368
    iget-object v0, p0, Lcom/narvii/pushservice/GifDec;->currentFrame:Lcom/narvii/pushservice/GifDec$GifFrame;

    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readShort()I

    move-result v1

    iput v1, v0, Lcom/narvii/pushservice/GifDec$GifFrame;->iy:I

    .line 369
    iget-object v0, p0, Lcom/narvii/pushservice/GifDec;->currentFrame:Lcom/narvii/pushservice/GifDec$GifFrame;

    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readShort()I

    move-result v1

    iput v1, v0, Lcom/narvii/pushservice/GifDec$GifFrame;->iw:I

    .line 370
    iget-object v0, p0, Lcom/narvii/pushservice/GifDec;->currentFrame:Lcom/narvii/pushservice/GifDec$GifFrame;

    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readShort()I

    move-result v1

    iput v1, v0, Lcom/narvii/pushservice/GifDec$GifFrame;->ih:I

    .line 372
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->read()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 373
    :goto_0
    iput-boolean v1, p0, Lcom/narvii/pushservice/GifDec;->lctFlag:Z

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-int/lit8 v1, v0, 0x7

    add-int/2addr v1, v3

    int-to-double v6, v1

    .line 374
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v1, v4

    iput v1, p0, Lcom/narvii/pushservice/GifDec;->lctSize:I

    .line 378
    iget-object v1, p0, Lcom/narvii/pushservice/GifDec;->currentFrame:Lcom/narvii/pushservice/GifDec$GifFrame;

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, v1, Lcom/narvii/pushservice/GifDec$GifFrame;->interlace:Z

    .line 379
    iget-boolean v0, p0, Lcom/narvii/pushservice/GifDec;->lctFlag:Z

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/narvii/pushservice/GifDec;->currentFrame:Lcom/narvii/pushservice/GifDec$GifFrame;

    iget v1, p0, Lcom/narvii/pushservice/GifDec;->lctSize:I

    invoke-virtual {p0, v1}, Lcom/narvii/pushservice/GifDec;->readColorTable(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/pushservice/GifDec$GifFrame;->lct:[I

    goto :goto_1

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/narvii/pushservice/GifDec;->currentFrame:Lcom/narvii/pushservice/GifDec$GifFrame;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/narvii/pushservice/GifDec$GifFrame;->lct:[I

    .line 385
    :goto_1
    iget-object v0, p0, Lcom/narvii/pushservice/GifDec;->currentFrame:Lcom/narvii/pushservice/GifDec$GifFrame;

    iget-object v1, p0, Lcom/narvii/pushservice/GifDec;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, v0, Lcom/narvii/pushservice/GifDec$GifFrame;->bufferFrameStart:I

    .line 387
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->decodeBitmapData()V

    .line 388
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->skip()V

    .line 389
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->err()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 393
    :cond_3
    iget v0, p0, Lcom/narvii/pushservice/GifDec;->frameCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/narvii/pushservice/GifDec;->frameCount:I

    .line 394
    iget-object v0, p0, Lcom/narvii/pushservice/GifDec;->frames:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/pushservice/GifDec;->currentFrame:Lcom/narvii/pushservice/GifDec$GifFrame;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected readBlock()I
    .locals 4

    .line 229
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->read()I

    move-result v0

    iput v0, p0, Lcom/narvii/pushservice/GifDec;->blockSize:I

    .line 231
    iget v0, p0, Lcom/narvii/pushservice/GifDec;->blockSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 234
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/narvii/pushservice/GifDec;->blockSize:I

    if-ge v1, v0, :cond_0

    .line 235
    iget v0, p0, Lcom/narvii/pushservice/GifDec;->blockSize:I

    sub-int/2addr v0, v1

    .line 236
    iget-object v2, p0, Lcom/narvii/pushservice/GifDec;->rawData:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/narvii/pushservice/GifDec;->block:[B

    invoke-virtual {v2, v3, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    .line 241
    iput v0, p0, Lcom/narvii/pushservice/GifDec;->status:I

    :cond_0
    return v1
.end method

.method protected readColorTable(I)[I
    .locals 9

    mul-int/lit8 v0, p1, 0x3

    .line 256
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 259
    :try_start_0
    iget-object v2, p0, Lcom/narvii/pushservice/GifDec;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x100

    new-array v1, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 265
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    .line 266
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    .line 267
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v2, 0x1

    const/high16 v8, -0x1000000

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v5

    .line 268
    aput v3, v1, v2
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    move v2, v7

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    .line 271
    iput p1, p0, Lcom/narvii/pushservice/GifDec;->status:I

    :cond_0
    return-object v1
.end method

.method protected readContents()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_9

    .line 283
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->err()Z

    move-result v2

    if-nez v2, :cond_9

    .line 284
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->read()I

    move-result v2

    const/16 v3, 0x21

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_0

    .line 323
    iput v4, p0, Lcom/narvii/pushservice/GifDec;->status:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 287
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readBitmap()V

    return-void

    .line 290
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->read()I

    move-result v2

    if-eq v2, v4, :cond_8

    const/16 v3, 0xf9

    if-eq v2, v3, :cond_7

    const/16 v3, 0xfe

    if-eq v2, v3, :cond_6

    const/16 v3, 0xff

    if-eq v2, v3, :cond_3

    .line 315
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->skip()V

    goto :goto_0

    .line 297
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readBlock()I

    const-string v2, ""

    move-object v3, v2

    const/4 v2, 0x0

    :goto_1
    const/16 v4, 0xb

    if-ge v2, v4, :cond_4

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/pushservice/GifDec;->block:[B

    aget-byte v3, v3, v2

    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const-string v2, "NETSCAPE2.0"

    .line 302
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 303
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readNetscapeExt()V

    goto :goto_0

    .line 305
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->skip()V

    goto :goto_0

    .line 309
    :cond_6
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->skip()V

    goto :goto_0

    .line 294
    :cond_7
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readGraphicControlExt()V

    goto :goto_0

    .line 312
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->skip()V

    goto :goto_0

    :cond_9
    return-void
.end method

.method protected readGraphicControlExt()V
    .locals 4

    .line 351
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->read()I

    .line 352
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->read()I

    move-result v0

    .line 353
    iget-object v1, p0, Lcom/narvii/pushservice/GifDec;->currentFrame:Lcom/narvii/pushservice/GifDec$GifFrame;

    and-int/lit8 v2, v0, 0x1c

    shr-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/narvii/pushservice/GifDec$GifFrame;->dispose:I

    .line 354
    iget v2, v1, Lcom/narvii/pushservice/GifDec$GifFrame;->dispose:I

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 355
    iput v3, v1, Lcom/narvii/pushservice/GifDec$GifFrame;->dispose:I

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/narvii/pushservice/GifDec;->currentFrame:Lcom/narvii/pushservice/GifDec$GifFrame;

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v1, Lcom/narvii/pushservice/GifDec$GifFrame;->transparency:Z

    .line 358
    iget-object v0, p0, Lcom/narvii/pushservice/GifDec;->currentFrame:Lcom/narvii/pushservice/GifDec$GifFrame;

    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readShort()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, v0, Lcom/narvii/pushservice/GifDec$GifFrame;->delay:I

    .line 359
    iget-object v0, p0, Lcom/narvii/pushservice/GifDec;->currentFrame:Lcom/narvii/pushservice/GifDec$GifFrame;

    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->read()I

    move-result v1

    iput v1, v0, Lcom/narvii/pushservice/GifDec$GifFrame;->transIndex:I

    .line 360
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->read()I

    return-void
.end method

.method protected readHeader()V
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->read()I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "GIF"

    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 337
    iput v0, p0, Lcom/narvii/pushservice/GifDec;->status:I

    return-void

    .line 340
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readLSD()V

    .line 341
    iget-boolean v0, p0, Lcom/narvii/pushservice/GifDec;->gctFlag:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->err()Z

    move-result v0

    if-nez v0, :cond_2

    .line 342
    iget v0, p0, Lcom/narvii/pushservice/GifDec;->gctSize:I

    invoke-virtual {p0, v0}, Lcom/narvii/pushservice/GifDec;->readColorTable(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/pushservice/GifDec;->gct:[I

    .line 343
    iget-object v0, p0, Lcom/narvii/pushservice/GifDec;->gct:[I

    iget v1, p0, Lcom/narvii/pushservice/GifDec;->bgIndex:I

    aget v0, v0, v1

    iput v0, p0, Lcom/narvii/pushservice/GifDec;->bgColor:I

    :cond_2
    return-void
.end method

.method protected readLSD()V
    .locals 2

    .line 402
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readShort()I

    move-result v0

    iput v0, p0, Lcom/narvii/pushservice/GifDec;->width:I

    .line 403
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readShort()I

    move-result v0

    iput v0, p0, Lcom/narvii/pushservice/GifDec;->height:I

    .line 405
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->read()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 406
    :goto_0
    iput-boolean v1, p0, Lcom/narvii/pushservice/GifDec;->gctFlag:Z

    const/4 v1, 0x2

    and-int/lit8 v0, v0, 0x7

    shl-int v0, v1, v0

    .line 409
    iput v0, p0, Lcom/narvii/pushservice/GifDec;->gctSize:I

    .line 410
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->read()I

    move-result v0

    iput v0, p0, Lcom/narvii/pushservice/GifDec;->bgIndex:I

    .line 411
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->read()I

    move-result v0

    iput v0, p0, Lcom/narvii/pushservice/GifDec;->pixelAspect:I

    return-void
.end method

.method protected readNetscapeExt()V
    .locals 3

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readBlock()I

    .line 420
    iget-object v0, p0, Lcom/narvii/pushservice/GifDec;->block:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 422
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    .line 423
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    .line 424
    iput v0, p0, Lcom/narvii/pushservice/GifDec;->loopCount:I

    .line 426
    :cond_1
    iget v0, p0, Lcom/narvii/pushservice/GifDec;->blockSize:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method protected readShort()I
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/narvii/pushservice/GifDec;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method protected skip()V
    .locals 1

    .line 442
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->readBlock()I

    .line 443
    iget v0, p0, Lcom/narvii/pushservice/GifDec;->blockSize:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/pushservice/GifDec;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method
