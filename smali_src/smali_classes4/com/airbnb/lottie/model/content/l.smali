.class public Lcom/airbnb/lottie/model/content/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/content/l$b;
    }
.end annotation


# instance fields
.field private closed:Z

.field private final curves:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/c;",
            ">;"
        }
    .end annotation
.end field

.field private initialPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/content/l;->curves:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/graphics/PointF;ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Z",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/c;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/content/l;->curves:Ljava/util/List;

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/l;->initialPoint:Landroid/graphics/PointF;

    iput-boolean p2, p0, Lcom/airbnb/lottie/model/content/l;->closed:Z

    .line 4
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/PointF;ZLjava/util/List;Lcom/airbnb/lottie/model/content/l$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/content/l;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    return-void
.end method

.method private e(FF)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/l;->initialPoint:Landroid/graphics/PointF;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/graphics/PointF;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/airbnb/lottie/model/content/l;->initialPoint:Landroid/graphics/PointF;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/l;->initialPoint:Landroid/graphics/PointF;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 17
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/l;->curves:Ljava/util/List;

    return-object v0
.end method

.method public b()Landroid/graphics/PointF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/l;->initialPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public c(Lcom/airbnb/lottie/model/content/l;Lcom/airbnb/lottie/model/content/l;F)V
    .locals 10
    .param p3    # F
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/l;->initialPoint:Landroid/graphics/PointF;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/graphics/PointF;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/airbnb/lottie/model/content/l;->initialPoint:Landroid/graphics/PointF;

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/l;->d()Z

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/l;->d()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    :goto_0
    move v0, v1

    .line 29
    .line 30
    :goto_1
    iput-boolean v0, p0, Lcom/airbnb/lottie/model/content/l;->closed:Z

    .line 31
    .line 32
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/l;->curves:Ljava/util/List;

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-nez v0, :cond_4

    .line 39
    .line 40
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/l;->curves:Ljava/util/List;

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 44
    move-result v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/l;->a()Ljava/util/List;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 52
    move-result v2

    .line 53
    .line 54
    if-eq v0, v2, :cond_4

    .line 55
    .line 56
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/l;->curves:Ljava/util/List;

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 60
    move-result v0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/l;->a()Ljava/util/List;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 68
    move-result v2

    .line 69
    .line 70
    if-ne v0, v2, :cond_3

    .line 71
    goto :goto_2

    .line 72
    .line 73
    :cond_3
    new-instance p3, Ljava/lang/IllegalStateException;

    .line 74
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    const-string v1, "Curves must have the same number of control points. This: "

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/content/l;->a()Ljava/util/List;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 91
    move-result v1

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v1, "\tShape 1: "

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/l;->a()Ljava/util/List;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    .line 106
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 107
    move-result p1

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string p1, "\tShape 2: "

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/l;->a()Ljava/util/List;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    .line 122
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 123
    move-result p1

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object p1

    .line 131
    .line 132
    .line 133
    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 134
    throw p3

    .line 135
    .line 136
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/l;->curves:Ljava/util/List;

    .line 137
    .line 138
    .line 139
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 140
    move-result v0

    .line 141
    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/l;->a()Ljava/util/List;

    .line 146
    move-result-object v0

    .line 147
    .line 148
    .line 149
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 150
    move-result v0

    .line 151
    sub-int/2addr v0, v1

    .line 152
    .line 153
    :goto_3
    if-ltz v0, :cond_5

    .line 154
    .line 155
    iget-object v2, p0, Lcom/airbnb/lottie/model/content/l;->curves:Ljava/util/List;

    .line 156
    .line 157
    new-instance v3, Lcom/airbnb/lottie/model/c;

    .line 158
    .line 159
    .line 160
    invoke-direct {v3}, Lcom/airbnb/lottie/model/c;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    add-int/lit8 v0, v0, -0x1

    .line 166
    goto :goto_3

    .line 167
    .line 168
    .line 169
    :cond_5
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/l;->b()Landroid/graphics/PointF;

    .line 170
    move-result-object v0

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/l;->b()Landroid/graphics/PointF;

    .line 174
    move-result-object v2

    .line 175
    .line 176
    iget v3, v0, Landroid/graphics/PointF;->x:F

    .line 177
    .line 178
    iget v4, v2, Landroid/graphics/PointF;->x:F

    .line 179
    .line 180
    .line 181
    invoke-static {v3, v4, p3}, Lcom/airbnb/lottie/utils/e;->h(FFF)F

    .line 182
    move-result v3

    .line 183
    .line 184
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 185
    .line 186
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 187
    .line 188
    .line 189
    invoke-static {v0, v2, p3}, Lcom/airbnb/lottie/utils/e;->h(FFF)F

    .line 190
    move-result v0

    .line 191
    .line 192
    .line 193
    invoke-direct {p0, v3, v0}, Lcom/airbnb/lottie/model/content/l;->e(FF)V

    .line 194
    .line 195
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/l;->curves:Ljava/util/List;

    .line 196
    .line 197
    .line 198
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 199
    move-result v0

    .line 200
    sub-int/2addr v0, v1

    .line 201
    .line 202
    :goto_4
    if-ltz v0, :cond_6

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/l;->a()Ljava/util/List;

    .line 206
    move-result-object v1

    .line 207
    .line 208
    .line 209
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 210
    move-result-object v1

    .line 211
    .line 212
    check-cast v1, Lcom/airbnb/lottie/model/c;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/l;->a()Ljava/util/List;

    .line 216
    move-result-object v2

    .line 217
    .line 218
    .line 219
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 220
    move-result-object v2

    .line 221
    .line 222
    check-cast v2, Lcom/airbnb/lottie/model/c;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/c;->a()Landroid/graphics/PointF;

    .line 226
    move-result-object v3

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/c;->b()Landroid/graphics/PointF;

    .line 230
    move-result-object v4

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/c;->c()Landroid/graphics/PointF;

    .line 234
    move-result-object v1

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/c;->a()Landroid/graphics/PointF;

    .line 238
    move-result-object v5

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/c;->b()Landroid/graphics/PointF;

    .line 242
    move-result-object v6

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/c;->c()Landroid/graphics/PointF;

    .line 246
    move-result-object v2

    .line 247
    .line 248
    iget-object v7, p0, Lcom/airbnb/lottie/model/content/l;->curves:Ljava/util/List;

    .line 249
    .line 250
    .line 251
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 252
    move-result-object v7

    .line 253
    .line 254
    check-cast v7, Lcom/airbnb/lottie/model/c;

    .line 255
    .line 256
    iget v8, v3, Landroid/graphics/PointF;->x:F

    .line 257
    .line 258
    iget v9, v5, Landroid/graphics/PointF;->x:F

    .line 259
    .line 260
    .line 261
    invoke-static {v8, v9, p3}, Lcom/airbnb/lottie/utils/e;->h(FFF)F

    .line 262
    move-result v8

    .line 263
    .line 264
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 265
    .line 266
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 267
    .line 268
    .line 269
    invoke-static {v3, v5, p3}, Lcom/airbnb/lottie/utils/e;->h(FFF)F

    .line 270
    move-result v3

    .line 271
    .line 272
    .line 273
    invoke-virtual {v7, v8, v3}, Lcom/airbnb/lottie/model/c;->d(FF)V

    .line 274
    .line 275
    iget-object v3, p0, Lcom/airbnb/lottie/model/content/l;->curves:Ljava/util/List;

    .line 276
    .line 277
    .line 278
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 279
    move-result-object v3

    .line 280
    .line 281
    check-cast v3, Lcom/airbnb/lottie/model/c;

    .line 282
    .line 283
    iget v5, v4, Landroid/graphics/PointF;->x:F

    .line 284
    .line 285
    iget v7, v6, Landroid/graphics/PointF;->x:F

    .line 286
    .line 287
    .line 288
    invoke-static {v5, v7, p3}, Lcom/airbnb/lottie/utils/e;->h(FFF)F

    .line 289
    move-result v5

    .line 290
    .line 291
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 292
    .line 293
    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 294
    .line 295
    .line 296
    invoke-static {v4, v6, p3}, Lcom/airbnb/lottie/utils/e;->h(FFF)F

    .line 297
    move-result v4

    .line 298
    .line 299
    .line 300
    invoke-virtual {v3, v5, v4}, Lcom/airbnb/lottie/model/c;->e(FF)V

    .line 301
    .line 302
    iget-object v3, p0, Lcom/airbnb/lottie/model/content/l;->curves:Ljava/util/List;

    .line 303
    .line 304
    .line 305
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 306
    move-result-object v3

    .line 307
    .line 308
    check-cast v3, Lcom/airbnb/lottie/model/c;

    .line 309
    .line 310
    iget v4, v1, Landroid/graphics/PointF;->x:F

    .line 311
    .line 312
    iget v5, v2, Landroid/graphics/PointF;->x:F

    .line 313
    .line 314
    .line 315
    invoke-static {v4, v5, p3}, Lcom/airbnb/lottie/utils/e;->h(FFF)F

    .line 316
    move-result v4

    .line 317
    .line 318
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 319
    .line 320
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 321
    .line 322
    .line 323
    invoke-static {v1, v2, p3}, Lcom/airbnb/lottie/utils/e;->h(FFF)F

    .line 324
    move-result v1

    .line 325
    .line 326
    .line 327
    invoke-virtual {v3, v4, v1}, Lcom/airbnb/lottie/model/c;->f(FF)V

    .line 328
    .line 329
    add-int/lit8 v0, v0, -0x1

    .line 330
    .line 331
    goto/16 :goto_4

    .line 332
    :cond_6
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/model/content/l;->closed:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "ShapeData{numCurves="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/airbnb/lottie/model/content/l;->curves:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "closed="

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    iget-boolean v1, p0, Lcom/airbnb/lottie/model/content/l;->closed:Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const/16 v1, 0x7d

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method
