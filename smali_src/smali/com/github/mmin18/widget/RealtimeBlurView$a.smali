.class Lcom/github/mmin18/widget/RealtimeBlurView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mmin18/widget/RealtimeBlurView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final invalidateDelayed:Ljava/lang/Runnable;

.field invalidateScheduled:Z

.field final locations:[I

.field prevBlurTimestamp:J

.field prevCoord:J

.field final synthetic this$0:Lcom/github/mmin18/widget/RealtimeBlurView;


# direct methods
.method constructor <init>(Lcom/github/mmin18/widget/RealtimeBlurView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, 0x2

    .line 7
    .line 8
    new-array p1, p1, [I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->locations:[I

    .line 11
    .line 12
    new-instance p1, Lcom/github/mmin18/widget/RealtimeBlurView$a$a;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/github/mmin18/widget/RealtimeBlurView$a$a;-><init>(Lcom/github/mmin18/widget/RealtimeBlurView$a;)V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->invalidateDelayed:Ljava/lang/Runnable;

    .line 18
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 15

    .line 1
    .line 2
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/github/mmin18/widget/RealtimeBlurView;->c(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lcom/github/mmin18/widget/RealtimeBlurView;->a(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/view/View;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/github/mmin18/widget/RealtimeBlurView;->e(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/view/View;

    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lcom/github/mmin18/widget/RealtimeBlurView;->a(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/view/View;

    .line 27
    move-result-object v1

    .line 28
    :goto_0
    const/4 v2, 0x1

    .line 29
    .line 30
    if-eqz v1, :cond_8

    .line 31
    .line 32
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    .line 36
    move-result v3

    .line 37
    .line 38
    if-nez v3, :cond_1

    .line 39
    .line 40
    goto/16 :goto_5

    .line 41
    .line 42
    :cond_1
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->locations:[I

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 46
    .line 47
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->locations:[I

    .line 48
    const/4 v4, 0x0

    .line 49
    .line 50
    aget v5, v3, v4

    .line 51
    neg-int v5, v5

    .line 52
    .line 53
    aget v6, v3, v2

    .line 54
    neg-int v6, v6

    .line 55
    .line 56
    iget-object v7, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 60
    .line 61
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->locations:[I

    .line 62
    .line 63
    aget v7, v3, v4

    .line 64
    add-int/2addr v5, v7

    .line 65
    .line 66
    aget v3, v3, v2

    .line 67
    add-int/2addr v6, v3

    .line 68
    .line 69
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 73
    move-result v3

    .line 74
    int-to-long v7, v3

    .line 75
    .line 76
    const/16 v3, 0x10

    .line 77
    shl-long/2addr v7, v3

    .line 78
    .line 79
    iget-object v9, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 83
    move-result v9

    .line 84
    int-to-long v9, v9

    .line 85
    or-long/2addr v7, v9

    .line 86
    shl-long/2addr v7, v3

    .line 87
    int-to-long v9, v5

    .line 88
    or-long/2addr v7, v9

    .line 89
    shl-long/2addr v7, v3

    .line 90
    int-to-long v9, v6

    .line 91
    or-long/2addr v7, v9

    .line 92
    .line 93
    .line 94
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 95
    move-result-wide v9

    .line 96
    .line 97
    iget-wide v11, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->prevCoord:J

    .line 98
    .line 99
    cmp-long v3, v7, v11

    .line 100
    .line 101
    if-nez v3, :cond_3

    .line 102
    .line 103
    iget-wide v11, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->prevBlurTimestamp:J

    .line 104
    .line 105
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 106
    .line 107
    .line 108
    invoke-static {v3}, Lcom/github/mmin18/widget/RealtimeBlurView;->g(Lcom/github/mmin18/widget/RealtimeBlurView;)J

    .line 109
    move-result-wide v13

    .line 110
    add-long/2addr v11, v13

    .line 111
    .line 112
    cmp-long v3, v9, v11

    .line 113
    .line 114
    if-gez v3, :cond_3

    .line 115
    .line 116
    iget-boolean v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->invalidateScheduled:Z

    .line 117
    .line 118
    if-nez v0, :cond_2

    .line 119
    .line 120
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->invalidateDelayed:Ljava/lang/Runnable;

    .line 127
    .line 128
    iget-wide v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->prevBlurTimestamp:J

    .line 129
    .line 130
    iget-object v5, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 131
    .line 132
    .line 133
    invoke-static {v5}, Lcom/github/mmin18/widget/RealtimeBlurView;->g(Lcom/github/mmin18/widget/RealtimeBlurView;)J

    .line 134
    move-result-wide v5

    .line 135
    add-long/2addr v3, v5

    .line 136
    sub-long/2addr v3, v9

    .line 137
    .line 138
    const-wide/16 v5, 0x43

    .line 139
    add-long/2addr v3, v5

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 143
    .line 144
    iput-boolean v2, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->invalidateScheduled:Z

    .line 145
    :cond_2
    return v2

    .line 146
    .line 147
    :cond_3
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Lcom/github/mmin18/widget/RealtimeBlurView;->prepare()Z

    .line 151
    move-result v3

    .line 152
    .line 153
    if-eqz v3, :cond_8

    .line 154
    .line 155
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 156
    .line 157
    .line 158
    invoke-static {v3}, Lcom/github/mmin18/widget/RealtimeBlurView;->c(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;

    .line 159
    move-result-object v3

    .line 160
    .line 161
    if-eq v3, v0, :cond_4

    .line 162
    move v0, v2

    .line 163
    goto :goto_1

    .line 164
    :cond_4
    move v0, v4

    .line 165
    .line 166
    :goto_1
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 167
    .line 168
    .line 169
    invoke-static {v3}, Lcom/github/mmin18/widget/RealtimeBlurView;->b(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;

    .line 170
    move-result-object v3

    .line 171
    .line 172
    iget-object v11, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 173
    .line 174
    .line 175
    invoke-static {v11}, Lcom/github/mmin18/widget/RealtimeBlurView;->h(Lcom/github/mmin18/widget/RealtimeBlurView;)I

    .line 176
    move-result v11

    .line 177
    .line 178
    .line 179
    const v12, 0xffffff

    .line 180
    and-int/2addr v11, v12

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3, v11}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 184
    .line 185
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 186
    .line 187
    .line 188
    invoke-static {v3}, Lcom/github/mmin18/widget/RealtimeBlurView;->d(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;

    .line 189
    move-result-object v3

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 193
    move-result v3

    .line 194
    .line 195
    iget-object v11, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 196
    .line 197
    .line 198
    invoke-static {v11, v2}, Lcom/github/mmin18/widget/RealtimeBlurView;->i(Lcom/github/mmin18/widget/RealtimeBlurView;Z)V

    .line 199
    .line 200
    sget v11, Lcom/github/mmin18/widget/RealtimeBlurView;->RENDERING_COUNT:I

    .line 201
    add-int/2addr v11, v2

    .line 202
    .line 203
    sput v11, Lcom/github/mmin18/widget/RealtimeBlurView;->RENDERING_COUNT:I

    .line 204
    .line 205
    :try_start_0
    iget-object v11, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 206
    .line 207
    .line 208
    invoke-static {v11}, Lcom/github/mmin18/widget/RealtimeBlurView;->d(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;

    .line 209
    move-result-object v11

    .line 210
    .line 211
    iget-object v12, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 212
    .line 213
    .line 214
    invoke-static {v12}, Lcom/github/mmin18/widget/RealtimeBlurView;->b(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;

    .line 215
    move-result-object v12

    .line 216
    .line 217
    .line 218
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    .line 219
    move-result v12

    .line 220
    int-to-float v12, v12

    .line 221
    .line 222
    const/high16 v13, 0x3f800000    # 1.0f

    .line 223
    mul-float/2addr v12, v13

    .line 224
    .line 225
    iget-object v14, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    .line 229
    move-result v14

    .line 230
    int-to-float v14, v14

    .line 231
    div-float/2addr v12, v14

    .line 232
    .line 233
    iget-object v14, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 234
    .line 235
    .line 236
    invoke-static {v14}, Lcom/github/mmin18/widget/RealtimeBlurView;->b(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;

    .line 237
    move-result-object v14

    .line 238
    .line 239
    .line 240
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    .line 241
    move-result v14

    .line 242
    int-to-float v14, v14

    .line 243
    mul-float/2addr v14, v13

    .line 244
    .line 245
    iget-object v13, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    .line 249
    move-result v13

    .line 250
    int-to-float v13, v13

    .line 251
    div-float/2addr v14, v13

    .line 252
    .line 253
    .line 254
    invoke-virtual {v11, v12, v14}, Landroid/graphics/Canvas;->scale(FF)V

    .line 255
    .line 256
    iget-object v11, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 257
    .line 258
    .line 259
    invoke-static {v11}, Lcom/github/mmin18/widget/RealtimeBlurView;->d(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;

    .line 260
    move-result-object v11

    .line 261
    neg-int v5, v5

    .line 262
    int-to-float v5, v5

    .line 263
    neg-int v6, v6

    .line 264
    int-to-float v6, v6

    .line 265
    .line 266
    .line 267
    invoke-virtual {v11, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 271
    move-result-object v5

    .line 272
    .line 273
    if-eqz v5, :cond_5

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 277
    move-result-object v5

    .line 278
    .line 279
    iget-object v6, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 280
    .line 281
    .line 282
    invoke-static {v6}, Lcom/github/mmin18/widget/RealtimeBlurView;->d(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;

    .line 283
    move-result-object v6

    .line 284
    .line 285
    .line 286
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 287
    goto :goto_2

    .line 288
    :catchall_0
    move-exception v0

    .line 289
    goto :goto_3

    .line 290
    .line 291
    :cond_5
    :goto_2
    iget-object v5, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 292
    .line 293
    .line 294
    invoke-static {v5}, Lcom/github/mmin18/widget/RealtimeBlurView;->d(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;

    .line 295
    move-result-object v6

    .line 296
    .line 297
    .line 298
    invoke-virtual {v5, v6, v1}, Lcom/github/mmin18/widget/RealtimeBlurView;->render(Landroid/graphics/Canvas;Landroid/view/View;)V
    :try_end_0
    .catch Lcom/github/mmin18/widget/RealtimeBlurView$c; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    .line 300
    :catch_0
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 301
    .line 302
    .line 303
    invoke-static {v1, v4}, Lcom/github/mmin18/widget/RealtimeBlurView;->i(Lcom/github/mmin18/widget/RealtimeBlurView;Z)V

    .line 304
    .line 305
    sget v1, Lcom/github/mmin18/widget/RealtimeBlurView;->RENDERING_COUNT:I

    .line 306
    sub-int/2addr v1, v2

    .line 307
    .line 308
    sput v1, Lcom/github/mmin18/widget/RealtimeBlurView;->RENDERING_COUNT:I

    .line 309
    .line 310
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 311
    .line 312
    .line 313
    invoke-static {v1}, Lcom/github/mmin18/widget/RealtimeBlurView;->d(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;

    .line 314
    move-result-object v1

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 318
    goto :goto_4

    .line 319
    .line 320
    :goto_3
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 321
    .line 322
    .line 323
    invoke-static {v1, v4}, Lcom/github/mmin18/widget/RealtimeBlurView;->i(Lcom/github/mmin18/widget/RealtimeBlurView;Z)V

    .line 324
    .line 325
    sget v1, Lcom/github/mmin18/widget/RealtimeBlurView;->RENDERING_COUNT:I

    .line 326
    sub-int/2addr v1, v2

    .line 327
    .line 328
    sput v1, Lcom/github/mmin18/widget/RealtimeBlurView;->RENDERING_COUNT:I

    .line 329
    .line 330
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 331
    .line 332
    .line 333
    invoke-static {v1}, Lcom/github/mmin18/widget/RealtimeBlurView;->d(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;

    .line 334
    move-result-object v1

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 338
    throw v0

    .line 339
    .line 340
    :goto_4
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 341
    .line 342
    .line 343
    invoke-static {v1}, Lcom/github/mmin18/widget/RealtimeBlurView;->b(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;

    .line 344
    move-result-object v3

    .line 345
    .line 346
    iget-object v5, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 347
    .line 348
    .line 349
    invoke-static {v5}, Lcom/github/mmin18/widget/RealtimeBlurView;->c(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;

    .line 350
    move-result-object v5

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1, v3, v5}, Lcom/github/mmin18/widget/RealtimeBlurView;->blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 354
    .line 355
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 359
    move-result-object v1

    .line 360
    .line 361
    .line 362
    invoke-static {v1}, Lcom/github/mmin18/widget/RealtimeBlurView;->reportPreDraw(Landroid/content/Context;)V

    .line 363
    .line 364
    iput-wide v9, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->prevBlurTimestamp:J

    .line 365
    .line 366
    iput-wide v7, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->prevCoord:J

    .line 367
    .line 368
    iget-boolean v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->invalidateScheduled:Z

    .line 369
    .line 370
    if-eqz v1, :cond_6

    .line 371
    .line 372
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 376
    move-result-object v1

    .line 377
    .line 378
    iget-object v3, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->invalidateDelayed:Ljava/lang/Runnable;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 382
    .line 383
    iput-boolean v4, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->invalidateScheduled:Z

    .line 384
    .line 385
    :cond_6
    if-nez v0, :cond_7

    .line 386
    .line 387
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 388
    .line 389
    .line 390
    invoke-static {v0}, Lcom/github/mmin18/widget/RealtimeBlurView;->f(Lcom/github/mmin18/widget/RealtimeBlurView;)Z

    .line 391
    move-result v0

    .line 392
    .line 393
    if-eqz v0, :cond_8

    .line 394
    .line 395
    :cond_7
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->this$0:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 399
    :cond_8
    :goto_5
    return v2
.end method
