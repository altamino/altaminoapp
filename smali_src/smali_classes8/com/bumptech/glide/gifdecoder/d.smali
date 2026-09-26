.class public Lcom/bumptech/glide/gifdecoder/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DEFAULT_FRAME_DELAY:I = 0xa

.field private static final DESCRIPTOR_MASK_INTERLACE_FLAG:I = 0x40

.field private static final DESCRIPTOR_MASK_LCT_FLAG:I = 0x80

.field private static final DESCRIPTOR_MASK_LCT_SIZE:I = 0x7

.field private static final EXTENSION_INTRODUCER:I = 0x21

.field private static final GCE_DISPOSAL_METHOD_SHIFT:I = 0x2

.field private static final GCE_MASK_DISPOSAL_METHOD:I = 0x1c

.field private static final GCE_MASK_TRANSPARENT_COLOR_FLAG:I = 0x1

.field private static final IMAGE_SEPARATOR:I = 0x2c

.field private static final LABEL_APPLICATION_EXTENSION:I = 0xff

.field private static final LABEL_COMMENT_EXTENSION:I = 0xfe

.field private static final LABEL_GRAPHIC_CONTROL_EXTENSION:I = 0xf9

.field private static final LABEL_PLAIN_TEXT_EXTENSION:I = 0x1

.field private static final LSD_MASK_GCT_FLAG:I = 0x80

.field private static final LSD_MASK_GCT_SIZE:I = 0x7

.field private static final MASK_INT_LOWEST_BYTE:I = 0xff

.field private static final MAX_BLOCK_SIZE:I = 0x100

.field static final MIN_FRAME_DELAY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GifHeaderParser"

.field private static final TRAILER:I = 0x3b


# instance fields
.field private final block:[B

.field private blockSize:I

.field private header:Lcom/bumptech/glide/gifdecoder/c;

.field private rawData:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0x100

    .line 6
    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->block:[B

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/d;->blockSize:I

    .line 13
    return-void
.end method

.method private b()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 3
    .line 4
    iget v0, v0, Lcom/bumptech/glide/gifdecoder/c;->status:I

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method private d()I
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->rawData:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 6
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    and-int/lit16 v0, v0, 0xff

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :catch_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    iput v1, v0, Lcom/bumptech/glide/gifdecoder/c;->status:I

    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method private e()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/c;->currentFrame:Lcom/bumptech/glide/gifdecoder/b;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->n()I

    .line 8
    move-result v1

    .line 9
    .line 10
    iput v1, v0, Lcom/bumptech/glide/gifdecoder/b;->ix:I

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/c;->currentFrame:Lcom/bumptech/glide/gifdecoder/b;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->n()I

    .line 18
    move-result v1

    .line 19
    .line 20
    iput v1, v0, Lcom/bumptech/glide/gifdecoder/b;->iy:I

    .line 21
    .line 22
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/c;->currentFrame:Lcom/bumptech/glide/gifdecoder/b;

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->n()I

    .line 28
    move-result v1

    .line 29
    .line 30
    iput v1, v0, Lcom/bumptech/glide/gifdecoder/b;->iw:I

    .line 31
    .line 32
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/c;->currentFrame:Lcom/bumptech/glide/gifdecoder/b;

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->n()I

    .line 38
    move-result v1

    .line 39
    .line 40
    iput v1, v0, Lcom/bumptech/glide/gifdecoder/b;->ih:I

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->d()I

    .line 44
    move-result v0

    .line 45
    .line 46
    and-int/lit16 v1, v0, 0x80

    .line 47
    const/4 v2, 0x0

    .line 48
    const/4 v3, 0x1

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    move v1, v3

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move v1, v2

    .line 54
    .line 55
    :goto_0
    and-int/lit8 v4, v0, 0x7

    .line 56
    add-int/2addr v4, v3

    .line 57
    int-to-double v4, v4

    .line 58
    .line 59
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 60
    .line 61
    .line 62
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 63
    move-result-wide v4

    .line 64
    double-to-int v4, v4

    .line 65
    .line 66
    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 67
    .line 68
    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/c;->currentFrame:Lcom/bumptech/glide/gifdecoder/b;

    .line 69
    .line 70
    and-int/lit8 v0, v0, 0x40

    .line 71
    .line 72
    if-eqz v0, :cond_1

    .line 73
    move v2, v3

    .line 74
    .line 75
    :cond_1
    iput-boolean v2, v5, Lcom/bumptech/glide/gifdecoder/b;->interlace:Z

    .line 76
    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, v4}, Lcom/bumptech/glide/gifdecoder/d;->g(I)[I

    .line 81
    move-result-object v0

    .line 82
    .line 83
    iput-object v0, v5, Lcom/bumptech/glide/gifdecoder/b;->lct:[I

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    const/4 v0, 0x0

    .line 86
    .line 87
    iput-object v0, v5, Lcom/bumptech/glide/gifdecoder/b;->lct:[I

    .line 88
    .line 89
    :goto_1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/c;->currentFrame:Lcom/bumptech/glide/gifdecoder/b;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/d;->rawData:Ljava/nio/ByteBuffer;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 97
    move-result v1

    .line 98
    .line 99
    iput v1, v0, Lcom/bumptech/glide/gifdecoder/b;->bufferFrameStart:I

    .line 100
    .line 101
    .line 102
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->r()V

    .line 103
    .line 104
    .line 105
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->b()Z

    .line 106
    move-result v0

    .line 107
    .line 108
    if-eqz v0, :cond_3

    .line 109
    return-void

    .line 110
    .line 111
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 112
    .line 113
    iget v1, v0, Lcom/bumptech/glide/gifdecoder/c;->frameCount:I

    .line 114
    add-int/2addr v1, v3

    .line 115
    .line 116
    iput v1, v0, Lcom/bumptech/glide/gifdecoder/c;->frameCount:I

    .line 117
    .line 118
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/c;->frames:Ljava/util/List;

    .line 119
    .line 120
    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/c;->currentFrame:Lcom/bumptech/glide/gifdecoder/b;

    .line 121
    .line 122
    .line 123
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method private f()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->d()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/d;->blockSize:I

    .line 7
    .line 8
    if-lez v0, :cond_1

    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    .line 12
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/bumptech/glide/gifdecoder/d;->blockSize:I

    .line 13
    .line 14
    if-ge v0, v1, :cond_1

    .line 15
    sub-int/2addr v1, v0

    .line 16
    .line 17
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/d;->rawData:Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/d;->block:[B

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    add-int/2addr v0, v1

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v2

    .line 26
    const/4 v3, 0x3

    .line 27
    .line 28
    const-string v4, "GifHeaderParser"

    .line 29
    .line 30
    .line 31
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 32
    move-result v3

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    const-string v5, "Error Reading Block n: "

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v0, " count: "

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v0, " blockSize: "

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/d;->blockSize:I

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    .line 72
    invoke-static {v4, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .line 74
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 75
    const/4 v1, 0x1

    .line 76
    .line 77
    iput v1, v0, Lcom/bumptech/glide/gifdecoder/c;->status:I

    .line 78
    :cond_1
    return-void
.end method

.method private g(I)[I
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

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
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/d;->rawData:Ljava/nio/ByteBuffer;

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
    if-ge v2, p1, :cond_1

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
    move-exception p1

    .line 53
    .line 54
    const-string v0, "GifHeaderParser"

    .line 55
    const/4 v2, 0x3

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 59
    move-result v2

    .line 60
    .line 61
    if-eqz v2, :cond_0

    .line 62
    .line 63
    const-string v2, "Format Error Reading Color Table"

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .line 68
    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 69
    const/4 v0, 0x1

    .line 70
    .line 71
    iput v0, p1, Lcom/bumptech/glide/gifdecoder/c;->status:I

    .line 72
    :cond_1
    return-object v1
.end method

.method private h()V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7fffffff

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifdecoder/d;->i(I)V

    .line 7
    return-void
.end method

.method private i(I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    :goto_0
    if-nez v1, :cond_a

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->b()Z

    .line 8
    move-result v2

    .line 9
    .line 10
    if-nez v2, :cond_a

    .line 11
    .line 12
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 13
    .line 14
    iget v2, v2, Lcom/bumptech/glide/gifdecoder/c;->frameCount:I

    .line 15
    .line 16
    if-gt v2, p1, :cond_a

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->d()I

    .line 20
    move-result v2

    .line 21
    .line 22
    const/16 v3, 0x21

    .line 23
    const/4 v4, 0x1

    .line 24
    .line 25
    if-eq v2, v3, :cond_3

    .line 26
    .line 27
    const/16 v3, 0x2c

    .line 28
    .line 29
    if-eq v2, v3, :cond_1

    .line 30
    .line 31
    const/16 v3, 0x3b

    .line 32
    .line 33
    if-eq v2, v3, :cond_0

    .line 34
    .line 35
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 36
    .line 37
    iput v4, v2, Lcom/bumptech/glide/gifdecoder/c;->status:I

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v1, v4

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_1
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 43
    .line 44
    iget-object v3, v2, Lcom/bumptech/glide/gifdecoder/c;->currentFrame:Lcom/bumptech/glide/gifdecoder/b;

    .line 45
    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    new-instance v3, Lcom/bumptech/glide/gifdecoder/b;

    .line 49
    .line 50
    .line 51
    invoke-direct {v3}, Lcom/bumptech/glide/gifdecoder/b;-><init>()V

    .line 52
    .line 53
    iput-object v3, v2, Lcom/bumptech/glide/gifdecoder/c;->currentFrame:Lcom/bumptech/glide/gifdecoder/b;

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->e()V

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->d()I

    .line 61
    move-result v2

    .line 62
    .line 63
    if-eq v2, v4, :cond_9

    .line 64
    .line 65
    const/16 v3, 0xf9

    .line 66
    .line 67
    if-eq v2, v3, :cond_8

    .line 68
    .line 69
    const/16 v3, 0xfe

    .line 70
    .line 71
    if-eq v2, v3, :cond_7

    .line 72
    .line 73
    const/16 v3, 0xff

    .line 74
    .line 75
    if-eq v2, v3, :cond_4

    .line 76
    .line 77
    .line 78
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->q()V

    .line 79
    goto :goto_0

    .line 80
    .line 81
    .line 82
    :cond_4
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->f()V

    .line 83
    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    move v3, v0

    .line 89
    .line 90
    :goto_1
    const/16 v4, 0xb

    .line 91
    .line 92
    if-ge v3, v4, :cond_5

    .line 93
    .line 94
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/d;->block:[B

    .line 95
    .line 96
    aget-byte v4, v4, v3

    .line 97
    int-to-char v4, v4

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    add-int/lit8 v3, v3, 0x1

    .line 103
    goto :goto_1

    .line 104
    .line 105
    .line 106
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v2

    .line 108
    .line 109
    const-string v3, "NETSCAPE2.0"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result v2

    .line 114
    .line 115
    if-eqz v2, :cond_6

    .line 116
    .line 117
    .line 118
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->m()V

    .line 119
    goto :goto_0

    .line 120
    .line 121
    .line 122
    :cond_6
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->q()V

    .line 123
    goto :goto_0

    .line 124
    .line 125
    .line 126
    :cond_7
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->q()V

    .line 127
    goto :goto_0

    .line 128
    .line 129
    :cond_8
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 130
    .line 131
    new-instance v3, Lcom/bumptech/glide/gifdecoder/b;

    .line 132
    .line 133
    .line 134
    invoke-direct {v3}, Lcom/bumptech/glide/gifdecoder/b;-><init>()V

    .line 135
    .line 136
    iput-object v3, v2, Lcom/bumptech/glide/gifdecoder/c;->currentFrame:Lcom/bumptech/glide/gifdecoder/b;

    .line 137
    .line 138
    .line 139
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->j()V

    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    .line 144
    :cond_9
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->q()V

    .line 145
    .line 146
    goto/16 :goto_0

    .line 147
    :cond_a
    return-void
.end method

.method private j()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->d()I

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->d()I

    .line 7
    move-result v0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/bumptech/glide/gifdecoder/c;->currentFrame:Lcom/bumptech/glide/gifdecoder/b;

    .line 12
    .line 13
    and-int/lit8 v2, v0, 0x1c

    .line 14
    const/4 v3, 0x2

    .line 15
    shr-int/2addr v2, v3

    .line 16
    .line 17
    iput v2, v1, Lcom/bumptech/glide/gifdecoder/b;->dispose:I

    .line 18
    const/4 v4, 0x1

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    iput v4, v1, Lcom/bumptech/glide/gifdecoder/b;->dispose:I

    .line 23
    :cond_0
    and-int/2addr v0, v4

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v4, 0x0

    .line 28
    .line 29
    :goto_0
    iput-boolean v4, v1, Lcom/bumptech/glide/gifdecoder/b;->transparency:Z

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->n()I

    .line 33
    move-result v0

    .line 34
    .line 35
    const/16 v1, 0xa

    .line 36
    .line 37
    if-ge v0, v3, :cond_2

    .line 38
    move v0, v1

    .line 39
    .line 40
    :cond_2
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 41
    .line 42
    iget-object v2, v2, Lcom/bumptech/glide/gifdecoder/c;->currentFrame:Lcom/bumptech/glide/gifdecoder/b;

    .line 43
    mul-int/2addr v0, v1

    .line 44
    .line 45
    iput v0, v2, Lcom/bumptech/glide/gifdecoder/b;->delay:I

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->d()I

    .line 49
    move-result v0

    .line 50
    .line 51
    iput v0, v2, Lcom/bumptech/glide/gifdecoder/b;->transIndex:I

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->d()I

    .line 55
    return-void
.end method

.method private k()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    const/4 v2, 0x6

    .line 8
    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->d()I

    .line 13
    move-result v2

    .line 14
    int-to-char v2, v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    const-string v1, "GIF"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 35
    const/4 v1, 0x1

    .line 36
    .line 37
    iput v1, v0, Lcom/bumptech/glide/gifdecoder/c;->status:I

    .line 38
    return-void

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->l()V

    .line 42
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 44
    .line 45
    iget-boolean v0, v0, Lcom/bumptech/glide/gifdecoder/c;->gctFlag:Z

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->b()Z

    .line 51
    move-result v0

    .line 52
    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 56
    .line 57
    iget v1, v0, Lcom/bumptech/glide/gifdecoder/c;->gctSize:I

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, v1}, Lcom/bumptech/glide/gifdecoder/d;->g(I)[I

    .line 61
    move-result-object v1

    .line 62
    .line 63
    iput-object v1, v0, Lcom/bumptech/glide/gifdecoder/c;->gct:[I

    .line 64
    .line 65
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 66
    .line 67
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/c;->gct:[I

    .line 68
    .line 69
    iget v2, v0, Lcom/bumptech/glide/gifdecoder/c;->bgIndex:I

    .line 70
    .line 71
    aget v1, v1, v2

    .line 72
    .line 73
    iput v1, v0, Lcom/bumptech/glide/gifdecoder/c;->bgColor:I

    .line 74
    :cond_2
    return-void
.end method

.method private l()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->n()I

    .line 6
    move-result v1

    .line 7
    .line 8
    iput v1, v0, Lcom/bumptech/glide/gifdecoder/c;->width:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->n()I

    .line 14
    move-result v1

    .line 15
    .line 16
    iput v1, v0, Lcom/bumptech/glide/gifdecoder/c;->height:I

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->d()I

    .line 20
    move-result v0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 23
    .line 24
    and-int/lit16 v2, v0, 0x80

    .line 25
    const/4 v3, 0x1

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    move v2, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v2, 0x0

    .line 31
    .line 32
    :goto_0
    iput-boolean v2, v1, Lcom/bumptech/glide/gifdecoder/c;->gctFlag:Z

    .line 33
    .line 34
    and-int/lit8 v0, v0, 0x7

    .line 35
    add-int/2addr v0, v3

    .line 36
    int-to-double v2, v0

    .line 37
    .line 38
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 39
    .line 40
    .line 41
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 42
    move-result-wide v2

    .line 43
    double-to-int v0, v2

    .line 44
    .line 45
    iput v0, v1, Lcom/bumptech/glide/gifdecoder/c;->gctSize:I

    .line 46
    .line 47
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->d()I

    .line 51
    move-result v1

    .line 52
    .line 53
    iput v1, v0, Lcom/bumptech/glide/gifdecoder/c;->bgIndex:I

    .line 54
    .line 55
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->d()I

    .line 59
    move-result v1

    .line 60
    .line 61
    iput v1, v0, Lcom/bumptech/glide/gifdecoder/c;->pixelAspect:I

    .line 62
    return-void
.end method

.method private m()V
    .locals 3

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->f()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->block:[B

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
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 23
    .line 24
    shl-int/lit8 v0, v0, 0x8

    .line 25
    or-int/2addr v0, v1

    .line 26
    .line 27
    iput v0, v2, Lcom/bumptech/glide/gifdecoder/c;->loopCount:I

    .line 28
    .line 29
    :cond_1
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/d;->blockSize:I

    .line 30
    .line 31
    if-lez v0, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->b()Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    :cond_2
    return-void
.end method

.method private n()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->rawData:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private o()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->rawData:Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->block:[B

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 10
    .line 11
    new-instance v0, Lcom/bumptech/glide/gifdecoder/c;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Lcom/bumptech/glide/gifdecoder/c;-><init>()V

    .line 15
    .line 16
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 17
    .line 18
    iput v1, p0, Lcom/bumptech/glide/gifdecoder/d;->blockSize:I

    .line 19
    return-void
.end method

.method private q()V
    .locals 3

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->d()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/d;->rawData:Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 10
    move-result v1

    .line 11
    add-int/2addr v1, v0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/d;->rawData:Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 17
    move-result v2

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 21
    move-result v1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/d;->rawData:Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 27
    .line 28
    if-gtz v0, :cond_0

    .line 29
    return-void
.end method

.method private r()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->d()I

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->q()V

    .line 7
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->rawData:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    return-void
.end method

.method public c()Lcom/bumptech/glide/gifdecoder/c;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->rawData:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->b()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 13
    return-object v0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->k()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->b()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->h()V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 28
    .line 29
    iget v1, v0, Lcom/bumptech/glide/gifdecoder/c;->frameCount:I

    .line 30
    .line 31
    if-gez v1, :cond_1

    .line 32
    const/4 v1, 0x1

    .line 33
    .line 34
    iput v1, v0, Lcom/bumptech/glide/gifdecoder/c;->status:I

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/d;->header:Lcom/bumptech/glide/gifdecoder/c;

    .line 37
    return-object v0

    .line 38
    .line 39
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string v1, "You must call setData() before parseHeader()"

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    throw v0
.end method

.method public p(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/gifdecoder/d;
    .locals 1
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/d;->o()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/d;->rawData:Ljava/nio/ByteBuffer;

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/bumptech/glide/gifdecoder/d;->rawData:Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 21
    return-object p0
.end method
