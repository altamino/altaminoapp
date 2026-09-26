.class public Lcom/airbnb/lottie/model/content/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/model/animatable/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/model/animatable/m$a<",
        "Lcom/airbnb/lottie/model/content/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/airbnb/lottie/model/content/l$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/airbnb/lottie/model/content/l$b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/airbnb/lottie/model/content/l$b;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/airbnb/lottie/model/content/l$b;->INSTANCE:Lcom/airbnb/lottie/model/content/l$b;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static c(ILorg/json/JSONArray;)Landroid/graphics/PointF;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ge p0, v0, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    .line 10
    move-result-object p0

    .line 11
    const/4 p1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    const/4 v0, 0x1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    new-instance v0, Landroid/graphics/PointF;

    .line 23
    .line 24
    instance-of v1, p1, Ljava/lang/Double;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    check-cast p1, Ljava/lang/Double;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    .line 32
    move-result p1

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 39
    move-result p1

    .line 40
    int-to-float p1, p1

    .line 41
    .line 42
    :goto_0
    instance-of v1, p0, Ljava/lang/Double;

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    check-cast p0, Ljava/lang/Double;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    .line 50
    move-result p0

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_1
    check-cast p0, Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 57
    move-result p0

    .line 58
    int-to-float p0, p0

    .line 59
    .line 60
    .line 61
    :goto_1
    invoke-direct {v0, p1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 62
    return-object v0

    .line 63
    .line 64
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    const-string v2, "Invalid index "

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string p0, ". There are only "

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 86
    move-result p0

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string p0, " points."

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p0

    .line 99
    .line 100
    .line 101
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 102
    throw v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/model/content/l$b;->b(Ljava/lang/Object;F)Lcom/airbnb/lottie/model/content/l;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Ljava/lang/Object;F)Lcom/airbnb/lottie/model/content/l;
    .locals 15

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    instance-of v1, v0, Lorg/json/JSONArray;

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "v"

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Lorg/json/JSONArray;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    instance-of v1, v0, Lorg/json/JSONObject;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    check-cast v0, Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    instance-of v1, v0, Lorg/json/JSONObject;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    check-cast v0, Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move-object v0, v4

    .line 45
    .line 46
    :goto_0
    if-nez v0, :cond_2

    .line 47
    return-object v4

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    const-string v2, "i"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    .line 60
    const-string/jumbo v5, "o"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 64
    move-result-object v5

    .line 65
    .line 66
    const-string v6, "c"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 70
    move-result v6

    .line 71
    .line 72
    if-eqz v1, :cond_7

    .line 73
    .line 74
    if-eqz v2, :cond_7

    .line 75
    .line 76
    if-eqz v5, :cond_7

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 80
    move-result v7

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 84
    move-result v8

    .line 85
    .line 86
    if-ne v7, v8, :cond_7

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 90
    move-result v7

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    .line 94
    move-result v8

    .line 95
    .line 96
    if-ne v7, v8, :cond_7

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 100
    move-result v0

    .line 101
    .line 102
    if-nez v0, :cond_3

    .line 103
    .line 104
    new-instance v0, Lcom/airbnb/lottie/model/content/l;

    .line 105
    .line 106
    new-instance v1, Landroid/graphics/PointF;

    .line 107
    .line 108
    .line 109
    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 113
    move-result-object v2

    .line 114
    .line 115
    .line 116
    invoke-direct {v0, v1, v3, v2, v4}, Lcom/airbnb/lottie/model/content/l;-><init>(Landroid/graphics/PointF;ZLjava/util/List;Lcom/airbnb/lottie/model/content/l$a;)V

    .line 117
    return-object v0

    .line 118
    .line 119
    .line 120
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 121
    move-result v0

    .line 122
    .line 123
    .line 124
    invoke-static {v3, v1}, Lcom/airbnb/lottie/model/content/l$b;->c(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    .line 125
    move-result-object v7

    .line 126
    .line 127
    iget v8, v7, Landroid/graphics/PointF;->x:F

    .line 128
    .line 129
    mul-float v8, v8, p2

    .line 130
    .line 131
    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 132
    .line 133
    iget v8, v7, Landroid/graphics/PointF;->y:F

    .line 134
    .line 135
    mul-float v8, v8, p2

    .line 136
    .line 137
    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 138
    .line 139
    new-instance v8, Ljava/util/ArrayList;

    .line 140
    .line 141
    .line 142
    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    const/4 v9, 0x1

    .line 144
    move v10, v9

    .line 145
    .line 146
    :goto_1
    if-ge v10, v0, :cond_4

    .line 147
    .line 148
    .line 149
    invoke-static {v10, v1}, Lcom/airbnb/lottie/model/content/l$b;->c(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    .line 150
    move-result-object v11

    .line 151
    .line 152
    add-int/lit8 v12, v10, -0x1

    .line 153
    .line 154
    .line 155
    invoke-static {v12, v1}, Lcom/airbnb/lottie/model/content/l$b;->c(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    .line 156
    move-result-object v13

    .line 157
    .line 158
    .line 159
    invoke-static {v12, v5}, Lcom/airbnb/lottie/model/content/l$b;->c(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    .line 160
    move-result-object v12

    .line 161
    .line 162
    .line 163
    invoke-static {v10, v2}, Lcom/airbnb/lottie/model/content/l$b;->c(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    .line 164
    move-result-object v14

    .line 165
    .line 166
    .line 167
    invoke-static {v13, v12}, Lcom/airbnb/lottie/utils/e;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 168
    move-result-object v12

    .line 169
    .line 170
    .line 171
    invoke-static {v11, v14}, Lcom/airbnb/lottie/utils/e;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 172
    move-result-object v13

    .line 173
    .line 174
    iget v14, v12, Landroid/graphics/PointF;->x:F

    .line 175
    .line 176
    mul-float v14, v14, p2

    .line 177
    .line 178
    iput v14, v12, Landroid/graphics/PointF;->x:F

    .line 179
    .line 180
    iget v14, v12, Landroid/graphics/PointF;->y:F

    .line 181
    .line 182
    mul-float v14, v14, p2

    .line 183
    .line 184
    iput v14, v12, Landroid/graphics/PointF;->y:F

    .line 185
    .line 186
    iget v14, v13, Landroid/graphics/PointF;->x:F

    .line 187
    .line 188
    mul-float v14, v14, p2

    .line 189
    .line 190
    iput v14, v13, Landroid/graphics/PointF;->x:F

    .line 191
    .line 192
    iget v14, v13, Landroid/graphics/PointF;->y:F

    .line 193
    .line 194
    mul-float v14, v14, p2

    .line 195
    .line 196
    iput v14, v13, Landroid/graphics/PointF;->y:F

    .line 197
    .line 198
    iget v14, v11, Landroid/graphics/PointF;->x:F

    .line 199
    .line 200
    mul-float v14, v14, p2

    .line 201
    .line 202
    iput v14, v11, Landroid/graphics/PointF;->x:F

    .line 203
    .line 204
    iget v14, v11, Landroid/graphics/PointF;->y:F

    .line 205
    .line 206
    mul-float v14, v14, p2

    .line 207
    .line 208
    iput v14, v11, Landroid/graphics/PointF;->y:F

    .line 209
    .line 210
    new-instance v14, Lcom/airbnb/lottie/model/c;

    .line 211
    .line 212
    .line 213
    invoke-direct {v14, v12, v13, v11}, Lcom/airbnb/lottie/model/c;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 214
    .line 215
    .line 216
    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    .line 218
    add-int/lit8 v10, v10, 0x1

    .line 219
    goto :goto_1

    .line 220
    .line 221
    :cond_4
    if-eqz v6, :cond_6

    .line 222
    .line 223
    .line 224
    invoke-static {v3, v1}, Lcom/airbnb/lottie/model/content/l$b;->c(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    .line 225
    move-result-object v10

    .line 226
    sub-int/2addr v0, v9

    .line 227
    .line 228
    .line 229
    invoke-static {v0, v1}, Lcom/airbnb/lottie/model/content/l$b;->c(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    .line 230
    move-result-object v1

    .line 231
    .line 232
    .line 233
    invoke-static {v0, v5}, Lcom/airbnb/lottie/model/content/l$b;->c(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    .line 234
    move-result-object v0

    .line 235
    .line 236
    .line 237
    invoke-static {v3, v2}, Lcom/airbnb/lottie/model/content/l$b;->c(ILorg/json/JSONArray;)Landroid/graphics/PointF;

    .line 238
    move-result-object v2

    .line 239
    .line 240
    .line 241
    invoke-static {v1, v0}, Lcom/airbnb/lottie/utils/e;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 242
    move-result-object v0

    .line 243
    .line 244
    .line 245
    invoke-static {v10, v2}, Lcom/airbnb/lottie/utils/e;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 246
    move-result-object v1

    .line 247
    .line 248
    const/high16 v2, 0x3f800000    # 1.0f

    .line 249
    .line 250
    cmpl-float v2, p2, v2

    .line 251
    .line 252
    if-eqz v2, :cond_5

    .line 253
    .line 254
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 255
    .line 256
    mul-float v2, v2, p2

    .line 257
    .line 258
    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 259
    .line 260
    iget v2, v0, Landroid/graphics/PointF;->y:F

    .line 261
    .line 262
    mul-float v2, v2, p2

    .line 263
    .line 264
    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 265
    .line 266
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 267
    .line 268
    mul-float v2, v2, p2

    .line 269
    .line 270
    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 271
    .line 272
    iget v2, v1, Landroid/graphics/PointF;->y:F

    .line 273
    .line 274
    mul-float v2, v2, p2

    .line 275
    .line 276
    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 277
    .line 278
    iget v2, v10, Landroid/graphics/PointF;->x:F

    .line 279
    .line 280
    mul-float v2, v2, p2

    .line 281
    .line 282
    iput v2, v10, Landroid/graphics/PointF;->x:F

    .line 283
    .line 284
    iget v2, v10, Landroid/graphics/PointF;->y:F

    .line 285
    .line 286
    mul-float v2, v2, p2

    .line 287
    .line 288
    iput v2, v10, Landroid/graphics/PointF;->y:F

    .line 289
    .line 290
    :cond_5
    new-instance v2, Lcom/airbnb/lottie/model/c;

    .line 291
    .line 292
    .line 293
    invoke-direct {v2, v0, v1, v10}, Lcom/airbnb/lottie/model/c;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 294
    .line 295
    .line 296
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    :cond_6
    new-instance v0, Lcom/airbnb/lottie/model/content/l;

    .line 299
    .line 300
    .line 301
    invoke-direct {v0, v7, v6, v8, v4}, Lcom/airbnb/lottie/model/content/l;-><init>(Landroid/graphics/PointF;ZLjava/util/List;Lcom/airbnb/lottie/model/content/l$a;)V

    .line 302
    return-object v0

    .line 303
    .line 304
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 305
    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .line 311
    const-string v3, "Unable to process points array or tangents. "

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    move-result-object v0

    .line 322
    .line 323
    .line 324
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 325
    throw v1
.end method
