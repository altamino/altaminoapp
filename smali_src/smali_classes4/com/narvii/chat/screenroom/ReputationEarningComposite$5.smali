.class Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/ReputationEarningComposite;->initComponent(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->v(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->u(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->d(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Ljava/lang/Runnable;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->b(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/widget/ThumbImageView;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x0

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    move v0, v1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->b(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/widget/ThumbImageView;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 49
    move-result v0

    .line 50
    int-to-float v0, v0

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->b(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/widget/ThumbImageView;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->b(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/widget/ThumbImageView;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 69
    move-result v0

    .line 70
    int-to-float v0, v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 74
    .line 75
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->C(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/widget/TextView;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 83
    move-result v0

    .line 84
    .line 85
    if-eqz v0, :cond_2

    .line 86
    goto :goto_1

    .line 87
    .line 88
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->C(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/widget/TextView;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 96
    move-result v0

    .line 97
    int-to-float v1, v0

    .line 98
    .line 99
    .line 100
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 101
    .line 102
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 103
    .line 104
    .line 105
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->C(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/widget/TextView;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 109
    .line 110
    .line 111
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->C(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/widget/TextView;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 116
    move-result v0

    .line 117
    int-to-float v0, v0

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 121
    .line 122
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 123
    .line 124
    .line 125
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->k(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)I

    .line 126
    move-result p1

    .line 127
    const/4 v0, 0x0

    .line 128
    const/4 v1, 0x3

    .line 129
    .line 130
    if-eqz p1, :cond_4

    .line 131
    .line 132
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 133
    .line 134
    .line 135
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->j(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)F

    .line 136
    move-result p1

    .line 137
    .line 138
    const/high16 v2, 0x3f800000    # 1.0f

    .line 139
    .line 140
    cmpg-float p1, p1, v2

    .line 141
    .line 142
    if-gez p1, :cond_3

    .line 143
    .line 144
    goto/16 :goto_2

    .line 145
    .line 146
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 147
    .line 148
    .line 149
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->b(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/widget/ThumbImageView;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 154
    .line 155
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 156
    .line 157
    .line 158
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->u(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    .line 159
    move-result-object p1

    .line 160
    .line 161
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 162
    .line 163
    .line 164
    invoke-static {v3}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->t(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Ljava/lang/Runnable;

    .line 165
    move-result-object v3

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 169
    .line 170
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 171
    .line 172
    .line 173
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->a(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/util/http/ApiService;

    .line 174
    move-result-object p1

    .line 175
    .line 176
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 177
    .line 178
    .line 179
    invoke-static {v3}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->s(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/util/http/ApiRequest;

    .line 180
    move-result-object v3

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v3}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 184
    .line 185
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 186
    .line 187
    .line 188
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->a(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/util/http/ApiService;

    .line 189
    move-result-object p1

    .line 190
    .line 191
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 192
    .line 193
    .line 194
    invoke-static {v3}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->B(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/util/http/ApiRequest;

    .line 195
    move-result-object v3

    .line 196
    .line 197
    new-instance v4, Lcom/narvii/util/http/ApiResponseListener;

    .line 198
    .line 199
    const-class v5, Lcom/narvii/model/api/ReputationPostResponse;

    .line 200
    .line 201
    .line 202
    invoke-direct {v4, v5}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v3, v4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 206
    .line 207
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 208
    .line 209
    .line 210
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->k(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)I

    .line 211
    move-result p1

    .line 212
    int-to-float p1, p1

    .line 213
    .line 214
    .line 215
    const v3, 0x3e4ccccd    # 0.2f

    .line 216
    mul-float/2addr p1, v3

    .line 217
    add-float/2addr p1, v2

    .line 218
    .line 219
    iget-object v2, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 220
    .line 221
    .line 222
    invoke-static {v2}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->e(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    .line 223
    move-result-object v2

    .line 224
    .line 225
    new-array v3, v1, [F

    .line 226
    .line 227
    aput p1, v3, v0

    .line 228
    .line 229
    .line 230
    const v4, 0x3f4ccccd    # 0.8f

    .line 231
    mul-float/2addr v4, p1

    .line 232
    const/4 v5, 0x1

    .line 233
    .line 234
    aput v4, v3, v5

    .line 235
    const/4 v6, 0x2

    .line 236
    .line 237
    aput p1, v3, v6

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 241
    .line 242
    iget-object v2, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 243
    .line 244
    .line 245
    invoke-static {v2}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->f(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    .line 246
    move-result-object v2

    .line 247
    .line 248
    new-array v1, v1, [F

    .line 249
    .line 250
    aput p1, v1, v0

    .line 251
    .line 252
    aput v4, v1, v5

    .line 253
    .line 254
    aput p1, v1, v6

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 258
    .line 259
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 260
    .line 261
    .line 262
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->e(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    .line 263
    move-result-object p1

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 267
    .line 268
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 269
    .line 270
    .line 271
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->f(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    .line 272
    move-result-object p1

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 276
    .line 277
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 278
    .line 279
    .line 280
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->c(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    .line 281
    move-result-object p1

    .line 282
    .line 283
    new-array v0, v6, [F

    .line 284
    .line 285
    .line 286
    fill-array-data v0, :array_0

    .line 287
    .line 288
    .line 289
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 290
    .line 291
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 292
    .line 293
    .line 294
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->c(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    .line 295
    move-result-object p1

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 299
    .line 300
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 301
    .line 302
    .line 303
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->m(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    .line 304
    move-result-object p1

    .line 305
    .line 306
    .line 307
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 308
    .line 309
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 310
    .line 311
    .line 312
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->C(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/widget/TextView;

    .line 313
    move-result-object p1

    .line 314
    const/4 v0, 0x4

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 318
    .line 319
    goto/16 :goto_3

    .line 320
    .line 321
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 322
    .line 323
    .line 324
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->e(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    .line 325
    move-result-object p1

    .line 326
    .line 327
    new-array v2, v1, [F

    .line 328
    .line 329
    .line 330
    fill-array-data v2, :array_1

    .line 331
    .line 332
    .line 333
    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 334
    .line 335
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 336
    .line 337
    .line 338
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->f(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    .line 339
    move-result-object p1

    .line 340
    .line 341
    new-array v2, v1, [F

    .line 342
    .line 343
    .line 344
    fill-array-data v2, :array_2

    .line 345
    .line 346
    .line 347
    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 348
    .line 349
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 350
    .line 351
    .line 352
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->w(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    .line 353
    move-result-object p1

    .line 354
    .line 355
    new-array v2, v1, [F

    .line 356
    .line 357
    .line 358
    fill-array-data v2, :array_3

    .line 359
    .line 360
    .line 361
    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 362
    .line 363
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 364
    .line 365
    .line 366
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->x(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    .line 367
    move-result-object p1

    .line 368
    .line 369
    new-array v2, v1, [F

    .line 370
    .line 371
    .line 372
    fill-array-data v2, :array_4

    .line 373
    .line 374
    .line 375
    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 376
    .line 377
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 378
    .line 379
    .line 380
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->k(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)I

    .line 381
    move-result p1

    .line 382
    .line 383
    if-lez p1, :cond_5

    .line 384
    .line 385
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 386
    .line 387
    .line 388
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->e(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    .line 389
    move-result-object p1

    .line 390
    .line 391
    new-array v2, v1, [F

    .line 392
    .line 393
    .line 394
    fill-array-data v2, :array_5

    .line 395
    .line 396
    .line 397
    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 398
    .line 399
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 400
    .line 401
    .line 402
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->f(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    .line 403
    move-result-object p1

    .line 404
    .line 405
    new-array v2, v1, [F

    .line 406
    .line 407
    .line 408
    fill-array-data v2, :array_6

    .line 409
    .line 410
    .line 411
    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 412
    .line 413
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 414
    .line 415
    .line 416
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->w(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    .line 417
    move-result-object p1

    .line 418
    .line 419
    new-array v2, v1, [F

    .line 420
    .line 421
    .line 422
    fill-array-data v2, :array_7

    .line 423
    .line 424
    .line 425
    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 426
    .line 427
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 428
    .line 429
    .line 430
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->x(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    .line 431
    move-result-object p1

    .line 432
    .line 433
    new-array v1, v1, [F

    .line 434
    .line 435
    .line 436
    fill-array-data v1, :array_8

    .line 437
    .line 438
    .line 439
    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 440
    .line 441
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 442
    .line 443
    .line 444
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->u(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;

    .line 445
    move-result-object p1

    .line 446
    .line 447
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 448
    .line 449
    .line 450
    invoke-static {v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->d(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Ljava/lang/Runnable;

    .line 451
    move-result-object v1

    .line 452
    .line 453
    const-wide/16 v2, 0xce4

    .line 454
    .line 455
    .line 456
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 457
    .line 458
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 459
    .line 460
    .line 461
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->i(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/app/NVContext;

    .line 462
    move-result-object p1

    .line 463
    .line 464
    .line 465
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 466
    move-result-object p1

    .line 467
    .line 468
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 469
    .line 470
    .line 471
    invoke-static {v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->i(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/app/NVContext;

    .line 472
    move-result-object v1

    .line 473
    .line 474
    .line 475
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 476
    move-result-object v1

    .line 477
    .line 478
    .line 479
    const v2, 0x7f121003

    .line 480
    .line 481
    .line 482
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 483
    move-result-object v1

    .line 484
    .line 485
    .line 486
    invoke-static {p1, v1, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 487
    move-result-object p1

    .line 488
    .line 489
    .line 490
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 491
    .line 492
    :cond_5
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 493
    .line 494
    .line 495
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->e(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    .line 496
    move-result-object p1

    .line 497
    .line 498
    .line 499
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 500
    .line 501
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 502
    .line 503
    .line 504
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->f(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    .line 505
    move-result-object p1

    .line 506
    .line 507
    .line 508
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 509
    .line 510
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 511
    .line 512
    .line 513
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->w(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    .line 514
    move-result-object p1

    .line 515
    .line 516
    .line 517
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 518
    .line 519
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;->this$0:Lcom/narvii/chat/screenroom/ReputationEarningComposite;

    .line 520
    .line 521
    .line 522
    invoke-static {p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->x(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;

    .line 523
    move-result-object p1

    .line 524
    .line 525
    .line 526
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 527
    :goto_3
    return-void

    .line 528
    nop

    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3c23d70a    # 0.01f
    .end array-data

    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    :array_5
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    :array_6
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    :array_7
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    :array_8
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data
.end method
