.class public Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;
.super Ljava/lang/Object;
.source "StickerPreviewTouchListener.java"

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

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->currentPosition:I

    .line 53
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 54
    iput-boolean p2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->checkCanUse:Z

    .line 55
    iput-object p3, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->list:Landroid/widget/ListView;

    .line 56
    iput-object p4, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 57
    iput-object p5, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->stickerAdapter:Landroid/widget/Adapter;

    .line 58
    iput p6, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->columnCount:I

    .line 59
    iput p7, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->paddingH:I

    .line 60
    invoke-virtual {p3}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "membership"

    .line 61
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/wallet/MembershipService;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 62
    new-instance p2, Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-direct {p2, p1}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    return-void
.end method

.method private canUseSticker(Lcom/narvii/model/Sticker;)Z
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/monetization/sticker/StickerHelper;->canUseSticker(Lcom/narvii/monetization/sticker/model/StickerCollection;Lcom/narvii/model/Sticker;)Z

    move-result p1

    return p1
.end method

.method private hidePreviewView()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->currentPressedView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->currentPressedView:Landroid/view/View;

    const/4 v0, -0x1

    .line 82
    iput v0, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->currentPosition:I

    .line 83
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->previewView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private onTouchEventUp()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    const/4 v0, -0x1

    .line 294
    iput v0, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->currentPosition:I

    .line 296
    iput-boolean v1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->previewing:Z

    .line 297
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->hidePreviewView()V

    .line 298
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->onTouchUp()V

    return-void
.end method

.method private onTouchPreview(ILandroid/view/View;Lcom/narvii/model/Sticker;)V
    .locals 2

    const/4 v0, 0x1

    .line 195
    invoke-virtual {p2, v0}, Landroid/view/View;->setPressed(Z)V

    .line 197
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->currentPressedView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 198
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 200
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->previewSticker(Landroid/view/View;Lcom/narvii/model/Sticker;)V

    .line 201
    iput-object p2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->currentPressedView:Landroid/view/View;

    .line 202
    iput p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->currentPosition:I

    return-void
.end method

.method private previewSticker(Landroid/view/View;Lcom/narvii/model/Sticker;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 102
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 107
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 111
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_4

    :cond_4
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 116
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    new-array v1, v1, [I

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 121
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-nez v3, :cond_5

    return-void

    .line 125
    :cond_5
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x0

    .line 126
    aget v5, v2, v4

    aget v6, v1, v4

    sub-int/2addr v5, v6

    iput v5, v3, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    .line 127
    aget v2, v2, v5

    aget v1, v1, v5

    sub-int/2addr v2, v1

    iput v2, v3, Landroid/graphics/Rect;->top:I

    .line 128
    iget v1, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->right:I

    .line 129
    iget v1, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 131
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->previewView:Landroid/view/View;

    if-nez v1, :cond_6

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0b0657

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->previewView:Landroid/view/View;

    .line 133
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->previewView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 136
    :cond_6
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->previewView:Landroid/view/View;

    const v1, 0x7f090869

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/PopupBubble;

    .line 137
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 138
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v6, 0x43c80000    # 400.0f

    invoke-static {v2, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v2, v6

    float-to-int v2, v2

    int-to-float v2, v2

    const v6, 0x3f99999a    # 1.2f

    mul-float v2, v2, v6

    float-to-int v2, v2

    .line 139
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 140
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 142
    iget-object v6, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->previewView:Landroid/view/View;

    const v7, 0x7f090ab2

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 143
    invoke-virtual {v6, p2}, Lcom/narvii/monetization/sticker/widget/StickerImageView;->setSticker(Lcom/narvii/model/Sticker;)V

    .line 145
    iget-object p2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->previewView:Landroid/view/View;

    const v7, 0x7f09057d

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    .line 146
    invoke-virtual {v6}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result v7

    if-ne v7, v5, :cond_8

    .line 147
    invoke-virtual {v6}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result v7

    if-ne v7, v5, :cond_7

    const/4 v7, 0x1

    goto :goto_0

    :cond_7
    const/4 v7, 0x0

    :goto_0
    invoke-static {p2, v7}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 148
    new-instance v7, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener$1;

    invoke-direct {v7, p0, p2, v6}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener$1;-><init>(Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;Landroid/widget/ProgressBar;Lcom/narvii/monetization/sticker/widget/StickerImageView;)V

    invoke-virtual {v6, v7}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 159
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p2

    .line 161
    sget-boolean v0, Lcom/narvii/util/statusbar/StatusBarUtils;->STATUS_BAR_ENABLE:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    .line 162
    :goto_1
    iget v6, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v2

    if-le v6, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_b

    .line 164
    iget v6, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v2

    goto :goto_3

    :cond_b
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    .line 165
    :goto_3
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    div-int/lit8 v8, v2, 0x2

    sub-int/2addr v7, v8

    .line 166
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    div-int/lit8 v9, p2, 0x2

    if-ge v8, v9, :cond_c

    .line 167
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 169
    :cond_c
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    if-le v8, v9, :cond_d

    sub-int/2addr p2, v2

    .line 170
    invoke-static {v7, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 173
    :cond_d
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 174
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 175
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    invoke-virtual {p1, v4}, Lcom/narvii/widget/PopupBubble;->setAutoRtl(Z)V

    xor-int/lit8 p2, v0, 0x1

    .line 177
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    sub-int/2addr v0, v7

    invoke-virtual {p1, p2, v0}, Lcom/narvii/widget/PopupBubble;->setIndicator(ZI)V

    .line 178
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->previewView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    :goto_4
    return-void
.end method


# virtual methods
.method public onDispatchTouchEventEnd(Landroid/view/MotionEvent;)V
    .locals 1

    .line 319
    iget-boolean p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->previewing:Z

    if-eqz p1, :cond_0

    .line 322
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->currentPressedView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 323
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->currentPressedView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->onTouchEventUp()V

    .line 314
    :goto_0
    iget-boolean p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->previewing:Z

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 p1, 0x0

    if-nez p2, :cond_0

    return p1

    .line 210
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->previewing:Z

    if-nez v0, :cond_1

    return p1

    .line 213
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_f

    goto/16 :goto_3

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->list:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    .line 216
    iget v3, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->rowOffset:I

    if-lt v0, v3, :cond_e

    iget-object v3, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->stickerAdapter:Landroid/widget/Adapter;

    if-nez v3, :cond_3

    goto/16 :goto_2

    .line 221
    :cond_3
    iget-object v3, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->paddingH:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->columnCount:I

    div-int/2addr v3, v2

    .line 222
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iget v2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->paddingH:I

    int-to-float v2, v2

    sub-float/2addr p2, v2

    int-to-float v2, v3

    div-float/2addr p2, v2

    float-to-int p2, p2

    .line 223
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 224
    iget v2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->columnCount:I

    sub-int/2addr v2, v1

    sub-int p2, v2, p2

    .line 226
    :cond_4
    iget v2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->columnCount:I

    sub-int/2addr v2, v1

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 227
    iget p2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->rowOffset:I

    sub-int p2, v0, p2

    iget v2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->columnCount:I

    mul-int p2, p2, v2

    add-int/2addr p2, p1

    iget v2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->positionOffset:I

    sub-int/2addr p2, v2

    .line 228
    iget v2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->currentPosition:I

    if-ne v2, p2, :cond_6

    .line 229
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->currentPressedView:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 230
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_5
    return v1

    :cond_6
    if-ltz p2, :cond_d

    .line 235
    iget-object v2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->stickerAdapter:Landroid/widget/Adapter;

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lt p2, v2, :cond_7

    goto :goto_1

    .line 240
    :cond_7
    iget-object v2, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->stickerAdapter:Landroid/widget/Adapter;

    invoke-interface {v2, p2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 241
    instance-of v3, v2, Lcom/narvii/model/Sticker;

    if-eqz v3, :cond_c

    .line 243
    check-cast v2, Lcom/narvii/model/Sticker;

    .line 244
    iget-object v3, v2, Lcom/narvii/model/Sticker;->icon:Ljava/lang/String;

    const-string v4, "sticker"

    invoke-static {v4, v3}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-boolean v3, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->checkCanUse:Z

    if-eqz v3, :cond_9

    invoke-direct {p0, v2}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->canUseSticker(Lcom/narvii/model/Sticker;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lcom/narvii/model/Sticker;->isDisabled()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 248
    :cond_8
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->hidePreviewView()V

    return v1

    .line 252
    :cond_9
    iget-object v3, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    .line 253
    iget-object v4, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->list:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    if-lt v0, v3, :cond_b

    if-le v0, v4, :cond_a

    goto :goto_0

    :cond_a
    sub-int/2addr v0, v3

    .line 260
    iget-object v3, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->list:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 262
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_10

    .line 263
    check-cast v0, Landroid/view/ViewGroup;

    .line 264
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-le v3, p1, :cond_10

    .line 265
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 267
    invoke-direct {p0, p2, p1, v2}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->onTouchPreview(ILandroid/view/View;Lcom/narvii/model/Sticker;)V

    goto :goto_3

    .line 256
    :cond_b
    :goto_0
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->hidePreviewView()V

    return v1

    .line 273
    :cond_c
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->hidePreviewView()V

    return v1

    .line 236
    :cond_d
    :goto_1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->hidePreviewView()V

    return v1

    .line 217
    :cond_e
    :goto_2
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->hidePreviewView()V

    return v1

    .line 279
    :cond_f
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->onTouchEventUp()V

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

    .line 74
    iput p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->positionOffset:I

    return-void
.end method

.method public setRowOffset(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->rowOffset:I

    return-void
.end method

.method public setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    return-void
.end method

.method public startPreview(ILandroid/view/View;Lcom/narvii/model/Sticker;)V
    .locals 3

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->previewing:Z

    .line 184
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 187
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->onTouchPreview(ILandroid/view/View;Lcom/narvii/model/Sticker;)V

    .line 189
    iget-object p1, p0, Lcom/narvii/monetization/sticker/StickerPreviewTouchListener;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    if-eqz p1, :cond_1

    .line 190
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    return-void
.end method
