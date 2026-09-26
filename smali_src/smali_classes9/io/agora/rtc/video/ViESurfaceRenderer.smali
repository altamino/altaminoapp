.class public Lio/agora/rtc/video/ViESurfaceRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "ViESurfaceRenderer"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private bottomScale:F

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private dest:Landroid/graphics/Rect;

.field private leftScale:F

.field private rightScale:F

.field private source:Landroid/graphics/Rect;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private topScale:F


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    iput-object v0, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    new-instance v0, Landroid/graphics/Rect;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    iput-object v0, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->source:Landroid/graphics/Rect;

    .line 16
    .line 17
    new-instance v0, Landroid/graphics/Rect;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    iput-object v0, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->dest:Landroid/graphics/Rect;

    .line 23
    const/4 v0, 0x0

    .line 24
    .line 25
    iput v0, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->topScale:F

    .line 26
    .line 27
    const/high16 v1, 0x3f800000    # 1.0f

    .line 28
    .line 29
    iput v1, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->bottomScale:F

    .line 30
    .line 31
    iput v0, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->leftScale:F

    .line 32
    .line 33
    iput v1, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->rightScale:F

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    const-string v1, "surface view "

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    const-string v1, "ViESurfaceRenderer"

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    iput-object p1, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 62
    .line 63
    if-nez p1, :cond_0

    .line 64
    return-void

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 68
    .line 69
    iget-object p1, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Lio/agora/rtc/video/ViESurfaceRenderer;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 73
    return-void
.end method

.method private changeDestRect(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dstWidth",
            "dstHeight"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->dest:Landroid/graphics/Rect;

    .line 3
    .line 4
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 5
    int-to-float v1, v1

    .line 6
    .line 7
    iget v2, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->leftScale:F

    .line 8
    .line 9
    iget v3, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->rightScale:F

    .line 10
    sub-float/2addr v2, v3

    .line 11
    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 14
    move-result v2

    .line 15
    int-to-float v3, p1

    .line 16
    mul-float/2addr v2, v3

    .line 17
    add-float/2addr v1, v2

    .line 18
    float-to-int v1, v1

    .line 19
    .line 20
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 21
    .line 22
    iget-object v0, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->dest:Landroid/graphics/Rect;

    .line 23
    .line 24
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 25
    int-to-float v1, v1

    .line 26
    .line 27
    iget v2, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->topScale:F

    .line 28
    .line 29
    iget v3, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->bottomScale:F

    .line 30
    sub-float/2addr v2, v3

    .line 31
    .line 32
    .line 33
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 34
    move-result v2

    .line 35
    int-to-float v3, p2

    .line 36
    mul-float/2addr v2, v3

    .line 37
    add-float/2addr v1, v2

    .line 38
    float-to-int v1, v1

    .line 39
    .line 40
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    const-string v1, "ViESurfaceRender::surfaceChanged in_width:"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string p1, " in_height:"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string p1, " source.left:"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    iget-object p1, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->source:Landroid/graphics/Rect;

    .line 69
    .line 70
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string p1, " source.top:"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    iget-object p1, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->source:Landroid/graphics/Rect;

    .line 81
    .line 82
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string p1, " source.dest:"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    iget-object p1, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->source:Landroid/graphics/Rect;

    .line 93
    .line 94
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string p1, " source.bottom:"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    iget-object p1, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->source:Landroid/graphics/Rect;

    .line 105
    .line 106
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string p1, " dest.left:"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    iget-object p1, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->dest:Landroid/graphics/Rect;

    .line 117
    .line 118
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string p1, " dest.top:"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    iget-object p1, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->dest:Landroid/graphics/Rect;

    .line 129
    .line 130
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string p1, " dest.dest:"

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    iget-object p1, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->dest:Landroid/graphics/Rect;

    .line 141
    .line 142
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string p1, " dest.bottom:"

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    iget-object p1, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->dest:Landroid/graphics/Rect;

    .line 153
    .line 154
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string p1, " dest scale "

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    iget p1, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->rightScale:F

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string p1, " bottom scale "

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    iget p1, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->bottomScale:F

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object p1

    .line 182
    .line 183
    const-string p2, "ViESurfaceRenderer"

    .line 184
    .line 185
    .line 186
    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method private saveBitmapToJPEG(II)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 1
    .line 2
    const-string p1, "ViESurfaceRenderer"

    .line 3
    .line 4
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    .line 5
    .line 6
    .line 7
    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 8
    .line 9
    iget-object v0, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 12
    .line 13
    const/16 v2, 0x64

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 17
    .line 18
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 19
    .line 20
    const-string v1, "/sdcard/render_%d.jpg"

    .line 21
    const/4 v2, 0x1

    .line 22
    .line 23
    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    move-result-wide v3

    .line 28
    .line 29
    .line 30
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    move-result-object v3

    .line 32
    const/4 v4, 0x0

    .line 33
    .line 34
    aput-object v3, v2, v4

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 45
    move-result-object p2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 55
    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    const-string v1, "saved jpg "

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p2

    .line 76
    .line 77
    .line 78
    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception p2

    .line 81
    .line 82
    const-string v0, "save jpg failed"

    .line 83
    .line 84
    .line 85
    invoke-static {p1, v0, p2}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    :goto_0
    return-void
.end method


# virtual methods
.method public CreateBitmap(II)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "CreateByteBitmap "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, ":"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-string v1, "ViESurfaceRenderer"

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    iget-object v0, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    const/4 v0, -0x4

    .line 36
    .line 37
    .line 38
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    :catch_0
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/agora/rtc/video/ViESurfaceRenderer;->changeDestRect(II)V

    .line 42
    .line 43
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 44
    .line 45
    .line 46
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    iput-object v0, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 50
    .line 51
    iget-object v1, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->source:Landroid/graphics/Rect;

    .line 52
    const/4 v2, 0x0

    .line 53
    .line 54
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 55
    .line 56
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 57
    .line 58
    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    .line 59
    .line 60
    iput p1, v1, Landroid/graphics/Rect;->right:I

    .line 61
    return-object v0
.end method

.method public CreateByteBuffer(II)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "CreateByteBuffer "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, " * "

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-string v1, "ViESurfaceRenderer"

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1, p2}, Lio/agora/rtc/video/ViESurfaceRenderer;->CreateBitmap(II)Landroid/graphics/Bitmap;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iput-object v0, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 37
    mul-int/2addr p1, p2

    .line 38
    .line 39
    mul-int/lit8 p1, p1, 0x2

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    iput-object p1, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 46
    return-object p1
.end method

.method public DrawBitmap()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 16
    .line 17
    iget-object v2, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->source:Landroid/graphics/Rect;

    .line 18
    .line 19
    iget-object v3, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->dest:Landroid/graphics/Rect;

    .line 20
    const/4 v4, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 24
    .line 25
    iget-object v1, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 29
    :cond_1
    return-void
.end method

.method public DrawByteBuffer()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "ViESurfaceRenderer"

    .line 7
    .line 8
    const-string v1, "DrawByteBuffer null"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 16
    .line 17
    iget-object v0, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 18
    .line 19
    iget-object v1, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lio/agora/rtc/video/ViESurfaceRenderer;->DrawBitmap()V

    .line 26
    return-void
.end method

.method public SetCoordinates(FFFF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "SetCoordinates "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, ","

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, " : "

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    const-string v1, "ViESurfaceRenderer"

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    iput p1, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->leftScale:F

    .line 47
    .line 48
    iput p2, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->topScale:F

    .line 49
    .line 50
    iput p3, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->rightScale:F

    .line 51
    .line 52
    iput p4, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->bottomScale:F

    .line 53
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "format",
            "in_width",
            "in_height"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p3, p4}, Lio/agora/rtc/video/ViESurfaceRenderer;->changeDestRect(II)V

    .line 4
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 19
    .line 20
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 21
    sub-int/2addr v1, v2

    .line 22
    .line 23
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 24
    .line 25
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 26
    sub-int/2addr v2, v3

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v1, v2}, Lio/agora/rtc/video/ViESurfaceRenderer;->changeDestRect(II)V

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    const-string v2, "ViESurfaceRender::surfaceCreated dst.left:"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, " dst.top:"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v2, " dst.dest:"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v2, " dst.bottom:"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v0, " source.left:"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    iget-object v0, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->source:Landroid/graphics/Rect;

    .line 82
    .line 83
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v0, " source.top:"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    iget-object v0, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->source:Landroid/graphics/Rect;

    .line 94
    .line 95
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v0, " source.dest:"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    iget-object v0, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->source:Landroid/graphics/Rect;

    .line 106
    .line 107
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v0, " source.bottom:"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    iget-object v0, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->source:Landroid/graphics/Rect;

    .line 118
    .line 119
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v0, " dest.left:"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    iget-object v0, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->dest:Landroid/graphics/Rect;

    .line 130
    .line 131
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v0, " dest.top:"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    iget-object v0, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->dest:Landroid/graphics/Rect;

    .line 142
    .line 143
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v0, " dest.dest:"

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    iget-object v0, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->dest:Landroid/graphics/Rect;

    .line 154
    .line 155
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    const-string v0, " dest.bottom:"

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    iget-object v0, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->dest:Landroid/graphics/Rect;

    .line 166
    .line 167
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object v0

    .line 175
    .line 176
    const-string v1, "ViESurfaceRenderer"

    .line 177
    .line 178
    .line 179
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 182
    .line 183
    .line 184
    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 185
    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 1
    .line 2
    const-string p1, "ViESurfaceRenderer"

    .line 3
    .line 4
    const-string v0, "ViESurfaceRenderer::surfaceDestroyed"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const/4 p1, 0x0

    .line 9
    .line 10
    iput-object p1, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 11
    .line 12
    iput-object p1, p0, Lio/agora/rtc/video/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 13
    return-void
.end method
