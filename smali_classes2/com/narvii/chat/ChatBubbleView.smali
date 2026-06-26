.class public Lcom/narvii/chat/ChatBubbleView;
.super Landroid/widget/RelativeLayout;
.source "ChatBubbleView.java"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# static fields
.field private static final EXPAND_TAG:Ljava/lang/Object;

.field private static final size:Landroid/graphics/Point;


# instance fields
.field private block:Z

.field protected bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

.field private chatHelper:Lcom/narvii/chat/util/ChatHelper;

.field private chatService:Lcom/narvii/chat/core/ChatService;

.field private downEvent:Landroid/view/MotionEvent;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private final gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private isVideo:Z

.field private isYoutubeVideo:Z

.field private lastLongClick:J

.field layoutId:I

.field private leftMargin:I

.field private maxContentWidth:I

.field mine:Z

.field widthMargin:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/narvii/chat/ChatBubbleView;->size:Landroid/graphics/Point;

    .line 643
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "expandtag"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/chat/ChatBubbleView;->EXPAND_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 680
    new-instance v0, Lcom/narvii/chat/ChatBubbleView$3;

    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatBubbleView$3;-><init>(Lcom/narvii/chat/ChatBubbleView;)V

    iput-object v0, p0, Lcom/narvii/chat/ChatBubbleView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 74
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v2, "chat"

    .line 75
    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/core/ChatService;

    :goto_0
    iput-object v0, p0, Lcom/narvii/chat/ChatBubbleView;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 78
    sget-object v0, Lcom/narvii/amino/R$styleable;->ChatBubbleView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 80
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/narvii/chat/ChatBubbleView;->widthMargin:I

    .line 82
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07009b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 83
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 85
    :goto_1
    iput v3, p0, Lcom/narvii/chat/ChatBubbleView;->leftMargin:I

    .line 86
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    new-instance p2, Lcom/narvii/chat/BubbleBitmapDrawable;

    invoke-direct {p2}, Lcom/narvii/chat/BubbleBitmapDrawable;-><init>()V

    iput-object p2, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    .line 89
    iget-object p2, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    invoke-virtual {p2, p1}, Lcom/narvii/chat/BubbleDrawable;->setDefault(Landroid/content/Context;)V

    if-eqz v0, :cond_2

    .line 90
    iget-object v1, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    sget-object p2, Lcom/narvii/chat/ChatBubbleView;->size:Landroid/graphics/Point;

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 94
    sget-object p1, Lcom/narvii/chat/ChatBubbleView;->size:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget p2, p0, Lcom/narvii/chat/ChatBubbleView;->widthMargin:I

    sub-int/2addr p1, p2

    .line 95
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 96
    iget-object v0, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    invoke-virtual {v0, p2}, Lcom/narvii/chat/BubbleDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 97
    iget v0, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v0

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/narvii/chat/ChatBubbleView;->maxContentWidth:I

    const p1, 0x800013

    .line 99
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 100
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07009e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 103
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setClipToPadding(Z)V

    .line 104
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    .line 106
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/chat/ChatBubbleView;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/ChatBubbleView;)Lcom/narvii/chat/util/ChatHelper;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/narvii/chat/ChatBubbleView;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/ChatBubbleView;)Landroid/view/MotionEvent;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/narvii/chat/ChatBubbleView;->downEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static synthetic access$102(Lcom/narvii/chat/ChatBubbleView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/narvii/chat/ChatBubbleView;->downEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic access$201(Lcom/narvii/chat/ChatBubbleView;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 55
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$302(Lcom/narvii/chat/ChatBubbleView;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/narvii/chat/ChatBubbleView;->block:Z

    return p1
.end method

.method private hasAttachment(Lcom/fasterxml/jackson/databind/node/ObjectNode;Z)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    new-array p2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "attachedObjectInfo"

    aput-object v2, p2, v1

    .line 416
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setAttachment(Lcom/fasterxml/jackson/databind/node/ObjectNode;ZZI)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x7f0901cc

    .line 424
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0900c4

    .line 425
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090af7

    .line 426
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    if-eqz p2, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    const/16 v7, 0x8

    .line 428
    :goto_0
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz v1, :cond_17

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 432
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 433
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    if-eqz v2, :cond_3

    .line 436
    new-instance v3, Lcom/narvii/chat/ChatBubbleView$2;

    invoke-direct {v3, v0, v1}, Lcom/narvii/chat/ChatBubbleView$2;-><init>(Lcom/narvii/chat/ChatBubbleView;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "attachedObjectInfo"

    aput-object v4, v3, v6

    const/4 v7, 0x1

    const-string v8, "objectType"

    aput-object v8, v3, v7

    .line 473
    invoke-static {v1, v3}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result v3

    new-array v8, v2, [Ljava/lang/String;

    aput-object v4, v8, v6

    const-string v9, "mediaList"

    aput-object v9, v8, v7

    .line 474
    invoke-static {v1, v8}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v8

    const/4 v9, 0x0

    .line 476
    instance-of v10, v8, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    if-eqz v10, :cond_4

    .line 478
    :try_start_0
    check-cast v8, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 479
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 480
    sget-object v10, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v8, v6}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v8

    const-class v11, Lcom/narvii/model/Media;

    invoke-virtual {v10, v8, v11}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/model/Media;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v8

    goto :goto_1

    :catch_0
    nop

    :cond_4
    :goto_1
    const v8, 0x7f0900c6

    .line 485
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/narvii/widget/NVImageView;

    const/16 v10, 0x6e

    const/4 v11, 0x7

    const/4 v12, 0x3

    if-eqz v8, :cond_a

    if-nez v9, :cond_5

    if-ne v3, v12, :cond_5

    const-string v13, "res://strike_icon_comment"

    .line 488
    invoke-virtual {v8, v13}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 489
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_5
    if-nez v9, :cond_6

    if-ne v3, v11, :cond_6

    const-string v13, "res://strike_icon_chat"

    .line 491
    invoke-virtual {v8, v13}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 492
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_6
    if-eqz v9, :cond_8

    .line 494
    iget v13, v9, Lcom/narvii/model/Media;->type:I

    if-ne v13, v10, :cond_8

    .line 495
    iget-boolean v13, v0, Lcom/narvii/chat/ChatBubbleView;->mine:Z

    if-eqz v13, :cond_7

    const-string v13, "res://strike_icon_audio"

    goto :goto_2

    :cond_7
    const-string v13, "res://strike_icon_audio_others"

    :goto_2
    invoke-virtual {v8, v13}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 496
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 498
    :cond_8
    invoke-virtual {v8, v9}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    if-nez v9, :cond_9

    const/16 v13, 0x8

    goto :goto_3

    :cond_9
    const/4 v13, 0x0

    .line 499
    :goto_3
    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    :goto_4
    new-array v8, v2, [Ljava/lang/String;

    aput-object v4, v8, v6

    const-string v13, "title"

    aput-object v13, v8, v7

    .line 504
    invoke-static {v1, v8}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v13, v2, [Ljava/lang/String;

    aput-object v4, v13, v6

    const-string v14, "content"

    aput-object v14, v13, v7

    .line 505
    invoke-static {v1, v13}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f0900c9

    .line 506
    invoke-virtual {v0, v14}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    if-nez p4, :cond_c

    .line 508
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v15

    if-eqz p3, :cond_b

    const v16, 0x7f060075

    const v5, 0x7f060075

    goto :goto_5

    :cond_b
    const v16, 0x7f060074

    const v5, 0x7f060074

    :goto_5
    invoke-static {v15, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    goto :goto_6

    :cond_c
    move/from16 v5, p4

    :goto_6
    if-eqz v14, :cond_13

    if-nez v8, :cond_d

    if-eqz v9, :cond_d

    if-ne v3, v12, :cond_d

    const v8, 0x7f0f1069

    .line 512
    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setText(I)V

    .line 513
    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    :cond_d
    if-nez v8, :cond_10

    if-eqz v9, :cond_10

    if-ne v3, v11, :cond_10

    .line 515
    iget v8, v9, Lcom/narvii/model/Media;->type:I

    if-eq v8, v10, :cond_f

    invoke-virtual {v9}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_7

    :cond_e
    const v8, 0x7f0f1065

    .line 519
    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setText(I)V

    .line 520
    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    :cond_f
    :goto_7
    const v8, 0x7f0f1066

    .line 516
    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setText(I)V

    .line 517
    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    :cond_10
    if-nez v8, :cond_11

    if-nez v3, :cond_11

    const v8, 0x7f0f0131

    .line 523
    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setText(I)V

    .line 524
    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 526
    :cond_11
    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_12

    const/16 v8, 0x8

    goto :goto_8

    :cond_12
    const/4 v8, 0x0

    :goto_8
    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 529
    :goto_9
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_13
    const v8, 0x7f0900c3

    .line 531
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_16

    if-nez v13, :cond_14

    if-eqz v9, :cond_14

    .line 533
    iget v9, v9, Lcom/narvii/model/Media;->type:I

    if-ne v9, v10, :cond_14

    if-ne v3, v11, :cond_14

    new-array v3, v12, [Ljava/lang/String;

    aput-object v4, v3, v6

    const-string v4, "extensions"

    aput-object v4, v3, v7

    const-string v4, "duration"

    aput-object v4, v3, v2

    .line 534
    invoke-static {v1, v3}, Lcom/narvii/util/JacksonUtils;->nodeDouble(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)D

    move-result-wide v1

    .line 535
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-wide v9, 0x408f400000000000L    # 1000.0

    mul-double v1, v1, v9

    double-to-int v1, v1

    invoke-static {v3, v1}, Lcom/narvii/util/VoiceMessageUtils;->getVoiceMessageSummary(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    .line 537
    :cond_14
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v6, 0x8

    :cond_15
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 539
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_16
    return-void

    :cond_17
    if-eqz v4, :cond_18

    if-eqz v2, :cond_18

    if-eqz v3, :cond_18

    const/16 v1, 0x8

    .line 467
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 468
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    return-void
.end method

.method private setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x7f09083d

    const v3, 0x7f090b03

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v1, :cond_2

    .line 262
    iget-object v1, v0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    invoke-virtual {v1, v5}, Lcom/narvii/chat/BubbleBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 263
    iget-object v1, v0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    const/16 v5, 0x33

    invoke-virtual {v1, v5}, Lcom/narvii/chat/BubbleDrawable;->setAlpha(I)V

    .line 265
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 270
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 272
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    .line 277
    :cond_2
    iget-object v7, v0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    const/16 v8, 0xff

    invoke-virtual {v7, v8}, Lcom/narvii/chat/BubbleDrawable;->setAlpha(I)V

    .line 278
    iget-boolean v7, v0, Lcom/narvii/chat/ChatBubbleView;->isVideo:Z

    if-eqz v7, :cond_3

    const v7, 0x7f0b0095

    goto :goto_0

    :cond_3
    const v7, 0x7f0b0090

    :goto_0
    invoke-virtual {v0, v7}, Lcom/narvii/chat/ChatBubbleView;->setLayout(I)V

    .line 282
    instance-of v7, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_4

    move-object v7, v1

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .line 283
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 284
    iget-object v1, v0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    invoke-virtual {v1, v7}, Lcom/narvii/chat/BubbleBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 285
    iget-object v1, v0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    invoke-virtual {v1, v6}, Lcom/narvii/chat/BubbleDrawable;->setHideArrow(Z)V

    .line 287
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 288
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    goto :goto_1

    .line 291
    :cond_4
    iget-object v7, v0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    invoke-virtual {v7, v5}, Lcom/narvii/chat/BubbleBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 292
    iget-object v7, v0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/narvii/chat/BubbleDrawable;->setHideArrow(Z)V

    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 295
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    move v1, v7

    move-object v7, v5

    .line 298
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07009d

    .line 300
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x7f07009c

    .line 301
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 302
    iget-boolean v12, v0, Lcom/narvii/chat/ChatBubbleView;->isVideo:Z

    if-eqz v12, :cond_5

    const v12, 0x7f0700a3

    goto :goto_2

    :cond_5
    const v12, 0x7f0700a0

    :goto_2
    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 303
    iget-boolean v13, v0, Lcom/narvii/chat/ChatBubbleView;->isVideo:Z

    if-eqz v13, :cond_6

    const v13, 0x7f0700a2

    goto :goto_3

    :cond_6
    const v13, 0x7f07009f

    :goto_3
    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 305
    iget-boolean v14, v0, Lcom/narvii/chat/ChatBubbleView;->isYoutubeVideo:Z

    if-eqz v14, :cond_7

    const v10, 0x7f0700aa

    .line 306
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x7f0700a9

    .line 307
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move v12, v10

    move v11, v13

    goto :goto_4

    :cond_7
    move/from16 v16, v12

    move v12, v10

    move/from16 v10, v16

    :goto_4
    if-ge v1, v10, :cond_8

    if-le v8, v11, :cond_8

    move v1, v10

    move v8, v11

    :cond_8
    if-le v1, v12, :cond_9

    if-ge v8, v13, :cond_9

    move v1, v12

    move v8, v13

    :cond_9
    const/high16 v14, 0x3f000000    # 0.5f

    const/high16 v15, 0x3f800000    # 1.0f

    if-lt v1, v10, :cond_a

    if-ge v8, v13, :cond_b

    :cond_a
    int-to-float v10, v10

    mul-float v10, v10, v15

    int-to-float v5, v1

    div-float/2addr v10, v5

    int-to-float v13, v13

    mul-float v13, v13, v15

    int-to-float v6, v8

    div-float/2addr v13, v6

    .line 321
    invoke-static {v10, v13}, Ljava/lang/Math;->max(FF)F

    move-result v10

    cmpl-float v13, v10, v15

    if-eqz v13, :cond_b

    mul-float v5, v5, v10

    add-float/2addr v5, v14

    float-to-int v1, v5

    mul-float v10, v10, v6

    add-float/2addr v10, v14

    float-to-int v8, v10

    :cond_b
    if-gt v1, v12, :cond_c

    if-le v8, v11, :cond_d

    :cond_c
    int-to-float v5, v12

    mul-float v5, v5, v15

    int-to-float v6, v1

    div-float/2addr v5, v6

    int-to-float v10, v11

    mul-float v10, v10, v15

    int-to-float v11, v8

    div-float/2addr v10, v11

    .line 330
    invoke-static {v5, v10}, Ljava/lang/Math;->min(FF)F

    move-result v5

    cmpl-float v10, v5, v15

    if-eqz v10, :cond_d

    mul-float v6, v6, v5

    add-float/2addr v6, v14

    float-to-int v1, v6

    mul-float v5, v5, v11

    add-float/2addr v5, v14

    float-to-int v8, v5

    :cond_d
    const v5, 0x7f0700a4

    .line 336
    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f0700a5

    .line 337
    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v8, v6

    if-gez v1, :cond_e

    const/4 v1, 0x0

    :cond_e
    if-gez v6, :cond_f

    const/4 v6, 0x0

    :cond_f
    const v5, 0x7f090571

    .line 343
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-nez v7, :cond_10

    .line 344
    sget-object v7, Lcom/narvii/chat/ChatBubbleView;->EXPAND_TAG:Ljava/lang/Object;

    goto :goto_5

    :cond_10
    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v5, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 346
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 347
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 348
    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 349
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, 0x4

    .line 350
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0900c3

    .line 352
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 354
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 355
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 356
    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 359
    :cond_11
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 360
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f090c6c

    .line 362
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 364
    iget-boolean v2, v0, Lcom/narvii/chat/ChatBubbleView;->isVideo:Z

    if-eqz v2, :cond_12

    const/4 v4, 0x0

    :cond_12
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 367
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method private setReplyMessage()V
    .locals 0

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 696
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/narvii/chat/ChatBubbleView;->downEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 698
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 700
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/ChatBubbleView;->downEvent:Landroid/view/MotionEvent;

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/ChatBubbleView;->gestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_2

    .line 703
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/chat/ChatBubbleView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/narvii/chat/ChatBubbleView;->gestureDetector:Landroid/view/GestureDetector;

    .line 705
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/ChatBubbleView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 706
    iget-boolean v0, p0, Lcom/narvii/chat/ChatBubbleView;->block:Z

    if-eqz v0, :cond_5

    .line 707
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 708
    :cond_3
    iput-boolean v2, p0, Lcom/narvii/chat/ChatBubbleView;->block:Z

    :cond_4
    return v2

    .line 712
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getBubbleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    return-object v0
.end method

.method public getMaxContentWidth()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/narvii/chat/ChatBubbleView;->maxContentWidth:I

    return v0
.end method

.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 372
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatBubbleView;->setImage(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 647
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    const p1, 0x7f090571

    .line 649
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 650
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/narvii/chat/ChatBubbleView;->EXPAND_TAG:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    .line 651
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/chat/ChatBubbleView;->mine:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/narvii/chat/ChatBubbleView;->mine:Z

    :goto_0
    if-eqz v0, :cond_2

    sub-int/2addr p4, p2

    .line 653
    iget p2, p0, Lcom/narvii/chat/ChatBubbleView;->leftMargin:I

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-virtual {p1, v1, v1, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 655
    :cond_2
    iget v0, p0, Lcom/narvii/chat/ChatBubbleView;->leftMargin:I

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-virtual {p1, v0, v1, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 624
    iget v0, p0, Lcom/narvii/chat/ChatBubbleView;->widthMargin:I

    if-lez v0, :cond_0

    .line 625
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 626
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    sget-object v2, Lcom/narvii/chat/ChatBubbleView;->size:Landroid/graphics/Point;

    .line 627
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 628
    sget-object v1, Lcom/narvii/chat/ChatBubbleView;->size:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/narvii/chat/ChatBubbleView;->widthMargin:I

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_0

    .line 630
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 631
    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 635
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public performLongClick()Z
    .locals 7

    .line 668
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 670
    iget-wide v2, p0, Lcom/narvii/chat/ChatBubbleView;->lastLongClick:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 671
    invoke-super {p0}, Landroid/widget/RelativeLayout;->performLongClick()Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 673
    :goto_0
    iput-wide v0, p0, Lcom/narvii/chat/ChatBubbleView;->lastLongClick:J

    return v2
.end method

.method public setBubbleArrowMiddle(Z)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/BubbleDrawable;->setArrowMiddle(Z)V

    return-void
.end method

.method public setBubbleStyle(ZI)V
    .locals 2

    .line 137
    iput-boolean p1, p0, Lcom/narvii/chat/ChatBubbleView;->mine:Z

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/BubbleDrawable;->setDirection(Z)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/chat/BubbleDrawable;->setDirection(Z)V

    :goto_0
    if-nez p2, :cond_2

    .line 145
    iget-object p2, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_1

    const p1, 0x7f06006b

    goto :goto_1

    :cond_1
    const p1, 0x7f06006c

    :goto_1
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/narvii/chat/BubbleDrawable;->setColor(I)V

    goto :goto_2

    .line 148
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/BubbleDrawable;->setColor(I)V

    .line 150
    :goto_2
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCallInfo(Lcom/narvii/model/ChatMessage;ILjava/lang/String;)V
    .locals 2

    const v0, 0x7f0b008f

    .line 176
    invoke-virtual {p0, v0}, Lcom/narvii/chat/ChatBubbleView;->setLayout(I)V

    .line 177
    iget-object v0, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/chat/BubbleBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    const v0, 0x7f090590

    .line 179
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const p2, 0x7f0802c4

    goto :goto_0

    :cond_0
    const p2, 0x7f080547

    .line 182
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    iget-object p2, p0, Lcom/narvii/chat/ChatBubbleView;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {p2, p1}, Lcom/narvii/chat/util/ChatHelper;->isMine(Lcom/narvii/model/ChatMessage;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    goto :goto_1

    :cond_1
    const p1, -0xddddde

    .line 184
    :goto_1
    invoke-virtual {v0, p1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    const p2, 0x7f090b5b

    .line 185
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 186
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 188
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method public setImage(Lcom/narvii/model/Media;ILcom/fasterxml/jackson/databind/node/ObjectNode;Z)V
    .locals 6

    const/4 v0, 0x0

    .line 376
    iput-boolean v0, p0, Lcom/narvii/chat/ChatBubbleView;->isVideo:Z

    .line 377
    invoke-direct {p0, p3, p4}, Lcom/narvii/chat/ChatBubbleView;->hasAttachment(Lcom/fasterxml/jackson/databind/node/ObjectNode;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const v2, 0x7f0b0091

    goto :goto_0

    :cond_0
    const v2, 0x7f0b0090

    .line 378
    :goto_0
    invoke-virtual {p0, v2}, Lcom/narvii/chat/ChatBubbleView;->setLayout(I)V

    const/4 v2, 0x0

    if-nez p1, :cond_1

    move-object v3, v2

    goto :goto_1

    .line 380
    :cond_1
    iget-object v3, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    :goto_1
    const v4, 0x7f090571

    .line 382
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/chat/ChatImageView;

    .line 383
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const v5, 0x7f09083d

    .line 384
    invoke-virtual {p0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/narvii/widget/FlexSizeImageView;

    if-eqz v5, :cond_2

    .line 386
    invoke-virtual {v5, v3}, Lcom/narvii/widget/FlexSizeImageView;->setImageSizeFromUrl(Ljava/lang/String;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 390
    iget-object v1, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    invoke-virtual {v1, v2}, Lcom/narvii/chat/BubbleBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 391
    invoke-direct {p0, p3, p4, v0, v0}, Lcom/narvii/chat/ChatBubbleView;->setAttachment(Lcom/fasterxml/jackson/databind/node/ObjectNode;ZZI)V

    .line 392
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 393
    invoke-virtual {v4, v2}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 394
    invoke-virtual {v4, p1, p2}, Lcom/narvii/chat/ChatImageView;->setImageMedia(Lcom/narvii/model/Media;I)Z

    goto :goto_2

    .line 396
    :cond_3
    invoke-virtual {v4, p0}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 397
    invoke-virtual {v4, p1, p2}, Lcom/narvii/chat/ChatImageView;->setImageMedia(Lcom/narvii/model/Media;I)Z

    .line 399
    :goto_2
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView;->chatService:Lcom/narvii/chat/core/ChatService;

    const/16 p3, 0xff

    const/4 p4, 0x4

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2}, Lcom/narvii/chat/core/ChatService;->isMediaUploadingStillInProcess(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 401
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    invoke-virtual {p1, p3}, Lcom/narvii/chat/BubbleDrawable;->setAlpha(I)V

    goto :goto_4

    .line 403
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    invoke-virtual {v4}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result v0

    if-ne v0, p4, :cond_5

    goto :goto_3

    :cond_5
    const/16 p3, 0x33

    :goto_3
    invoke-virtual {p1, p3}, Lcom/narvii/chat/BubbleDrawable;->setAlpha(I)V

    .line 407
    :goto_4
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView;->chatService:Lcom/narvii/chat/core/ChatService;

    if-eqz p1, :cond_6

    if-eqz v3, :cond_6

    const-string p1, "photo://"

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v4}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result p1

    if-ne p1, p4, :cond_6

    .line 408
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/core/ChatService;->removeInProcessUploadMedia(I)V

    :cond_6
    return-void
.end method

.method public setInnerPadding(I)V
    .locals 2

    .line 121
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/narvii/chat/ChatBubbleView;->size:Landroid/graphics/Point;

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 123
    sget-object v0, Lcom/narvii/chat/ChatBubbleView;->size:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/narvii/chat/ChatBubbleView;->widthMargin:I

    sub-int/2addr v0, v1

    if-nez p1, :cond_0

    .line 125
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 126
    iget-object v1, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    invoke-virtual {v1, p1}, Lcom/narvii/chat/BubbleDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 127
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/narvii/chat/ChatBubbleView;->maxContentWidth:I

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p1

    .line 129
    iput v0, p0, Lcom/narvii/chat/ChatBubbleView;->maxContentWidth:I

    :goto_0
    return-void
.end method

.method public setLayout(I)V
    .locals 1

    .line 158
    iget v0, p0, Lcom/narvii/chat/ChatBubbleView;->layoutId:I

    if-eq v0, p1, :cond_1

    .line 159
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 163
    :cond_0
    iput p1, p0, Lcom/narvii/chat/ChatBubbleView;->layoutId:I

    :cond_1
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 171
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/chat/ChatBubbleView;->setText(Ljava/lang/CharSequence;Lcom/narvii/model/ChatMessage;ZLcom/fasterxml/jackson/databind/node/ObjectNode;Z)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Lcom/narvii/model/ChatMessage;ZLcom/fasterxml/jackson/databind/node/ObjectNode;Z)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 195
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/chat/ChatBubbleView;->setText(Ljava/lang/CharSequence;Lcom/narvii/model/ChatMessage;ZLcom/fasterxml/jackson/databind/node/ObjectNode;ZI)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Lcom/narvii/model/ChatMessage;ZLcom/fasterxml/jackson/databind/node/ObjectNode;ZI)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p5

    .line 199
    invoke-direct {p0, v2, v3}, Lcom/narvii/chat/ChatBubbleView;->hasAttachment(Lcom/fasterxml/jackson/databind/node/ObjectNode;Z)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    .line 200
    iget-boolean v7, v1, Lcom/narvii/model/ChatMessage;->_linkParsing:Z

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 201
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/model/ChatMessage;->isReplyMessage()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x0

    if-eqz v1, :cond_2

    .line 202
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/model/ChatMessage;->getFirstLinkSnippet()Lcom/narvii/model/LinkSummary;

    move-result-object v10

    goto :goto_2

    :cond_2
    move-object v10, v9

    :goto_2
    const/16 v11, 0x8

    if-nez v7, :cond_5

    if-eqz v10, :cond_3

    .line 203
    invoke-virtual {v10}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object v12

    if-eqz v12, :cond_3

    goto :goto_4

    :cond_3
    if-eqz v4, :cond_4

    const v7, 0x7f0b0093

    goto :goto_3

    :cond_4
    const v7, 0x7f0b0092

    .line 223
    :goto_3
    invoke-virtual {p0, v7}, Lcom/narvii/chat/ChatBubbleView;->setLayout(I)V

    goto :goto_5

    :cond_5
    :goto_4
    const v12, 0x7f0b0094

    .line 204
    invoke-virtual {p0, v12}, Lcom/narvii/chat/ChatBubbleView;->setLayout(I)V

    const v12, 0x7f0901e3

    .line 205
    invoke-virtual {p0, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/narvii/link/viewer/LinkSnippetImageLayout;

    const v13, 0x7f090668

    .line 206
    invoke-virtual {p0, v13}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    if-eqz v10, :cond_6

    .line 208
    invoke-virtual {v12, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 209
    invoke-virtual {v13, v11}, Landroid/view/View;->setVisibility(I)V

    .line 210
    new-instance v7, Lcom/narvii/chat/ChatBubbleView$1;

    invoke-direct {v7, p0, v10}, Lcom/narvii/chat/ChatBubbleView$1;-><init>(Lcom/narvii/chat/ChatBubbleView;Lcom/narvii/model/LinkSummary;)V

    invoke-virtual {v12, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    invoke-virtual {v12, p0}, Lcom/narvii/link/viewer/LinkSnippetImageLayout;->setChatBubbleView(Lcom/narvii/chat/ChatBubbleView;)V

    .line 217
    invoke-virtual {v10}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object v7

    invoke-virtual {v12, v7, v1}, Lcom/narvii/link/viewer/LinkSnippetImageLayout;->setImageMedia(Lcom/narvii/model/Media;Lcom/narvii/model/ChatMessage;)V

    goto :goto_5

    :cond_6
    if-eqz v7, :cond_7

    .line 219
    invoke-virtual {v12, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 220
    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    .line 225
    :cond_7
    :goto_5
    iget-object v7, v0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    invoke-virtual {v7, v9}, Lcom/narvii/chat/BubbleBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    const v7, 0x7f090b5b

    .line 226
    invoke-virtual {p0, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    move-object v9, p1

    .line 227
    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v9, v0, Lcom/narvii/chat/ChatBubbleView;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    invoke-virtual {v9, v1}, Lcom/narvii/chat/util/ChatHelper;->isMine(Lcom/narvii/model/ChatMessage;)Z

    move-result v9

    if-nez p6, :cond_9

    .line 230
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    if-eqz v9, :cond_8

    const v12, 0x7f060075

    goto :goto_6

    :cond_8
    const v12, 0x7f060074

    :goto_6
    invoke-static {v10, v12}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    goto :goto_7

    :cond_9
    move/from16 v10, p6

    .line 232
    :goto_7
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p3, :cond_a

    .line 234
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 235
    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_8

    .line 237
    :cond_a
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setClickable(Z)V

    :goto_8
    if-eqz v4, :cond_b

    .line 240
    invoke-direct {p0, v2, v3, v9, v10}, Lcom/narvii/chat/ChatBubbleView;->setAttachment(Lcom/fasterxml/jackson/databind/node/ObjectNode;ZZI)V

    :cond_b
    const v2, 0x7f09095a

    .line 242
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/ChatReplyLayout;

    if-eqz v2, :cond_d

    if-eqz v8, :cond_c

    .line 245
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/model/ChatMessage;->getReplyMessage()Lcom/narvii/model/ChatMessage;

    move-result-object v1

    invoke-virtual {v2, v1, v10}, Lcom/narvii/chat/ChatReplyLayout;->setMessage(Lcom/narvii/model/ChatMessage;I)V

    .line 246
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_9

    .line 248
    :cond_c
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_d
    :goto_9
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    const v0, 0x7f090b5b

    .line 254
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setVideo(Lcom/narvii/model/ChatMessage;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 547
    iput-boolean v0, p0, Lcom/narvii/chat/ChatBubbleView;->isVideo:Z

    .line 548
    iget v1, p1, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/16 v2, 0x67

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/narvii/chat/ChatBubbleView;->isYoutubeVideo:Z

    .line 549
    iget v1, p1, Lcom/narvii/model/ChatMessage;->_status:I

    if-ne v1, v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const v2, 0x7f0b0095

    .line 551
    invoke-virtual {p0, v2}, Lcom/narvii/chat/ChatBubbleView;->setLayout(I)V

    const v2, 0x7f0908cb

    .line 553
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/SmoothProgressBar;

    const/16 v4, 0x8

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 556
    iget-object v5, p0, Lcom/narvii/chat/ChatBubbleView;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {v5, p1}, Lcom/narvii/chat/core/ChatService;->getCurVideoUploadProgress(Lcom/narvii/model/ChatMessage;)I

    move-result v5

    .line 557
    invoke-virtual {v2, v5}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    .line 558
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 560
    :cond_3
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 564
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getVideoInfo()Lcom/narvii/model/ChatMessageVideoInfo;

    move-result-object v2

    const/4 v5, 0x0

    if-nez v2, :cond_5

    move-object v2, v5

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getVideoInfo()Lcom/narvii/model/ChatMessageVideoInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/narvii/model/ChatMessageVideoInfo;->coverImage:Ljava/lang/String;

    .line 566
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const v7, 0x7f09083d

    if-nez v6, :cond_6

    .line 567
    invoke-virtual {p0, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/narvii/widget/FlexSizeImageView;

    if-eqz v6, :cond_7

    .line 569
    invoke-virtual {v6, v2, v0}, Lcom/narvii/widget/FlexSizeImageView;->setImageSizeFromUrl(Ljava/lang/String;Z)V

    goto :goto_4

    .line 571
    :cond_6
    iget-boolean v0, p0, Lcom/narvii/chat/ChatBubbleView;->isYoutubeVideo:Z

    if-eqz v0, :cond_7

    .line 572
    invoke-virtual {p0, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/FlexSizeImageView;

    if-eqz v0, :cond_7

    .line 574
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700aa

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700a9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lcom/narvii/widget/FlexSizeImageView;->setImageSize(II)V

    :cond_7
    :goto_4
    const v0, 0x7f090571

    .line 578
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/ChatImageView;

    .line 579
    invoke-virtual {v0, p0}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 580
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object v6

    iget v7, p1, Lcom/narvii/model/ChatMessage;->clientRefId:I

    invoke-virtual {v0, v6, v7}, Lcom/narvii/chat/ChatImageView;->setImageMedia(Lcom/narvii/model/Media;I)Z

    .line 582
    iget-object v6, p0, Lcom/narvii/chat/ChatBubbleView;->chatService:Lcom/narvii/chat/core/ChatService;

    const/16 v7, 0xff

    const/4 v8, 0x4

    if-eqz v6, :cond_8

    iget v9, p1, Lcom/narvii/model/ChatMessage;->clientRefId:I

    invoke-virtual {v6, v9}, Lcom/narvii/chat/core/ChatService;->isMediaUploadingStillInProcess(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 584
    iget-object v6, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    invoke-virtual {v6, v7}, Lcom/narvii/chat/BubbleDrawable;->setAlpha(I)V

    goto :goto_6

    .line 586
    :cond_8
    iget-object v6, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    invoke-virtual {v0}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result v9

    if-ne v9, v8, :cond_9

    goto :goto_5

    :cond_9
    const/16 v7, 0x33

    :goto_5
    invoke-virtual {v6, v7}, Lcom/narvii/chat/BubbleDrawable;->setAlpha(I)V

    .line 590
    :goto_6
    iget-object v6, p0, Lcom/narvii/chat/ChatBubbleView;->chatService:Lcom/narvii/chat/core/ChatService;

    if-eqz v6, :cond_a

    if-eqz v2, :cond_a

    const-string v6, "photo://"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v0}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result v0

    if-ne v0, v8, :cond_a

    .line 591
    iget-object v0, p0, Lcom/narvii/chat/ChatBubbleView;->chatService:Lcom/narvii/chat/core/ChatService;

    iget v2, p1, Lcom/narvii/model/ChatMessage;->clientRefId:I

    invoke-virtual {v0, v2}, Lcom/narvii/chat/core/ChatService;->removeInProcessUploadMedia(I)V

    :cond_a
    const v0, 0x7f090c6c

    .line 594
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 596
    iget-object v2, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    invoke-virtual {v2}, Lcom/narvii/chat/BubbleBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_b

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_7

    :cond_b
    const/16 v1, 0x8

    :goto_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 599
    :cond_c
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getVideoDuration()J

    move-result-wide v0

    const v2, 0x7f0903b3

    .line 600
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 601
    iget-boolean v6, p0, Lcom/narvii/chat/ChatBubbleView;->isYoutubeVideo:Z

    if-eqz v6, :cond_d

    goto :goto_8

    :cond_d
    invoke-static {v0, v1}, Lcom/narvii/util/TimeUtils;->formatTimeDuration(J)Ljava/lang/String;

    move-result-object v5

    :goto_8
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090b5b

    .line 603
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 605
    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_9

    :cond_e
    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_f
    const p1, 0x7f0900c3

    .line 609
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 611
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 612
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 613
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_10
    return-void
.end method
