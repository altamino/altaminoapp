.class Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerOnlineBar$7;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 7
    .line 8
    iget-boolean v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fromCBB:Z

    .line 9
    .line 10
    const/high16 v3, 0x3f800000    # 1.0f

    .line 11
    const/4 v4, 0x0

    .line 12
    .line 13
    const-wide/16 v5, 0x190

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x1

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 25
    .line 26
    iget-object v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->val$user:Lcom/narvii/model/User;

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->k(Lcom/narvii/livelayer/LiveLayerOnlineBar;Lcom/narvii/model/User;)V

    .line 32
    .line 33
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    .line 38
    .line 39
    .line 40
    const v2, 0x7f0a0171

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .line 47
    .line 48
    const/high16 v10, 0x3f800000    # 1.0f

    .line 49
    .line 50
    .line 51
    const v11, 0x3f99999a    # 1.2f

    .line 52
    .line 53
    const/high16 v12, 0x3f800000    # 1.0f

    .line 54
    .line 55
    .line 56
    const v13, 0x3f99999a    # 1.2f

    .line 57
    const/4 v14, 0x1

    .line 58
    .line 59
    const/high16 v15, 0x3f000000    # 0.5f

    .line 60
    .line 61
    const/16 v16, 0x1

    .line 62
    .line 63
    const/high16 v17, 0x3f000000    # 0.5f

    .line 64
    move-object v9, v2

    .line 65
    .line 66
    .line 67
    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 68
    .line 69
    new-instance v9, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$1;

    .line 70
    .line 71
    .line 72
    invoke-direct {v9, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$1;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v9}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 79
    .line 80
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .line 81
    const/4 v10, 0x0

    .line 82
    .line 83
    .line 84
    invoke-direct {v9, v10, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v9, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 88
    .line 89
    new-instance v5, Landroid/view/animation/AnimationSet;

    .line 90
    .line 91
    .line 92
    invoke-direct {v5, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 99
    .line 100
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 101
    .line 102
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 103
    .line 104
    iput-object v5, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->holoAnimation2:Landroid/view/animation/Animation;

    .line 105
    .line 106
    new-instance v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$2;

    .line 107
    .line 108
    .line 109
    invoke-direct {v2, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$2;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v1, v5, v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 113
    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :cond_0
    iget-boolean v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    .line 117
    .line 118
    if-nez v2, :cond_2

    .line 119
    .line 120
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    .line 121
    .line 122
    .line 123
    const v2, 0x7f0a0f37

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    if-eqz v1, :cond_1

    .line 130
    .line 131
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 132
    .line 133
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 137
    move-result-object v9

    .line 138
    .line 139
    .line 140
    const v10, 0x7f010038

    .line 141
    .line 142
    .line 143
    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 144
    move-result-object v9

    .line 145
    .line 146
    iput-object v9, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fadeoutAnim:Landroid/view/animation/Animation;

    .line 147
    .line 148
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 149
    .line 150
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 151
    .line 152
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fadeoutAnim:Landroid/view/animation/Animation;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v8}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 156
    .line 157
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 158
    .line 159
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 160
    .line 161
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fadeoutAnim:Landroid/view/animation/Animation;

    .line 162
    .line 163
    const-wide/16 v9, 0x96

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 167
    .line 168
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 169
    .line 170
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 171
    .line 172
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fadeoutAnim:Landroid/view/animation/Animation;

    .line 173
    .line 174
    .line 175
    invoke-static {v1, v2, v4}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 176
    .line 177
    :cond_1
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 178
    .line 179
    iget-object v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 180
    .line 181
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->val$user:Lcom/narvii/model/User;

    .line 182
    .line 183
    .line 184
    invoke-static {v2, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->k(Lcom/narvii/livelayer/LiveLayerOnlineBar;Lcom/narvii/model/User;)V

    .line 185
    .line 186
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 187
    .line 188
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 189
    .line 190
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    .line 191
    .line 192
    .line 193
    const v2, 0x7f0a0f36

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 197
    move-result-object v1

    .line 198
    .line 199
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .line 200
    .line 201
    const/high16 v10, 0x3f800000    # 1.0f

    .line 202
    .line 203
    .line 204
    const v11, 0x3f99999a    # 1.2f

    .line 205
    .line 206
    const/high16 v12, 0x3f800000    # 1.0f

    .line 207
    .line 208
    .line 209
    const v13, 0x3f99999a    # 1.2f

    .line 210
    const/4 v14, 0x1

    .line 211
    .line 212
    const/high16 v15, 0x3f000000    # 0.5f

    .line 213
    .line 214
    const/16 v16, 0x1

    .line 215
    .line 216
    const/high16 v17, 0x3f000000    # 0.5f

    .line 217
    move-object v9, v2

    .line 218
    .line 219
    .line 220
    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 221
    .line 222
    new-instance v9, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$3;

    .line 223
    .line 224
    .line 225
    invoke-direct {v9, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$3;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2, v9}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 232
    .line 233
    iget-object v5, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 234
    .line 235
    iget-object v5, v5, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 236
    .line 237
    iput-object v2, v5, Lcom/narvii/livelayer/LiveLayerOnlineBar;->holoAnimation2:Landroid/view/animation/Animation;

    .line 238
    .line 239
    new-instance v5, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$4;

    .line 240
    .line 241
    .line 242
    invoke-direct {v5, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$4;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;)V

    .line 243
    .line 244
    .line 245
    invoke-static {v1, v2, v5}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 246
    goto :goto_0

    .line 247
    .line 248
    :cond_2
    iget-object v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 252
    .line 253
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 254
    .line 255
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 256
    .line 257
    iget-object v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldGreenOval:Landroid/view/View;

    .line 258
    .line 259
    if-eqz v2, :cond_3

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 263
    move-result-object v2

    .line 264
    .line 265
    .line 266
    const v5, 0x7f010037

    .line 267
    .line 268
    .line 269
    invoke-static {v2, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 270
    move-result-object v2

    .line 271
    .line 272
    iput-object v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dotFadeInAnimation:Landroid/view/animation/Animation;

    .line 273
    .line 274
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 275
    .line 276
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 277
    .line 278
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dotFadeInAnimation:Landroid/view/animation/Animation;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v8}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 282
    .line 283
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 284
    .line 285
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 286
    .line 287
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dotFadeInAnimation:Landroid/view/animation/Animation;

    .line 288
    .line 289
    const-wide/16 v5, 0x3e8

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 293
    .line 294
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 295
    .line 296
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 297
    .line 298
    iget-object v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldGreenOval:Landroid/view/View;

    .line 299
    .line 300
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dotFadeInAnimation:Landroid/view/animation/Animation;

    .line 301
    .line 302
    .line 303
    invoke-static {v2, v1, v4}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 304
    .line 305
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 306
    .line 307
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 308
    .line 309
    iget v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 310
    .line 311
    iget v5, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->maxAvatarCount:I

    .line 312
    .line 313
    if-lt v2, v5, :cond_5

    .line 314
    .line 315
    iget-boolean v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    .line 316
    .line 317
    if-eqz v2, :cond_4

    .line 318
    .line 319
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 323
    .line 324
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 325
    .line 326
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 327
    .line 328
    iget v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 329
    sub-int/2addr v2, v8

    .line 330
    .line 331
    iput v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 332
    :cond_4
    move v1, v7

    .line 333
    goto :goto_1

    .line 334
    :cond_5
    move v1, v8

    .line 335
    .line 336
    :goto_1
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 337
    .line 338
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 339
    .line 340
    iget-object v5, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 341
    .line 342
    iget v6, v5, Lcom/narvii/livelayer/LiveLayerDataSource;->currentMembersCount:I

    .line 343
    .line 344
    add-int/lit8 v9, v6, 0x1

    .line 345
    .line 346
    iput v9, v5, Lcom/narvii/livelayer/LiveLayerDataSource;->currentMembersCount:I

    .line 347
    .line 348
    .line 349
    invoke-virtual {v2, v6}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onMembersCountChanged(I)V

    .line 350
    .line 351
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 352
    .line 353
    iget-object v5, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 354
    .line 355
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->val$user:Lcom/narvii/model/User;

    .line 356
    .line 357
    .line 358
    invoke-static {v5, v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->e(Lcom/narvii/livelayer/LiveLayerOnlineBar;Lcom/narvii/model/User;)Landroid/view/View;

    .line 359
    move-result-object v2

    .line 360
    .line 361
    iget-object v5, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 362
    .line 363
    iget-object v5, v5, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 364
    .line 365
    iget-object v6, v5, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 366
    .line 367
    iget v5, v5, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 368
    add-int/2addr v5, v8

    .line 369
    .line 370
    .line 371
    invoke-virtual {v6, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 372
    .line 373
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 374
    .line 375
    iget-object v5, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 376
    .line 377
    iget-object v6, v5, Lcom/narvii/livelayer/LiveLayerOnlineBar;->recentAvatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 378
    .line 379
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->val$user:Lcom/narvii/model/User;

    .line 380
    .line 381
    .line 382
    invoke-static {v5, v6, v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->i(Lcom/narvii/livelayer/LiveLayerOnlineBar;Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V

    .line 383
    .line 384
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 385
    .line 386
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 387
    .line 388
    iget v5, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 389
    add-int/2addr v5, v8

    .line 390
    .line 391
    iput v5, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 392
    .line 393
    iget v5, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    .line 394
    int-to-float v5, v5

    .line 395
    .line 396
    iget v6, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->overlapRatio:F

    .line 397
    sub-float/2addr v3, v6

    .line 398
    mul-float/2addr v5, v3

    .line 399
    float-to-int v3, v5

    .line 400
    .line 401
    .line 402
    invoke-static {v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->a(Lcom/narvii/livelayer/LiveLayerOnlineBar;)Landroid/animation/ValueAnimator;

    .line 403
    move-result-object v2

    .line 404
    .line 405
    if-eqz v2, :cond_6

    .line 406
    .line 407
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 408
    .line 409
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 410
    .line 411
    .line 412
    invoke-static {v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->a(Lcom/narvii/livelayer/LiveLayerOnlineBar;)Landroid/animation/ValueAnimator;

    .line 413
    move-result-object v2

    .line 414
    .line 415
    .line 416
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 417
    move-result v2

    .line 418
    .line 419
    if-eqz v2, :cond_6

    .line 420
    .line 421
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 422
    .line 423
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 424
    .line 425
    .line 426
    invoke-static {v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->a(Lcom/narvii/livelayer/LiveLayerOnlineBar;)Landroid/animation/ValueAnimator;

    .line 427
    move-result-object v2

    .line 428
    .line 429
    .line 430
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->end()V

    .line 431
    .line 432
    :cond_6
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 433
    .line 434
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 435
    .line 436
    iget-boolean v5, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    .line 437
    .line 438
    if-nez v5, :cond_7

    .line 439
    .line 440
    .line 441
    filled-new-array {v7, v3}, [I

    .line 442
    move-result-object v5

    .line 443
    .line 444
    .line 445
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 446
    move-result-object v5

    .line 447
    .line 448
    .line 449
    invoke-static {v2, v5}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->d(Lcom/narvii/livelayer/LiveLayerOnlineBar;Landroid/animation/ValueAnimator;)V

    .line 450
    .line 451
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 452
    .line 453
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 454
    .line 455
    .line 456
    invoke-static {v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->a(Lcom/narvii/livelayer/LiveLayerOnlineBar;)Landroid/animation/ValueAnimator;

    .line 457
    move-result-object v2

    .line 458
    .line 459
    const-wide/16 v5, 0xc8

    .line 460
    .line 461
    .line 462
    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 463
    .line 464
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 465
    .line 466
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 467
    .line 468
    .line 469
    invoke-static {v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->a(Lcom/narvii/livelayer/LiveLayerOnlineBar;)Landroid/animation/ValueAnimator;

    .line 470
    move-result-object v2

    .line 471
    .line 472
    new-instance v5, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$5;

    .line 473
    .line 474
    .line 475
    invoke-direct {v5, v0, v1, v3}, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$5;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;ZI)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 479
    .line 480
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 481
    .line 482
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 483
    .line 484
    .line 485
    invoke-static {v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->a(Lcom/narvii/livelayer/LiveLayerOnlineBar;)Landroid/animation/ValueAnimator;

    .line 486
    move-result-object v2

    .line 487
    .line 488
    new-instance v3, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$6;

    .line 489
    .line 490
    .line 491
    invoke-direct {v3, v0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$6;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;Z)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 495
    .line 496
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 497
    .line 498
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 499
    .line 500
    .line 501
    invoke-static {v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->a(Lcom/narvii/livelayer/LiveLayerOnlineBar;)Landroid/animation/ValueAnimator;

    .line 502
    move-result-object v1

    .line 503
    .line 504
    .line 505
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 506
    goto :goto_2

    .line 507
    .line 508
    .line 509
    :cond_7
    invoke-static {v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->h(Lcom/narvii/livelayer/LiveLayerOnlineBar;)V

    .line 510
    .line 511
    :goto_2
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 512
    .line 513
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 514
    .line 515
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 516
    .line 517
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 518
    .line 519
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerDataSource;->correctMembersCountRunnable:Ljava/lang/Runnable;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 523
    .line 524
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 525
    .line 526
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 527
    .line 528
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 529
    .line 530
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerDataSource;->correctMembersCountRunnable:Ljava/lang/Runnable;

    .line 531
    .line 532
    const-wide/16 v5, 0x7d0

    .line 533
    .line 534
    .line 535
    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 536
    .line 537
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 538
    .line 539
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 540
    .line 541
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->nextRunnable:Ljava/lang/Runnable;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 545
    .line 546
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 547
    .line 548
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 549
    .line 550
    iget-object v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->nextRunnable:Ljava/lang/Runnable;

    .line 551
    .line 552
    .line 553
    invoke-static {v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->f(Lcom/narvii/livelayer/LiveLayerOnlineBar;)I

    .line 554
    move-result v1

    .line 555
    int-to-long v5, v1

    .line 556
    .line 557
    .line 558
    invoke-static {v2, v5, v6}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 559
    .line 560
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 561
    .line 562
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 563
    .line 564
    iput-object v4, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animEndRunnable:Ljava/lang/Runnable;

    .line 565
    return-void
.end method
