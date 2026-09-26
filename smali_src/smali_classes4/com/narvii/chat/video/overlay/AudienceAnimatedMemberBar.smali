.class public Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$OnAvatarShownChangeListener;,
        Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$OnMemberCountChangedListener;
    }
.end annotation


# static fields
.field public static final PRESS_SCALE:F = 0.98f

.field static shadowColor:I = 0x60000000


# instance fields
.field public animEndRunnable:Ljava/lang/Runnable;

.field animateLayoutChanges:Z

.field animating:Z

.field animator:Landroid/animation/ValueAnimator;

.field autoFitAvatarCountMax:I

.field autoFitAvatarSize:Z

.field avatarCount:I

.field private avatarShadowSize:I

.field public avatarShown:Z

.field avatarSize:I

.field barColor:I

.field public checkRunnable:Ljava/lang/Runnable;

.field private currentMembersCount:I

.field private defaultAvatarSize:I

.field public dotFadeAnimation:Landroid/view/animation/Animation;

.field public dotFadeInAnimation:Landroid/view/animation/Animation;

.field fadeoutAnim:Landroid/view/animation/Animation;

.field public foldCountView:Landroid/widget/TextView;

.field public foldGreenOval:Landroid/view/View;

.field halo:Landroid/view/View;

.field public holoAnimation:Landroid/view/animation/Animation;

.field public holoAnimation2:Landroid/view/animation/Animation;

.field public joinAnimRunnable:Ljava/lang/Runnable;

.field private layoutAnimator:Landroid/animation/ValueAnimator;

.field public final mTouchSlop:I

.field mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

.field maxAvatarCount:I

.field private maxWidth:I

.field minAvatarCount:I

.field public nextRunnable:Ljava/lang/Runnable;

.field onAvatarShownChangeListener:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$OnAvatarShownChangeListener;

.field onMemberCountChangedListener:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$OnMemberCountChangedListener;

.field onlineText:I

.field onlineTextLayout:Landroid/view/View;

.field onlineTextOne:I

.field onlineTextView:Landroid/widget/TextView;

.field overlapRatio:F

.field random:Ljava/util/Random;

.field recentAvatar:Lcom/narvii/widget/UserAvatarLayout;

.field recentAvatarLayout:Landroid/view/View;

.field showFadeAnimation:Z

.field showMore:Z

.field showRightCorner:Z

.field showShadow:Z

.field textMarginEnd:I

.field userJoinedAnim:Landroid/view/animation/Animation;

.field userJoinedText:I

.field userJoinedView:Landroid/view/View;

.field userList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field userQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance v0, Ljava/util/LinkedList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userList:Ljava/util/LinkedList;

    .line 11
    .line 12
    new-instance v0, Ljava/util/LinkedList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userQueue:Ljava/util/LinkedList;

    .line 18
    const/4 v0, 0x4

    .line 19
    .line 20
    iput v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->maxAvatarCount:I

    .line 21
    const/4 v1, -0x1

    .line 22
    .line 23
    iput v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->autoFitAvatarCountMax:I

    .line 24
    const/4 v2, 0x1

    .line 25
    .line 26
    iput v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->minAvatarCount:I

    .line 27
    .line 28
    new-instance v3, Ljava/util/Random;

    .line 29
    .line 30
    .line 31
    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 32
    .line 33
    iput-object v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->random:Ljava/util/Random;

    .line 34
    .line 35
    new-instance v3, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$1;

    .line 36
    .line 37
    .line 38
    invoke-direct {v3, p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$1;-><init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)V

    .line 39
    .line 40
    iput-object v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->nextRunnable:Ljava/lang/Runnable;

    .line 41
    .line 42
    new-instance v3, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$2;

    .line 43
    .line 44
    .line 45
    invoke-direct {v3, p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$2;-><init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)V

    .line 46
    .line 47
    iput-object v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->checkRunnable:Ljava/lang/Runnable;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    .line 54
    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 55
    move-result-object v3

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 59
    move-result v3

    .line 60
    const/4 v4, 0x2

    .line 61
    div-int/2addr v3, v4

    .line 62
    .line 63
    iput v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mTouchSlop:I

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    .line 70
    const v5, 0x7f0d050d

    .line 71
    .line 72
    .line 73
    invoke-static {v3, v5, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 74
    .line 75
    sget-object v3, Lcom/narvii/amino/R$styleable;->LiveLayerOnlineBar:[I

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 83
    move-result-object p2

    .line 84
    .line 85
    .line 86
    const v3, 0x7f070242

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 90
    move-result p2

    .line 91
    const/4 v3, 0x3

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 95
    move-result p2

    .line 96
    .line 97
    iput p2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->defaultAvatarSize:I

    .line 98
    const/4 p2, 0x7

    .line 99
    .line 100
    .line 101
    const v3, 0x7f120e18

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 105
    move-result p2

    .line 106
    .line 107
    iput p2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineText:I

    .line 108
    .line 109
    const/16 p2, 0x10

    .line 110
    const/4 v3, 0x0

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 114
    move-result p2

    .line 115
    .line 116
    iput p2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedText:I

    .line 117
    .line 118
    const/16 p2, 0x8

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 122
    move-result p2

    .line 123
    .line 124
    iput p2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextOne:I

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 128
    move-result p2

    .line 129
    .line 130
    iput-boolean p2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->autoFitAvatarSize:Z

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 134
    move-result p2

    .line 135
    .line 136
    iput p2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->autoFitAvatarCountMax:I

    .line 137
    const/4 p2, 0x6

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 141
    move-result v1

    .line 142
    .line 143
    iput v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->minAvatarCount:I

    .line 144
    .line 145
    const/16 v1, 0xb

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 149
    move-result v1

    .line 150
    .line 151
    iput-boolean v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->showMore:Z

    .line 152
    .line 153
    const/16 v1, 0xd

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 157
    move-result v1

    .line 158
    .line 159
    iput-boolean v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->showShadow:Z

    .line 160
    .line 161
    const/high16 v1, 0x3e800000    # 0.25f

    .line 162
    .line 163
    const/16 v5, 0x9

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 167
    move-result v1

    .line 168
    .line 169
    iput v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->overlapRatio:F

    .line 170
    .line 171
    const/16 v1, 0xc

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 175
    move-result v1

    .line 176
    .line 177
    iput-boolean v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->showRightCorner:Z

    .line 178
    .line 179
    const/high16 v1, -0x34000000    # -3.3554432E7f

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 183
    move-result v0

    .line 184
    .line 185
    iput v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->barColor:I

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 189
    move-result v0

    .line 190
    .line 191
    iput-boolean v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animateLayoutChanges:Z

    .line 192
    .line 193
    const/16 v0, 0xa

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 197
    move-result v0

    .line 198
    .line 199
    iput-boolean v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->showFadeAnimation:Z

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 203
    move-result-object v0

    .line 204
    .line 205
    .line 206
    const v1, 0x7f070246

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 210
    move-result v0

    .line 211
    .line 212
    const/16 v1, 0xf

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 216
    move-result v0

    .line 217
    .line 218
    iput v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->textMarginEnd:I

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 225
    move-result-object p1

    .line 226
    .line 227
    const/high16 v0, 0x40400000    # 3.0f

    .line 228
    .line 229
    .line 230
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 231
    move-result p1

    .line 232
    .line 233
    iput p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarShadowSize:I

    .line 234
    .line 235
    iget p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->defaultAvatarSize:I

    .line 236
    .line 237
    iput p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    .line 238
    .line 239
    .line 240
    const p1, 0x7f0a083f

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 244
    move-result-object p1

    .line 245
    .line 246
    check-cast p1, Lcom/narvii/livelayer/ws/ClipLayout;

    .line 247
    .line 248
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 249
    .line 250
    .line 251
    const p1, 0x7f0a0630

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 255
    move-result-object p1

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 259
    move-result-object p1

    .line 260
    .line 261
    iget v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    .line 262
    div-int/2addr v0, v4

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 266
    move-result-object v1

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 270
    move-result-object v1

    .line 271
    .line 272
    .line 273
    const v2, 0x7f070240

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 277
    move-result v1

    .line 278
    add-int/2addr v0, v1

    .line 279
    .line 280
    .line 281
    invoke-static {p1, v0}, Lcom/narvii/util/ViewUtils;->setMarginStart(Landroid/view/ViewGroup$LayoutParams;I)V

    .line 282
    .line 283
    .line 284
    const p1, 0x7f0a0be5

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 288
    move-result-object p1

    .line 289
    .line 290
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->recentAvatarLayout:Landroid/view/View;

    .line 291
    .line 292
    .line 293
    const v0, 0x7f0a0f36

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 297
    move-result-object p1

    .line 298
    .line 299
    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    .line 300
    .line 301
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->recentAvatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 302
    .line 303
    iget-boolean v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->showShadow:Z

    .line 304
    .line 305
    if-eqz v0, :cond_0

    .line 306
    .line 307
    iget v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarShadowSize:I

    .line 308
    goto :goto_0

    .line 309
    :cond_0
    move v0, v3

    .line 310
    .line 311
    :goto_0
    sget v1, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->shadowColor:I

    .line 312
    .line 313
    .line 314
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarShadow(II)V

    .line 315
    .line 316
    .line 317
    const p1, 0x7f0a01b4

    .line 318
    .line 319
    .line 320
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 321
    move-result-object p1

    .line 322
    .line 323
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 324
    .line 325
    iget-boolean v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->showRightCorner:Z

    .line 326
    .line 327
    if-nez v0, :cond_2

    .line 328
    .line 329
    .line 330
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 331
    move-result v0

    .line 332
    .line 333
    if-eqz v0, :cond_1

    .line 334
    move p2, v5

    .line 335
    .line 336
    .line 337
    :cond_1
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setCornerMask(I)V

    .line 338
    .line 339
    :cond_2
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .line 340
    .line 341
    iget v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->barColor:I

    .line 342
    .line 343
    .line 344
    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 354
    .line 355
    .line 356
    const p1, 0x7f0a0a60

    .line 357
    .line 358
    .line 359
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 360
    move-result-object p1

    .line 361
    .line 362
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextLayout:Landroid/view/View;

    .line 363
    .line 364
    .line 365
    const p1, 0x7f0a0a61

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 369
    move-result-object p1

    .line 370
    .line 371
    check-cast p1, Landroid/widget/TextView;

    .line 372
    .line 373
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextView:Landroid/widget/TextView;

    .line 374
    .line 375
    .line 376
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 377
    move-result-object p1

    .line 378
    .line 379
    iget p2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->textMarginEnd:I

    .line 380
    .line 381
    .line 382
    invoke-static {p1, p2}, Lcom/narvii/util/ViewUtils;->setMarginEnd(Landroid/view/ViewGroup$LayoutParams;I)V

    .line 383
    .line 384
    .line 385
    const p1, 0x7f0a080d

    .line 386
    .line 387
    .line 388
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 389
    move-result-object p1

    .line 390
    .line 391
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->halo:Landroid/view/View;

    .line 392
    .line 393
    .line 394
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onAvatarSizeChanged()V

    .line 395
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarShadowSize:I

    return p0
.end method

.method private addUserIntoList(Lcom/narvii/model/User;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userList:Ljava/util/LinkedList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method private addUsersIntoQueue(Lcom/narvii/model/User;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userQueue:Ljava/util/LinkedList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->currentMembersCount:I

    return p0
.end method

.method static bridge synthetic c(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->layoutAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private cancelAnimation(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animating:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedAnim:Landroid/view/animation/Animation;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedAnim:Landroid/view/animation/Animation;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->dotFadeAnimation:Landroid/view/animation/Animation;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedView:Landroid/view/View;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedView:Landroid/view/View;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animator:Landroid/animation/ValueAnimator;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animator:Landroid/animation/ValueAnimator;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 51
    .line 52
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->layoutAnimator:Landroid/animation/ValueAnimator;

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 58
    move-result v0

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->layoutAnimator:Landroid/animation/ValueAnimator;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 66
    .line 67
    :cond_4
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->joinAnimRunnable:Ljava/lang/Runnable;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 73
    .line 74
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->checkRunnable:Ljava/lang/Runnable;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    .line 79
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->nextRunnable:Ljava/lang/Runnable;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    .line 84
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animEndRunnable:Ljava/lang/Runnable;

    .line 85
    .line 86
    if-eqz v2, :cond_6

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 90
    .line 91
    if-eqz p1, :cond_5

    .line 92
    .line 93
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animEndRunnable:Ljava/lang/Runnable;

    .line 94
    .line 95
    .line 96
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 97
    .line 98
    :cond_5
    iput-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animEndRunnable:Ljava/lang/Runnable;

    .line 99
    .line 100
    :cond_6
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->nextRunnable:Ljava/lang/Runnable;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 104
    .line 105
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->layoutAnimator:Landroid/animation/ValueAnimator;

    .line 106
    .line 107
    if-eqz p1, :cond_7

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 111
    move-result p1

    .line 112
    .line 113
    if-eqz p1, :cond_7

    .line 114
    .line 115
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->layoutAnimator:Landroid/animation/ValueAnimator;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 119
    .line 120
    :cond_7
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->holoAnimation:Landroid/view/animation/Animation;

    .line 121
    .line 122
    if-eqz p1, :cond_8

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 126
    .line 127
    :cond_8
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->holoAnimation2:Landroid/view/animation/Animation;

    .line 128
    .line 129
    if-eqz p1, :cond_9

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 133
    .line 134
    .line 135
    :cond_9
    const p1, 0x7f0a080d

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    move-result-object p1

    .line 140
    .line 141
    if-eqz p1, :cond_a

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 145
    .line 146
    :cond_a
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->dotFadeInAnimation:Landroid/view/animation/Animation;

    .line 147
    .line 148
    if-eqz p1, :cond_b

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 152
    .line 153
    :cond_b
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->foldGreenOval:Landroid/view/View;

    .line 154
    .line 155
    if-eqz p1, :cond_c

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 159
    .line 160
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->foldGreenOval:Landroid/view/View;

    .line 161
    .line 162
    const/high16 v0, 0x3f800000    # 1.0f

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 166
    :cond_c
    return-void
.end method

.method private checkUserJoined()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userQueue:Ljava/util/LinkedList;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animating:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    return-void

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userQueue:Ljava/util/LinkedList;

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/model/User;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onUserJoined(Lcom/narvii/model/User;)V

    .line 27
    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->currentMembersCount:I

    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->layoutAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->addUserIntoList(Lcom/narvii/model/User;)V

    return-void
.end method

.method static bridge synthetic g(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->checkUserJoined()V

    return-void
.end method

.method private getAvatarView()Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d050c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0f36

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    .line 4
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->showShadow:Z

    if-nez v3, :cond_0

    sget v3, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->shadowColor:I

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarShadow(II)V

    :cond_0
    return-object v0
.end method

.method private getAvatarView(Lcom/narvii/model/User;)Landroid/view/View;
    .locals 2

    .line 8
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->getAvatarView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0f36

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    .line 10
    invoke-direct {p0, v1, p1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->setUserAvatarView(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V

    return-object v0
.end method

.method private getRandomDelayTime()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->random:Ljava/util/Random;

    .line 3
    .line 4
    const/16 v1, 0x3e8

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 8
    move-result v0

    .line 9
    .line 10
    add-int/lit16 v0, v0, 0x7d0

    .line 11
    return v0
.end method

.method static bridge synthetic h(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;Lcom/narvii/model/User;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->getAvatarView(Lcom/narvii/model/User;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic i(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->getRandomDelayTime()I

    move-result p0

    return p0
.end method

.method static bridge synthetic j(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onMembersCountChanged(I)V

    return-void
.end method

.method static bridge synthetic k(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->relayout()V

    return-void
.end method

.method static bridge synthetic l(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->setUserAvatarView(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V

    return-void
.end method

.method static bridge synthetic m(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->updateMemberCount(I)V

    return-void
.end method

.method private onAvatarSizeChanged()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/ws/ClipLayout;->setAvatarSize(I)V

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->recentAvatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->setAvatarSize(Landroid/view/View;)V

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextLayout:Landroid/view/View;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 27
    .line 28
    iget v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    .line 29
    .line 30
    mul-int/lit8 v2, v2, 0x5

    .line 31
    .line 32
    div-int/lit8 v2, v2, 0x6

    .line 33
    .line 34
    if-eq v1, v2, :cond_2

    .line 35
    .line 36
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextLayout:Landroid/view/View;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->halo:Landroid/view/View;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    const/high16 v2, 0x40c00000    # 6.0f

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 59
    move-result v1

    .line 60
    float-to-int v1, v1

    .line 61
    .line 62
    iget v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    .line 63
    .line 64
    add-int v3, v2, v1

    .line 65
    .line 66
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 67
    add-int/2addr v2, v1

    .line 68
    .line 69
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 70
    .line 71
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->halo:Landroid/view/View;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    :cond_3
    return-void
.end method

.method private onMembersCountChanged(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animator:Landroid/animation/ValueAnimator;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->currentMembersCount:I

    .line 10
    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    .line 14
    filled-new-array {p1, v0}, [I

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animator:Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->currentMembersCount:I

    .line 24
    sub-int/2addr v1, p1

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 28
    move-result p1

    .line 29
    .line 30
    mul-int/lit8 p1, p1, 0x64

    .line 31
    .line 32
    const/16 v1, 0x320

    .line 33
    .line 34
    .line 35
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 36
    move-result p1

    .line 37
    int-to-long v1, p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animator:Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    new-instance v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$3;

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$3;-><init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animator:Landroid/animation/ValueAnimator;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->updateMemberCount(I)V

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->resetMoreLayer()V

    .line 63
    return-void
.end method

.method private relayout()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->setUpAvatarLayout()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->setUpTextLayout()V

    .line 7
    .line 8
    sget v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->shadowColor:I

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->resetShadowColor(I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->resetMoreLayer()V

    .line 15
    .line 16
    iget v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    .line 17
    .line 18
    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->minAvatarCount:I

    .line 19
    .line 20
    if-lt v0, v1, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    .line 25
    :goto_0
    iget-boolean v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarShown:Z

    .line 26
    .line 27
    if-eq v1, v0, :cond_3

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarShown:Z

    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->showFadeAnimation:Z

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    .line 42
    const v2, 0x7f010037

    .line 43
    goto :goto_1

    .line 44
    .line 45
    .line 46
    :cond_1
    const v2, 0x7f010038

    .line 47
    .line 48
    .line 49
    :goto_1
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    const-wide/16 v2, 0x190

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 56
    const/4 v2, 0x0

    .line 57
    .line 58
    .line 59
    invoke-static {p0, v1, v2}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 60
    .line 61
    :cond_2
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onAvatarShownChangeListener:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$OnAvatarShownChangeListener;

    .line 62
    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    .line 66
    invoke-interface {v1, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$OnAvatarShownChangeListener;->onAvatarShownChanged(Z)V

    .line 67
    :cond_3
    return-void
.end method

.method private resetMoreLayer()V
    .locals 6

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->showMore:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    .line 16
    const v1, 0x7f0a098d

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    const v2, 0x7f0a0ab1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    iget v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    .line 34
    .line 35
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 36
    .line 37
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    .line 42
    iget v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    .line 43
    .line 44
    mul-int/lit8 v2, v2, 0x2

    .line 45
    .line 46
    div-int/lit8 v2, v2, 0x3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 56
    move-result-object v3

    .line 57
    .line 58
    mul-int/lit8 v2, v2, 0x6

    .line 59
    .line 60
    div-int/lit8 v2, v2, 0x14

    .line 61
    .line 62
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 69
    move-result v2

    .line 70
    .line 71
    iget v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->currentMembersCount:I

    .line 72
    .line 73
    iget v4, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    .line 74
    .line 75
    const/16 v5, 0x8

    .line 76
    .line 77
    if-le v3, v4, :cond_0

    .line 78
    const/4 v3, 0x0

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    move v3, v5

    .line 81
    .line 82
    .line 83
    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    if-ne v2, v5, :cond_1

    .line 89
    .line 90
    if-nez v3, :cond_1

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    .line 97
    const v3, 0x7f010037

    .line 98
    .line 99
    .line 100
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 101
    move-result-object v2

    .line 102
    const/4 v4, 0x0

    .line 103
    .line 104
    .line 105
    invoke-static {v1, v2, v4}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 109
    move-result-object v1

    .line 110
    .line 111
    .line 112
    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 113
    move-result-object v1

    .line 114
    .line 115
    .line 116
    invoke-static {v0, v1, v4}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 117
    :cond_1
    return-void
.end method

.method private resetShadowColor(I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    :goto_0
    iget v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    .line 5
    .line 6
    add-int/lit8 v3, v2, -0x1

    .line 7
    .line 8
    .line 9
    const v4, 0x7f0a0f36

    .line 10
    .line 11
    if-ge v1, v3, :cond_1

    .line 12
    .line 13
    iget-object v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 14
    .line 15
    add-int/lit8 v2, v2, -0x1

    .line 16
    sub-int/2addr v2, v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    check-cast v2, Lcom/narvii/widget/UserAvatarLayout;

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iget v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarShadowSize:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3, p1}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarShadow(II)V

    .line 34
    .line 35
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_1
    if-lez v2, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarShadowSize:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1, v0}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarShadow(II)V

    .line 58
    :cond_2
    return-void
.end method

.method private setAvatarSize(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    .line 10
    .line 11
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 12
    .line 13
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    return-void
.end method

.method private setUpAvatarLayout()V
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->maxAvatarCount:I

    .line 5
    .line 6
    if-le v0, v1, :cond_0

    .line 7
    .line 8
    const-string v0, "avatar count is beyond max"

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    move v1, v0

    .line 14
    .line 15
    :goto_0
    iget v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    .line 16
    .line 17
    if-ge v1, v2, :cond_2

    .line 18
    .line 19
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 20
    .line 21
    add-int/lit8 v3, v1, 0x1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    iget v4, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    .line 31
    .line 32
    add-int/lit8 v5, v4, -0x1

    .line 33
    sub-int/2addr v5, v1

    .line 34
    .line 35
    if-nez v5, :cond_1

    .line 36
    move v1, v0

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 40
    sub-int/2addr v4, v1

    .line 41
    int-to-float v1, v4

    .line 42
    .line 43
    iget v4, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    .line 44
    int-to-float v4, v4

    .line 45
    .line 46
    const/high16 v5, 0x3f800000    # 1.0f

    .line 47
    .line 48
    iget v6, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->overlapRatio:F

    .line 49
    sub-float/2addr v5, v6

    .line 50
    mul-float/2addr v4, v5

    .line 51
    mul-float/2addr v1, v4

    .line 52
    float-to-int v1, v1

    .line 53
    .line 54
    .line 55
    :goto_1
    invoke-static {v2, v1}, Lcom/narvii/util/ViewUtils;->setMarginStart(Landroid/view/View;I)V

    .line 56
    move v1, v3

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    return-void
.end method

.method private setUpTextLayout()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextLayout:Landroid/view/View;

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->autoFitAvatarSize:Z

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    .line 9
    .line 10
    iget v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->minAvatarCount:I

    .line 11
    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    goto :goto_1

    .line 16
    .line 17
    :cond_1
    :goto_0
    const/16 v1, 0x8

    .line 18
    .line 19
    .line 20
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    iget v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    .line 23
    int-to-float v1, v0

    .line 24
    .line 25
    const/high16 v2, 0x3f800000    # 1.0f

    .line 26
    .line 27
    iget v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->overlapRatio:F

    .line 28
    sub-float/2addr v2, v3

    .line 29
    mul-float/2addr v1, v2

    .line 30
    .line 31
    iget v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    .line 32
    .line 33
    add-int/lit8 v2, v2, -0x1

    .line 34
    int-to-float v2, v2

    .line 35
    mul-float/2addr v1, v2

    .line 36
    int-to-float v2, v0

    .line 37
    add-float/2addr v1, v2

    .line 38
    float-to-int v1, v1

    .line 39
    .line 40
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextLayout:Landroid/view/View;

    .line 41
    .line 42
    div-int/lit8 v0, v0, 0x2

    .line 43
    sub-int/2addr v1, v0

    .line 44
    .line 45
    .line 46
    invoke-static {v2, v1}, Lcom/narvii/util/ViewUtils;->setMarginStart(Landroid/view/View;I)V

    .line 47
    return-void
.end method

.method private setUserAvatarView(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 4
    return-void
.end method

.method private setUserList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->currentMembersCount:I

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->setUserList(Ljava/util/List;I)V

    return-void
.end method

.method static startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 9
    return-void
.end method

.method private updateMemberCount(I)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextView:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    iget v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextOne:I

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    iget v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineText:I

    .line 22
    .line 23
    new-array v1, v1, [Ljava/lang/Object;

    .line 24
    const/4 v4, 0x0

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 28
    move-result-object v5

    .line 29
    .line 30
    aput-object v5, v1, v4

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->foldCountView:Landroid/widget/TextView;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :cond_2
    return-void
.end method


# virtual methods
.method public isAvatarShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarShown:Z

    return v0
.end method

.method public notifyUserChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v1, v1, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userQueue:Ljava/util/LinkedList;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v1

    .line 43
    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    check-cast v1, Lcom/narvii/model/User;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 58
    move-result v1

    .line 59
    .line 60
    if-nez v1, :cond_3

    .line 61
    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 64
    goto :goto_1

    .line 65
    .line 66
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userList:Ljava/util/LinkedList;

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    move-result-object v1

    .line 76
    const/4 v2, 0x0

    .line 77
    .line 78
    .line 79
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    move-result v3

    .line 81
    .line 82
    if-eqz v3, :cond_6

    .line 83
    .line 84
    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    move-result-object v3

    .line 87
    .line 88
    check-cast v3, Lcom/narvii/model/User;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 92
    move-result-object v3

    .line 93
    .line 94
    .line 95
    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 96
    move-result v3

    .line 97
    .line 98
    if-nez v3, :cond_5

    .line 99
    .line 100
    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 102
    const/4 v2, 0x1

    .line 103
    goto :goto_2

    .line 104
    .line 105
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    .line 106
    .line 107
    .line 108
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    if-eqz v2, :cond_7

    .line 111
    .line 112
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userQueue:Ljava/util/LinkedList;

    .line 113
    .line 114
    .line 115
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    .line 117
    .line 118
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 119
    move-result v2

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p1, v2}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->setUserList(Ljava/util/List;I)V

    .line 123
    .line 124
    .line 125
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 126
    move-result-object p1

    .line 127
    .line 128
    .line 129
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    move-result v0

    .line 131
    .line 132
    if-eqz v0, :cond_a

    .line 133
    .line 134
    .line 135
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    move-result-object v0

    .line 137
    .line 138
    check-cast v0, Lcom/narvii/model/User;

    .line 139
    .line 140
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userList:Ljava/util/LinkedList;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 144
    move-result-object v3

    .line 145
    .line 146
    .line 147
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 148
    move-result v2

    .line 149
    .line 150
    if-nez v2, :cond_8

    .line 151
    .line 152
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userQueue:Ljava/util/LinkedList;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 156
    move-result-object v3

    .line 157
    .line 158
    .line 159
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 160
    move-result v2

    .line 161
    .line 162
    :cond_8
    if-eqz v2, :cond_9

    .line 163
    goto :goto_3

    .line 164
    .line 165
    .line 166
    :cond_9
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    goto :goto_3

    .line 168
    .line 169
    .line 170
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 171
    move-result p1

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v1, p1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onUserJoined(Ljava/util/List;I)V

    .line 175
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Landroid/view/ViewGroup;

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Landroid/view/ViewGroup;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 31
    .line 32
    :cond_0
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->checkRunnable:Ljava/lang/Runnable;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->checkRunnable:Ljava/lang/Runnable;

    .line 40
    .line 41
    const-wide/16 v2, 0x7d0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->cancelAnimation(Z)V

    .line 8
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-boolean p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarShown:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 11
    move-result v1

    .line 12
    sub-int/2addr v0, v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 16
    move-result v1

    .line 17
    sub-int/2addr v0, v1

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 21
    move-result v1

    .line 22
    .line 23
    iget v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->autoFitAvatarCountMax:I

    .line 24
    const/4 v3, -0x1

    .line 25
    .line 26
    if-eq v2, v3, :cond_0

    .line 27
    .line 28
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextLayout:Landroid/view/View;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object v4, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextLayout:Landroid/view/View;

    .line 37
    .line 38
    const/high16 v5, -0x80000000

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 42
    move-result v5

    .line 43
    .line 44
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    .line 46
    const/high16 v6, 0x40000000    # 2.0f

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 50
    move-result v2

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v5, v2}, Landroid/view/View;->measure(II)V

    .line 54
    .line 55
    :cond_0
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextLayout:Landroid/view/View;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 59
    move-result v2

    .line 60
    .line 61
    const/16 v4, 0x8

    .line 62
    .line 63
    if-ne v2, v4, :cond_1

    .line 64
    const/4 v2, 0x0

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_1
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextLayout:Landroid/view/View;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 71
    move-result v2

    .line 72
    .line 73
    iget v4, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    .line 74
    .line 75
    div-int/lit8 v4, v4, 0x2

    .line 76
    sub-int/2addr v2, v4

    .line 77
    :goto_0
    sub-int/2addr v0, v2

    .line 78
    .line 79
    iget v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->autoFitAvatarCountMax:I

    .line 80
    .line 81
    if-ne v2, v3, :cond_2

    .line 82
    .line 83
    iget-boolean v4, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->autoFitAvatarSize:Z

    .line 84
    .line 85
    if-eqz v4, :cond_5

    .line 86
    .line 87
    :cond_2
    if-eqz v1, :cond_5

    .line 88
    .line 89
    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->maxWidth:I

    .line 90
    .line 91
    if-eq v0, v1, :cond_5

    .line 92
    .line 93
    iput v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->maxWidth:I

    .line 94
    .line 95
    const/high16 v1, 0x3f800000    # 1.0f

    .line 96
    .line 97
    if-eq v2, v3, :cond_4

    .line 98
    .line 99
    iget v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->defaultAvatarSize:I

    .line 100
    sub-int/2addr v0, v3

    .line 101
    int-to-float v0, v0

    .line 102
    .line 103
    iget v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    .line 104
    int-to-float v3, v3

    .line 105
    .line 106
    iget v4, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->overlapRatio:F

    .line 107
    .line 108
    sub-float v4, v1, v4

    .line 109
    mul-float/2addr v3, v4

    .line 110
    div-float/2addr v0, v3

    .line 111
    add-float/2addr v0, v1

    .line 112
    float-to-int v0, v0

    .line 113
    .line 114
    .line 115
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 116
    move-result v0

    .line 117
    .line 118
    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->minAvatarCount:I

    .line 119
    .line 120
    if-ge v0, v1, :cond_3

    .line 121
    move v0, v1

    .line 122
    .line 123
    :cond_3
    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->maxAvatarCount:I

    .line 124
    .line 125
    if-eq v0, v1, :cond_5

    .line 126
    .line 127
    iput v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->maxAvatarCount:I

    .line 128
    .line 129
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userList:Ljava/util/LinkedList;

    .line 130
    .line 131
    .line 132
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->setUserList(Ljava/util/List;)V

    .line 133
    .line 134
    .line 135
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 136
    goto :goto_1

    .line 137
    .line 138
    :cond_4
    iget-boolean v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->autoFitAvatarSize:Z

    .line 139
    .line 140
    if-eqz v2, :cond_5

    .line 141
    .line 142
    iget v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->defaultAvatarSize:I

    .line 143
    .line 144
    sub-int v2, v0, v2

    .line 145
    int-to-float v2, v2

    .line 146
    .line 147
    iget v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    .line 148
    int-to-float v3, v3

    .line 149
    .line 150
    iget v4, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->overlapRatio:F

    .line 151
    .line 152
    sub-float v5, v1, v4

    .line 153
    mul-float/2addr v3, v5

    .line 154
    div-float/2addr v2, v3

    .line 155
    add-float/2addr v2, v1

    .line 156
    float-to-int v2, v2

    .line 157
    .line 158
    iput v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->maxAvatarCount:I

    .line 159
    int-to-float v0, v0

    .line 160
    .line 161
    sub-float v3, v1, v4

    .line 162
    .line 163
    add-int/lit8 v2, v2, -0x1

    .line 164
    int-to-float v2, v2

    .line 165
    mul-float/2addr v3, v2

    .line 166
    add-float/2addr v3, v1

    .line 167
    div-float/2addr v0, v3

    .line 168
    float-to-int v0, v0

    .line 169
    .line 170
    iput v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    .line 171
    .line 172
    .line 173
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onAvatarSizeChanged()V

    .line 174
    .line 175
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userList:Ljava/util/LinkedList;

    .line 176
    .line 177
    .line 178
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->setUserList(Ljava/util/List;)V

    .line 179
    .line 180
    .line 181
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 182
    .line 183
    .line 184
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 185
    move-result p1

    .line 186
    .line 187
    iget p2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 191
    move-result v0

    .line 192
    add-int/2addr p2, v0

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 196
    move-result v0

    .line 197
    add-int/2addr p2, v0

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 201
    return-void
.end method

.method public onUserJoined(Lcom/narvii/model/User;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animating:Z

    .line 8
    new-instance v1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userList:Ljava/util/LinkedList;

    if-nez v2, :cond_1

    .line 9
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userList:Ljava/util/LinkedList;

    :cond_1
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 11
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d050e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedView:Landroid/view/View;

    const v3, 0x7f0a0f36

    .line 12
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/UserAvatarLayout;

    .line 13
    invoke-direct {p0, v2}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->setAvatarSize(Landroid/view/View;)V

    .line 14
    invoke-direct {p0, v2, p1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->setUserAvatarView(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V

    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedView:Landroid/view/View;

    const/16 v3, 0x8

    .line 15
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedView:Landroid/view/View;

    const v3, 0x7f0a0f37

    .line 16
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedText:I

    if-eqz v3, :cond_3

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedText:I

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v6, 0xc

    invoke-virtual {p1, v6}, Lcom/narvii/model/User;->ellipticalNickname(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    invoke-virtual {v3, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x1e

    .line 18
    invoke-virtual {p1, v0}, Lcom/narvii/model/User;->ellipticalNickname(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :goto_0
    invoke-virtual {p1}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f080839

    goto :goto_1

    :cond_4
    const v0, 0x7f080838

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedView:Landroid/view/View;

    const/4 v2, 0x3

    .line 20
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 21
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->joinAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    new-instance v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    invoke-direct {v0, p0, p1, v1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;-><init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;Lcom/narvii/model/User;Lcom/narvii/modulization/CommunityConfigHelper;)V

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->joinAnimRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    .line 23
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onUserJoined(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;I)V"
        }
    .end annotation

    iget v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->minAvatarCount:I

    if-lt v0, v1, :cond_2

    if-ge p2, v1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/User;

    .line 2
    invoke-direct {p0, p2}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->addUsersIntoQueue(Lcom/narvii/model/User;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->checkRunnable:Ljava/lang/Runnable;

    .line 3
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userQueue:Ljava/util/LinkedList;

    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    .line 6
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->addUserIntoList(Lcom/narvii/model/User;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userList:Ljava/util/LinkedList;

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->setUserList(Ljava/util/List;I)V

    return-void
.end method

.method public onUserLeft(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userList:Ljava/util/LinkedList;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v3

    .line 20
    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    if-ge v2, v1, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    check-cast v3, Lcom/narvii/model/User;

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v4

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v5

    .line 38
    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v5

    .line 44
    .line 45
    check-cast v5, Lcom/narvii/model/User;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 49
    move-result-object v5

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 53
    move-result-object v6

    .line 54
    .line 55
    .line 56
    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    move-result v5

    .line 58
    .line 59
    if-eqz v5, :cond_0

    .line 60
    .line 61
    :try_start_0
    iget-object v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 62
    .line 63
    iget v4, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    .line 64
    sub-int/2addr v4, v2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 68
    .line 69
    iget v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    .line 70
    .line 71
    add-int/lit8 v3, v3, -0x1

    .line 72
    .line 73
    iput v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->relayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_1

    .line 78
    :catch_0
    move-exception v3

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 82
    move-result-object v3

    .line 83
    .line 84
    .line 85
    invoke-static {v3}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 86
    .line 87
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    return-void
.end method

.method public setOnAvatarShownChangeListener(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$OnAvatarShownChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onAvatarShownChangeListener:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$OnAvatarShownChangeListener;

    return-void
.end method

.method public setOnMemberCountChangedListener(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$OnMemberCountChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onMemberCountChangedListener:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$OnMemberCountChangedListener;

    return-void
.end method

.method public setUserList(Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;I)V"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v0

    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->maxAvatarCount:I

    if-ge v0, v1, :cond_0

    .line 3
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userQueue:Ljava/util/LinkedList;

    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->cancelAnimation(Z)V

    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 6
    invoke-virtual {v1, v0}, Lcom/narvii/livelayer/ws/ClipLayout;->setShouldClip(Z)V

    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    if-nez p1, :cond_2

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :cond_2
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userList:Ljava/util/LinkedList;

    iput v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->recentAvatarLayout:Landroid/view/View;

    const/16 v2, 0x8

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 12
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move p2, v2

    :goto_0
    if-ge p2, p1, :cond_3

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 13
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 14
    :cond_3
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->relayout()V

    return-void

    .line 15
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->maxAvatarCount:I

    .line 16
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 17
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    iget v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    iget v4, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->minAvatarCount:I

    if-lt v3, v4, :cond_9

    sub-int/2addr v1, v3

    if-lez v1, :cond_5

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_6

    iget-object v4, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 18
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    if-gez v1, :cond_6

    move v3, v0

    :goto_2
    neg-int v4, v1

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 19
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->getAvatarView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    sub-int/2addr v1, v2

    move v3, v2

    :goto_3
    if-ltz v1, :cond_8

    .line 20
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/User;

    iget-object v5, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 21
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    add-int/2addr v3, v2

    if-eqz v5, :cond_7

    const v6, 0x7f0a0f36

    .line 22
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v5, :cond_7

    .line 23
    invoke-direct {p0, v5, v4}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->setUserAvatarView(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V

    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 24
    :cond_8
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->recentAvatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 25
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    invoke-direct {p0, v1, p1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->setUserAvatarView(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V

    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->recentAvatarLayout:Landroid/view/View;

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 27
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move v1, v2

    :goto_4
    if-ge v1, p1, :cond_a

    iget-object v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 28
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    iput v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    .line 29
    :cond_b
    :goto_5
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->relayout()V

    iput p2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->currentMembersCount:I

    iget p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    .line 30
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->currentMembersCount:I

    .line 31
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onMembersCountChanged(I)V

    return-void
.end method
