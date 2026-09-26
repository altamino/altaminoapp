.class public Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/narvii/widget/NVListView$InterceptTouchEventListener;
.implements Lcom/narvii/widget/NVListView$DispatchTouchEventEndListener;


# instance fields
.field checkCanUse:Z

.field columnCount:I

.field currentPosition:I

.field currentPressedView:Landroid/view/View;

.field list:Landroid/widget/ListView;

.field membershipService:Lcom/narvii/wallet/MembershipService;

.field paddingH:I

.field positionOffset:I

.field previewView:Landroid/view/View;

.field previewing:Z

.field rowOffset:I

.field stickerAdapter:Landroid/widget/Adapter;

.field stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

.field stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

.field swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/model/StickerCollection;ZLandroid/widget/ListView;Lcom/narvii/list/refresh/SwipeRefreshLayout;Landroid/widget/Adapter;II)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->currentPosition:I

    .line 7
    .line 8
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 9
    .line 10
    iput-boolean p2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->checkCanUse:Z

    .line 11
    .line 12
    iput-object p3, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->list:Landroid/widget/ListView;

    .line 13
    .line 14
    iput-object p4, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 15
    .line 16
    iput-object p5, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->stickerAdapter:Landroid/widget/Adapter;

    .line 17
    .line 18
    iput p6, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->columnCount:I

    .line 19
    .line 20
    iput p7, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->paddingH:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    const-string p2, "membership"

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    check-cast p2, Lcom/narvii/wallet/MembershipService;

    .line 37
    .line 38
    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 39
    .line 40
    new-instance p2, Lcom/narvii/monetization/sticker/StickerHelper;

    .line 41
    .line 42
    .line 43
    invoke-direct {p2, p1}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 44
    .line 45
    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 46
    return-void
.end method

.method private canUseSticker(Lcom/narvii/model/Sticker;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->canUseSticker(Lcom/narvii/monetization/sticker/model/StickerCollection;Lcom/narvii/model/Sticker;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method private hidePreviewView()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->currentPressedView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->currentPressedView:Landroid/view/View;

    .line 12
    const/4 v0, -0x1

    .line 13
    .line 14
    iput v0, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->currentPosition:I

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->previewView:Landroid/view/View;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    :cond_1
    return-void
.end method

.method private onTouchEventUp()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->list:Landroid/widget/ListView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->list:Landroid/widget/ListView;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Landroid/view/ViewGroup;

    .line 19
    const/4 v1, 0x1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 31
    :cond_1
    const/4 v0, -0x1

    .line 32
    .line 33
    iput v0, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->currentPosition:I

    .line 34
    .line 35
    iput-boolean v1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->previewing:Z

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->hidePreviewView()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->onTouchUp()V

    .line 42
    return-void
.end method

.method private onTouchPreview(ILandroid/view/View;Lcom/narvii/model/Sticker;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->currentPressedView:Landroid/view/View;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->previewSticker(Landroid/view/View;Lcom/narvii/model/Sticker;)V

    .line 16
    .line 17
    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->currentPressedView:Landroid/view/View;

    .line 18
    .line 19
    iput p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->currentPosition:I

    .line 20
    return-void
.end method

.method private previewSticker(Landroid/view/View;Lcom/narvii/model/Sticker;)V
    .locals 10

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    if-nez p2, :cond_1

    .line 6
    return-void

    .line 7
    .line 8
    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-nez v0, :cond_2

    .line 13
    return-void

    .line 14
    .line 15
    .line 16
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_3

    .line 20
    return-void

    .line 21
    .line 22
    .line 23
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_e

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 30
    move-result v1

    .line 31
    .line 32
    if-nez v1, :cond_4

    .line 33
    .line 34
    goto/16 :goto_4

    .line 35
    :cond_4
    const/4 v1, 0x2

    .line 36
    .line 37
    new-array v2, v1, [I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 41
    .line 42
    new-array v1, v1, [I

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 46
    .line 47
    instance-of v3, v0, Landroid/view/ViewGroup;

    .line 48
    .line 49
    if-nez v3, :cond_5

    .line 50
    return-void

    .line 51
    .line 52
    :cond_5
    new-instance v3, Landroid/graphics/Rect;

    .line 53
    .line 54
    .line 55
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 56
    const/4 v4, 0x0

    .line 57
    .line 58
    aget v5, v2, v4

    .line 59
    .line 60
    aget v6, v1, v4

    .line 61
    sub-int/2addr v5, v6

    .line 62
    .line 63
    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 64
    const/4 v6, 0x1

    .line 65
    .line 66
    aget v2, v2, v6

    .line 67
    .line 68
    aget v1, v1, v6

    .line 69
    sub-int/2addr v2, v1

    .line 70
    .line 71
    iput v2, v3, Landroid/graphics/Rect;->top:I

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 75
    move-result v1

    .line 76
    add-int/2addr v5, v1

    .line 77
    .line 78
    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 79
    .line 80
    iget v1, v3, Landroid/graphics/Rect;->top:I

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 84
    move-result v2

    .line 85
    add-int/2addr v1, v2

    .line 86
    .line 87
    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 88
    .line 89
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->previewView:Landroid/view/View;

    .line 90
    .line 91
    if-nez v1, :cond_6

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    .line 98
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 99
    move-result-object p1

    .line 100
    move-object v1, v0

    .line 101
    .line 102
    check-cast v1, Landroid/view/ViewGroup;

    .line 103
    .line 104
    .line 105
    const v2, 0x7f0d070e

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v2, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->previewView:Landroid/view/View;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 115
    .line 116
    :cond_6
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->previewView:Landroid/view/View;

    .line 117
    .line 118
    .line 119
    const v1, 0x7f0a0b23

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    check-cast p1, Lcom/narvii/widget/PopupBubble;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 129
    move-result-object v1

    .line 130
    .line 131
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 135
    move-result-object v2

    .line 136
    .line 137
    const/high16 v5, 0x43c80000    # 400.0f

    .line 138
    .line 139
    .line 140
    invoke-static {v2, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 141
    move-result v2

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 145
    move-result-object v5

    .line 146
    .line 147
    .line 148
    invoke-static {v5}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 149
    move-result v5

    .line 150
    int-to-float v5, v5

    .line 151
    .line 152
    .line 153
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    .line 154
    move-result v2

    .line 155
    .line 156
    const/high16 v5, 0x40400000    # 3.0f

    .line 157
    div-float/2addr v2, v5

    .line 158
    float-to-int v2, v2

    .line 159
    int-to-float v2, v2

    .line 160
    .line 161
    .line 162
    const v5, 0x3f99999a    # 1.2f

    .line 163
    mul-float/2addr v2, v5

    .line 164
    float-to-int v2, v2

    .line 165
    .line 166
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 167
    .line 168
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 169
    .line 170
    iget-object v5, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->previewView:Landroid/view/View;

    .line 171
    .line 172
    .line 173
    const v7, 0x7f0a0dac

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 177
    move-result-object v5

    .line 178
    .line 179
    check-cast v5, Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v5, p2}, Lcom/narvii/monetization/sticker/widget/StickerImageView;->setSticker(Lcom/narvii/model/Sticker;)V

    .line 183
    .line 184
    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->previewView:Landroid/view/View;

    .line 185
    .line 186
    .line 187
    const v7, 0x7f0a0705

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 191
    move-result-object p2

    .line 192
    .line 193
    check-cast p2, Landroid/widget/ProgressBar;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5}, Lcom/narvii/widget/NVImageView;->getStatus()I

    .line 197
    move-result v7

    .line 198
    .line 199
    if-ne v7, v6, :cond_8

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5}, Lcom/narvii/widget/NVImageView;->getStatus()I

    .line 203
    move-result v7

    .line 204
    .line 205
    if-ne v7, v6, :cond_7

    .line 206
    move v7, v6

    .line 207
    goto :goto_0

    .line 208
    :cond_7
    move v7, v4

    .line 209
    .line 210
    .line 211
    :goto_0
    invoke-static {p2, v7}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 212
    .line 213
    new-instance v7, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener$1;

    .line 214
    .line 215
    .line 216
    invoke-direct {v7, p0, p2, v5}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener$1;-><init>(Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;Landroid/widget/ProgressBar;Lcom/narvii/monetization/sticker/widget/StickerImageView;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v5, v7}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 220
    .line 221
    .line 222
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 223
    move-result p2

    .line 224
    .line 225
    sget-boolean v0, Lcom/narvii/util/statusbar/StatusBarUtils;->STATUS_BAR_ENABLE:Z

    .line 226
    .line 227
    if-eqz v0, :cond_9

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 231
    move-result-object v0

    .line 232
    .line 233
    .line 234
    invoke-static {v0}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 235
    move-result v0

    .line 236
    goto :goto_1

    .line 237
    :cond_9
    move v0, v4

    .line 238
    .line 239
    :goto_1
    iget v5, v3, Landroid/graphics/Rect;->top:I

    .line 240
    .line 241
    sub-int v7, v5, v2

    .line 242
    .line 243
    if-le v7, v0, :cond_a

    .line 244
    move v0, v6

    .line 245
    goto :goto_2

    .line 246
    :cond_a
    move v0, v4

    .line 247
    .line 248
    :goto_2
    if-eqz v0, :cond_b

    .line 249
    sub-int/2addr v5, v2

    .line 250
    goto :goto_3

    .line 251
    .line 252
    :cond_b
    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 253
    .line 254
    .line 255
    :goto_3
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    .line 256
    move-result v7

    .line 257
    .line 258
    div-int/lit8 v8, v2, 0x2

    .line 259
    sub-int/2addr v7, v8

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    .line 263
    move-result v8

    .line 264
    .line 265
    div-int/lit8 v9, p2, 0x2

    .line 266
    .line 267
    if-ge v8, v9, :cond_c

    .line 268
    .line 269
    .line 270
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    .line 271
    move-result v7

    .line 272
    .line 273
    .line 274
    :cond_c
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    .line 275
    move-result v8

    .line 276
    .line 277
    if-le v8, v9, :cond_d

    .line 278
    sub-int/2addr p2, v2

    .line 279
    .line 280
    .line 281
    invoke-static {v7, p2}, Ljava/lang/Math;->min(II)I

    .line 282
    move-result v7

    .line 283
    .line 284
    :cond_d
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 285
    .line 286
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 287
    .line 288
    .line 289
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1, v4}, Lcom/narvii/widget/PopupBubble;->setAutoRtl(Z)V

    .line 293
    .line 294
    xor-int/lit8 p2, v0, 0x1

    .line 295
    .line 296
    .line 297
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    .line 298
    move-result v0

    .line 299
    sub-int/2addr v0, v7

    .line 300
    .line 301
    .line 302
    invoke-virtual {p1, p2, v0}, Lcom/narvii/widget/PopupBubble;->setIndicator(ZI)V

    .line 303
    .line 304
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->previewView:Landroid/view/View;

    .line 305
    .line 306
    .line 307
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 308
    :cond_e
    :goto_4
    return-void
.end method


# virtual methods
.method public onDispatchTouchEventEnd(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->previewing:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->currentPressedView:Landroid/view/View;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->currentPressedView:Landroid/view/View;

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 21
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    const/4 v0, 0x3

    .line 9
    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->onTouchEventUp()V

    .line 15
    .line 16
    :goto_0
    iget-boolean p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->previewing:Z

    .line 17
    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    return p1

    .line 5
    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->previewing:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    return p1

    .line 10
    .line 11
    .line 12
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    if-eq v0, v1, :cond_f

    .line 17
    const/4 v2, 0x2

    .line 18
    .line 19
    if-eq v0, v2, :cond_2

    .line 20
    const/4 p1, 0x3

    .line 21
    .line 22
    if-eq v0, p1, :cond_f

    .line 23
    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :cond_2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->list:Landroid/widget/ListView;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 30
    move-result v3

    .line 31
    float-to-int v3, v3

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 35
    move-result v4

    .line 36
    float-to-int v4, v4

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v3, v4}, Landroid/widget/AbsListView;->pointToPosition(II)I

    .line 40
    move-result v0

    .line 41
    .line 42
    iget v3, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->rowOffset:I

    .line 43
    .line 44
    if-lt v0, v3, :cond_e

    .line 45
    .line 46
    iget-object v3, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->list:Landroid/widget/ListView;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    if-eqz v3, :cond_e

    .line 53
    .line 54
    iget-object v3, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->stickerAdapter:Landroid/widget/Adapter;

    .line 55
    .line 56
    if-nez v3, :cond_3

    .line 57
    .line 58
    goto/16 :goto_2

    .line 59
    .line 60
    :cond_3
    iget-object v3, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->list:Landroid/widget/ListView;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 64
    move-result v3

    .line 65
    .line 66
    iget v4, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->paddingH:I

    .line 67
    mul-int/2addr v4, v2

    .line 68
    sub-int/2addr v3, v4

    .line 69
    .line 70
    iget v2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->columnCount:I

    .line 71
    div-int/2addr v3, v2

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 75
    move-result p2

    .line 76
    .line 77
    iget v2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->paddingH:I

    .line 78
    int-to-float v2, v2

    .line 79
    sub-float/2addr p2, v2

    .line 80
    int-to-float v2, v3

    .line 81
    div-float/2addr p2, v2

    .line 82
    float-to-int p2, p2

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 86
    move-result v2

    .line 87
    .line 88
    if-eqz v2, :cond_4

    .line 89
    .line 90
    iget v2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->columnCount:I

    .line 91
    sub-int/2addr v2, v1

    .line 92
    .line 93
    sub-int p2, v2, p2

    .line 94
    .line 95
    :cond_4
    iget v2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->columnCount:I

    .line 96
    sub-int/2addr v2, v1

    .line 97
    .line 98
    .line 99
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    .line 100
    move-result p2

    .line 101
    .line 102
    .line 103
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 104
    move-result p1

    .line 105
    .line 106
    iget p2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->rowOffset:I

    .line 107
    .line 108
    sub-int p2, v0, p2

    .line 109
    .line 110
    iget v2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->columnCount:I

    .line 111
    mul-int/2addr p2, v2

    .line 112
    add-int/2addr p2, p1

    .line 113
    .line 114
    iget v2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->positionOffset:I

    .line 115
    sub-int/2addr p2, v2

    .line 116
    .line 117
    iget v2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->currentPosition:I

    .line 118
    .line 119
    if-ne v2, p2, :cond_6

    .line 120
    .line 121
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->currentPressedView:Landroid/view/View;

    .line 122
    .line 123
    if-eqz p1, :cond_5

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 127
    :cond_5
    return v1

    .line 128
    .line 129
    :cond_6
    if-ltz p2, :cond_d

    .line 130
    .line 131
    iget-object v2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->stickerAdapter:Landroid/widget/Adapter;

    .line 132
    .line 133
    .line 134
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    .line 135
    move-result v2

    .line 136
    .line 137
    if-lt p2, v2, :cond_7

    .line 138
    goto :goto_1

    .line 139
    .line 140
    :cond_7
    iget-object v2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->stickerAdapter:Landroid/widget/Adapter;

    .line 141
    .line 142
    .line 143
    invoke-interface {v2, p2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 144
    move-result-object v2

    .line 145
    .line 146
    instance-of v3, v2, Lcom/narvii/model/Sticker;

    .line 147
    .line 148
    if-eqz v3, :cond_c

    .line 149
    .line 150
    check-cast v2, Lcom/narvii/model/Sticker;

    .line 151
    .line 152
    iget-object v3, v2, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    .line 153
    .line 154
    const-string v4, "sticker"

    .line 155
    .line 156
    .line 157
    invoke-static {v4, v3}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    iget-boolean v3, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->checkCanUse:Z

    .line 160
    .line 161
    if-eqz v3, :cond_9

    .line 162
    .line 163
    .line 164
    invoke-direct {p0, v2}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->canUseSticker(Lcom/narvii/model/Sticker;)Z

    .line 165
    move-result v3

    .line 166
    .line 167
    if-eqz v3, :cond_8

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2}, Lcom/narvii/model/Sticker;->isDisabled()Z

    .line 171
    move-result v3

    .line 172
    .line 173
    if-eqz v3, :cond_9

    .line 174
    .line 175
    .line 176
    :cond_8
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->hidePreviewView()V

    .line 177
    return v1

    .line 178
    .line 179
    :cond_9
    iget-object v3, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->list:Landroid/widget/ListView;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 183
    move-result v3

    .line 184
    .line 185
    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->list:Landroid/widget/ListView;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 189
    move-result v4

    .line 190
    .line 191
    if-lt v0, v3, :cond_b

    .line 192
    .line 193
    if-le v0, v4, :cond_a

    .line 194
    goto :goto_0

    .line 195
    :cond_a
    sub-int/2addr v0, v3

    .line 196
    .line 197
    iget-object v3, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->list:Landroid/widget/ListView;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 201
    move-result-object v0

    .line 202
    .line 203
    instance-of v3, v0, Landroid/view/ViewGroup;

    .line 204
    .line 205
    if-eqz v3, :cond_10

    .line 206
    .line 207
    check-cast v0, Landroid/view/ViewGroup;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 211
    move-result v3

    .line 212
    .line 213
    if-le v3, p1, :cond_10

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 217
    move-result-object p1

    .line 218
    .line 219
    if-eqz p1, :cond_10

    .line 220
    .line 221
    .line 222
    invoke-direct {p0, p2, p1, v2}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->onTouchPreview(ILandroid/view/View;Lcom/narvii/model/Sticker;)V

    .line 223
    goto :goto_3

    .line 224
    .line 225
    .line 226
    :cond_b
    :goto_0
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->hidePreviewView()V

    .line 227
    return v1

    .line 228
    .line 229
    .line 230
    :cond_c
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->hidePreviewView()V

    .line 231
    return v1

    .line 232
    .line 233
    .line 234
    :cond_d
    :goto_1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->hidePreviewView()V

    .line 235
    return v1

    .line 236
    .line 237
    .line 238
    :cond_e
    :goto_2
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->hidePreviewView()V

    .line 239
    return v1

    .line 240
    .line 241
    .line 242
    :cond_f
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->onTouchEventUp()V

    .line 243
    :cond_10
    :goto_3
    return v1
.end method

.method protected onTouchUp()V
    .locals 0

    return-void
.end method

.method public setPositionOffset(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->positionOffset:I

    return-void
.end method

.method public setRowOffset(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->rowOffset:I

    return-void
.end method

.method public setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    return-void
.end method

.method public startPreview(ILandroid/view/View;Lcom/narvii/model/Sticker;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->previewing:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->list:Landroid/widget/ListView;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    instance-of v1, v1, Landroid/view/ViewGroup;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->list:Landroid/widget/ListView;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Landroid/view/ViewGroup;

    .line 22
    const/4 v2, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->onTouchPreview(ILandroid/view/View;Lcom/narvii/model/Sticker;)V

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 36
    :cond_1
    return-void
.end method
