.class public Lcom/narvii/monetization/bubble/BubbleViewContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/bubble/BubbleViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0d0084

    .line 3
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p2

    const-string v0, "bubble"

    .line 5
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/bubble/BubbleService;

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    const-string v0, "account"

    .line 6
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->account:Lcom/narvii/account/AccountService;

    .line 7
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleHelper;

    invoke-direct {v0, p2}, Lcom/narvii/monetization/bubble/BubbleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 8
    new-instance p2, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 9
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/narvii/monetization/bubble/BubbleViewContainer$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/bubble/BubbleViewContainer$1;-><init>(Lcom/narvii/monetization/bubble/BubbleViewContainer;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->gd:Landroid/view/GestureDetector;

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/monetization/bubble/BubbleViewContainer;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->isDoubleTap:Z

    return-void
.end method

.method private configBubbleViews(Lcom/narvii/model/ChatMessage;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->configBubbleViews(Lcom/narvii/model/ChatMessage;Z)V

    return-void
.end method

.method private configBubbleViews(Lcom/narvii/model/ChatMessage;Z)V
    .locals 8

    .line 2
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->getMessageBubbleId(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->getMessageBubbleVersion(Lcom/narvii/model/ChatMessage;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 4
    invoke-virtual {v5, p1}, Lcom/narvii/chat/util/ChatHelper;->getMessage(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    if-eqz v4, :cond_1

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p2, p1, v3}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setTextViewMinWidth(ZLandroid/graphics/drawable/Drawable;I)V

    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 6
    invoke-virtual {p1}, Lcom/narvii/chat/ChatBubbleView;->getBubbleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->removeAllSlotViews()V

    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->root:Landroid/view/View;

    .line 8
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/narvii/monetization/bubble/BubbleService;->getBubble(Ljava/lang/String;I)Lcom/narvii/model/ChatBubble;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    if-eqz p1, :cond_2

    iget v4, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->cid:I

    .line 10
    invoke-virtual {p1, v4, v0, v1}, Lcom/narvii/monetization/bubble/BubbleService;->requireBubble(ILjava/lang/String;I)V

    :cond_2
    iget-boolean p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->isMine:Z

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->threadBubble:Lcom/narvii/model/ChatBubble;

    :goto_1
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 11
    invoke-virtual {p1, v0}, Lcom/narvii/monetization/bubble/BubbleService;->getBubbleInfo(Ljava/lang/String;)Lcom/narvii/model/BubbleInfo;

    move-result-object p1

    iget-object v4, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 12
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->isMine:Z

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    iget-boolean v2, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->isMine:Z

    :goto_2
    invoke-virtual {v4, v0, v1, v2}, Lcom/narvii/monetization/bubble/BubbleService;->getBackgroundDrawable(Ljava/lang/String;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 13
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->configPadding(Lcom/narvii/model/BubbleInfo;)V

    .line 14
    instance-of v4, v2, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v4, :cond_6

    .line 15
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 16
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v5, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v4

    .line 17
    invoke-virtual {v5, v6}, Lcom/narvii/chat/ChatBubbleView;->setInnerPadding(I)V

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 18
    invoke-virtual {v4, v3}, Lcom/narvii/chat/ChatBubbleView;->setInnerPadding(I)V

    :goto_3
    iget-object v4, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 19
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v5, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->isMine:Z

    if-eqz v5, :cond_7

    const v5, 0x7f060095

    goto :goto_4

    :cond_7
    const v5, 0x7f060094

    :goto_4
    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v6, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->isMine:Z

    if-eqz v6, :cond_8

    const v6, 0x7f060052

    goto :goto_5

    :cond_8
    const v6, 0x7f060054

    :goto_5
    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    iget-object v6, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    iget-object v7, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 22
    invoke-virtual {v7, v0, v4}, Lcom/narvii/monetization/bubble/BubbleService;->getBubbleTextColor(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/narvii/chat/ChatBubbleView;->setTextColor(I)V

    iget-object v4, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    const v6, 0x7f0a015c

    .line 23
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/chat/audio/AudioPlayer;

    if-eqz v4, :cond_9

    iget-object v6, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 24
    invoke-virtual {v6, v0, v5}, Lcom/narvii/monetization/bubble/BubbleService;->getBubbleTextColor(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/narvii/chat/audio/AudioPlayer;->setThemeColor(I)V

    .line 25
    :cond_9
    invoke-direct {p0, p2, v2, v3}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setTextViewMinWidth(ZLandroid/graphics/drawable/Drawable;I)V

    goto :goto_6

    :cond_a
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->root:Landroid/view/View;

    .line 26
    invoke-virtual {p2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 27
    invoke-virtual {p2}, Lcom/narvii/chat/ChatBubbleView;->getBubbleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    const v2, 0x7f0a0296

    .line 28
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 29
    invoke-virtual {p2, v3}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_b
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 31
    :goto_6
    invoke-direct {p0, v0, v1, p1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->configSlotViews(Ljava/lang/String;ILcom/narvii/model/BubbleInfo;)V

    return-void
.end method

.method private configPadding(Lcom/narvii/model/BubbleInfo;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0700b7

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 14
    const/4 v2, 0x2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2, v0, p1}, Lcom/narvii/monetization/bubble/BubbleHelper;->getSlotPadding(IILcom/narvii/model/BubbleInfo;)I

    .line 18
    move-result v1

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 21
    const/4 v3, 0x1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3, v0, p1}, Lcom/narvii/monetization/bubble/BubbleHelper;->getSlotPadding(IILcom/narvii/model/BubbleInfo;)I

    .line 25
    move-result v2

    .line 26
    .line 27
    iget-object v3, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 28
    const/4 v4, 0x3

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v4, v0, p1}, Lcom/narvii/monetization/bubble/BubbleHelper;->getSlotPadding(IILcom/narvii/model/BubbleInfo;)I

    .line 32
    move-result v3

    .line 33
    .line 34
    iget-object v4, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 35
    const/4 v5, 0x4

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v5, v0, p1}, Lcom/narvii/monetization/bubble/BubbleHelper;->getSlotPadding(IILcom/narvii/model/BubbleInfo;)I

    .line 39
    move-result p1

    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->isMine:Z

    .line 42
    .line 43
    iget-object v4, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->root:Landroid/view/View;

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    move v5, v1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move v5, v3

    .line 49
    .line 50
    :goto_0
    if-eqz v0, :cond_1

    .line 51
    move v1, v3

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-virtual {v4, v5, v2, v1, p1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 55
    return-void
.end method

.method private configSlotViews(Ljava/lang/String;ILcom/narvii/model/BubbleInfo;)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p3

    .line 5
    .line 6
    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->removeAllSlotViews()V

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    iget-object v2, v1, Lcom/narvii/model/BubbleInfo;->slots:Ljava/util/List;

    .line 13
    .line 14
    if-eqz v2, :cond_5

    .line 15
    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 18
    move-result v2

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    iget-object v3, v1, Lcom/narvii/model/BubbleInfo;->allowedSlots:Ljava/util/List;

    .line 30
    .line 31
    if-eqz v3, :cond_3

    .line 32
    .line 33
    .line 34
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    .line 38
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v4

    .line 40
    .line 41
    if-eqz v4, :cond_3

    .line 42
    .line 43
    .line 44
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v4

    .line 46
    .line 47
    check-cast v4, Lcom/narvii/model/SlotPoint;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v4}, Lcom/narvii/model/BubbleInfo;->getSlotByPosition(Lcom/narvii/model/SlotPoint;)Lcom/narvii/model/BubbleSlot;

    .line 51
    move-result-object v4

    .line 52
    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    .line 64
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v2

    .line 66
    .line 67
    if-eqz v2, :cond_5

    .line 68
    .line 69
    .line 70
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    check-cast v2, Lcom/narvii/model/BubbleSlot;

    .line 74
    .line 75
    iget v3, v2, Lcom/narvii/model/BubbleSlot;->align:I

    .line 76
    .line 77
    .line 78
    invoke-static {v3}, Lcom/narvii/model/SlotPoint;->isLegalPoint(I)Z

    .line 79
    move-result v3

    .line 80
    .line 81
    if-nez v3, :cond_4

    .line 82
    goto :goto_1

    .line 83
    .line 84
    :cond_4
    iget v3, v2, Lcom/narvii/model/BubbleSlot;->align:I

    .line 85
    .line 86
    iget v4, v2, Lcom/narvii/model/BubbleSlot;->x:I

    .line 87
    .line 88
    iget v5, v2, Lcom/narvii/model/BubbleSlot;->y:I

    .line 89
    .line 90
    .line 91
    invoke-static {v3, v4, v5}, Lcom/narvii/model/SlotPoint;->getSlotKey(III)Ljava/lang/String;

    .line 92
    move-result-object v3

    .line 93
    .line 94
    new-instance v4, Lcom/narvii/widget/NVImageView;

    .line 95
    .line 96
    .line 97
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 98
    move-result-object v5

    .line 99
    .line 100
    .line 101
    invoke-direct {v4, v5}, Lcom/narvii/widget/NVImageView;-><init>(Landroid/content/Context;)V

    .line 102
    .line 103
    .line 104
    const v5, 0x7f0a0d2a

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v5, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 108
    const/4 v5, 0x0

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v5}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 112
    .line 113
    .line 114
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 115
    move-result-object v5

    .line 116
    .line 117
    .line 118
    const v6, 0x7f0700b7

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 122
    move-result v9

    .line 123
    .line 124
    iget v5, v2, Lcom/narvii/model/BubbleSlot;->x:I

    .line 125
    int-to-float v5, v5

    .line 126
    .line 127
    iget-object v6, v0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 128
    .line 129
    iget v6, v6, Lcom/narvii/monetization/bubble/BubbleService;->scaleXY:F

    .line 130
    mul-float/2addr v5, v6

    .line 131
    float-to-int v12, v5

    .line 132
    .line 133
    iget v5, v2, Lcom/narvii/model/BubbleSlot;->y:I

    .line 134
    int-to-float v5, v5

    .line 135
    mul-float/2addr v5, v6

    .line 136
    float-to-int v13, v5

    .line 137
    .line 138
    iget-object v7, v0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleHelper:Lcom/narvii/monetization/bubble/BubbleHelper;

    .line 139
    .line 140
    .line 141
    const v8, 0x7f0a0290

    .line 142
    .line 143
    iget v10, v2, Lcom/narvii/model/BubbleSlot;->align:I

    .line 144
    int-to-double v5, v9

    .line 145
    .line 146
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    .line 147
    mul-double/2addr v5, v14

    .line 148
    double-to-int v11, v5

    .line 149
    .line 150
    iget-boolean v14, v0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->isMine:Z

    .line 151
    .line 152
    .line 153
    invoke-virtual/range {v7 .. v14}, Lcom/narvii/monetization/bubble/BubbleHelper;->getSlotLayParams(IIIIIIZ)Landroid/widget/RelativeLayout$LayoutParams;

    .line 154
    move-result-object v2

    .line 155
    .line 156
    iget-object v5, v0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 157
    .line 158
    move-object/from16 v6, p1

    .line 159
    .line 160
    move/from16 v7, p2

    .line 161
    .line 162
    .line 163
    invoke-virtual {v5, v6, v7, v3}, Lcom/narvii/monetization/bubble/BubbleService;->getSlotDrawable(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 164
    move-result-object v3

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v3}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    .line 169
    iget-object v3, v0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->contentContainer:Landroid/view/ViewGroup;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    goto :goto_1

    .line 174
    :cond_5
    :goto_2
    return-void
.end method

.method private getMessageBubbleId(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->account:Lcom/narvii/account/AccountService;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->threadBubble:Lcom/narvii/model/ChatBubble;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p1, v1}, Lcom/narvii/monetization/bubble/BubbleHelper;->getChatMessageBubbleId(ZLcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatBubble;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method private getMessageBubbleVersion(Lcom/narvii/model/ChatMessage;)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->uid()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->account:Lcom/narvii/account/AccountService;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->threadBubble:Lcom/narvii/model/ChatBubble;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p1, v1}, Lcom/narvii/monetization/bubble/BubbleHelper;->getChatMessageBubbleVersion(ZLcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatBubble;)I

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method private removeAllSlotViews()V
    .locals 2

    .line 1
    .line 2
    :goto_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->contentContainer:Landroid/view/ViewGroup;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->contentContainer:Landroid/view/ViewGroup;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void
.end method

.method private setTextViewMinWidth(ZLandroid/graphics/drawable/Drawable;I)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    .line 9
    const v0, 0x7f0a07f4

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 18
    .line 19
    .line 20
    const v0, 0x7f0a0296

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    :cond_0
    if-eqz p1, :cond_2

    .line 27
    .line 28
    instance-of v0, p2, Landroid/graphics/drawable/NinePatchDrawable;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    check-cast p2, Landroid/graphics/drawable/NinePatchDrawable;

    .line 33
    .line 34
    new-instance p3, Landroid/graphics/Rect;

    .line 35
    .line 36
    .line 37
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    .line 44
    move-result v0

    .line 45
    .line 46
    iget v1, p3, Landroid/graphics/Rect;->left:I

    .line 47
    sub-int/2addr v0, v1

    .line 48
    .line 49
    iget v1, p3, Landroid/graphics/Rect;->right:I

    .line 50
    sub-int/2addr v0, v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    .line 57
    move-result p2

    .line 58
    .line 59
    iget v0, p3, Landroid/graphics/Rect;->top:I

    .line 60
    sub-int/2addr p2, v0

    .line 61
    .line 62
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    .line 63
    sub-int/2addr p2, p3

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 67
    goto :goto_0

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setMinimumWidth(I)V

    .line 71
    const/4 p2, 0x0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 75
    .line 76
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    .line 83
    const p3, 0x7f0700d8

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 87
    move-result p2

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 91
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->isDoubleTap:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->gd:Landroid/view/GestureDetector;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->isDoubleTap:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public getChatBubbleView()Lcom/narvii/chat/ChatBubbleView;
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a039d

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/view/ViewGroup;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->contentContainer:Landroid/view/ViewGroup;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0290

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/chat/ChatBubbleView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0c4c

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->root:Landroid/view/View;

    .line 35
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->gd:Landroid/view/GestureDetector;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method

.method public setBubbleStyle(ZI)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->isMine:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/ChatBubbleView;->setBubbleStyle(ZI)V

    .line 11
    return-void
.end method

.method public setCallInfo(Lcom/narvii/model/ChatMessage;ILjava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/chat/ChatBubbleView;->setCallInfo(Lcom/narvii/model/ChatMessage;ILjava/lang/String;)V

    .line 9
    return-void
.end method

.method public setCommunityId(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->cid:I

    return-void
.end method

.method public setContentBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    return-void
.end method

.method public setContentImage(Lcom/narvii/model/Media;ILcom/fasterxml/jackson/databind/node/ObjectNode;Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/narvii/chat/ChatBubbleView;->setImage(Lcom/narvii/model/Media;ILcom/fasterxml/jackson/databind/node/ObjectNode;Z)V

    .line 9
    return-void
.end method

.method public setContentLayout(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Lcom/narvii/chat/ChatBubbleView;->setLayout(I)V

    .line 9
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

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->setContentText(Ljava/lang/CharSequence;ZLcom/fasterxml/jackson/databind/node/ObjectNode;ZLcom/narvii/model/ChatMessage;)V

    return-void
.end method

.method public setContentText(Ljava/lang/CharSequence;ZLcom/fasterxml/jackson/databind/node/ObjectNode;ZLcom/narvii/model/ChatMessage;)V
    .locals 9

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    if-nez v0, :cond_0

    return-void

    .line 2
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

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 3
    invoke-direct {p0, p5}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->getMessageBubbleId(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/narvii/monetization/bubble/BubbleService;->getBubbleTextColor(Ljava/lang/String;I)I

    move-result v1

    :cond_1
    move v8, v1

    iget-object v2, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    move-object v3, p1

    move-object v4, p5

    move v5, p2

    move-object v6, p3

    move v7, p4

    .line 4
    invoke-virtual/range {v2 .. v8}, Lcom/narvii/chat/ChatBubbleView;->setText(Ljava/lang/CharSequence;Lcom/narvii/model/ChatMessage;ZLcom/fasterxml/jackson/databind/node/ObjectNode;ZI)V

    const/4 p1, 0x1

    .line 5
    invoke-direct {p0, p5, p1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->configBubbleViews(Lcom/narvii/model/ChatMessage;Z)V

    return-void
.end method

.method public setContentVideo(Lcom/narvii/model/ChatMessage;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Lcom/narvii/chat/ChatBubbleView;->setVideo(Lcom/narvii/model/ChatMessage;)V

    .line 9
    return-void
.end method

.method public setDoubleClickListener(Lcom/narvii/monetization/bubble/BubbleViewContainer$DoubleClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->doubleClickListener:Lcom/narvii/monetization/bubble/BubbleViewContainer$DoubleClickListener;

    return-void
.end method

.method public setThreadBubble(Lcom/narvii/model/ChatBubble;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->threadBubble:Lcom/narvii/model/ChatBubble;

    return-void
.end method

.method public setVoiceNote(Lcom/narvii/model/ChatMessage;Lcom/narvii/media/MediaStatus;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    const v1, 0x7f0d04ac

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/chat/ChatBubbleView;->setLayout(I)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    const v3, 0x7f0700d8

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 35
    move-result v2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->chatBubbleView:Lcom/narvii/chat/ChatBubbleView;

    .line 41
    .line 42
    .line 43
    const v2, 0x7f0a015c

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    check-cast v0, Lcom/narvii/chat/audio/AudioPlayer;

    .line 50
    .line 51
    iget v2, p1, Lcom/narvii/model/ChatMessage;->_status:I

    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    const/4 v1, 0x4

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/narvii/chat/audio/AudioPlayer;->setMediaUrl(Ljava/lang/String;)V

    .line 63
    .line 64
    iget-boolean v1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->isMine:Z

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/narvii/chat/audio/AudioPlayer;->setIsMine(Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getDuration()I

    .line 71
    move-result v1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/narvii/chat/audio/AudioPlayer;->setDuration(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p2}, Lcom/narvii/chat/audio/AudioPlayer;->onStatusChange(Lcom/narvii/media/MediaStatus;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 81
    move-result-object p2

    .line 82
    .line 83
    .line 84
    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 85
    move-result-object p2

    .line 86
    .line 87
    const-string v1, "mediaPlayer"

    .line 88
    .line 89
    .line 90
    invoke-interface {p2, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    move-result-object p2

    .line 92
    .line 93
    check-cast p2, Lcom/narvii/media/MediaPlayerManager;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, v0}, Lcom/narvii/media/MediaPlayerManager;->tryListenMediaStatusChange(Lcom/narvii/media/MediaStatusChangeListener;)V

    .line 97
    .line 98
    .line 99
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->configBubbleViews(Lcom/narvii/model/ChatMessage;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 103
    move-result-object p2

    .line 104
    .line 105
    iget-boolean v1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->isMine:Z

    .line 106
    .line 107
    if-eqz v1, :cond_2

    .line 108
    .line 109
    .line 110
    const v1, 0x7f060052

    .line 111
    goto :goto_0

    .line 112
    .line 113
    .line 114
    :cond_2
    const v1, 0x7f060054

    .line 115
    .line 116
    .line 117
    :goto_0
    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 118
    move-result p2

    .line 119
    .line 120
    .line 121
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->getMessageBubbleId(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    .line 122
    move-result-object v1

    .line 123
    .line 124
    if-eqz v1, :cond_3

    .line 125
    .line 126
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 127
    .line 128
    .line 129
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->getMessageBubbleId(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    .line 130
    move-result-object v2

    .line 131
    .line 132
    .line 133
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->getMessageBubbleVersion(Lcom/narvii/model/ChatMessage;)I

    .line 134
    move-result v3

    .line 135
    .line 136
    iget-boolean v4, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->isMine:Z

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v2, v3, v4}, Lcom/narvii/monetization/bubble/BubbleService;->getBackgroundDrawable(Ljava/lang/String;IZ)Landroid/graphics/drawable/Drawable;

    .line 140
    move-result-object v1

    .line 141
    .line 142
    if-eqz v1, :cond_3

    .line 143
    .line 144
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleViewContainer;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 145
    .line 146
    .line 147
    invoke-direct {p0, p1}, Lcom/narvii/monetization/bubble/BubbleViewContainer;->getMessageBubbleId(Lcom/narvii/model/ChatMessage;)Ljava/lang/String;

    .line 148
    move-result-object p1

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, p1, p2}, Lcom/narvii/monetization/bubble/BubbleService;->getBubbleTextColor(Ljava/lang/String;I)I

    .line 152
    move-result p2

    .line 153
    .line 154
    .line 155
    :cond_3
    invoke-virtual {v0, p2}, Lcom/narvii/chat/audio/AudioPlayer;->setThemeColor(I)V

    .line 156
    return-void
.end method
