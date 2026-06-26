.class public Lcom/narvii/monetization/bubble/BubbleViewContainer;
.super Landroid/widget/FrameLayout;
.source "BubbleViewContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/bubble/BubbleViewContainer$DoubleClickListener;
    }
.end annotation


# instance fields
.field account:Lcom/narvii/account/AccountService;

.field private bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

.field bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

.field public chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

.field chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field private cid:I

.field private contentContainer:Landroid/view/ViewGroup;

.field doubleClickListener:Lcom/narvii/monetization/bubble/BubbleViewContainer$DoubleClickListener;

.field gd:Landroid/view/GestureDetector;

.field private isDoubleTap:Z

.field private isMine:Z

.field private root:Landroid/view/View;

.field private threadBubble:Lcom/narvii/model/ChatBubble;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/bubble/BubbleViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0b006e

    .line 77
    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 78
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p2

    const-string v0, "bubble"

    .line 79
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/bubble/BubbleService;

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    const-string v0, "account"

    .line 80
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->account:Lcom/narvii/account/AccountService;

    .line 81
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleHelper;

    invoke-direct {v0, p2}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 82
    new-instance p2, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 84
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/narvii/monetization/bubble/BubbleViewContainer$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/bubble/BubbleViewContainer$1;-><init>(Lcom/narvii/monetization/bubble/BubbleViewContainer;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->gd:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/monetization/bubble/BubbleViewContainer;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->isDoubleTap:Z

    return p1
.end method

.method private configBubbleViews(Lcom/narvii/model/ChatMessage;)V
    .locals 1

    const/4 v0, 0x0

    .line 179
    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->configBubbleViews(Lcom/narvii/model/ChatMessage;Z)V

    return-void
.end method

.method private configBubbleViews(Lcom/narvii/model/ChatMessage;Z)V
    .locals 8

    .line 184
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->getMessageBubbleId(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->getMessageBubbleVersion(Lcom/narvii/model/ChatMessage;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 189
    :goto_0
    iget-object v5, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {v5, p1}, Lcom/narvii/chat/util/ChatHelper;->getMessage(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    if-eqz v4, :cond_1

    const/4 p1, 0x0

    .line 192
    invoke-direct {p0, p2, p1, v3}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setTextViewMinWidth(ZLandroid/graphics/drawable/Drawable;I)V

    .line 193
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    invoke-virtual {p1}, Lcom/narvii/chat/ChatBubbleView;->getBubbleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->removeAllSlotViews()V

    .line 195
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->root:Landroid/view/View;

    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 199
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/monetization/bubble/BubbleService;->getBubble(Ljava/lang/String;I)Lcom/narvii/model/ChatBubble;

    move-result-object p1

    if-nez p1, :cond_2

    .line 201
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    if-eqz p1, :cond_2

    .line 202
    iget v4, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->cid:I

    invoke-virtual {p1, v4, v0, v1}, Lcom/narvii/monetization/bubble/BubbleService;->requireBubble(ILjava/lang/String;I)V

    .line 205
    :cond_2
    iget-boolean p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->isMine:Z

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->threadBubble:Lcom/narvii/model/ChatBubble;

    .line 206
    :goto_1
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    invoke-virtual {p1, v0}, Lcom/narvii/monetization/bubble/BubbleService;->getBubbleInfo(Ljava/lang/String;)Lcom/narvii/model/BubbleInfo;

    move-result-object p1

    .line 207
    iget-object v4, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->isMine:Z

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    iget-boolean v2, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->isMine:Z

    :goto_2
    invoke-virtual {v4, v0, v1, v2}, Lcom/narvii/monetization/bubble/BubbleService;->getBackgroundDrawable(Ljava/lang/String;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 209
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->configPadding(Lcom/narvii/model/BubbleInfo;)V

    .line 210
    instance-of v4, v2, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v4, :cond_6

    .line 211
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 212
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 213
    iget-object v5, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v4

    invoke-virtual {v5, v6}, Lcom/narvii/chat/ChatBubbleView;->setInnerPadding(I)V

    goto :goto_3

    .line 215
    :cond_6
    iget-object v4, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    invoke-virtual {v4, v3}, Lcom/narvii/chat/ChatBubbleView;->setInnerPadding(I)V

    .line 217
    :goto_3
    iget-object v4, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v5, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->isMine:Z

    if-eqz v5, :cond_7

    const v5, 0x7f060075

    goto :goto_4

    :cond_7
    const v5, 0x7f060074

    :goto_4
    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 219
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v6, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->isMine:Z

    if-eqz v6, :cond_8

    const v6, 0x7f060036

    goto :goto_5

    :cond_8
    const v6, 0x7f060038

    :goto_5
    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    .line 220
    iget-object v6, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    iget-object v7, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    invoke-virtual {v7, v0, v4}, Lcom/narvii/monetization/bubble/BubbleService;->getBubbleTextColor(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/narvii/chat/ChatBubbleView;->setTextColor(I)V

    .line 221
    iget-object v4, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    const v6, 0x7f0900d4

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/chat/audio/AudioPlayer;

    if-eqz v4, :cond_9

    .line 223
    iget-object v6, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    invoke-virtual {v6, v0, v5}, Lcom/narvii/monetization/bubble/BubbleService;->getBubbleTextColor(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/narvii/chat/audio/AudioPlayer;->setThemeColor(I)V

    .line 225
    :cond_9
    invoke-direct {p0, p2, v2, v3}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setTextViewMinWidth(ZLandroid/graphics/drawable/Drawable;I)V

    goto :goto_6

    .line 227
    :cond_a
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->root:Landroid/view/View;

    invoke-virtual {p2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 228
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    invoke-virtual {p2}, Lcom/narvii/chat/ChatBubbleView;->getBubbleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    const v2, 0x7f0901df

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 231
    invoke-virtual {p2, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 233
    :cond_b
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07009e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 237
    :goto_6
    invoke-direct {p0, v0, v1, p1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->configSlotViews(Ljava/lang/String;ILcom/narvii/model/BubbleInfo;)V

    return-void
.end method

.method private configPadding(Lcom/narvii/model/BubbleInfo;)V
    .locals 6

    .line 321
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 322
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0, p1}, Lcom/narvii/monetization/bubble/BubbleHelper;->getSlotPadding(IILcom/narvii/model/BubbleInfo;)I

    move-result v1

    .line 323
    iget-object v2, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, p1}, Lcom/narvii/monetization/bubble/BubbleHelper;->getSlotPadding(IILcom/narvii/model/BubbleInfo;)I

    move-result v2

    .line 324
    iget-object v3, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v0, p1}, Lcom/narvii/monetization/bubble/BubbleHelper;->getSlotPadding(IILcom/narvii/model/BubbleInfo;)I

    move-result v3

    .line 325
    iget-object v4, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v0, p1}, Lcom/narvii/monetization/bubble/BubbleHelper;->getSlotPadding(IILcom/narvii/model/BubbleInfo;)I

    move-result p1

    .line 327
    iget-boolean v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->isMine:Z

    .line 328
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_2

    .line 329
    iget-object v4, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->root:Landroid/view/View;

    if-eqz v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v4, v5, v2, v1, p1}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_2

    .line 331
    :cond_2
    iget-object v4, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->contentContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    move v5, v1

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_1
    if-eqz v0, :cond_4

    move v1, v3

    :cond_4
    invoke-virtual {v4, v5, v2, v1, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_2
    return-void
.end method

.method private configSlotViews(Ljava/lang/String;ILcom/narvii/model/BubbleInfo;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 284
    invoke-direct/range {p0 .. p0}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->removeAllSlotViews()V

    if-nez v1, :cond_0

    return-void

    .line 288
    :cond_0
    iget-object v2, v1, Lcom/narvii/model/BubbleInfo;->slots:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 292
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 293
    iget-object v3, v1, Lcom/narvii/model/BubbleInfo;->allowedSlots:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 294
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/SlotPoint;

    .line 295
    invoke-virtual {v1, v4}, Lcom/narvii/model/BubbleInfo;->getSlotByPosition(Lcom/narvii/model/SlotPoint;)Lcom/narvii/model/BubbleSlot;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 297
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/BubbleSlot;

    .line 303
    iget v3, v2, Lcom/narvii/model/BubbleSlot;->align:I

    invoke-static {v3}, Lcom/narvii/model/SlotPoint;->isLegalPoint(I)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 306
    :cond_4
    iget v3, v2, Lcom/narvii/model/BubbleSlot;->align:I

    iget v4, v2, Lcom/narvii/model/BubbleSlot;->x:I

    iget v5, v2, Lcom/narvii/model/BubbleSlot;->y:I

    invoke-static {v3, v4, v5}, Lcom/narvii/model/SlotPoint;->getSlotKey(III)Ljava/lang/String;

    move-result-object v3

    .line 307
    new-instance v4, Lcom/narvii/widget/NVImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/narvii/widget/NVImageView;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090a53

    .line 308
    invoke-virtual {v4, v5, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    const/4 v5, 0x0

    .line 309
    invoke-virtual {v4, v5}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 310
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07007d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 311
    iget v5, v2, Lcom/narvii/model/BubbleSlot;->x:I

    int-to-float v5, v5

    iget-object v6, v0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    iget v6, v6, Lcom/narvii/monetization/bubble/BubbleService;->scaleXY:F

    mul-float v5, v5, v6

    float-to-int v12, v5

    .line 312
    iget v5, v2, Lcom/narvii/model/BubbleSlot;->y:I

    int-to-float v5, v5

    mul-float v5, v5, v6

    float-to-int v13, v5

    .line 313
    iget-object v7, v0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

    const v8, 0x7f0901d9

    iget v10, v2, Lcom/narvii/model/BubbleSlot;->align:I

    int-to-double v5, v9

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v14

    double-to-int v11, v5

    iget-boolean v14, v0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->isMine:Z

    invoke-virtual/range {v7 .. v14}, Lcom/narvii/monetization/bubble/BubbleHelper;->getSlotLayParams(IIIIIIZ)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    .line 315
    iget-object v5, v0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-virtual {v5, v6, v7, v3}, Lcom/narvii/monetization/bubble/BubbleService;->getSlotDrawable(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    iget-object v3, v0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->contentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method private getMessageBubbleId(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;
    .locals 2

    .line 242
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 243
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->threadBubble:Lcom/narvii/model/ChatBubble;

    invoke-static {v0, p1, v1}, Lcom/narvii/monetization/bubble/BubbleHelper;->getChatMessageBubbleId(ZLcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatBubble;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getMessageBubbleVersion(Lcom/narvii/model/ChatMessage;)I
    .locals 2

    .line 247
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 248
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->threadBubble:Lcom/narvii/model/ChatBubble;

    invoke-static {v0, p1, v1}, Lcom/narvii/monetization/bubble/BubbleHelper;->getChatMessageBubbleVersion(ZLcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatBubble;)I

    move-result p1

    return p1
.end method

.method private removeAllSlotViews()V
    .locals 2

    .line 278
    :goto_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->contentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->contentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setTextViewMinWidth(ZLandroid/graphics/drawable/Drawable;I)V
    .locals 2

    if-eqz p1, :cond_2

    .line 255
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    if-eqz p1, :cond_2

    const v0, 0x7f09066f

    .line 256
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    .line 258
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    const v0, 0x7f0901df

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_2

    .line 261
    instance-of v0, p2, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_1

    .line 262
    check-cast p2, Landroid/graphics/drawable/NinePatchDrawable;

    .line 263
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 264
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 265
    invoke-virtual {p2}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 266
    invoke-virtual {p2}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result p2

    iget v0, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v0

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setMinimumWidth(I)V

    const/4 p2, 0x0

    .line 269
    invoke-virtual {p1, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 270
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07009e

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->isDoubleTap:Z

    .line 116
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->gd:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 117
    iget-boolean v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->isDoubleTap:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 120
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getChatBubbleView()Lcom/narvii/chat/ChatBubbleView;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 125
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0902d0

    .line 126
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->contentContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0901d9

    .line 127
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/ChatBubbleView;

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    const v0, 0x7f09098b

    .line 128
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->root:Landroid/view/View;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->gd:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public setBubbleStyle(ZI)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    if-nez v0, :cond_0

    return-void

    .line 340
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->isMine:Z

    .line 341
    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/ChatBubbleView;->setBubbleStyle(ZI)V

    return-void
.end method

.method public setCallInfo(Lcom/narvii/model/ChatMessage;ILjava/lang/String;)V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    if-nez v0, :cond_0

    return-void

    .line 390
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/chat/ChatBubbleView;->setCallInfo(Lcom/narvii/model/ChatMessage;ILjava/lang/String;)V

    return-void
.end method

.method public setCommunityId(I)V
    .locals 0

    .line 349
    iput p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->cid:I

    return-void
.end method

.method public setContentBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    if-nez v0, :cond_0

    return-void

    .line 371
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentImage(Lcom/narvii/model/Media;ILcom/fasterxml/jackson/databind/node/ObjectNode;Z)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    if-nez v0, :cond_0

    return-void

    .line 356
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/narvii/chat/ChatBubbleView;->setImage(Lcom/narvii/model/Media;ILcom/fasterxml/jackson/databind/node/ObjectNode;Z)V

    return-void
.end method

.method public setContentLayout(I)V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    if-nez v0, :cond_0

    return-void

    .line 382
    :cond_0
    invoke-virtual {v0, p1}, Lcom/narvii/chat/ChatBubbleView;->setLayout(I)V

    return-void
.end method

.method public setContentText(Ljava/lang/CharSequence;Lcom/narvii/model/ChatMessage;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 132
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setContentText(Ljava/lang/CharSequence;ZLcom/fasterxml/jackson/databind/node/ObjectNode;ZLcom/narvii/model/ChatMessage;)V

    return-void
.end method

.method public setContentText(Ljava/lang/CharSequence;ZLcom/fasterxml/jackson/databind/node/ObjectNode;ZLcom/narvii/model/ChatMessage;)V
    .locals 9

    .line 137
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    if-nez v0, :cond_0

    return-void

    .line 141
    :cond_0
    iget-object v0, p5, Lcom/narvii/model/ChatMessage;->chatBubbleId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    invoke-direct {p0, p5}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->getMessageBubbleId(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p5}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->getMessageBubbleVersion(Lcom/narvii/model/ChatMessage;)I

    move-result v3

    iget-boolean v4, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->isMine:Z

    invoke-virtual {v0, v2, v3, v4}, Lcom/narvii/monetization/bubble/BubbleService;->getBackgroundDrawable(Ljava/lang/String;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    invoke-direct {p0, p5}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->getMessageBubbleId(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/narvii/monetization/bubble/BubbleService;->getBubbleTextColor(Ljava/lang/String;I)I

    move-result v1

    move v8, v1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 145
    :goto_0
    iget-object v2, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    move-object v3, p1

    move-object v4, p5

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v8}, Lcom/narvii/chat/ChatBubbleView;->setText(Ljava/lang/CharSequence;Lcom/narvii/model/ChatMessage;ZLcom/fasterxml/jackson/databind/node/ObjectNode;ZI)V

    const/4 p1, 0x1

    .line 146
    invoke-direct {p0, p5, p1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->configBubbleViews(Lcom/narvii/model/ChatMessage;Z)V

    return-void
.end method

.method public setContentVideo(Lcom/narvii/model/ChatMessage;)V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    if-nez v0, :cond_0

    return-void

    .line 363
    :cond_0
    invoke-virtual {v0, p1}, Lcom/narvii/chat/ChatBubbleView;->setVideo(Lcom/narvii/model/ChatMessage;)V

    return-void
.end method

.method public setDoubleClickListener(Lcom/narvii/monetization/bubble/BubbleViewContainer$DoubleClickListener;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->doubleClickListener:Lcom/narvii/monetization/bubble/BubbleViewContainer$DoubleClickListener;

    return-void
.end method

.method public setThreadBubble(Lcom/narvii/model/ChatBubble;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->threadBubble:Lcom/narvii/model/ChatBubble;

    return-void
.end method

.method public setVoiceNote(Lcom/narvii/model/ChatMessage;Lcom/narvii/media/MediaStatus;)V
    .locals 5

    .line 151
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0b047d

    .line 154
    invoke-virtual {v0, v1}, Lcom/narvii/chat/ChatBubbleView;->setLayout(I)V

    .line 155
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    .line 156
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClipToPadding(Z)V

    .line 157
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07009e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 160
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    const v2, 0x7f0900d4

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/audio/AudioPlayer;

    .line 161
    iget v2, p1, Lcom/narvii/model/ChatMessage;->_status:I

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/chat/audio/AudioPlayer;->setMediaUrl(Ljava/lang/String;)V

    .line 163
    iget-boolean v1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->isMine:Z

    invoke-virtual {v0, v1}, Lcom/narvii/chat/audio/AudioPlayer;->setIsMine(Z)V

    .line 164
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/audio/AudioPlayer;->setDuration(I)V

    .line 165
    invoke-virtual {v0, p2}, Lcom/narvii/chat/audio/AudioPlayer;->onStatusChange(Lcom/narvii/media/MediaStatus;)V

    .line 166
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p2

    const-string v1, "mediaPlayer"

    invoke-interface {p2, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/media/MediaPlayerManager;

    .line 167
    invoke-virtual {p2, v0}, Lcom/narvii/media/MediaPlayerManager;->tryListenMediaStatusChange(Lcom/narvii/media/MediaStatusChangeListener;)V

    .line 169
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->configBubbleViews(Lcom/narvii/model/ChatMessage;)V

    .line 170
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-boolean v1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->isMine:Z

    if-eqz v1, :cond_2

    const v1, 0x7f060036

    goto :goto_0

    :cond_2
    const v1, 0x7f060038

    :goto_0
    invoke-static {p2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 171
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->getMessageBubbleId(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 172
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->getMessageBubbleId(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->getMessageBubbleVersion(Lcom/narvii/model/ChatMessage;)I

    move-result v3

    iget-boolean v4, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->isMine:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/narvii/monetization/bubble/BubbleService;->getBackgroundDrawable(Ljava/lang/String;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 173
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->getMessageBubbleId(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lcom/narvii/monetization/bubble/BubbleService;->getBubbleTextColor(Ljava/lang/String;I)I

    move-result p2

    .line 175
    :cond_3
    invoke-virtual {v0, p2}, Lcom/narvii/chat/audio/AudioPlayer;->setThemeColor(I)V

    return-void
.end method
