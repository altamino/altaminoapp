.class Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedView:Landroid/view/View;

    .line 9
    .line 10
    .line 11
    const v2, 0x7f0a0f37

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v4, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    .line 22
    .line 23
    iget-object v4, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v5

    .line 28
    .line 29
    .line 30
    const v6, 0x7f010038

    .line 31
    .line 32
    .line 33
    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 34
    move-result-object v5

    .line 35
    .line 36
    iput-object v5, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->fadeoutAnim:Landroid/view/animation/Animation;

    .line 37
    .line 38
    iget-object v4, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    .line 39
    .line 40
    iget-object v4, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 41
    .line 42
    iget-object v4, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->fadeoutAnim:Landroid/view/animation/Animation;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 46
    .line 47
    iget-object v4, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    .line 48
    .line 49
    iget-object v4, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 50
    .line 51
    iget-object v4, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->fadeoutAnim:Landroid/view/animation/Animation;

    .line 52
    .line 53
    const-wide/16 v5, 0x96

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 57
    .line 58
    iget-object v4, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    .line 59
    .line 60
    iget-object v4, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 61
    .line 62
    iget-object v4, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->fadeoutAnim:Landroid/view/animation/Animation;

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v4, v2}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 66
    .line 67
    :cond_0
    iget-object v1, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    .line 68
    .line 69
    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 70
    .line 71
    .line 72
    const v4, 0x7f0a080d

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    const/high16 v4, 0x3f800000    # 1.0f

    .line 79
    const/4 v5, 0x0

    .line 80
    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    iget-object v6, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    .line 84
    .line 85
    iget-object v6, v6, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->val$user:Lcom/narvii/model/User;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    .line 89
    move-result v6

    .line 90
    .line 91
    if-eqz v6, :cond_1

    .line 92
    .line 93
    iget-object v6, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    .line 94
    .line 95
    iget-object v6, v6, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->val$communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    .line 99
    move-result v6

    .line 100
    .line 101
    if-eqz v6, :cond_1

    .line 102
    .line 103
    .line 104
    const v6, 0x7f0806e4

    .line 105
    goto :goto_0

    .line 106
    .line 107
    .line 108
    :cond_1
    const v6, 0x7f0806e3

    .line 109
    .line 110
    .line 111
    :goto_0
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 112
    .line 113
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    .line 114
    const/4 v7, 0x0

    .line 115
    .line 116
    .line 117
    invoke-direct {v6, v7, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 118
    .line 119
    new-instance v7, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$1;

    .line 120
    .line 121
    .line 122
    invoke-direct {v7, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$1;-><init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 126
    .line 127
    const-wide/16 v7, 0x7d0

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 131
    .line 132
    new-instance v15, Landroid/view/animation/ScaleAnimation;

    .line 133
    .line 134
    const/high16 v10, 0x3f800000    # 1.0f

    .line 135
    .line 136
    .line 137
    const v11, 0x3f9eb852    # 1.24f

    .line 138
    .line 139
    const/high16 v12, 0x3f800000    # 1.0f

    .line 140
    .line 141
    .line 142
    const v13, 0x3f9eb852    # 1.24f

    .line 143
    const/4 v14, 0x1

    .line 144
    .line 145
    const/high16 v16, 0x3f000000    # 0.5f

    .line 146
    .line 147
    const/16 v17, 0x1

    .line 148
    .line 149
    const/high16 v18, 0x3f000000    # 0.5f

    .line 150
    move-object v9, v15

    .line 151
    move-object v4, v15

    .line 152
    .line 153
    move/from16 v15, v16

    .line 154
    .line 155
    move/from16 v16, v17

    .line 156
    .line 157
    move/from16 v17, v18

    .line 158
    .line 159
    .line 160
    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 161
    .line 162
    new-instance v9, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$2;

    .line 163
    .line 164
    .line 165
    invoke-direct {v9, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$2;-><init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, v9}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 172
    .line 173
    new-instance v7, Landroid/view/animation/AnimationSet;

    .line 174
    .line 175
    .line 176
    invoke-direct {v7, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v7, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v7, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 183
    .line 184
    iget-object v4, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    .line 185
    .line 186
    iget-object v4, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 187
    .line 188
    iput-object v7, v4, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->holoAnimation:Landroid/view/animation/Animation;

    .line 189
    .line 190
    .line 191
    invoke-static {v1, v7, v2}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 192
    .line 193
    :cond_2
    iget-object v1, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    .line 194
    .line 195
    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 196
    .line 197
    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedView:Landroid/view/View;

    .line 198
    .line 199
    .line 200
    const v4, 0x7f0a0f36

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 204
    move-result-object v1

    .line 205
    .line 206
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    .line 207
    .line 208
    const/high16 v7, 0x3f800000    # 1.0f

    .line 209
    .line 210
    .line 211
    const v8, 0x3f99999a    # 1.2f

    .line 212
    .line 213
    const/high16 v9, 0x3f800000    # 1.0f

    .line 214
    .line 215
    .line 216
    const v10, 0x3f99999a    # 1.2f

    .line 217
    const/4 v11, 0x1

    .line 218
    .line 219
    const/high16 v12, 0x3f000000    # 0.5f

    .line 220
    const/4 v13, 0x1

    .line 221
    .line 222
    const/high16 v14, 0x3f000000    # 0.5f

    .line 223
    move-object v6, v4

    .line 224
    .line 225
    .line 226
    invoke-direct/range {v6 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 227
    .line 228
    new-instance v6, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$3;

    .line 229
    .line 230
    .line 231
    invoke-direct {v6, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$3;-><init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 235
    .line 236
    const-wide/16 v6, 0x190

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 240
    .line 241
    iget-object v6, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    .line 242
    .line 243
    iget-object v6, v6, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 244
    .line 245
    iput-object v4, v6, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->holoAnimation2:Landroid/view/animation/Animation;

    .line 246
    .line 247
    new-instance v6, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$4;

    .line 248
    .line 249
    .line 250
    invoke-direct {v6, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$4;-><init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;)V

    .line 251
    .line 252
    .line 253
    invoke-static {v1, v4, v6}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 254
    .line 255
    iget-object v1, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    .line 256
    .line 257
    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 258
    .line 259
    iget v4, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    .line 260
    .line 261
    iget v6, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->maxAvatarCount:I

    .line 262
    .line 263
    if-lt v4, v6, :cond_3

    .line 264
    move v4, v5

    .line 265
    goto :goto_1

    .line 266
    :cond_3
    move v4, v3

    .line 267
    .line 268
    .line 269
    :goto_1
    invoke-static {v1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->b(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)I

    .line 270
    move-result v6

    .line 271
    add-int/2addr v6, v3

    .line 272
    .line 273
    .line 274
    invoke-static {v1, v6}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->d(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;I)V

    .line 275
    .line 276
    iget-object v1, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    .line 277
    .line 278
    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 279
    .line 280
    .line 281
    invoke-static {v1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->b(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)I

    .line 282
    move-result v6

    .line 283
    sub-int/2addr v6, v3

    .line 284
    .line 285
    .line 286
    invoke-static {v1, v6}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->j(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;I)V

    .line 287
    .line 288
    iget-object v1, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    .line 289
    .line 290
    iget-object v6, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 291
    .line 292
    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->val$user:Lcom/narvii/model/User;

    .line 293
    .line 294
    .line 295
    invoke-static {v6, v1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->h(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;Lcom/narvii/model/User;)Landroid/view/View;

    .line 296
    move-result-object v1

    .line 297
    .line 298
    iget-object v6, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    .line 299
    .line 300
    iget-object v6, v6, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 301
    .line 302
    iget-object v7, v6, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 303
    .line 304
    iget v6, v6, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    .line 305
    add-int/2addr v6, v3

    .line 306
    .line 307
    .line 308
    invoke-virtual {v7, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 309
    .line 310
    iget-object v1, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    .line 311
    .line 312
    iget-object v6, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 313
    .line 314
    iget-object v7, v6, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->recentAvatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 315
    .line 316
    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->val$user:Lcom/narvii/model/User;

    .line 317
    .line 318
    .line 319
    invoke-static {v6, v7, v1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->l(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V

    .line 320
    .line 321
    iget-object v1, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    .line 322
    .line 323
    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 324
    .line 325
    iget v6, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    .line 326
    add-int/2addr v6, v3

    .line 327
    .line 328
    iput v6, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    .line 329
    .line 330
    iget v3, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    .line 331
    int-to-float v3, v3

    .line 332
    .line 333
    iget v6, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->overlapRatio:F

    .line 334
    .line 335
    const/high16 v7, 0x3f800000    # 1.0f

    .line 336
    .line 337
    sub-float v6, v7, v6

    .line 338
    mul-float/2addr v3, v6

    .line 339
    float-to-int v3, v3

    .line 340
    .line 341
    .line 342
    invoke-static {v1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->c(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)Landroid/animation/ValueAnimator;

    .line 343
    move-result-object v1

    .line 344
    .line 345
    if-eqz v1, :cond_4

    .line 346
    .line 347
    iget-object v1, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    .line 348
    .line 349
    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 350
    .line 351
    .line 352
    invoke-static {v1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->c(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)Landroid/animation/ValueAnimator;

    .line 353
    move-result-object v1

    .line 354
    .line 355
    .line 356
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 357
    move-result v1

    .line 358
    .line 359
    if-eqz v1, :cond_4

    .line 360
    .line 361
    iget-object v1, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    .line 362
    .line 363
    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 364
    .line 365
    .line 366
    invoke-static {v1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->c(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)Landroid/animation/ValueAnimator;

    .line 367
    move-result-object v1

    .line 368
    .line 369
    .line 370
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 371
    .line 372
    :cond_4
    iget-object v1, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    .line 373
    .line 374
    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 375
    .line 376
    .line 377
    filled-new-array {v5, v3}, [I

    .line 378
    move-result-object v5

    .line 379
    .line 380
    .line 381
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 382
    move-result-object v5

    .line 383
    .line 384
    .line 385
    invoke-static {v1, v5}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->e(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;Landroid/animation/ValueAnimator;)V

    .line 386
    .line 387
    iget-object v1, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    .line 388
    .line 389
    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 390
    .line 391
    .line 392
    invoke-static {v1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->c(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)Landroid/animation/ValueAnimator;

    .line 393
    move-result-object v1

    .line 394
    .line 395
    const-wide/16 v5, 0xc8

    .line 396
    .line 397
    .line 398
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 399
    .line 400
    iget-object v1, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    .line 401
    .line 402
    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 403
    .line 404
    .line 405
    invoke-static {v1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->c(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)Landroid/animation/ValueAnimator;

    .line 406
    move-result-object v1

    .line 407
    .line 408
    new-instance v5, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$5;

    .line 409
    .line 410
    .line 411
    invoke-direct {v5, v0, v4, v3}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$5;-><init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;ZI)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 415
    .line 416
    iget-object v1, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    .line 417
    .line 418
    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 419
    .line 420
    .line 421
    invoke-static {v1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->c(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)Landroid/animation/ValueAnimator;

    .line 422
    move-result-object v1

    .line 423
    .line 424
    new-instance v3, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$6;

    .line 425
    .line 426
    .line 427
    invoke-direct {v3, v0, v4}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$6;-><init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;Z)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 431
    .line 432
    iget-object v1, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    .line 433
    .line 434
    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 435
    .line 436
    .line 437
    invoke-static {v1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->c(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)Landroid/animation/ValueAnimator;

    .line 438
    move-result-object v1

    .line 439
    .line 440
    .line 441
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 442
    .line 443
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 444
    .line 445
    iget-object v3, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    .line 446
    .line 447
    iget-object v3, v3, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 448
    .line 449
    iget-object v3, v3, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->nextRunnable:Ljava/lang/Runnable;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 453
    .line 454
    iget-object v1, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    .line 455
    .line 456
    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 457
    .line 458
    iget-object v3, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->nextRunnable:Ljava/lang/Runnable;

    .line 459
    .line 460
    .line 461
    invoke-static {v1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->i(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)I

    .line 462
    move-result v1

    .line 463
    int-to-long v4, v1

    .line 464
    .line 465
    .line 466
    invoke-static {v3, v4, v5}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 467
    .line 468
    iget-object v1, v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->this$1:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    .line 469
    .line 470
    iget-object v1, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;->this$0:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;

    .line 471
    .line 472
    iput-object v2, v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animEndRunnable:Ljava/lang/Runnable;

    .line 473
    return-void
.end method
