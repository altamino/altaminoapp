.class public final Lcom/bumptech/glide/load/resource/bitmap/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/c0$a;
    }
.end annotation


# static fields
.field private static final BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

.field private static final CIRCLE_CROP_BITMAP_PAINT:Landroid/graphics/Paint;

.field private static final CIRCLE_CROP_PAINT_FLAGS:I = 0x7

.field private static final CIRCLE_CROP_SHAPE_PAINT:Landroid/graphics/Paint;

.field private static final DEFAULT_PAINT:Landroid/graphics/Paint;

.field private static final MODELS_REQUIRING_BITMAP_LOCK:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAINT_FLAGS:I = 0x6

.field private static final TAG:Ljava/lang/String; = "TransformationUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Paint;

    .line 3
    const/4 v1, 0x6

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 7
    .line 8
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/c0;->DEFAULT_PAINT:Landroid/graphics/Paint;

    .line 9
    .line 10
    new-instance v0, Landroid/graphics/Paint;

    .line 11
    const/4 v1, 0x7

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 15
    .line 16
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/c0;->CIRCLE_CROP_SHAPE_PAINT:Landroid/graphics/Paint;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashSet;

    .line 19
    .line 20
    const-string v2, "XT1085"

    .line 21
    .line 22
    const-string v3, "XT1092"

    .line 23
    .line 24
    const-string v4, "XT1093"

    .line 25
    .line 26
    const-string v5, "XT1094"

    .line 27
    .line 28
    const-string v6, "XT1095"

    .line 29
    .line 30
    const-string v7, "XT1096"

    .line 31
    .line 32
    const-string v8, "XT1097"

    .line 33
    .line 34
    const-string v9, "XT1098"

    .line 35
    .line 36
    const-string v10, "XT1031"

    .line 37
    .line 38
    const-string v11, "XT1028"

    .line 39
    .line 40
    const-string v12, "XT937C"

    .line 41
    .line 42
    const-string v13, "XT1032"

    .line 43
    .line 44
    const-string v14, "XT1008"

    .line 45
    .line 46
    const-string v15, "XT1033"

    .line 47
    .line 48
    const-string v16, "XT1035"

    .line 49
    .line 50
    const-string v17, "XT1034"

    .line 51
    .line 52
    const-string v18, "XT939G"

    .line 53
    .line 54
    const-string v19, "XT1039"

    .line 55
    .line 56
    const-string v20, "XT1040"

    .line 57
    .line 58
    const-string v21, "XT1042"

    .line 59
    .line 60
    const-string v22, "XT1045"

    .line 61
    .line 62
    const-string v23, "XT1063"

    .line 63
    .line 64
    const-string v24, "XT1064"

    .line 65
    .line 66
    const-string v25, "XT1068"

    .line 67
    .line 68
    const-string v26, "XT1069"

    .line 69
    .line 70
    const-string v27, "XT1072"

    .line 71
    .line 72
    const-string v28, "XT1077"

    .line 73
    .line 74
    const-string v29, "XT1078"

    .line 75
    .line 76
    const-string v30, "XT1079"

    .line 77
    .line 78
    .line 79
    filled-new-array/range {v2 .. v30}, [Ljava/lang/String;

    .line 80
    move-result-object v2

    .line 81
    .line 82
    .line 83
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 84
    move-result-object v2

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 88
    .line 89
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/c0;->MODELS_REQUIRING_BITMAP_LOCK:Ljava/util/Set;

    .line 90
    .line 91
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 95
    move-result v0

    .line 96
    .line 97
    if-eqz v0, :cond_0

    .line 98
    .line 99
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 100
    .line 101
    .line 102
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 103
    goto :goto_0

    .line 104
    .line 105
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/c0$a;

    .line 106
    .line 107
    .line 108
    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/c0$a;-><init>()V

    .line 109
    .line 110
    :goto_0
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/c0;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    .line 111
    .line 112
    new-instance v0, Landroid/graphics/Paint;

    .line 113
    .line 114
    .line 115
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 116
    .line 117
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/c0;->CIRCLE_CROP_BITMAP_PAINT:Landroid/graphics/Paint;

    .line 118
    .line 119
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 120
    .line 121
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 122
    .line 123
    .line 124
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 128
    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 2
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/c0;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 6
    .line 7
    :try_start_0
    new-instance v1, Landroid/graphics/Canvas;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 11
    .line 12
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/c0;->DEFAULT_PAINT:Landroid/graphics/Paint;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0, p2, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lcom/bumptech/glide/load/resource/bitmap/c0;->b(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    .line 25
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/c0;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 29
    throw p0
.end method

.method private static b(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 5
    return-void
.end method

.method public static c(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p0    # Lcom/bumptech/glide/load/engine/bitmap_recycle/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    .line 7
    const-string v2, "TransformationUtils"

    .line 8
    .line 9
    if-ne v0, p2, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 13
    move-result v0

    .line 14
    .line 15
    if-ne v0, p3, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 19
    move-result p0

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    .line 24
    const-string/jumbo p0, "requested target size matches input, returning input"

    .line 25
    .line 26
    .line 27
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    return-object p1

    .line 29
    :cond_1
    int-to-float v0, p2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 33
    move-result v3

    .line 34
    int-to-float v3, v3

    .line 35
    div-float/2addr v0, v3

    .line 36
    int-to-float v3, p3

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 40
    move-result v4

    .line 41
    int-to-float v4, v4

    .line 42
    div-float/2addr v3, v4

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    .line 46
    move-result v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 50
    move-result v3

    .line 51
    int-to-float v3, v3

    .line 52
    mul-float/2addr v3, v0

    .line 53
    .line 54
    .line 55
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 56
    move-result v3

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 60
    move-result v4

    .line 61
    int-to-float v4, v4

    .line 62
    mul-float/2addr v4, v0

    .line 63
    .line 64
    .line 65
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 66
    move-result v4

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 70
    move-result v5

    .line 71
    .line 72
    if-ne v5, v3, :cond_3

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 76
    move-result v3

    .line 77
    .line 78
    if-ne v3, v4, :cond_3

    .line 79
    .line 80
    .line 81
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 82
    move-result p0

    .line 83
    .line 84
    if-eqz p0, :cond_2

    .line 85
    .line 86
    const-string p0, "adjusted target size matches input, returning input"

    .line 87
    .line 88
    .line 89
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_2
    return-object p1

    .line 91
    .line 92
    .line 93
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 94
    move-result v3

    .line 95
    int-to-float v3, v3

    .line 96
    mul-float/2addr v3, v0

    .line 97
    float-to-int v3, v3

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 101
    move-result v4

    .line 102
    int-to-float v4, v4

    .line 103
    mul-float/2addr v4, v0

    .line 104
    float-to-int v4, v4

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/bitmap/c0;->f(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    .line 108
    move-result-object v5

    .line 109
    .line 110
    .line 111
    invoke-interface {p0, v3, v4, v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 112
    move-result-object p0

    .line 113
    .line 114
    .line 115
    invoke-static {p1, p0}, Lcom/bumptech/glide/load/resource/bitmap/c0;->j(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 116
    .line 117
    .line 118
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 119
    move-result v1

    .line 120
    .line 121
    if-eqz v1, :cond_4

    .line 122
    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string/jumbo v3, "request: "

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string/jumbo p2, "x"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object p3

    .line 149
    .line 150
    .line 151
    invoke-static {v2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    new-instance p3, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string/jumbo v1, "toFit:   "

    .line 160
    .line 161
    .line 162
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 166
    move-result v1

    .line 167
    .line 168
    .line 169
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 176
    move-result v1

    .line 177
    .line 178
    .line 179
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object p3

    .line 184
    .line 185
    .line 186
    invoke-static {v2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    new-instance p3, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string/jumbo v1, "toReuse: "

    .line 195
    .line 196
    .line 197
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 201
    move-result v1

    .line 202
    .line 203
    .line 204
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 211
    move-result p2

    .line 212
    .line 213
    .line 214
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    move-result-object p2

    .line 219
    .line 220
    .line 221
    invoke-static {v2, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .line 223
    new-instance p2, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    const-string p3, "minPct:   "

    .line 229
    .line 230
    .line 231
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    move-result-object p2

    .line 239
    .line 240
    .line 241
    invoke-static {v2, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    :cond_4
    new-instance p2, Landroid/graphics/Matrix;

    .line 244
    .line 245
    .line 246
    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p2, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 250
    .line 251
    .line 252
    invoke-static {p1, p0, p2}, Lcom/bumptech/glide/load/resource/bitmap/c0;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 253
    return-object p0
.end method

.method public static d()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/c0;->BITMAP_DRAWABLE_LOCK:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method public static e(I)I
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x10e

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 p0, 0xb4

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static f(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 14
    :goto_0
    return-object p0
.end method

.method static g(ILandroid/graphics/Matrix;)V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    .line 2
    const/high16 v0, 0x43340000    # 180.0f

    .line 3
    .line 4
    const/high16 v1, 0x42b40000    # 90.0f

    .line 5
    .line 6
    const/high16 v2, -0x3d4c0000    # -90.0f

    .line 7
    .line 8
    const/high16 v3, 0x3f800000    # 1.0f

    .line 9
    .line 10
    const/high16 v4, -0x40800000    # -1.0f

    .line 11
    .line 12
    .line 13
    packed-switch p0, :pswitch_data_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :pswitch_0
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :pswitch_3
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :pswitch_4
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :pswitch_5
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :pswitch_6
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 51
    :goto_0
    return-void

    .line 52
    nop

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static h(I)Z
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static i(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0    # Lcom/bumptech/glide/load/engine/bitmap_recycle/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Lcom/bumptech/glide/load/resource/bitmap/c0;->h(I)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-object p1

    .line 8
    .line 9
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lcom/bumptech/glide/load/resource/bitmap/c0;->g(ILandroid/graphics/Matrix;)V

    .line 16
    .line 17
    new-instance p2, Landroid/graphics/RectF;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 21
    move-result v1

    .line 22
    int-to-float v1, v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 26
    move-result v2

    .line 27
    int-to-float v2, v2

    .line 28
    const/4 v3, 0x0

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    .line 38
    move-result v1

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 42
    move-result v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    .line 46
    move-result v2

    .line 47
    .line 48
    .line 49
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 50
    move-result v2

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/bitmap/c0;->f(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    .line 57
    invoke-interface {p0, v1, v2, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 58
    move-result-object p0

    .line 59
    .line 60
    iget v1, p2, Landroid/graphics/RectF;->left:F

    .line 61
    neg-float v1, v1

    .line 62
    .line 63
    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 64
    neg-float p2, p2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    .line 71
    move-result p2

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 75
    .line 76
    .line 77
    invoke-static {p1, p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/c0;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 78
    return-object p0
.end method

.method public static j(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    .line 4
    move-result p0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 8
    return-void
.end method
