.class public Lcom/narvii/livelayer/LiveLayerOnlineBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/livelayer/ILiveLayerView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/livelayer/LiveLayerOnlineBar$OnAvatarShownChangeListener;,
        Lcom/narvii/livelayer/LiveLayerOnlineBar$OnMemberCountChangedListener;,
        Lcom/narvii/livelayer/LiveLayerOnlineBar$OnUpdateMemberCountListener;,
        Lcom/narvii/livelayer/LiveLayerOnlineBar$OnFoldChangedListener;
    }
.end annotation


# static fields
.field public static final PRESS_SCALE:F = 0.98f

.field static liveLayerBarStated:Z = false

.field static shadowColor:I = 0x30000000


# instance fields
.field public animEndRunnable:Ljava/lang/Runnable;

.field animateLayoutChanges:Z

.field animating:Z

.field animator:Landroid/animation/ValueAnimator;

.field autoFitAvatarCountMax:I

.field autoFitAvatarSize:Z

.field avatarCount:I

.field avatarShadowSize:I

.field public avatarShown:Z

.field avatarSize:I

.field avatarStrokeWidth:I

.field barColor:I

.field cid:I

.field currentTopic:Ljava/lang/String;

.field public dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

.field private defaultAvatarSize:I

.field public dotFadeAnimation:Landroid/view/animation/Animation;

.field public dotFadeInAnimation:Landroid/view/animation/Animation;

.field emptyImageListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

.field fadeoutAnim:Landroid/view/animation/Animation;

.field fold:Z

.field private foldAnimator:Landroid/animation/ValueAnimator;

.field public foldCountView:Landroid/widget/TextView;

.field public foldGreenOval:Landroid/view/View;

.field forceHideOnlineTextLayout:Z

.field fromCBB:Z

.field gestureDetector:Landroid/view/GestureDetector;

.field greenOval:Landroid/view/View;

.field halo:Landroid/view/View;

.field public holoAnimation:Landroid/view/animation/Animation;

.field public holoAnimation2:Landroid/view/animation/Animation;

.field initialMotionX:F

.field initialWidth:I

.field private isDragging:Z

.field public joinAnimRunnable:Ljava/lang/Runnable;

.field private layoutAnimator:Landroid/animation/ValueAnimator;

.field lift:I

.field liveLayerHelper:Lcom/narvii/livelayer/LiveLayerHelper;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field public final mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

.field maxAvatarCount:I

.field private maxWidth:I

.field minAvatarCount:I

.field public nextRunnable:Ljava/lang/Runnable;

.field onAvatarShownChangeListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnAvatarShownChangeListener;

.field onBarClickListener:Landroid/view/View$OnClickListener;

.field onFoldChangedListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnFoldChangedListener;

.field onMemberCountChangedListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnMemberCountChangedListener;

.field onUpdateMemberCountListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnUpdateMemberCountListener;

.field onlineText:I

.field onlineTextLayout:Landroid/view/View;

.field onlineTextOne:I

.field onlineTextView:Landroid/widget/TextView;

.field organizerInList:Z

.field overlapRatio:F

.field preloadHelper:Lcom/narvii/livelayer/LiveLayerPreloadHelper;

.field pressed:Z

.field random:Ljava/util/Random;

.field recentAvatar:Lcom/narvii/widget/UserAvatarLayout;

.field recentAvatarLayout:Landroid/view/View;

.field shouldFilterUserList:Z

.field showFadeAnimation:Z

.field showMore:Z

.field showRightCorner:Z

.field showShadow:Z

.field supportFold:Z

.field tapping:Z

.field textMarginEnd:I

.field userJoinedAnim:Landroid/view/animation/Animation;

.field userJoinedText:I

.field userJoinedView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarStrokeWidth:I

    .line 7
    const/4 v1, 0x4

    .line 8
    .line 9
    iput v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->maxAvatarCount:I

    .line 10
    .line 11
    iput v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->autoFitAvatarCountMax:I

    .line 12
    const/4 v2, 0x1

    .line 13
    .line 14
    iput v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->minAvatarCount:I

    .line 15
    .line 16
    new-instance v3, Ljava/util/Random;

    .line 17
    .line 18
    .line 19
    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 20
    .line 21
    iput-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->random:Ljava/util/Random;

    .line 22
    .line 23
    iput-boolean v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->shouldFilterUserList:Z

    .line 24
    .line 25
    iput-boolean v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->organizerInList:Z

    .line 26
    .line 27
    new-instance v3, Lcom/narvii/livelayer/LiveLayerOnlineBar$1;

    .line 28
    .line 29
    .line 30
    invoke-direct {v3, p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar$1;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar;)V

    .line 31
    .line 32
    iput-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->emptyImageListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    .line 33
    .line 34
    new-instance v3, Lcom/narvii/livelayer/LiveLayerOnlineBar$2;

    .line 35
    .line 36
    .line 37
    invoke-direct {v3, p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar$2;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar;)V

    .line 38
    .line 39
    iput-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->nextRunnable:Ljava/lang/Runnable;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    .line 46
    invoke-static {v3}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    new-instance v4, Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 50
    .line 51
    .line 52
    invoke-direct {v4, v3}, Lcom/narvii/livelayer/LiveLayerDataSource;-><init>(Lcom/narvii/app/NVContext;)V

    .line 53
    .line 54
    iput-object v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, p0}, Lcom/narvii/livelayer/LiveLayerDataSource;->setLiveLayerView(Lcom/narvii/livelayer/ILiveLayerView;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 61
    move-result-object v4

    .line 62
    .line 63
    .line 64
    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 65
    move-result-object v4

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 69
    move-result v5

    .line 70
    const/4 v6, 0x2

    .line 71
    div-int/2addr v5, v6

    .line 72
    .line 73
    iput v5, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mTouchSlop:I

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 77
    move-result v5

    .line 78
    .line 79
    iput v5, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mMinimumFlingVelocity:I

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 83
    move-result v4

    .line 84
    .line 85
    iput v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mMaximumFlingVelocity:I

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 89
    move-result-object v4

    .line 90
    .line 91
    .line 92
    const v5, 0x7f0d050d

    .line 93
    .line 94
    .line 95
    invoke-static {v4, v5, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 96
    .line 97
    sget-object v4, Lcom/narvii/amino/R$styleable;->LiveLayerOnlineBar:[I

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 105
    move-result-object p2

    .line 106
    .line 107
    .line 108
    const v4, 0x7f070242

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 112
    move-result p2

    .line 113
    const/4 v4, 0x3

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 117
    move-result p2

    .line 118
    .line 119
    iput p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->defaultAvatarSize:I

    .line 120
    const/4 p2, 0x7

    .line 121
    .line 122
    .line 123
    const v4, 0x7f120e18

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 127
    move-result p2

    .line 128
    .line 129
    iput p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineText:I

    .line 130
    .line 131
    const/16 p2, 0x10

    .line 132
    const/4 v4, 0x0

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 136
    move-result p2

    .line 137
    .line 138
    iput p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedText:I

    .line 139
    .line 140
    const/16 p2, 0x8

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 144
    move-result p2

    .line 145
    .line 146
    iput p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextOne:I

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 150
    move-result p2

    .line 151
    .line 152
    iput-boolean p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->autoFitAvatarSize:Z

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 156
    move-result p2

    .line 157
    .line 158
    iput p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->autoFitAvatarCountMax:I

    .line 159
    const/4 p2, 0x6

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 163
    move-result v0

    .line 164
    .line 165
    iput v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->minAvatarCount:I

    .line 166
    const/4 v0, 0x5

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 170
    move-result v0

    .line 171
    .line 172
    iput v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->maxAvatarCount:I

    .line 173
    .line 174
    const/16 v0, 0xb

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 178
    move-result v0

    .line 179
    .line 180
    iput-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showMore:Z

    .line 181
    .line 182
    const/16 v0, 0xd

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 186
    move-result v0

    .line 187
    .line 188
    iput-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showShadow:Z

    .line 189
    .line 190
    const/high16 v0, 0x3e800000    # 0.25f

    .line 191
    .line 192
    const/16 v5, 0x9

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 196
    move-result v0

    .line 197
    .line 198
    iput v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->overlapRatio:F

    .line 199
    .line 200
    const/16 v0, 0xc

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 204
    move-result v0

    .line 205
    .line 206
    iput-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showRightCorner:Z

    .line 207
    .line 208
    const/16 v0, 0xe

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 212
    move-result v0

    .line 213
    .line 214
    iput-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->supportFold:Z

    .line 215
    .line 216
    const/high16 v0, -0x34000000    # -3.3554432E7f

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 220
    move-result v0

    .line 221
    .line 222
    iput v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->barColor:I

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 226
    move-result v0

    .line 227
    .line 228
    iput-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animateLayoutChanges:Z

    .line 229
    .line 230
    const/16 v0, 0xa

    .line 231
    .line 232
    iget-boolean v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->supportFold:Z

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 236
    move-result v0

    .line 237
    .line 238
    iput-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showFadeAnimation:Z

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 242
    move-result-object v0

    .line 243
    .line 244
    .line 245
    const v1, 0x7f070246

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 249
    move-result v0

    .line 250
    .line 251
    const/16 v1, 0xf

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 255
    move-result v0

    .line 256
    .line 257
    iput v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->textMarginEnd:I

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 261
    .line 262
    iget-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showShadow:Z

    .line 263
    .line 264
    if-eqz p1, :cond_0

    .line 265
    .line 266
    .line 267
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 268
    move-result-object p1

    .line 269
    .line 270
    const/high16 v0, 0x40400000    # 3.0f

    .line 271
    .line 272
    .line 273
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 274
    move-result p1

    .line 275
    goto :goto_0

    .line 276
    :cond_0
    move p1, v4

    .line 277
    .line 278
    :goto_0
    iput p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarShadowSize:I

    .line 279
    .line 280
    iget p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->defaultAvatarSize:I

    .line 281
    .line 282
    iput p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    .line 283
    .line 284
    .line 285
    const p1, 0x7f0a083f

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 289
    move-result-object p1

    .line 290
    .line 291
    check-cast p1, Lcom/narvii/livelayer/ws/ClipLayout;

    .line 292
    .line 293
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 294
    .line 295
    .line 296
    const p1, 0x7f0a0630

    .line 297
    .line 298
    .line 299
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 300
    move-result-object p1

    .line 301
    .line 302
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->greenOval:Landroid/view/View;

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 306
    move-result-object p1

    .line 307
    .line 308
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    .line 309
    div-int/2addr v0, v6

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 313
    move-result-object v1

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 317
    move-result-object v1

    .line 318
    .line 319
    .line 320
    const v2, 0x7f070240

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 324
    move-result v1

    .line 325
    add-int/2addr v0, v1

    .line 326
    .line 327
    .line 328
    invoke-static {p1, v0}, Lcom/narvii/util/ViewUtils;->setMarginStart(Landroid/view/ViewGroup$LayoutParams;I)V

    .line 329
    .line 330
    .line 331
    const p1, 0x7f0a0be5

    .line 332
    .line 333
    .line 334
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 335
    move-result-object p1

    .line 336
    .line 337
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->recentAvatarLayout:Landroid/view/View;

    .line 338
    .line 339
    .line 340
    const v0, 0x7f0a0f36

    .line 341
    .line 342
    .line 343
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 344
    move-result-object p1

    .line 345
    .line 346
    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    .line 347
    .line 348
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->recentAvatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 349
    .line 350
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showShadow:Z

    .line 351
    .line 352
    if-eqz v0, :cond_1

    .line 353
    .line 354
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarShadowSize:I

    .line 355
    goto :goto_1

    .line 356
    :cond_1
    move v0, v4

    .line 357
    .line 358
    :goto_1
    sget v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->shadowColor:I

    .line 359
    .line 360
    .line 361
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarShadow(II)V

    .line 362
    .line 363
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->recentAvatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 364
    .line 365
    .line 366
    invoke-virtual {p1}, Lcom/narvii/widget/UserAvatarLayout;->getAvatarView()Lcom/narvii/widget/ThumbImageView;

    .line 367
    move-result-object p1

    .line 368
    .line 369
    .line 370
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getForceRequestWidth()I

    .line 371
    move-result v0

    .line 372
    .line 373
    .line 374
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getForceRequestHeight()I

    .line 375
    move-result v1

    .line 376
    .line 377
    .line 378
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ThumbImageView;->setForceRequestSize(II)V

    .line 379
    .line 380
    .line 381
    const p1, 0x7f0a01b4

    .line 382
    .line 383
    .line 384
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 385
    move-result-object p1

    .line 386
    .line 387
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 388
    .line 389
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showRightCorner:Z

    .line 390
    .line 391
    if-nez v0, :cond_3

    .line 392
    .line 393
    .line 394
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 395
    move-result v0

    .line 396
    .line 397
    if-eqz v0, :cond_2

    .line 398
    move p2, v5

    .line 399
    .line 400
    .line 401
    :cond_2
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setCornerMask(I)V

    .line 402
    .line 403
    :cond_3
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .line 404
    .line 405
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->barColor:I

    .line 406
    .line 407
    .line 408
    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 418
    .line 419
    .line 420
    const p1, 0x7f0a0a60

    .line 421
    .line 422
    .line 423
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 424
    move-result-object p1

    .line 425
    .line 426
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    .line 427
    .line 428
    .line 429
    const p1, 0x7f0a0a61

    .line 430
    .line 431
    .line 432
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 433
    move-result-object p1

    .line 434
    .line 435
    check-cast p1, Landroid/widget/TextView;

    .line 436
    .line 437
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextView:Landroid/widget/TextView;

    .line 438
    .line 439
    .line 440
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 441
    move-result-object p1

    .line 442
    .line 443
    iget p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->textMarginEnd:I

    .line 444
    .line 445
    .line 446
    invoke-static {p1, p2}, Lcom/narvii/util/ViewUtils;->setMarginEnd(Landroid/view/ViewGroup$LayoutParams;I)V

    .line 447
    .line 448
    .line 449
    const p1, 0x7f0a080d

    .line 450
    .line 451
    .line 452
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 453
    move-result-object p1

    .line 454
    .line 455
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->halo:Landroid/view/View;

    .line 456
    .line 457
    .line 458
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onAvatarSizeChanged()V

    .line 459
    .line 460
    new-instance p1, Lcom/narvii/livelayer/LiveLayerPreloadHelper;

    .line 461
    .line 462
    .line 463
    invoke-direct {p1, v3}, Lcom/narvii/livelayer/LiveLayerPreloadHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 464
    .line 465
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->preloadHelper:Lcom/narvii/livelayer/LiveLayerPreloadHelper;

    .line 466
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/livelayer/LiveLayerOnlineBar;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->layoutAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private adjustOnlineTextBarWidth(Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    const v1, 0x7f070240

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    .line 20
    .line 21
    div-int/lit8 p1, p1, 0x2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    add-int/2addr v0, p1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->greenOval:Landroid/view/View;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v0}, Lcom/narvii/util/ViewUtils;->setMarginStart(Landroid/view/ViewGroup$LayoutParams;I)V

    .line 34
    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/livelayer/LiveLayerOnlineBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic c(Lcom/narvii/livelayer/LiveLayerOnlineBar;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->isDragging:Z

    return-void
.end method

.method private cancelAnimation(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animating:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedAnim:Landroid/view/animation/Animation;

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
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedAnim:Landroid/view/animation/Animation;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dotFadeAnimation:Landroid/view/animation/Animation;

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
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldAnimator:Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldAnimator:Landroid/animation/ValueAnimator;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 39
    .line 40
    :cond_2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 51
    .line 52
    :cond_3
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animator:Landroid/animation/ValueAnimator;

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
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animator:Landroid/animation/ValueAnimator;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 66
    .line 67
    :cond_4
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->layoutAnimator:Landroid/animation/ValueAnimator;

    .line 68
    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 73
    move-result v0

    .line 74
    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->layoutAnimator:Landroid/animation/ValueAnimator;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 81
    .line 82
    :cond_5
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 83
    .line 84
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->joinAnimRunnable:Ljava/lang/Runnable;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 88
    .line 89
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 90
    .line 91
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerDataSource;->checkRunnable:Ljava/lang/Runnable;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 95
    .line 96
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->nextRunnable:Ljava/lang/Runnable;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 100
    .line 101
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animEndRunnable:Ljava/lang/Runnable;

    .line 102
    .line 103
    if-eqz v2, :cond_7

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    .line 108
    if-eqz p1, :cond_6

    .line 109
    .line 110
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animEndRunnable:Ljava/lang/Runnable;

    .line 111
    .line 112
    .line 113
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 114
    .line 115
    :cond_6
    iput-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animEndRunnable:Ljava/lang/Runnable;

    .line 116
    .line 117
    :cond_7
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->nextRunnable:Ljava/lang/Runnable;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 121
    .line 122
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->layoutAnimator:Landroid/animation/ValueAnimator;

    .line 123
    .line 124
    if-eqz p1, :cond_8

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 128
    move-result p1

    .line 129
    .line 130
    if-eqz p1, :cond_8

    .line 131
    .line 132
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->layoutAnimator:Landroid/animation/ValueAnimator;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 136
    .line 137
    :cond_8
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->holoAnimation:Landroid/view/animation/Animation;

    .line 138
    .line 139
    if-eqz p1, :cond_9

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 143
    .line 144
    :cond_9
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->holoAnimation2:Landroid/view/animation/Animation;

    .line 145
    .line 146
    if-eqz p1, :cond_a

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 150
    .line 151
    .line 152
    :cond_a
    const p1, 0x7f0a080d

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 156
    move-result-object p1

    .line 157
    .line 158
    if-eqz p1, :cond_b

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 162
    .line 163
    :cond_b
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dotFadeInAnimation:Landroid/view/animation/Animation;

    .line 164
    .line 165
    if-eqz p1, :cond_c

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 169
    .line 170
    :cond_c
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldGreenOval:Landroid/view/View;

    .line 171
    .line 172
    if-eqz p1, :cond_d

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 176
    .line 177
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldGreenOval:Landroid/view/View;

    .line 178
    .line 179
    const/high16 v1, 0x3f800000    # 1.0f

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 183
    .line 184
    :cond_d
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 185
    .line 186
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerDataSource;->correctMembersCountRunnable:Ljava/lang/Runnable;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 190
    return-void
.end method

.method private changeX(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v1

    .line 16
    int-to-float v2, p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/livelayer/LiveLayerOnlineBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->layoutAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/livelayer/LiveLayerOnlineBar;Lcom/narvii/model/User;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getAvatarView(Lcom/narvii/model/User;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic f(Lcom/narvii/livelayer/LiveLayerOnlineBar;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getRandomDelayTime()I

    move-result p0

    return p0
.end method

.method static bridge synthetic g(Lcom/narvii/livelayer/LiveLayerOnlineBar;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->moveLayout(I)V

    return-void
.end method

.method private getAvatarView()Landroid/view/View;
    .locals 6

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

    iget v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    .line 4
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    invoke-virtual {v1}, Lcom/narvii/widget/UserAvatarLayout;->getAvatarView()Lcom/narvii/widget/ThumbImageView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getForceRequestWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getForceRequestHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/narvii/widget/ThumbImageView;->setForceRequestSize(II)V

    iget-boolean v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showShadow:Z

    if-nez v3, :cond_0

    sget v3, Lcom/narvii/livelayer/LiveLayerOnlineBar;->shadowColor:I

    .line 8
    invoke-virtual {v1, v2, v3}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarShadow(II)V

    :cond_0
    return-object v0
.end method

.method private getAvatarView(Lcom/narvii/model/User;)Landroid/view/View;
    .locals 2

    .line 9
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getAvatarView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0f36

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    .line 11
    invoke-direct {p0, v1, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserAvatarView(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V

    return-object v0
.end method

.method private getExpandWidth()I
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    .line 3
    int-to-float v1, v0

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    iget v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->overlapRatio:F

    .line 8
    sub-float/2addr v2, v3

    .line 9
    mul-float/2addr v1, v2

    .line 10
    .line 11
    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 12
    .line 13
    add-int/lit8 v2, v2, -0x1

    .line 14
    int-to-float v2, v2

    .line 15
    mul-float/2addr v1, v2

    .line 16
    int-to-float v2, v0

    .line 17
    add-float/2addr v1, v2

    .line 18
    float-to-int v1, v1

    .line 19
    .line 20
    div-int/lit8 v0, v0, 0x2

    .line 21
    sub-int/2addr v1, v0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 29
    move-result v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    add-int/2addr v1, v0

    .line 33
    return v1
.end method

.method private getHoloAlphaAnimation()Landroid/view/animation/AlphaAnimation;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 9
    .line 10
    new-instance v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$9;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar$9;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 17
    .line 18
    const-wide/16 v1, 0x7d0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 22
    return-object v0
.end method

.method private getRandomDelayTime()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->random:Ljava/util/Random;

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
    add-int/lit16 v0, v0, 0x9c4

    .line 11
    return v0
.end method

.method static bridge synthetic h(Lcom/narvii/livelayer/LiveLayerOnlineBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->relayout()V

    return-void
.end method

.method static bridge synthetic i(Lcom/narvii/livelayer/LiveLayerOnlineBar;Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserAvatarView(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V

    return-void
.end method

.method static bridge synthetic j(Lcom/narvii/livelayer/LiveLayerOnlineBar;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showPress(Z)V

    return-void
.end method

.method static bridge synthetic k(Lcom/narvii/livelayer/LiveLayerOnlineBar;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->startHoloAnimation(Lcom/narvii/model/User;)V

    return-void
.end method

.method static bridge synthetic l(Lcom/narvii/livelayer/LiveLayerOnlineBar;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->updateMemberCount(I)V

    return-void
.end method

.method private moveLayout(I)V
    .locals 8

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    .line 3
    int-to-float v0, v0

    .line 4
    .line 5
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->overlapRatio:F

    .line 6
    .line 7
    const/high16 v2, 0x3f800000    # 1.0f

    .line 8
    .line 9
    sub-float v1, v2, v1

    .line 10
    mul-float/2addr v0, v1

    .line 11
    float-to-int v0, v0

    .line 12
    const/4 v1, 0x0

    .line 13
    move v3, v1

    .line 14
    move v4, v3

    .line 15
    .line 16
    :goto_0
    iget v5, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 17
    .line 18
    add-int/lit8 v6, v5, -0x1

    .line 19
    .line 20
    if-ge v3, v6, :cond_0

    .line 21
    .line 22
    iget-object v6, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 23
    .line 24
    add-int/lit8 v5, v5, -0x1

    .line 25
    sub-int/2addr v5, v3

    .line 26
    .line 27
    .line 28
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    move-result-object v5

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    move-result-object v6

    .line 34
    .line 35
    mul-int v7, v0, v4

    .line 36
    add-int/2addr v7, p1

    .line 37
    .line 38
    .line 39
    invoke-static {v6, v7}, Lcom/narvii/util/ViewUtils;->setMarginStart(Landroid/view/ViewGroup$LayoutParams;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    .line 44
    add-int/lit8 v4, v4, 0x1

    .line 45
    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-direct {p0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->resetShadowColor(I)V

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 56
    move-result-object v0

    .line 57
    int-to-float p1, p1

    .line 58
    .line 59
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    .line 60
    int-to-float v3, v1

    .line 61
    .line 62
    iget v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->overlapRatio:F

    .line 63
    sub-float/2addr v2, v4

    .line 64
    mul-float/2addr v3, v2

    .line 65
    .line 66
    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 67
    .line 68
    add-int/lit8 v2, v2, -0x2

    .line 69
    int-to-float v2, v2

    .line 70
    mul-float/2addr v3, v2

    .line 71
    add-float/2addr p1, v3

    .line 72
    int-to-float v2, v1

    .line 73
    add-float/2addr p1, v2

    .line 74
    .line 75
    div-int/lit8 v1, v1, 0x2

    .line 76
    int-to-float v1, v1

    .line 77
    sub-float/2addr p1, v1

    .line 78
    float-to-int p1, p1

    .line 79
    .line 80
    .line 81
    invoke-static {v0, p1}, Lcom/narvii/util/ViewUtils;->setMarginStart(Landroid/view/ViewGroup$LayoutParams;I)V

    .line 82
    .line 83
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    return-void
.end method

.method private onAvatarSizeChanged()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/ws/ClipLayout;->setAvatarSize(I)V

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    move-result v1

    .line 17
    .line 18
    if-ge v0, v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    .line 31
    const v2, 0x7f0a0f36

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setAvatarSize(Landroid/view/View;)V

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->recentAvatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setAvatarSize(Landroid/view/View;)V

    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 59
    .line 60
    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    .line 61
    .line 62
    mul-int/lit8 v2, v2, 0x5

    .line 63
    .line 64
    div-int/lit8 v2, v2, 0x6

    .line 65
    .line 66
    if-eq v1, v2, :cond_3

    .line 67
    .line 68
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 69
    .line 70
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    .line 75
    :cond_3
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->halo:Landroid/view/View;

    .line 76
    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    const/high16 v2, 0x40c00000    # 6.0f

    .line 88
    .line 89
    .line 90
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 91
    move-result v1

    .line 92
    float-to-int v1, v1

    .line 93
    .line 94
    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    .line 95
    .line 96
    add-int v3, v2, v1

    .line 97
    .line 98
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 99
    add-int/2addr v2, v1

    .line 100
    .line 101
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 102
    .line 103
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->halo:Landroid/view/View;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    :cond_4
    return-void
.end method

.method private relayout()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUpAvatarLayout()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUpTextLayout()V

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->resetShadowColor(I)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    sget v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->shadowColor:I

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->resetShadowColor(I)V

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->resetMoreLayer()V

    .line 24
    .line 25
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 26
    .line 27
    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->minAvatarCount:I

    .line 28
    .line 29
    if-lt v0, v2, :cond_1

    .line 30
    const/4 v1, 0x1

    .line 31
    .line 32
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarShown:Z

    .line 33
    .line 34
    if-eq v0, v1, :cond_4

    .line 35
    .line 36
    iput-boolean v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarShown:Z

    .line 37
    .line 38
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showFadeAnimation:Z

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    .line 49
    const v2, 0x7f010037

    .line 50
    goto :goto_1

    .line 51
    .line 52
    .line 53
    :cond_2
    const v2, 0x7f010038

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    const-wide/16 v2, 0x190

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 63
    const/4 v2, 0x0

    .line 64
    .line 65
    .line 66
    invoke-static {p0, v0, v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 67
    .line 68
    :cond_3
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onAvatarShownChangeListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnAvatarShownChangeListener;

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    .line 73
    invoke-interface {v0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar$OnAvatarShownChangeListener;->onAvatarShownChanged(Z)V

    .line 74
    :cond_4
    return-void
.end method

.method private resetMoreLayer()V
    .locals 6

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showMore:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

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
    iget v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

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
    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

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
    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 72
    .line 73
    iget v3, v3, Lcom/narvii/livelayer/LiveLayerDataSource;->currentMembersCount:I

    .line 74
    .line 75
    iget v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 76
    .line 77
    const/16 v5, 0x8

    .line 78
    .line 79
    if-le v3, v4, :cond_0

    .line 80
    const/4 v3, 0x0

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    move v3, v5

    .line 83
    .line 84
    .line 85
    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    if-ne v2, v5, :cond_1

    .line 91
    .line 92
    if-nez v3, :cond_1

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 96
    move-result-object v2

    .line 97
    .line 98
    .line 99
    const v3, 0x7f010037

    .line 100
    .line 101
    .line 102
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 103
    move-result-object v2

    .line 104
    const/4 v4, 0x0

    .line 105
    .line 106
    .line 107
    invoke-static {v1, v2, v4}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    .line 114
    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    .line 118
    invoke-static {v0, v1, v4}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 119
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
    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

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
    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

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
    iget v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarShadowSize:I

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
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

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
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarShadowSize:I

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
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

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
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->maxAvatarCount:I

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
    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 16
    .line 17
    if-ge v1, v2, :cond_3

    .line 18
    .line 19
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

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
    iget-boolean v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    .line 28
    .line 29
    if-nez v4, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    iget v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 35
    .line 36
    add-int/lit8 v5, v4, -0x1

    .line 37
    sub-int/2addr v5, v1

    .line 38
    .line 39
    if-nez v5, :cond_1

    .line 40
    move v1, v0

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 44
    sub-int/2addr v4, v1

    .line 45
    int-to-float v1, v4

    .line 46
    .line 47
    iget v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    .line 48
    int-to-float v4, v4

    .line 49
    .line 50
    const/high16 v5, 0x3f800000    # 1.0f

    .line 51
    .line 52
    iget v6, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->overlapRatio:F

    .line 53
    sub-float/2addr v5, v6

    .line 54
    mul-float/2addr v4, v5

    .line 55
    mul-float/2addr v1, v4

    .line 56
    float-to-int v1, v1

    .line 57
    .line 58
    .line 59
    :goto_1
    invoke-static {v2, v1}, Lcom/narvii/util/ViewUtils;->setMarginStart(Landroid/view/View;I)V

    .line 60
    goto :goto_2

    .line 61
    :cond_2
    const/4 v1, 0x4

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    invoke-static {v2, v0}, Lcom/narvii/util/ViewUtils;->setMarginStart(Landroid/view/View;I)V

    .line 68
    :goto_2
    move v1, v3

    .line 69
    goto :goto_0

    .line 70
    :cond_3
    return-void
.end method

.method private setUpTextLayout()V
    .locals 5

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    .line 8
    const/4 v2, 0x4

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    goto :goto_3

    .line 13
    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->organizerInList:Z

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 20
    .line 21
    iget v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->minAvatarCount:I

    .line 22
    .line 23
    if-ge v0, v3, :cond_1

    .line 24
    move v0, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v0, v2

    .line 27
    .line 28
    :goto_0
    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    .line 29
    .line 30
    iget-boolean v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->autoFitAvatarSize:Z

    .line 31
    .line 32
    if-nez v4, :cond_3

    .line 33
    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->forceHideOnlineTextLayout:Z

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move v0, v2

    .line 41
    goto :goto_2

    .line 42
    .line 43
    :cond_3
    :goto_1
    const/16 v0, 0x8

    .line 44
    .line 45
    .line 46
    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 52
    move-result v0

    .line 53
    .line 54
    if-nez v0, :cond_5

    .line 55
    .line 56
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 57
    .line 58
    if-lez v0, :cond_4

    .line 59
    move v2, v1

    .line 60
    .line 61
    .line 62
    :cond_4
    invoke-direct {p0, v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->adjustOnlineTextBarWidth(Z)V

    .line 63
    .line 64
    :cond_5
    :goto_3
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    .line 65
    int-to-float v2, v0

    .line 66
    .line 67
    const/high16 v3, 0x3f800000    # 1.0f

    .line 68
    .line 69
    iget v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->overlapRatio:F

    .line 70
    sub-float/2addr v3, v4

    .line 71
    mul-float/2addr v2, v3

    .line 72
    .line 73
    iget v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 74
    sub-int/2addr v3, v1

    .line 75
    int-to-float v1, v3

    .line 76
    mul-float/2addr v2, v1

    .line 77
    int-to-float v1, v0

    .line 78
    add-float/2addr v2, v1

    .line 79
    float-to-int v1, v2

    .line 80
    .line 81
    iget-boolean v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    .line 82
    .line 83
    if-eqz v2, :cond_6

    .line 84
    .line 85
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 89
    move-result-object v2

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 93
    move-result-object v2

    .line 94
    .line 95
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 96
    sub-int/2addr v0, v2

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v0}, Lcom/narvii/util/ViewUtils;->setMarginStart(Landroid/view/View;I)V

    .line 100
    goto :goto_4

    .line 101
    .line 102
    :cond_6
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    .line 103
    .line 104
    div-int/lit8 v0, v0, 0x2

    .line 105
    sub-int/2addr v1, v0

    .line 106
    .line 107
    .line 108
    invoke-static {v2, v1}, Lcom/narvii/util/ViewUtils;->setMarginStart(Landroid/view/View;I)V

    .line 109
    :goto_4
    return-void
.end method

.method private setUserAvatarView(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 4
    .line 5
    iget p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarStrokeWidth:I

    .line 6
    const/4 v0, -0x1

    .line 7
    .line 8
    if-eq p2, v0, :cond_0

    .line 9
    int-to-float p2, p2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStroke(F)V

    .line 13
    :cond_0
    return-void
.end method

.method private setUserList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 1
    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerDataSource;->getCurrentMembersCount()I

    move-result v0

    iget-boolean v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->organizerInList:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserList(Ljava/util/List;IZ)V

    return-void
.end method

.method private showPress(Z)V
    .locals 20

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v1, p1

    .line 5
    .line 6
    iget-boolean v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->pressed:Z

    .line 7
    .line 8
    if-ne v2, v1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iput-boolean v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->pressed:Z

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    .line 15
    const-wide/16 v4, 0xc8

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    .line 20
    .line 21
    const/high16 v7, 0x3f800000    # 1.0f

    .line 22
    .line 23
    .line 24
    const v8, 0x3f7ae148    # 0.98f

    .line 25
    .line 26
    const/high16 v9, 0x3f800000    # 1.0f

    .line 27
    .line 28
    .line 29
    const v10, 0x3f7ae148    # 0.98f

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 33
    move-result v6

    .line 34
    .line 35
    div-int/lit8 v6, v6, 0x2

    .line 36
    int-to-float v11, v6

    .line 37
    .line 38
    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 40
    move-result v6

    .line 41
    .line 42
    div-int/lit8 v6, v6, 0x2

    .line 43
    int-to-float v12, v6

    .line 44
    move-object v6, v1

    .line 45
    .line 46
    .line 47
    invoke-direct/range {v6 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1, v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_1
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    .line 60
    .line 61
    .line 62
    const v14, 0x3f7ae148    # 0.98f

    .line 63
    .line 64
    const/high16 v15, 0x3f800000    # 1.0f

    .line 65
    .line 66
    .line 67
    const v16, 0x3f7ae148    # 0.98f

    .line 68
    .line 69
    const/high16 v17, 0x3f800000    # 1.0f

    .line 70
    .line 71
    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 73
    move-result v6

    .line 74
    .line 75
    div-int/lit8 v6, v6, 0x2

    .line 76
    int-to-float v6, v6

    .line 77
    .line 78
    .line 79
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 80
    move-result v7

    .line 81
    .line 82
    div-int/lit8 v7, v7, 0x2

    .line 83
    int-to-float v7, v7

    .line 84
    move-object v13, v1

    .line 85
    .line 86
    move/from16 v18, v6

    .line 87
    .line 88
    move/from16 v19, v7

    .line 89
    .line 90
    .line 91
    invoke-direct/range {v13 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 98
    .line 99
    .line 100
    invoke-static {v0, v1, v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 101
    :goto_0
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

.method private startHoloAnimation(Lcom/narvii/model/User;)V
    .locals 11

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a080d

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    .line 13
    move-result p1

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    .line 18
    const p1, 0x7f0806e4

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    const p1, 0x7f0806e3

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getHoloAlphaAnimation()Landroid/view/animation/AlphaAnimation;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    new-instance v10, Landroid/view/animation/ScaleAnimation;

    .line 32
    .line 33
    const/high16 v2, 0x3f800000    # 1.0f

    .line 34
    .line 35
    .line 36
    const v3, 0x3f9eb852    # 1.24f

    .line 37
    .line 38
    const/high16 v4, 0x3f800000    # 1.0f

    .line 39
    .line 40
    .line 41
    const v5, 0x3f9eb852    # 1.24f

    .line 42
    const/4 v6, 0x1

    .line 43
    .line 44
    const/high16 v7, 0x3f000000    # 0.5f

    .line 45
    const/4 v8, 0x1

    .line 46
    .line 47
    const/high16 v9, 0x3f000000    # 0.5f

    .line 48
    move-object v1, v10

    .line 49
    .line 50
    .line 51
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 52
    .line 53
    new-instance v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$8;

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar$8;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v10, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 60
    .line 61
    const-wide/16 v1, 0x7d0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v10, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 65
    .line 66
    new-instance v1, Landroid/view/animation/AnimationSet;

    .line 67
    const/4 v2, 0x0

    .line 68
    .line 69
    .line 70
    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 77
    .line 78
    iput-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->holoAnimation:Landroid/view/animation/Animation;

    .line 79
    const/4 p1, 0x0

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v1, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 83
    :cond_1
    return-void
.end method

.method private updateMemberCount(I)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextView:Landroid/widget/TextView;

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
    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextOne:I

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
    iget v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineText:I

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
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldCountView:Landroid/widget/TextView;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onUpdateMemberCountListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnUpdateMemberCountListener;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar$OnUpdateMemberCountListener;->onUpdateMemberCount(I)V

    .line 56
    :cond_3
    return-void
.end method


# virtual methods
.method public disallowNewUserCome()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->tapping:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->isDragging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animating:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getAvatarCount()I
    .locals 1

    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    return v0
.end method

.method protected getForceRequestHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getForceRequestWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMinAvatarCount()I
    .locals 1

    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->minAvatarCount:I

    return v0
.end method

.method public getOnBarClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onBarClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getOnFoldChangedListener()Lcom/narvii/livelayer/LiveLayerOnlineBar$OnFoldChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onFoldChangedListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnFoldChangedListener;

    return-object v0
.end method

.method protected getPreloadAvatarSize()I
    .locals 1

    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    return v0
.end method

.method public goFold(Z)V
    .locals 9

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->supportFold:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    sget-boolean v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->liveLayerBarStated:Z

    .line 16
    const/4 v2, 0x1

    .line 17
    xor-int/2addr v1, v2

    .line 18
    .line 19
    iget-boolean v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    .line 23
    if-eq v3, p1, :cond_3

    .line 24
    .line 25
    const-string v3, "prefs"

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    check-cast v3, Landroid/content/SharedPreferences;

    .line 32
    .line 33
    const-string v6, "liveLayerFold"

    .line 34
    .line 35
    .line 36
    invoke-interface {v3, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 37
    move-result v7

    .line 38
    .line 39
    if-eqz v7, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 43
    move-result v7

    .line 44
    .line 45
    .line 46
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    move-result-object v7

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move-object v7, v4

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    .line 56
    invoke-interface {v3, v6, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    .line 60
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    move-result-object v3

    .line 65
    .line 66
    if-eq v7, v3, :cond_2

    .line 67
    move v3, v2

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    move v3, v5

    .line 70
    :goto_1
    or-int/2addr v1, v3

    .line 71
    .line 72
    :cond_3
    if-eqz v1, :cond_4

    .line 73
    .line 74
    const-string v1, "statistics"

    .line 75
    .line 76
    .line 77
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 81
    .line 82
    .line 83
    invoke-interface {v0, v4}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    xor-int/lit8 v1, p1, 0x1

    .line 87
    .line 88
    const-string v3, "Live Layer Bar Extended"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v3, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 92
    .line 93
    sput-boolean v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->liveLayerBarStated:Z

    .line 94
    .line 95
    :cond_4
    iput-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    .line 96
    .line 97
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->supportFold:Z

    .line 98
    .line 99
    if-eqz v0, :cond_8

    .line 100
    .line 101
    .line 102
    const v0, 0x7f0a0806

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    if-nez v0, :cond_6

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    .line 115
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    .line 119
    const v1, 0x7f0d050b

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    .line 126
    const v1, 0x7f0a0630

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    move-result-object v3

    .line 131
    .line 132
    iput-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldGreenOval:Landroid/view/View;

    .line 133
    .line 134
    .line 135
    const v3, 0x7f0a0a57

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    move-result-object v3

    .line 140
    .line 141
    check-cast v3, Landroid/widget/TextView;

    .line 142
    .line 143
    iput-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldCountView:Landroid/widget/TextView;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 147
    move-result-object v3

    .line 148
    .line 149
    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 150
    .line 151
    if-eqz v4, :cond_5

    .line 152
    .line 153
    iget v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    .line 154
    int-to-float v4, v4

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 158
    move-result-object v6

    .line 159
    .line 160
    const/high16 v7, 0x41200000    # 10.0f

    .line 161
    .line 162
    .line 163
    invoke-static {v6, v7}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 164
    move-result v6

    .line 165
    add-float/2addr v4, v6

    .line 166
    float-to-int v4, v4

    .line 167
    .line 168
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 169
    move-object v4, v3

    .line 170
    .line 171
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 172
    .line 173
    iget v6, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    .line 174
    int-to-float v6, v6

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 178
    move-result-object v7

    .line 179
    .line 180
    const/high16 v8, 0x41000000    # 8.0f

    .line 181
    .line 182
    .line 183
    invoke-static {v7, v8}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 184
    move-result v7

    .line 185
    sub-float/2addr v6, v7

    .line 186
    float-to-int v6, v6

    .line 187
    .line 188
    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 189
    .line 190
    :cond_5
    iget-object v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldCountView:Landroid/widget/TextView;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    .line 195
    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldCountView:Landroid/widget/TextView;

    .line 196
    .line 197
    iget-object v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 198
    .line 199
    iget v4, v4, Lcom/narvii/livelayer/LiveLayerDataSource;->currentMembersCount:I

    .line 200
    .line 201
    .line 202
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 203
    move-result-object v4

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 210
    move-result-object v1

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 214
    move-result-object v3

    .line 215
    .line 216
    iget v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    .line 217
    int-to-float v4, v4

    .line 218
    .line 219
    .line 220
    const v6, 0x3f3ae148    # 0.73f

    .line 221
    mul-float/2addr v4, v6

    .line 222
    float-to-int v4, v4

    .line 223
    .line 224
    .line 225
    invoke-static {v3, v4}, Lcom/narvii/util/ViewUtils;->setMarginStart(Landroid/view/ViewGroup$LayoutParams;I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 232
    .line 233
    :cond_6
    if-eqz p1, :cond_7

    .line 234
    .line 235
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 236
    .line 237
    iget v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->minAvatarCount:I

    .line 238
    .line 239
    if-lt v1, v3, :cond_7

    .line 240
    move v1, v5

    .line 241
    goto :goto_2

    .line 242
    .line 243
    :cond_7
    const/16 v1, 0x8

    .line 244
    .line 245
    .line 246
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    .line 248
    .line 249
    :cond_8
    invoke-direct {p0, v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->cancelAnimation(Z)V

    .line 250
    .line 251
    .line 252
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->relayout()V

    .line 253
    .line 254
    if-eqz p1, :cond_9

    .line 255
    .line 256
    .line 257
    invoke-direct {p0, v5}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->resetShadowColor(I)V

    .line 258
    goto :goto_3

    .line 259
    .line 260
    :cond_9
    sget p1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->shadowColor:I

    .line 261
    .line 262
    .line 263
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->resetShadowColor(I)V

    .line 264
    :goto_3
    return-void
.end method

.method public isAvatarShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarShown:Z

    return v0
.end method

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->isDragging:Z

    return v0
.end method

.method public isTapping()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->tapping:Z

    return v0
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
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerDataSource;->checkRunnable:Ljava/lang/Runnable;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerDataSource;->checkRunnable:Ljava/lang/Runnable;

    .line 44
    .line 45
    const-wide/16 v2, 0x7d0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
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
    invoke-direct {p0, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->cancelAnimation(Z)V

    .line 8
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->supportFold:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onBarClickListener:Landroid/view/View$OnClickListener;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarShown:Z

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
    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->autoFitAvatarCountMax:I

    .line 24
    const/4 v3, -0x1

    .line 25
    .line 26
    if-eq v2, v3, :cond_0

    .line 27
    .line 28
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

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
    iget-object v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

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
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

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
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 71
    move-result v2

    .line 72
    .line 73
    iget v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

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
    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->autoFitAvatarCountMax:I

    .line 80
    .line 81
    if-ne v2, v3, :cond_2

    .line 82
    .line 83
    iget-boolean v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->autoFitAvatarSize:Z

    .line 84
    .line 85
    if-eqz v4, :cond_5

    .line 86
    .line 87
    :cond_2
    if-eqz v1, :cond_5

    .line 88
    .line 89
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->maxWidth:I

    .line 90
    .line 91
    if-eq v0, v1, :cond_5

    .line 92
    .line 93
    iput v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->maxWidth:I

    .line 94
    .line 95
    iget-boolean v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->autoFitAvatarSize:Z

    .line 96
    .line 97
    const/high16 v4, 0x3f800000    # 1.0f

    .line 98
    .line 99
    if-eqz v1, :cond_3

    .line 100
    .line 101
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->defaultAvatarSize:I

    .line 102
    .line 103
    sub-int v1, v0, v1

    .line 104
    int-to-float v1, v1

    .line 105
    .line 106
    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    .line 107
    int-to-float v2, v2

    .line 108
    .line 109
    iget v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->overlapRatio:F

    .line 110
    .line 111
    sub-float v5, v4, v3

    .line 112
    mul-float/2addr v2, v5

    .line 113
    div-float/2addr v1, v2

    .line 114
    add-float/2addr v1, v4

    .line 115
    float-to-int v1, v1

    .line 116
    .line 117
    iput v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->maxAvatarCount:I

    .line 118
    int-to-float v0, v0

    .line 119
    .line 120
    sub-float v2, v4, v3

    .line 121
    .line 122
    add-int/lit8 v1, v1, -0x1

    .line 123
    int-to-float v1, v1

    .line 124
    mul-float/2addr v2, v1

    .line 125
    add-float/2addr v2, v4

    .line 126
    div-float/2addr v0, v2

    .line 127
    float-to-int v0, v0

    .line 128
    .line 129
    iput v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    .line 130
    .line 131
    .line 132
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onAvatarSizeChanged()V

    .line 133
    .line 134
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerDataSource;->getUserList()Ljava/util/LinkedList;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    .line 141
    invoke-direct {p0, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserList(Ljava/util/List;)V

    .line 142
    .line 143
    .line 144
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 145
    goto :goto_1

    .line 146
    .line 147
    :cond_3
    if-eq v2, v3, :cond_5

    .line 148
    .line 149
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->defaultAvatarSize:I

    .line 150
    sub-int/2addr v0, v1

    .line 151
    int-to-float v0, v0

    .line 152
    .line 153
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    .line 154
    int-to-float v1, v1

    .line 155
    .line 156
    iget v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->overlapRatio:F

    .line 157
    .line 158
    sub-float v3, v4, v3

    .line 159
    mul-float/2addr v1, v3

    .line 160
    div-float/2addr v0, v1

    .line 161
    add-float/2addr v0, v4

    .line 162
    float-to-int v0, v0

    .line 163
    .line 164
    .line 165
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 166
    move-result v0

    .line 167
    .line 168
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->minAvatarCount:I

    .line 169
    .line 170
    if-ge v0, v1, :cond_4

    .line 171
    move v0, v1

    .line 172
    .line 173
    :cond_4
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->maxAvatarCount:I

    .line 174
    .line 175
    if-eq v0, v1, :cond_5

    .line 176
    .line 177
    iput v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->maxAvatarCount:I

    .line 178
    .line 179
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerDataSource;->getUserList()Ljava/util/LinkedList;

    .line 183
    move-result-object v0

    .line 184
    .line 185
    .line 186
    invoke-direct {p0, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserList(Ljava/util/List;)V

    .line 187
    .line 188
    .line 189
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 190
    .line 191
    .line 192
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 193
    move-result p1

    .line 194
    .line 195
    iget-boolean p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->supportFold:Z

    .line 196
    .line 197
    if-eqz p2, :cond_6

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 201
    move-result-object p2

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 205
    move-result-object p2

    .line 206
    .line 207
    .line 208
    const v0, 0x7f07023f

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 212
    move-result p2

    .line 213
    goto :goto_2

    .line 214
    .line 215
    :cond_6
    iget p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    .line 216
    .line 217
    .line 218
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 219
    move-result v0

    .line 220
    add-int/2addr p2, v0

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 224
    move-result v0

    .line 225
    add-int/2addr p2, v0

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 229
    return-void
.end method

.method public onMembersCountChanged(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animator:Landroid/animation/ValueAnimator;

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
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 10
    .line 11
    iget v0, v0, Lcom/narvii/livelayer/LiveLayerDataSource;->currentMembersCount:I

    .line 12
    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    .line 16
    filled-new-array {p1, v0}, [I

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animator:Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 26
    .line 27
    iget v1, v1, Lcom/narvii/livelayer/LiveLayerDataSource;->currentMembersCount:I

    .line 28
    sub-int/2addr v1, p1

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 32
    move-result p1

    .line 33
    .line 34
    mul-int/lit8 p1, p1, 0x64

    .line 35
    .line 36
    const/16 v1, 0x320

    .line 37
    .line 38
    .line 39
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 40
    move-result p1

    .line 41
    int-to-long v1, p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 45
    .line 46
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animator:Landroid/animation/ValueAnimator;

    .line 47
    .line 48
    new-instance v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$6;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar$6;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 55
    .line 56
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animator:Landroid/animation/ValueAnimator;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 60
    goto :goto_0

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-direct {p0, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->updateMemberCount(I)V

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->resetMoreLayer()V

    .line 67
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->supportFold:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onBarClickListener:Landroid/view/View$OnClickListener;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarShown:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    return v1

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 26
    .line 27
    :cond_2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->gestureDetector:Landroid/view/GestureDetector;

    .line 28
    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    new-instance v0, Landroid/view/GestureDetector;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    new-instance v3, Lcom/narvii/livelayer/LiveLayerOnlineBar$3;

    .line 38
    .line 39
    .line 40
    invoke-direct {v3, p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar$3;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->gestureDetector:Landroid/view/GestureDetector;

    .line 46
    .line 47
    :cond_3
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->gestureDetector:Landroid/view/GestureDetector;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 59
    move-result v0

    .line 60
    .line 61
    and-int/lit16 v0, v0, 0xff

    .line 62
    const/4 v2, 0x1

    .line 63
    .line 64
    if-eqz v0, :cond_1c

    .line 65
    .line 66
    const/high16 v3, 0x3f800000    # 1.0f

    .line 67
    .line 68
    const-string v4, "-"

    .line 69
    const/4 v5, 0x2

    .line 70
    .line 71
    if-eq v0, v2, :cond_f

    .line 72
    .line 73
    if-eq v0, v5, :cond_5

    .line 74
    const/4 p1, 0x3

    .line 75
    .line 76
    if-eq v0, p1, :cond_4

    .line 77
    .line 78
    goto/16 :goto_9

    .line 79
    .line 80
    :cond_4
    iput-boolean v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->tapping:Z

    .line 81
    .line 82
    iput-boolean v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->isDragging:Z

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showPress(Z)V

    .line 86
    .line 87
    iget-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->goFold(Z)V

    .line 91
    .line 92
    sget p1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->shadowColor:I

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->resetShadowColor(I)V

    .line 96
    .line 97
    goto/16 :goto_9

    .line 98
    .line 99
    :cond_5
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->supportFold:Z

    .line 100
    .line 101
    if-nez v0, :cond_6

    .line 102
    return v2

    .line 103
    .line 104
    .line 105
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 106
    move-result p1

    .line 107
    .line 108
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->initialMotionX:F

    .line 109
    sub-float/2addr p1, v0

    .line 110
    float-to-int p1, p1

    .line 111
    .line 112
    .line 113
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 114
    move-result v0

    .line 115
    .line 116
    iget v6, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mTouchSlop:I

    .line 117
    .line 118
    if-le v0, v6, :cond_7

    .line 119
    .line 120
    iput-boolean v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->isDragging:Z

    .line 121
    .line 122
    :cond_7
    iget-boolean v6, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->isDragging:Z

    .line 123
    .line 124
    if-eqz v6, :cond_1e

    .line 125
    .line 126
    iget v6, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    .line 127
    int-to-float v6, v6

    .line 128
    .line 129
    iget v7, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->overlapRatio:F

    .line 130
    sub-float/2addr v3, v7

    .line 131
    mul-float/2addr v6, v3

    .line 132
    float-to-int v3, v6

    .line 133
    .line 134
    .line 135
    invoke-direct {p0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showPress(Z)V

    .line 136
    .line 137
    iget-boolean v6, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    .line 138
    .line 139
    if-nez v6, :cond_a

    .line 140
    .line 141
    .line 142
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 143
    move-result v5

    .line 144
    .line 145
    if-eqz v5, :cond_8

    .line 146
    .line 147
    if-lez p1, :cond_9

    .line 148
    goto :goto_0

    .line 149
    .line 150
    :cond_8
    if-gez p1, :cond_9

    .line 151
    goto :goto_0

    .line 152
    :cond_9
    move v0, v1

    .line 153
    .line 154
    :goto_0
    sub-int p1, v3, v0

    .line 155
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object v0

    .line 173
    .line 174
    const-string v3, "marginStart"

    .line 175
    .line 176
    .line 177
    invoke-static {v3, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    goto :goto_2

    .line 179
    .line 180
    .line 181
    :cond_a
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 182
    move-result v4

    .line 183
    .line 184
    if-eqz v4, :cond_b

    .line 185
    .line 186
    if-gez p1, :cond_c

    .line 187
    goto :goto_1

    .line 188
    .line 189
    :cond_b
    if-lez p1, :cond_c

    .line 190
    goto :goto_1

    .line 191
    :cond_c
    move v0, v1

    .line 192
    .line 193
    :goto_1
    iget p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    .line 194
    div-int/2addr p1, v5

    .line 195
    .line 196
    iget v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 197
    sub-int/2addr v4, v5

    .line 198
    mul-int/2addr v4, v3

    .line 199
    sub-int/2addr p1, v4

    .line 200
    add-int/2addr p1, v0

    .line 201
    .line 202
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 206
    move-result v0

    .line 207
    sub-int/2addr p1, v0

    .line 208
    .line 209
    .line 210
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    .line 211
    move-result p1

    .line 212
    .line 213
    .line 214
    :goto_2
    invoke-direct {p0, v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->cancelAnimation(Z)V

    .line 215
    .line 216
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v2}, Lcom/narvii/livelayer/ws/ClipLayout;->setShouldClip(Z)V

    .line 220
    .line 221
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    move v0, v1

    .line 226
    .line 227
    :cond_d
    :goto_3
    iget v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 228
    .line 229
    if-ge v0, v3, :cond_e

    .line 230
    .line 231
    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 232
    .line 233
    add-int/lit8 v0, v0, 0x1

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 237
    move-result-object v3

    .line 238
    .line 239
    if-eqz v3, :cond_d

    .line 240
    .line 241
    .line 242
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    goto :goto_3

    .line 244
    .line 245
    .line 246
    :cond_e
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->moveLayout(I)V

    .line 247
    .line 248
    goto/16 :goto_9

    .line 249
    .line 250
    .line 251
    :cond_f
    invoke-direct {p0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showPress(Z)V

    .line 252
    .line 253
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->isDragging:Z

    .line 254
    .line 255
    if-nez v0, :cond_10

    .line 256
    .line 257
    iput-boolean v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->tapping:Z

    .line 258
    .line 259
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onBarClickListener:Landroid/view/View$OnClickListener;

    .line 260
    .line 261
    if-eqz p1, :cond_1e

    .line 262
    .line 263
    .line 264
    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 265
    .line 266
    goto/16 :goto_9

    .line 267
    .line 268
    :cond_10
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 269
    .line 270
    iget-object v6, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 271
    .line 272
    iget-object v6, v6, Lcom/narvii/livelayer/LiveLayerDataSource;->checkRunnable:Ljava/lang/Runnable;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 276
    .line 277
    iget-object v6, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 278
    .line 279
    iget-object v6, v6, Lcom/narvii/livelayer/LiveLayerDataSource;->checkRunnable:Ljava/lang/Runnable;

    .line 280
    .line 281
    .line 282
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getRandomDelayTime()I

    .line 283
    move-result v7

    .line 284
    int-to-long v7, v7

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 288
    .line 289
    sget v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->shadowColor:I

    .line 290
    .line 291
    .line 292
    invoke-direct {p0, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->resetShadowColor(I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 296
    move-result p1

    .line 297
    .line 298
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->initialMotionX:F

    .line 299
    sub-float/2addr p1, v0

    .line 300
    float-to-int p1, p1

    .line 301
    .line 302
    .line 303
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getExpandWidth()I

    .line 304
    move-result v0

    .line 305
    .line 306
    div-int/lit8 v0, v0, 0x4

    .line 307
    .line 308
    iget-object v6, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 309
    .line 310
    iget v7, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mMaximumFlingVelocity:I

    .line 311
    int-to-float v7, v7

    .line 312
    .line 313
    const/16 v8, 0x3e8

    .line 314
    .line 315
    .line 316
    invoke-virtual {v6, v8, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 317
    .line 318
    iget-object v6, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 322
    move-result v6

    .line 323
    .line 324
    .line 325
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 326
    move-result v7

    .line 327
    .line 328
    iget-boolean v8, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    .line 329
    .line 330
    if-eqz v8, :cond_12

    .line 331
    .line 332
    .line 333
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 334
    move-result v8

    .line 335
    .line 336
    if-eqz v8, :cond_11

    .line 337
    .line 338
    iget v8, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mMinimumFlingVelocity:I

    .line 339
    neg-int v8, v8

    .line 340
    int-to-float v8, v8

    .line 341
    .line 342
    cmpg-float v6, v6, v8

    .line 343
    .line 344
    if-gez v6, :cond_14

    .line 345
    goto :goto_4

    .line 346
    .line 347
    :cond_11
    iget v8, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mMinimumFlingVelocity:I

    .line 348
    int-to-float v8, v8

    .line 349
    .line 350
    cmpl-float v6, v6, v8

    .line 351
    .line 352
    if-lez v6, :cond_14

    .line 353
    :goto_4
    move v1, v2

    .line 354
    goto :goto_6

    .line 355
    .line 356
    .line 357
    :cond_12
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 358
    move-result v8

    .line 359
    .line 360
    if-eqz v8, :cond_13

    .line 361
    .line 362
    iget v8, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mMinimumFlingVelocity:I

    .line 363
    int-to-float v8, v8

    .line 364
    .line 365
    cmpl-float v6, v6, v8

    .line 366
    .line 367
    if-lez v6, :cond_14

    .line 368
    goto :goto_5

    .line 369
    .line 370
    :cond_13
    iget v8, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mMinimumFlingVelocity:I

    .line 371
    neg-int v8, v8

    .line 372
    int-to-float v8, v8

    .line 373
    .line 374
    cmpg-float v6, v6, v8

    .line 375
    .line 376
    if-gez v6, :cond_14

    .line 377
    :goto_5
    goto :goto_4

    .line 378
    .line 379
    :cond_14
    :goto_6
    if-nez v1, :cond_19

    .line 380
    .line 381
    iget-boolean v6, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    .line 382
    .line 383
    if-eqz v6, :cond_16

    .line 384
    .line 385
    .line 386
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 387
    move-result v6

    .line 388
    .line 389
    if-eqz v6, :cond_15

    .line 390
    neg-int v6, v0

    .line 391
    .line 392
    if-ge p1, v6, :cond_16

    .line 393
    goto :goto_7

    .line 394
    .line 395
    :cond_15
    if-gt p1, v0, :cond_18

    .line 396
    .line 397
    :cond_16
    iget-boolean v6, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    .line 398
    .line 399
    if-nez v6, :cond_19

    .line 400
    .line 401
    .line 402
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 403
    move-result v6

    .line 404
    .line 405
    if-eqz v6, :cond_17

    .line 406
    .line 407
    if-le p1, v0, :cond_19

    .line 408
    goto :goto_7

    .line 409
    :cond_17
    neg-int v0, v0

    .line 410
    .line 411
    if-ge p1, v0, :cond_19

    .line 412
    :cond_18
    :goto_7
    move v1, v2

    .line 413
    .line 414
    :cond_19
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 415
    .line 416
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 417
    sub-int/2addr v0, v2

    .line 418
    .line 419
    .line 420
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 421
    move-result-object p1

    .line 422
    .line 423
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    .line 424
    int-to-float v0, v0

    .line 425
    .line 426
    iget v6, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->overlapRatio:F

    .line 427
    sub-float/2addr v3, v6

    .line 428
    mul-float/2addr v0, v3

    .line 429
    float-to-int v0, v0

    .line 430
    .line 431
    .line 432
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 433
    move-result-object p1

    .line 434
    .line 435
    .line 436
    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->getMarginStart(Landroid/view/ViewGroup$LayoutParams;)I

    .line 437
    move-result p1

    .line 438
    .line 439
    iget-boolean v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    .line 440
    .line 441
    if-eq v1, v3, :cond_1a

    .line 442
    .line 443
    iget v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    .line 444
    div-int/2addr v3, v5

    .line 445
    .line 446
    iget v6, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 447
    sub-int/2addr v6, v5

    .line 448
    mul-int/2addr v6, v0

    .line 449
    sub-int/2addr v3, v6

    .line 450
    .line 451
    iget-object v5, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 455
    move-result v5

    .line 456
    sub-int/2addr v3, v5

    .line 457
    .line 458
    .line 459
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 460
    move-result v0

    .line 461
    .line 462
    .line 463
    :cond_1a
    filled-new-array {p1, v0}, [I

    .line 464
    move-result-object v3

    .line 465
    .line 466
    .line 467
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 468
    move-result-object v3

    .line 469
    .line 470
    iput-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldAnimator:Landroid/animation/ValueAnimator;

    .line 471
    .line 472
    new-instance v5, Lcom/narvii/livelayer/LiveLayerOnlineBar$4;

    .line 473
    .line 474
    .line 475
    invoke-direct {v5, p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar$4;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 479
    sub-int/2addr v0, p1

    .line 480
    .line 481
    .line 482
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 483
    move-result p1

    .line 484
    const/4 v0, 0x0

    .line 485
    .line 486
    cmpl-float v0, v7, v0

    .line 487
    .line 488
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 489
    .line 490
    if-lez v0, :cond_1b

    .line 491
    int-to-float v0, p1

    .line 492
    div-float/2addr v0, v7

    .line 493
    .line 494
    .line 495
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 496
    move-result v0

    .line 497
    mul-float/2addr v0, v3

    .line 498
    .line 499
    .line 500
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 501
    move-result v0

    .line 502
    goto :goto_8

    .line 503
    :cond_1b
    int-to-float v0, p1

    .line 504
    .line 505
    const/high16 v5, 0x42480000    # 50.0f

    .line 506
    div-float/2addr v0, v5

    .line 507
    .line 508
    .line 509
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 510
    move-result v0

    .line 511
    mul-float/2addr v0, v3

    .line 512
    .line 513
    .line 514
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 515
    move-result v0

    .line 516
    .line 517
    :goto_8
    const/16 v3, 0xfa

    .line 518
    .line 519
    .line 520
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 521
    move-result v0

    .line 522
    .line 523
    new-instance v3, Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 545
    move-result-object p1

    .line 546
    .line 547
    const-string v3, "speed"

    .line 548
    .line 549
    .line 550
    invoke-static {v3, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    .line 552
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldAnimator:Landroid/animation/ValueAnimator;

    .line 553
    int-to-long v3, v0

    .line 554
    .line 555
    .line 556
    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 557
    .line 558
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldAnimator:Landroid/animation/ValueAnimator;

    .line 559
    .line 560
    .line 561
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 562
    .line 563
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldAnimator:Landroid/animation/ValueAnimator;

    .line 564
    .line 565
    new-instance v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$5;

    .line 566
    .line 567
    .line 568
    invoke-direct {v0, p0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar$5;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar;Z)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 572
    goto :goto_9

    .line 573
    .line 574
    :cond_1c
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldAnimator:Landroid/animation/ValueAnimator;

    .line 575
    .line 576
    if-eqz v0, :cond_1d

    .line 577
    .line 578
    .line 579
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 580
    move-result v0

    .line 581
    .line 582
    if-eqz v0, :cond_1d

    .line 583
    .line 584
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldAnimator:Landroid/animation/ValueAnimator;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 588
    .line 589
    :cond_1d
    iput-boolean v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->tapping:Z

    .line 590
    .line 591
    .line 592
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 593
    move-result p1

    .line 594
    .line 595
    iput p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->initialMotionX:F

    .line 596
    .line 597
    .line 598
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 599
    move-result p1

    .line 600
    .line 601
    iput p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->initialWidth:I

    .line 602
    :cond_1e
    :goto_9
    return v2
.end method

.method public onUserJoined(Lcom/narvii/model/User;)V
    .locals 7

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animating:Z

    .line 7
    .line 8
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerDataSource;->correctMembersCountRunnable:Ljava/lang/Runnable;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    iget-boolean v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    .line 33
    .line 34
    if-nez v3, :cond_3

    .line 35
    .line 36
    iget-boolean v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fromCBB:Z

    .line 37
    .line 38
    if-eqz v3, :cond_2

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_2
    const v3, 0x7f0d050e

    .line 43
    goto :goto_1

    .line 44
    .line 45
    .line 46
    :cond_3
    :goto_0
    const v3, 0x7f0d050f

    .line 47
    :goto_1
    const/4 v4, 0x0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    iput-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    .line 54
    .line 55
    .line 56
    const v3, 0x7f0a0f36

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    check-cast v2, Lcom/narvii/widget/UserAvatarLayout;

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setAvatarSize(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, v2, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserAvatarView(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V

    .line 69
    .line 70
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    .line 71
    .line 72
    .line 73
    const v3, 0x7f0a0171

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object v2

    .line 78
    .line 79
    check-cast v2, Lcom/narvii/widget/ThumbImageView;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getForceRequestWidth()I

    .line 83
    move-result v3

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getForceRequestHeight()I

    .line 87
    move-result v5

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v3, v5}, Lcom/narvii/widget/ThumbImageView;->setForceRequestSize(II)V

    .line 91
    .line 92
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    .line 93
    .line 94
    const/16 v3, 0x8

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    iget-boolean v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    .line 100
    .line 101
    if-nez v2, :cond_6

    .line 102
    .line 103
    iget-boolean v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fromCBB:Z

    .line 104
    .line 105
    if-nez v2, :cond_6

    .line 106
    .line 107
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    .line 108
    .line 109
    .line 110
    const v3, 0x7f0a0f37

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    move-result-object v2

    .line 115
    .line 116
    check-cast v2, Landroid/widget/TextView;

    .line 117
    .line 118
    iget v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedText:I

    .line 119
    .line 120
    if-eqz v3, :cond_4

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 124
    move-result-object v3

    .line 125
    .line 126
    iget v5, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedText:I

    .line 127
    .line 128
    new-array v0, v0, [Ljava/lang/Object;

    .line 129
    .line 130
    const/16 v6, 0xc

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v6}, Lcom/narvii/model/User;->ellipticalNickname(I)Ljava/lang/String;

    .line 134
    move-result-object v6

    .line 135
    .line 136
    aput-object v6, v0, v4

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    goto :goto_2

    .line 145
    .line 146
    :cond_4
    const/16 v0, 0x1e

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v0}, Lcom/narvii/model/User;->ellipticalNickname(I)Ljava/lang/String;

    .line 150
    move-result-object v0

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    :goto_2
    invoke-virtual {p1}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    .line 157
    move-result v0

    .line 158
    .line 159
    if-eqz v0, :cond_5

    .line 160
    .line 161
    .line 162
    const v0, 0x7f080839

    .line 163
    goto :goto_3

    .line 164
    .line 165
    .line 166
    :cond_5
    const v0, 0x7f080838

    .line 167
    .line 168
    .line 169
    :goto_3
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 170
    .line 171
    :cond_6
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    .line 172
    const/4 v2, 0x3

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 176
    .line 177
    iget-object v0, p1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    .line 178
    .line 179
    if-eqz v0, :cond_7

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getPreloadAvatarSize()I

    .line 183
    move-result v2

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getPreloadAvatarSize()I

    .line 187
    move-result v3

    .line 188
    const/4 v4, 0x0

    .line 189
    .line 190
    .line 191
    invoke-static {v0, v4, v2, v3}, Lcom/narvii/widget/NVImageView;->fitSize(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    .line 192
    move-result-object v0

    .line 193
    .line 194
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->preloadHelper:Lcom/narvii/livelayer/LiveLayerPreloadHelper;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getPreloadAvatarSize()I

    .line 198
    move-result v3

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v0, v3, v4}, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->preloadIcon(Ljava/lang/String;ILcom/narvii/util/Callback;)V

    .line 202
    .line 203
    :cond_7
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->joinAnimRunnable:Ljava/lang/Runnable;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 207
    .line 208
    new-instance v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    .line 209
    .line 210
    .line 211
    invoke-direct {v0, p0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar;Lcom/narvii/model/User;)V

    .line 212
    .line 213
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->joinAnimRunnable:Ljava/lang/Runnable;

    .line 214
    .line 215
    const-wide/16 v1, 0x5dc

    .line 216
    .line 217
    .line 218
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 219
    return-void
.end method

.method public setAvatarStrokeWidth(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarStrokeWidth:I

    return-void
.end method

.method public setCid(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->cid:I

    return-void
.end method

.method public setForceHideOnlineTextLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->forceHideOnlineTextLayout:Z

    return-void
.end method

.method public setLift(I)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->lift:I

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->lift:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    const v2, 0x7f070245

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 38
    move-result v1

    .line 39
    add-int/2addr p1, v1

    .line 40
    .line 41
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    :cond_1
    return-void
.end method

.method public setOnAvatarShownChangeListener(Lcom/narvii/livelayer/LiveLayerOnlineBar$OnAvatarShownChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onAvatarShownChangeListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnAvatarShownChangeListener;

    return-void
.end method

.method public setOnBarClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onBarClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnFoldChangedListener(Lcom/narvii/livelayer/LiveLayerOnlineBar$OnFoldChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onFoldChangedListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnFoldChangedListener;

    return-void
.end method

.method public setOnMemberCountChangedListener(Lcom/narvii/livelayer/LiveLayerOnlineBar$OnMemberCountChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onMemberCountChangedListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnMemberCountChangedListener;

    return-void
.end method

.method public setOnUpdateMemberCountListener(Lcom/narvii/livelayer/LiveLayerOnlineBar$OnUpdateMemberCountListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onUpdateMemberCountListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnUpdateMemberCountListener;

    return-void
.end method

.method public setShouldFilterUserList(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->shouldFilterUserList:Z

    return-void
.end method

.method public setShowMore(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showMore:Z

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->resetMoreLayer()V

    .line 6
    return-void
.end method

.method public setUserList(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserList(Ljava/util/List;IZ)V

    return-void
.end method

.method public setUserList(Ljava/util/List;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;IZ)V"
        }
    .end annotation

    iput-boolean p3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->organizerInList:Z

    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->shouldFilterUserList:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 3
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerDataSource;->filterHelper:Lcom/narvii/util/FilterHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v0

    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->maxAvatarCount:I

    if-ge v0, v1, :cond_1

    if-eqz p3, :cond_1

    .line 5
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_1
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 6
    iget-boolean v1, v0, Lcom/narvii/livelayer/LiveLayerDataSource;->shared:Z

    if-nez v1, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerDataSource;->getUserQueue()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_2
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->cancelAnimation(Z)V

    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 9
    invoke-virtual {v1, v0}, Lcom/narvii/livelayer/ws/ClipLayout;->setShouldClip(Z)V

    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    if-nez p1, :cond_4

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 12
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/narvii/livelayer/LiveLayerDataSource;->setUserList(Ljava/util/LinkedList;)V

    iput v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->recentAvatarLayout:Landroid/view/View;

    const/16 v2, 0x8

    .line 13
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x1

    if-eqz p3, :cond_6

    .line 14
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 15
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move p2, v1

    :goto_0
    if-ge p2, p1, :cond_5

    iget-object p3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 16
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 17
    :cond_5
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->relayout()V

    return-void

    .line 18
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->maxAvatarCount:I

    .line 19
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    iget-object p3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 20
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    sub-int/2addr p3, v1

    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    iget v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->minAvatarCount:I

    if-lt v2, v3, :cond_b

    sub-int/2addr p3, v2

    if-lez p3, :cond_7

    move v2, v0

    :goto_1
    if-ge v2, p3, :cond_8

    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 21
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    if-gez p3, :cond_8

    move v2, v0

    :goto_2
    neg-int v3, p3

    if-ge v2, v3, :cond_8

    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 22
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getAvatarView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    iget p3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    sub-int/2addr p3, v1

    move v2, v1

    :goto_3
    if-ltz p3, :cond_a

    .line 23
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/User;

    iget-object v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 24
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int/2addr v2, v1

    if-eqz v4, :cond_9

    const v5, 0x7f0a0f36

    .line 25
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v4, :cond_9

    .line 26
    invoke-direct {p0, v4, v3}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserAvatarView(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V

    :cond_9
    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    .line 27
    :cond_a
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result p3

    if-nez p3, :cond_d

    iget-object p3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->recentAvatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 28
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    invoke-direct {p0, p3, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserAvatarView(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V

    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->recentAvatarLayout:Landroid/view/View;

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_b
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 30
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move p3, v1

    :goto_4
    if-ge p3, p1, :cond_c

    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 31
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_c
    iput v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 32
    :cond_d
    :goto_5
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->relayout()V

    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget p3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 33
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/livelayer/LiveLayerDataSource;->setCurrentMembersCount(I)V

    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 34
    invoke-virtual {p1}, Lcom/narvii/livelayer/LiveLayerDataSource;->getCurrentMembersCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onMembersCountChanged(I)V

    iget-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->goFold(Z)V

    return-void
.end method

.method public subscribeTopic(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, "liveLayer"

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, Lcom/narvii/livelayer/LiveLayerService;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1, v0}, Lcom/narvii/livelayer/LiveLayerService;->subscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_1
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->liveLayerHelper:Lcom/narvii/livelayer/LiveLayerHelper;

    .line 32
    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    new-instance v1, Lcom/narvii/livelayer/LiveLayerHelper;

    .line 36
    .line 37
    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->cid:I

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v0, v2}, Lcom/narvii/livelayer/LiveLayerHelper;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 41
    .line 42
    iput-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->liveLayerHelper:Lcom/narvii/livelayer/LiveLayerHelper;

    .line 43
    .line 44
    :cond_2
    const-string v1, "liveLayerWS"

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    check-cast v0, Lcom/narvii/livelayer/ws/LiveLayerWsService;

    .line 51
    .line 52
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->cid:I

    .line 53
    .line 54
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->liveLayerHelper:Lcom/narvii/livelayer/LiveLayerHelper;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, p1}, Lcom/narvii/livelayer/LiveLayerHelper;->getNdtopic(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 61
    .line 62
    iget-object v3, v3, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->subscribe(ILjava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    .line 66
    .line 67
    :goto_0
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->currentTopic:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public unsubscribeTopic()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->currentTopic:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    const-string v1, "liveLayer"

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/narvii/livelayer/LiveLayerService;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->currentTopic:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 28
    .line 29
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0, v2}, Lcom/narvii/livelayer/LiveLayerService;->unsubscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->liveLayerHelper:Lcom/narvii/livelayer/LiveLayerHelper;

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    new-instance v1, Lcom/narvii/livelayer/LiveLayerHelper;

    .line 40
    .line 41
    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->cid:I

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, v0, v2}, Lcom/narvii/livelayer/LiveLayerHelper;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 45
    .line 46
    iput-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->liveLayerHelper:Lcom/narvii/livelayer/LiveLayerHelper;

    .line 47
    .line 48
    :cond_2
    const-string v1, "liveLayerWS"

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    check-cast v0, Lcom/narvii/livelayer/ws/LiveLayerWsService;

    .line 55
    .line 56
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->cid:I

    .line 57
    .line 58
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->liveLayerHelper:Lcom/narvii/livelayer/LiveLayerHelper;

    .line 59
    .line 60
    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->currentTopic:Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v3}, Lcom/narvii/livelayer/LiveLayerHelper;->getNdtopic(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 67
    .line 68
    iget-object v3, v3, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->unsubscribe(ILjava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    .line 72
    :goto_0
    const/4 v0, 0x0

    .line 73
    .line 74
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->currentTopic:Ljava/lang/String;

    .line 75
    return-void
.end method
