.class public abstract Lcom/airbnb/lottie/model/layer/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/d;
.implements Lcom/airbnb/lottie/animation/keyframe/a$a;


# static fields
.field private static final SAVE_FLAGS:I = 0x13


# instance fields
.field private final animations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "**>;>;"
        }
    .end annotation
.end field

.field final boundsMatrix:Landroid/graphics/Matrix;

.field private final clearPaint:Landroid/graphics/Paint;

.field private final contentPaint:Landroid/graphics/Paint;

.field private final drawTraceName:Ljava/lang/String;

.field final layerModel:Lcom/airbnb/lottie/model/layer/d;

.field final lottieDrawable:Lcom/airbnb/lottie/f;

.field private mask:Lcom/airbnb/lottie/animation/keyframe/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final maskBoundsRect:Landroid/graphics/RectF;

.field private final maskPaint:Landroid/graphics/Paint;

.field private final matrix:Landroid/graphics/Matrix;

.field private final matteBoundsRect:Landroid/graphics/RectF;

.field private matteLayer:Lcom/airbnb/lottie/model/layer/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mattePaint:Landroid/graphics/Paint;

.field private parentLayer:Lcom/airbnb/lottie/model/layer/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private parentLayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/a;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Landroid/graphics/Path;

.field private final rect:Landroid/graphics/RectF;

.field private final tempMaskBoundsRect:Landroid/graphics/RectF;

.field final transform:Lcom/airbnb/lottie/animation/keyframe/p;

.field private visible:Z


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/d;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Path;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->path:Landroid/graphics/Path;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/Matrix;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->matrix:Landroid/graphics/Matrix;

    .line 18
    .line 19
    new-instance v0, Landroid/graphics/Paint;

    .line 20
    const/4 v1, 0x1

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 24
    .line 25
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->contentPaint:Landroid/graphics/Paint;

    .line 26
    .line 27
    new-instance v0, Landroid/graphics/Paint;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 31
    .line 32
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->maskPaint:Landroid/graphics/Paint;

    .line 33
    .line 34
    new-instance v2, Landroid/graphics/Paint;

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 38
    .line 39
    iput-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->mattePaint:Landroid/graphics/Paint;

    .line 40
    .line 41
    new-instance v3, Landroid/graphics/Paint;

    .line 42
    .line 43
    .line 44
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 45
    .line 46
    iput-object v3, p0, Lcom/airbnb/lottie/model/layer/a;->clearPaint:Landroid/graphics/Paint;

    .line 47
    .line 48
    new-instance v4, Landroid/graphics/RectF;

    .line 49
    .line 50
    .line 51
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 52
    .line 53
    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->rect:Landroid/graphics/RectF;

    .line 54
    .line 55
    new-instance v4, Landroid/graphics/RectF;

    .line 56
    .line 57
    .line 58
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 59
    .line 60
    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->maskBoundsRect:Landroid/graphics/RectF;

    .line 61
    .line 62
    new-instance v4, Landroid/graphics/RectF;

    .line 63
    .line 64
    .line 65
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 66
    .line 67
    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->matteBoundsRect:Landroid/graphics/RectF;

    .line 68
    .line 69
    new-instance v4, Landroid/graphics/RectF;

    .line 70
    .line 71
    .line 72
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 73
    .line 74
    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 75
    .line 76
    new-instance v4, Landroid/graphics/Matrix;

    .line 77
    .line 78
    .line 79
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 80
    .line 81
    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->boundsMatrix:Landroid/graphics/Matrix;

    .line 82
    .line 83
    new-instance v4, Ljava/util/ArrayList;

    .line 84
    .line 85
    .line 86
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->animations:Ljava/util/List;

    .line 89
    .line 90
    iput-boolean v1, p0, Lcom/airbnb/lottie/model/layer/a;->visible:Z

    .line 91
    .line 92
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->lottieDrawable:Lcom/airbnb/lottie/f;

    .line 93
    .line 94
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->layerModel:Lcom/airbnb/lottie/model/layer/d;

    .line 95
    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/d;->g()Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v1, "#draw"

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->drawTraceName:Ljava/lang/String;

    .line 118
    .line 119
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 120
    .line 121
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 122
    .line 123
    .line 124
    invoke-direct {p1, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 128
    .line 129
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 130
    .line 131
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 132
    .line 133
    .line 134
    invoke-direct {p1, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/d;->f()Lcom/airbnb/lottie/model/layer/d$d;

    .line 141
    move-result-object p1

    .line 142
    .line 143
    sget-object v0, Lcom/airbnb/lottie/model/layer/d$d;->Invert:Lcom/airbnb/lottie/model/layer/d$d;

    .line 144
    .line 145
    if-ne p1, v0, :cond_0

    .line 146
    .line 147
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 148
    .line 149
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 150
    .line 151
    .line 152
    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 156
    goto :goto_0

    .line 157
    .line 158
    :cond_0
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 159
    .line 160
    .line 161
    invoke-direct {p1, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 165
    .line 166
    .line 167
    :goto_0
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/d;->u()Lcom/airbnb/lottie/model/animatable/l;

    .line 168
    move-result-object p1

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/l;->b()Lcom/airbnb/lottie/animation/keyframe/p;

    .line 172
    move-result-object p1

    .line 173
    .line 174
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->transform:Lcom/airbnb/lottie/animation/keyframe/p;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/p;->b(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/p;->a(Lcom/airbnb/lottie/model/layer/a;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/d;->e()Ljava/util/List;

    .line 184
    move-result-object p1

    .line 185
    .line 186
    if-eqz p1, :cond_2

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/d;->e()Ljava/util/List;

    .line 190
    move-result-object p1

    .line 191
    .line 192
    .line 193
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 194
    move-result p1

    .line 195
    .line 196
    if-nez p1, :cond_2

    .line 197
    .line 198
    new-instance p1, Lcom/airbnb/lottie/animation/keyframe/g;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/d;->e()Ljava/util/List;

    .line 202
    move-result-object p2

    .line 203
    .line 204
    .line 205
    invoke-direct {p1, p2}, Lcom/airbnb/lottie/animation/keyframe/g;-><init>(Ljava/util/List;)V

    .line 206
    .line 207
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->mask:Lcom/airbnb/lottie/animation/keyframe/g;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/keyframe/g;->a()Ljava/util/List;

    .line 211
    move-result-object p1

    .line 212
    .line 213
    .line 214
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 215
    move-result-object p1

    .line 216
    .line 217
    .line 218
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    move-result p2

    .line 220
    .line 221
    if-eqz p2, :cond_1

    .line 222
    .line 223
    .line 224
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    move-result-object p2

    .line 226
    .line 227
    check-cast p2, Lcom/airbnb/lottie/animation/keyframe/a;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 234
    goto :goto_1

    .line 235
    .line 236
    :cond_1
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->mask:Lcom/airbnb/lottie/animation/keyframe/g;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1}, Lcom/airbnb/lottie/animation/keyframe/g;->c()Ljava/util/List;

    .line 240
    move-result-object p1

    .line 241
    .line 242
    .line 243
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 244
    move-result-object p1

    .line 245
    .line 246
    .line 247
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 248
    move-result p2

    .line 249
    .line 250
    if-eqz p2, :cond_2

    .line 251
    .line 252
    .line 253
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 254
    move-result-object p2

    .line 255
    .line 256
    check-cast p2, Lcom/airbnb/lottie/animation/keyframe/a;

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p2, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 263
    goto :goto_2

    .line 264
    .line 265
    .line 266
    :cond_2
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/a;->x()V

    .line 267
    return-void
.end method

.method static synthetic c(Lcom/airbnb/lottie/model/layer/a;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->w(Z)V

    .line 4
    return-void
.end method

.method private h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "Layer#drawMask"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v1, "Layer#saveLayer"

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->rect:Landroid/graphics/RectF;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/a;->maskPaint:Landroid/graphics/Paint;

    .line 15
    .line 16
    const/16 v4, 0x13

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->j(Landroid/graphics/Canvas;)V

    .line 26
    .line 27
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->mask:Lcom/airbnb/lottie/animation/keyframe/g;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/g;->b()Ljava/util/List;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x0

    .line 37
    .line 38
    :goto_0
    if-ge v2, v1, :cond_1

    .line 39
    .line 40
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/a;->mask:Lcom/airbnb/lottie/animation/keyframe/g;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/g;->b()Ljava/util/List;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    .line 47
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    check-cast v3, Lcom/airbnb/lottie/model/content/g;

    .line 51
    .line 52
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->mask:Lcom/airbnb/lottie/animation/keyframe/g;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/g;->a()Ljava/util/List;

    .line 56
    move-result-object v4

    .line 57
    .line 58
    .line 59
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v4

    .line 61
    .line 62
    check-cast v4, Lcom/airbnb/lottie/animation/keyframe/a;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 66
    move-result-object v4

    .line 67
    .line 68
    check-cast v4, Landroid/graphics/Path;

    .line 69
    .line 70
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/a;->path:Landroid/graphics/Path;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 74
    .line 75
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->path:Landroid/graphics/Path;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 79
    .line 80
    sget-object v4, Lcom/airbnb/lottie/model/layer/a$b;->$SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode:[I

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Lcom/airbnb/lottie/model/content/g;->a()Lcom/airbnb/lottie/model/content/g$c;

    .line 84
    move-result-object v3

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 88
    move-result v3

    .line 89
    .line 90
    aget v3, v4, v3

    .line 91
    const/4 v4, 0x1

    .line 92
    .line 93
    if-eq v3, v4, :cond_0

    .line 94
    .line 95
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/a;->path:Landroid/graphics/Path;

    .line 96
    .line 97
    sget-object v4, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 101
    goto :goto_1

    .line 102
    .line 103
    :cond_0
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/a;->path:Landroid/graphics/Path;

    .line 104
    .line 105
    sget-object v4, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 109
    .line 110
    :goto_1
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/a;->mask:Lcom/airbnb/lottie/animation/keyframe/g;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/g;->c()Ljava/util/List;

    .line 114
    move-result-object v3

    .line 115
    .line 116
    .line 117
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    move-result-object v3

    .line 119
    .line 120
    check-cast v3, Lcom/airbnb/lottie/animation/keyframe/a;

    .line 121
    .line 122
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->contentPaint:Landroid/graphics/Paint;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    .line 126
    move-result v4

    .line 127
    .line 128
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/a;->contentPaint:Landroid/graphics/Paint;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 132
    move-result-object v3

    .line 133
    .line 134
    check-cast v3, Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 138
    move-result v3

    .line 139
    int-to-float v3, v3

    .line 140
    .line 141
    .line 142
    const v6, 0x40233333    # 2.55f

    .line 143
    mul-float/2addr v3, v6

    .line 144
    float-to-int v3, v3

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 148
    .line 149
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/a;->path:Landroid/graphics/Path;

    .line 150
    .line 151
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/a;->contentPaint:Landroid/graphics/Paint;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 155
    .line 156
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/a;->contentPaint:Landroid/graphics/Paint;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 160
    .line 161
    add-int/lit8 v2, v2, 0x1

    .line 162
    goto :goto_0

    .line 163
    .line 164
    :cond_1
    const-string p2, "Layer#restoreLayer"

    .line 165
    .line 166
    .line 167
    invoke-static {p2}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 171
    .line 172
    .line 173
    invoke-static {p2}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 174
    .line 175
    .line 176
    invoke-static {v0}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 177
    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->parentLayers:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->parentLayer:Lcom/airbnb/lottie/model/layer/a;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->parentLayers:Ljava/util/List;

    .line 16
    return-void

    .line 17
    .line 18
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->parentLayers:Ljava/util/List;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->parentLayer:Lcom/airbnb/lottie/model/layer/a;

    .line 26
    .line 27
    :goto_0
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->parentLayers:Ljava/util/List;

    .line 30
    .line 31
    .line 32
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/a;->parentLayer:Lcom/airbnb/lottie/model/layer/a;

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    return-void
.end method

.method private j(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    .line 2
    const-string v0, "Layer#clearLayer"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->rect:Landroid/graphics/RectF;

    .line 8
    .line 9
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 10
    .line 11
    const/high16 v3, 0x3f800000    # 1.0f

    .line 12
    .line 13
    sub-float v5, v2, v3

    .line 14
    .line 15
    iget v2, v1, Landroid/graphics/RectF;->top:F

    .line 16
    .line 17
    sub-float v6, v2, v3

    .line 18
    .line 19
    iget v2, v1, Landroid/graphics/RectF;->right:F

    .line 20
    .line 21
    add-float v7, v2, v3

    .line 22
    .line 23
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 24
    .line 25
    add-float v8, v1, v3

    .line 26
    .line 27
    iget-object v9, p0, Lcom/airbnb/lottie/model/layer/a;->clearPaint:Landroid/graphics/Paint;

    .line 28
    move-object v4, p1

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 35
    return-void
.end method

.method static l(Lcom/airbnb/lottie/model/layer/d;Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/layer/a;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/airbnb/lottie/model/layer/a$b;->$SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/d;->d()Lcom/airbnb/lottie/model/layer/d$c;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result v1

    .line 11
    .line 12
    aget v0, v0, v1

    .line 13
    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    const-string p2, "Unknown layer type "

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/d;->d()Lcom/airbnb/lottie/model/layer/d$c;

    .line 29
    move-result-object p0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    .line 38
    const-string p1, "LOTTIE"

    .line 39
    .line 40
    .line 41
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 p0, 0x0

    .line 43
    return-object p0

    .line 44
    .line 45
    :pswitch_0
    new-instance p2, Lcom/airbnb/lottie/model/layer/h;

    .line 46
    .line 47
    .line 48
    invoke-direct {p2, p1, p0}, Lcom/airbnb/lottie/model/layer/h;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/d;)V

    .line 49
    return-object p2

    .line 50
    .line 51
    :pswitch_1
    new-instance p2, Lcom/airbnb/lottie/model/layer/e;

    .line 52
    .line 53
    .line 54
    invoke-direct {p2, p1, p0}, Lcom/airbnb/lottie/model/layer/e;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/d;)V

    .line 55
    return-object p2

    .line 56
    .line 57
    :pswitch_2
    new-instance v0, Lcom/airbnb/lottie/model/layer/c;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Lcom/airbnb/lottie/e;->j()F

    .line 61
    move-result p2

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, p1, p0, p2}, Lcom/airbnb/lottie/model/layer/c;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/d;F)V

    .line 65
    return-object v0

    .line 66
    .line 67
    :pswitch_3
    new-instance p2, Lcom/airbnb/lottie/model/layer/g;

    .line 68
    .line 69
    .line 70
    invoke-direct {p2, p1, p0}, Lcom/airbnb/lottie/model/layer/g;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/d;)V

    .line 71
    return-object p2

    .line 72
    .line 73
    :pswitch_4
    new-instance v0, Lcom/airbnb/lottie/model/layer/b;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/d;->k()Ljava/lang/String;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/e;->u(Ljava/lang/String;)Ljava/util/List;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    .line 84
    invoke-direct {v0, p1, p0, v1, p2}, Lcom/airbnb/lottie/model/layer/b;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/d;Ljava/util/List;Lcom/airbnb/lottie/e;)V

    .line 85
    return-object v0

    .line 86
    .line 87
    :pswitch_5
    new-instance p2, Lcom/airbnb/lottie/model/layer/f;

    .line 88
    .line 89
    .line 90
    invoke-direct {p2, p1, p0}, Lcom/airbnb/lottie/model/layer/f;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/d;)V

    .line 91
    return-object p2

    .line 92
    nop

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private p(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->maskBoundsRect:Landroid/graphics/RectF;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->n()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->mask:Lcom/airbnb/lottie/animation/keyframe/g;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/g;->b()Ljava/util/List;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    move v2, v1

    .line 26
    .line 27
    :goto_0
    if-ge v2, v0, :cond_3

    .line 28
    .line 29
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/a;->mask:Lcom/airbnb/lottie/animation/keyframe/g;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/g;->b()Ljava/util/List;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    .line 36
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    .line 39
    check-cast v3, Lcom/airbnb/lottie/model/content/g;

    .line 40
    .line 41
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->mask:Lcom/airbnb/lottie/animation/keyframe/g;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/g;->a()Ljava/util/List;

    .line 45
    move-result-object v4

    .line 46
    .line 47
    .line 48
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    check-cast v4, Lcom/airbnb/lottie/animation/keyframe/a;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 55
    move-result-object v4

    .line 56
    .line 57
    check-cast v4, Landroid/graphics/Path;

    .line 58
    .line 59
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/a;->path:Landroid/graphics/Path;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, v4}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 63
    .line 64
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->path:Landroid/graphics/Path;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 68
    .line 69
    sget-object v4, Lcom/airbnb/lottie/model/layer/a$b;->$SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode:[I

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Lcom/airbnb/lottie/model/content/g;->a()Lcom/airbnb/lottie/model/content/g$c;

    .line 73
    move-result-object v3

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 77
    move-result v3

    .line 78
    .line 79
    aget v3, v4, v3

    .line 80
    const/4 v4, 0x1

    .line 81
    .line 82
    if-eq v3, v4, :cond_2

    .line 83
    const/4 v4, 0x2

    .line 84
    .line 85
    if-eq v3, v4, :cond_2

    .line 86
    const/4 v4, 0x3

    .line 87
    .line 88
    if-eq v3, v4, :cond_2

    .line 89
    .line 90
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/a;->path:Landroid/graphics/Path;

    .line 91
    .line 92
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 96
    .line 97
    if-nez v2, :cond_1

    .line 98
    .line 99
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/a;->maskBoundsRect:Landroid/graphics/RectF;

    .line 100
    .line 101
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 105
    goto :goto_1

    .line 106
    .line 107
    :cond_1
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/a;->maskBoundsRect:Landroid/graphics/RectF;

    .line 108
    .line 109
    iget v4, v3, Landroid/graphics/RectF;->left:F

    .line 110
    .line 111
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/a;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 112
    .line 113
    iget v5, v5, Landroid/graphics/RectF;->left:F

    .line 114
    .line 115
    .line 116
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    .line 117
    move-result v4

    .line 118
    .line 119
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/a;->maskBoundsRect:Landroid/graphics/RectF;

    .line 120
    .line 121
    iget v5, v5, Landroid/graphics/RectF;->top:F

    .line 122
    .line 123
    iget-object v6, p0, Lcom/airbnb/lottie/model/layer/a;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 124
    .line 125
    iget v6, v6, Landroid/graphics/RectF;->top:F

    .line 126
    .line 127
    .line 128
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    .line 129
    move-result v5

    .line 130
    .line 131
    iget-object v6, p0, Lcom/airbnb/lottie/model/layer/a;->maskBoundsRect:Landroid/graphics/RectF;

    .line 132
    .line 133
    iget v6, v6, Landroid/graphics/RectF;->right:F

    .line 134
    .line 135
    iget-object v7, p0, Lcom/airbnb/lottie/model/layer/a;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 136
    .line 137
    iget v7, v7, Landroid/graphics/RectF;->right:F

    .line 138
    .line 139
    .line 140
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    .line 141
    move-result v6

    .line 142
    .line 143
    iget-object v7, p0, Lcom/airbnb/lottie/model/layer/a;->maskBoundsRect:Landroid/graphics/RectF;

    .line 144
    .line 145
    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    .line 146
    .line 147
    iget-object v8, p0, Lcom/airbnb/lottie/model/layer/a;->tempMaskBoundsRect:Landroid/graphics/RectF;

    .line 148
    .line 149
    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    .line 150
    .line 151
    .line 152
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    .line 153
    move-result v7

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 157
    .line 158
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    :cond_2
    return-void

    .line 162
    .line 163
    :cond_3
    iget p2, p1, Landroid/graphics/RectF;->left:F

    .line 164
    .line 165
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->maskBoundsRect:Landroid/graphics/RectF;

    .line 166
    .line 167
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 168
    .line 169
    .line 170
    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    .line 171
    move-result p2

    .line 172
    .line 173
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 174
    .line 175
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->maskBoundsRect:Landroid/graphics/RectF;

    .line 176
    .line 177
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 178
    .line 179
    .line 180
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 181
    move-result v0

    .line 182
    .line 183
    iget v1, p1, Landroid/graphics/RectF;->right:F

    .line 184
    .line 185
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->maskBoundsRect:Landroid/graphics/RectF;

    .line 186
    .line 187
    iget v2, v2, Landroid/graphics/RectF;->right:F

    .line 188
    .line 189
    .line 190
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 191
    move-result v1

    .line 192
    .line 193
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 194
    .line 195
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/a;->maskBoundsRect:Landroid/graphics/RectF;

    .line 196
    .line 197
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 198
    .line 199
    .line 200
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 201
    move-result v2

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 205
    return-void
.end method

.method private q(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->o()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->layerModel:Lcom/airbnb/lottie/model/layer/d;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/d;->f()Lcom/airbnb/lottie/model/layer/d$d;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    sget-object v1, Lcom/airbnb/lottie/model/layer/d$d;->Invert:Lcom/airbnb/lottie/model/layer/d$d;

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    return-void

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->matteLayer:Lcom/airbnb/lottie/model/layer/a;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->matteBoundsRect:Landroid/graphics/RectF;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, p2}, Lcom/airbnb/lottie/model/layer/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 26
    .line 27
    iget p2, p1, Landroid/graphics/RectF;->left:F

    .line 28
    .line 29
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->matteBoundsRect:Landroid/graphics/RectF;

    .line 30
    .line 31
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 32
    .line 33
    .line 34
    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    .line 35
    move-result p2

    .line 36
    .line 37
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 38
    .line 39
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->matteBoundsRect:Landroid/graphics/RectF;

    .line 40
    .line 41
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 45
    move-result v0

    .line 46
    .line 47
    iget v1, p1, Landroid/graphics/RectF;->right:F

    .line 48
    .line 49
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->matteBoundsRect:Landroid/graphics/RectF;

    .line 50
    .line 51
    iget v2, v2, Landroid/graphics/RectF;->right:F

    .line 52
    .line 53
    .line 54
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 55
    move-result v1

    .line 56
    .line 57
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 58
    .line 59
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/a;->matteBoundsRect:Landroid/graphics/RectF;

    .line 60
    .line 61
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 62
    .line 63
    .line 64
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 65
    move-result v2

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 69
    return-void
.end method

.method private r()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->lottieDrawable:Lcom/airbnb/lottie/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->invalidateSelf()V

    .line 6
    return-void
.end method

.method private s(F)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->lottieDrawable:Lcom/airbnb/lottie/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->l()Lcom/airbnb/lottie/e;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/airbnb/lottie/e;->t()Lcom/airbnb/lottie/i;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->layerModel:Lcom/airbnb/lottie/model/layer/d;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/d;->g()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, p1}, Lcom/airbnb/lottie/i;->a(Ljava/lang/String;F)V

    .line 20
    return-void
.end method

.method private w(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/airbnb/lottie/model/layer/a;->visible:Z

    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/airbnb/lottie/model/layer/a;->visible:Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/a;->r()V

    .line 10
    :cond_0
    return-void
.end method

.method private x()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->layerModel:Lcom/airbnb/lottie/model/layer/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/d;->c()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/c;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->layerModel:Lcom/airbnb/lottie/model/layer/d;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/d;->c()Ljava/util/List;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v2}, Lcom/airbnb/lottie/animation/keyframe/c;-><init>(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/a;->i()V

    .line 28
    .line 29
    new-instance v2, Lcom/airbnb/lottie/model/layer/a$a;

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, p0, v0}, Lcom/airbnb/lottie/model/layer/a$a;-><init>(Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/animation/keyframe/c;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    check-cast v2, Ljava/lang/Float;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 45
    move-result v2

    .line 46
    .line 47
    const/high16 v3, 0x3f800000    # 1.0f

    .line 48
    .line 49
    cmpl-float v2, v2, v3

    .line 50
    .line 51
    if-nez v2, :cond_0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v1, 0x0

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-direct {p0, v1}, Lcom/airbnb/lottie/model/layer/a;->w(Z)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 60
    goto :goto_1

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-direct {p0, v1}, Lcom/airbnb/lottie/model/layer/a;->w(Z)V

    .line 64
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->boundsMatrix:Landroid/graphics/Matrix;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->boundsMatrix:Landroid/graphics/Matrix;

    .line 8
    .line 9
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->transform:Lcom/airbnb/lottie/animation/keyframe/p;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/airbnb/lottie/animation/keyframe/p;->d()Landroid/graphics/Matrix;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 17
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->drawTraceName:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/airbnb/lottie/model/layer/a;->visible:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->drawTraceName:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 15
    return-void

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/a;->i()V

    .line 19
    .line 20
    const-string v0, "Layer#parentMatrix"

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 24
    .line 25
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->matrix:Landroid/graphics/Matrix;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 29
    .line 30
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->matrix:Landroid/graphics/Matrix;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 34
    .line 35
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->parentLayers:Ljava/util/List;

    .line 36
    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 39
    move-result v1

    .line 40
    .line 41
    add-int/lit8 v1, v1, -0x1

    .line 42
    .line 43
    :goto_0
    if-ltz v1, :cond_1

    .line 44
    .line 45
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->matrix:Landroid/graphics/Matrix;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/a;->parentLayers:Ljava/util/List;

    .line 48
    .line 49
    .line 50
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    check-cast v3, Lcom/airbnb/lottie/model/layer/a;

    .line 54
    .line 55
    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/a;->transform:Lcom/airbnb/lottie/animation/keyframe/p;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/p;->d()Landroid/graphics/Matrix;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 63
    .line 64
    add-int/lit8 v1, v1, -0x1

    .line 65
    goto :goto_0

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-static {v0}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 69
    int-to-float p3, p3

    .line 70
    .line 71
    const/high16 v0, 0x437f0000    # 255.0f

    .line 72
    div-float/2addr p3, v0

    .line 73
    .line 74
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->transform:Lcom/airbnb/lottie/animation/keyframe/p;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/p;->f()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    check-cast v1, Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 88
    move-result v1

    .line 89
    int-to-float v1, v1

    .line 90
    mul-float/2addr p3, v1

    .line 91
    .line 92
    const/high16 v1, 0x42c80000    # 100.0f

    .line 93
    div-float/2addr p3, v1

    .line 94
    mul-float/2addr p3, v0

    .line 95
    float-to-int p3, p3

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->o()Z

    .line 99
    move-result v0

    .line 100
    .line 101
    const-string v1, "Layer#drawLayer"

    .line 102
    .line 103
    if-nez v0, :cond_2

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->n()Z

    .line 107
    move-result v0

    .line 108
    .line 109
    if-nez v0, :cond_2

    .line 110
    .line 111
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->matrix:Landroid/graphics/Matrix;

    .line 112
    .line 113
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->transform:Lcom/airbnb/lottie/animation/keyframe/p;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/p;->d()Landroid/graphics/Matrix;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 121
    .line 122
    .line 123
    invoke-static {v1}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 124
    .line 125
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->matrix:Landroid/graphics/Matrix;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/a;->k(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 129
    .line 130
    .line 131
    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 132
    .line 133
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->drawTraceName:Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    invoke-static {p1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 137
    move-result p1

    .line 138
    .line 139
    .line 140
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->s(F)V

    .line 141
    return-void

    .line 142
    .line 143
    :cond_2
    const-string v0, "Layer#computeBounds"

    .line 144
    .line 145
    .line 146
    invoke-static {v0}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 147
    .line 148
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->rect:Landroid/graphics/RectF;

    .line 149
    const/4 v3, 0x0

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 153
    .line 154
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->rect:Landroid/graphics/RectF;

    .line 155
    .line 156
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->matrix:Landroid/graphics/Matrix;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v2, v4}, Lcom/airbnb/lottie/model/layer/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 160
    .line 161
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->rect:Landroid/graphics/RectF;

    .line 162
    .line 163
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->matrix:Landroid/graphics/Matrix;

    .line 164
    .line 165
    .line 166
    invoke-direct {p0, v2, v4}, Lcom/airbnb/lottie/model/layer/a;->q(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 167
    .line 168
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->matrix:Landroid/graphics/Matrix;

    .line 169
    .line 170
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->transform:Lcom/airbnb/lottie/animation/keyframe/p;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/p;->d()Landroid/graphics/Matrix;

    .line 174
    move-result-object v4

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 178
    .line 179
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->rect:Landroid/graphics/RectF;

    .line 180
    .line 181
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->matrix:Landroid/graphics/Matrix;

    .line 182
    .line 183
    .line 184
    invoke-direct {p0, v2, v4}, Lcom/airbnb/lottie/model/layer/a;->p(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 185
    .line 186
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->rect:Landroid/graphics/RectF;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 190
    move-result v4

    .line 191
    int-to-float v4, v4

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 195
    move-result v5

    .line 196
    int-to-float v5, v5

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 200
    .line 201
    .line 202
    invoke-static {v0}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 203
    .line 204
    const-string v0, "Layer#saveLayer"

    .line 205
    .line 206
    .line 207
    invoke-static {v0}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 208
    .line 209
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->rect:Landroid/graphics/RectF;

    .line 210
    .line 211
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/a;->contentPaint:Landroid/graphics/Paint;

    .line 212
    .line 213
    const/16 v4, 0x1f

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 217
    .line 218
    .line 219
    invoke-static {v0}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 220
    .line 221
    .line 222
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->j(Landroid/graphics/Canvas;)V

    .line 223
    .line 224
    .line 225
    invoke-static {v1}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 226
    .line 227
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->matrix:Landroid/graphics/Matrix;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, p1, v2, p3}, Lcom/airbnb/lottie/model/layer/a;->k(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 231
    .line 232
    .line 233
    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->n()Z

    .line 237
    move-result v1

    .line 238
    .line 239
    if-eqz v1, :cond_3

    .line 240
    .line 241
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->matrix:Landroid/graphics/Matrix;

    .line 242
    .line 243
    .line 244
    invoke-direct {p0, p1, v1}, Lcom/airbnb/lottie/model/layer/a;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 245
    .line 246
    .line 247
    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->o()Z

    .line 248
    move-result v1

    .line 249
    .line 250
    const-string v2, "Layer#restoreLayer"

    .line 251
    .line 252
    if-eqz v1, :cond_4

    .line 253
    .line 254
    const-string v1, "Layer#drawMatte"

    .line 255
    .line 256
    .line 257
    invoke-static {v1}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-static {v0}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 261
    .line 262
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/a;->rect:Landroid/graphics/RectF;

    .line 263
    .line 264
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->mattePaint:Landroid/graphics/Paint;

    .line 265
    .line 266
    const/16 v5, 0x13

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 270
    .line 271
    .line 272
    invoke-static {v0}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 273
    .line 274
    .line 275
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->j(Landroid/graphics/Canvas;)V

    .line 276
    .line 277
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->matteLayer:Lcom/airbnb/lottie/model/layer/a;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/a;->d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 281
    .line 282
    .line 283
    invoke-static {v2}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 287
    .line 288
    .line 289
    invoke-static {v2}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 290
    .line 291
    .line 292
    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 293
    .line 294
    .line 295
    :cond_4
    invoke-static {v2}, Lcom/airbnb/lottie/d;->a(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 299
    .line 300
    .line 301
    invoke-static {v2}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 302
    .line 303
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->drawTraceName:Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    invoke-static {p1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)F

    .line 307
    move-result p1

    .line 308
    .line 309
    .line 310
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->s(F)V

    .line 311
    return-void
.end method

.method public e()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/a;->r()V

    .line 4
    return-void
.end method

.method public f(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/b;",
            ">;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public g(Lcom/airbnb/lottie/animation/keyframe/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "**>;)V"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Lcom/airbnb/lottie/animation/keyframe/n;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->animations:Ljava/util/List;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->layerModel:Lcom/airbnb/lottie/model/layer/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/d;->g()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method abstract k(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method m()Lcom/airbnb/lottie/model/layer/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->layerModel:Lcom/airbnb/lottie/model/layer/d;

    return-object v0
.end method

.method n()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->mask:Lcom/airbnb/lottie/animation/keyframe/g;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/g;->a()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->matteLayer:Lcom/airbnb/lottie/model/layer/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method t(Lcom/airbnb/lottie/model/layer/a;)V
    .locals 0
    .param p1    # Lcom/airbnb/lottie/model/layer/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->matteLayer:Lcom/airbnb/lottie/model/layer/a;

    return-void
.end method

.method u(Lcom/airbnb/lottie/model/layer/a;)V
    .locals 0
    .param p1    # Lcom/airbnb/lottie/model/layer/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->parentLayer:Lcom/airbnb/lottie/model/layer/a;

    return-void
.end method

.method v(F)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->layerModel:Lcom/airbnb/lottie/model/layer/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/d;->t()F

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    cmpl-float v0, v0, v1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->layerModel:Lcom/airbnb/lottie/model/layer/d;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/d;->t()F

    .line 17
    move-result v0

    .line 18
    div-float/2addr p1, v0

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->matteLayer:Lcom/airbnb/lottie/model/layer/a;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/layer/a;->v(F)V

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    .line 28
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->animations:Ljava/util/List;

    .line 29
    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 32
    move-result v1

    .line 33
    .line 34
    if-ge v0, v1, :cond_2

    .line 35
    .line 36
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->animations:Ljava/util/List;

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/a;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/animation/keyframe/a;->j(F)V

    .line 46
    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    return-void
.end method
