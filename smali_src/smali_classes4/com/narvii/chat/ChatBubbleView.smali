.class public Lcom/narvii/chat/ChatBubbleView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

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

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Point;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/chat/ChatBubbleView;->size:Landroid/graphics/Point;

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/util/Tag;

    .line 10
    .line 11
    const-string v1, "expandtag"

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    sput-object v0, Lcom/narvii/chat/ChatBubbleView;->EXPAND_TAG:Ljava/lang/Object;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/chat/ChatBubbleView$3;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/chat/ChatBubbleView$3;-><init>(Lcom/narvii/chat/ChatBubbleView;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/ChatBubbleView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    move-object v0, v1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    const-string v2, "chat"

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Lcom/narvii/chat/core/ChatService;

    .line 32
    .line 33
    :goto_0
    iput-object v0, p0, Lcom/narvii/chat/ChatBubbleView;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 34
    .line 35
    sget-object v0, Lcom/narvii/amino/R$styleable;->ChatBubbleView:[I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 39
    move-result-object p2

    .line 40
    const/4 v0, 0x1

    .line 41
    const/4 v2, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 45
    move-result v3

    .line 46
    .line 47
    iput v3, p0, Lcom/narvii/chat/ChatBubbleView;->widthMargin:I

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    .line 54
    const v4, 0x7f0700d5

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 58
    move-result v3

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 62
    move-result v0

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    move v3, v2

    .line 67
    .line 68
    :goto_1
    iput v3, p0, Lcom/narvii/chat/ChatBubbleView;->leftMargin:I

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    .line 73
    new-instance p2, Lcom/narvii/chat/BubbleBitmapDrawable;

    .line 74
    .line 75
    .line 76
    invoke-direct {p2}, Lcom/narvii/chat/BubbleBitmapDrawable;-><init>()V

    .line 77
    .line 78
    iput-object p2, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, p1}, Lcom/narvii/chat/BubbleDrawable;->setDefault(Landroid/content/Context;)V

    .line 82
    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    iget-object v1, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    .line 86
    .line 87
    .line 88
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    check-cast p1, Landroid/app/Activity;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    .line 101
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    sget-object p2, Lcom/narvii/chat/ChatBubbleView;->size:Landroid/graphics/Point;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 108
    .line 109
    iget p1, p2, Landroid/graphics/Point;->x:I

    .line 110
    .line 111
    iget p2, p0, Lcom/narvii/chat/ChatBubbleView;->widthMargin:I

    .line 112
    sub-int/2addr p1, p2

    .line 113
    .line 114
    new-instance p2, Landroid/graphics/Rect;

    .line 115
    .line 116
    .line 117
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 118
    .line 119
    iget-object v0, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p2}, Lcom/narvii/chat/BubbleDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 123
    .line 124
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 125
    sub-int/2addr p1, v0

    .line 126
    .line 127
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 128
    sub-int/2addr p1, p2

    .line 129
    .line 130
    iput p1, p0, Lcom/narvii/chat/ChatBubbleView;->maxContentWidth:I

    .line 131
    .line 132
    .line 133
    const p1, 0x800013

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 140
    move-result-object p1

    .line 141
    .line 142
    .line 143
    const p2, 0x7f0700d8

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 147
    move-result p1

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 157
    .line 158
    new-instance p1, Lcom/narvii/chat/util/ChatHelper;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 162
    move-result-object p2

    .line 163
    .line 164
    .line 165
    invoke-direct {p1, p2}, Lcom/narvii/chat/util/ChatHelper;-><init>(Landroid/content/Context;)V

    .line 166
    .line 167
    iput-object p1, p0, Lcom/narvii/chat/ChatBubbleView;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 168
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/ChatBubbleView;)Lcom/narvii/chat/util/ChatHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/ChatBubbleView;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    return-object p0
.end method

.method static synthetic access$001(Lcom/narvii/chat/ChatBubbleView;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic b(Lcom/narvii/chat/ChatBubbleView;)Landroid/view/MotionEvent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/ChatBubbleView;->downEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/chat/ChatBubbleView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/ChatBubbleView;->block:Z

    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/chat/ChatBubbleView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/chat/ChatBubbleView;->downEvent:Landroid/view/MotionEvent;

    return-void
.end method

.method private hasAttachment(Lcom/fasterxml/jackson/databind/node/ObjectNode;Z)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    const-string p2, "attachedObjectInfo"

    .line 7
    .line 8
    .line 9
    filled-new-array {p2}, [Ljava/lang/String;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0
.end method

.method private setAttachment(Lcom/fasterxml/jackson/databind/node/ObjectNode;ZZI)V
    .locals 10

    const v0, 0x7f0a0283

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a014a

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0dd9

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    move p2, v4

    goto :goto_0

    :cond_0
    move p2, v3

    .line 4
    :goto_0
    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p1, :cond_17

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    if-eqz v0, :cond_3

    .line 7
    new-instance p2, Lcom/narvii/chat/ChatBubbleView$2;

    invoke-direct {p2, p0, p1}, Lcom/narvii/chat/ChatBubbleView$2;-><init>(Lcom/narvii/chat/ChatBubbleView;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const-string p2, "objectType"

    const-string v0, "attachedObjectInfo"

    filled-new-array {v0, p2}, [Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)I

    move-result p2

    const-string v1, "mediaList"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .line 10
    instance-of v2, v1, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    .line 11
    :try_start_0
    check-cast v1, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 12
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 13
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    const-class v6, Lcom/narvii/model/Media;

    invoke-virtual {v2, v1, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v1

    :catch_0
    :cond_4
    const v1, 0x7f0a014c

    .line 14
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVImageView;

    const/4 v2, 0x3

    const/16 v6, 0x6e

    const/4 v7, 0x7

    if-eqz v1, :cond_a

    if-nez v5, :cond_5

    if-ne p2, v2, :cond_5

    const-string v8, "res://strike_icon_comment"

    .line 15
    invoke-virtual {v1, v8}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 16
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_5
    if-nez v5, :cond_6

    if-ne p2, v7, :cond_6

    const-string v8, "res://strike_icon_chat"

    .line 17
    invoke-virtual {v1, v8}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 18
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_8

    .line 19
    iget v8, v5, Lcom/narvii/model/Media;->type:I

    if-ne v8, v6, :cond_8

    iget-boolean v8, p0, Lcom/narvii/chat/ChatBubbleView;->mine:Z

    if-eqz v8, :cond_7

    const-string v8, "res://strike_icon_audio"

    goto :goto_1

    :cond_7
    const-string v8, "res://strike_icon_audio_others"

    .line 20
    :goto_1
    invoke-virtual {v1, v8}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 21
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 22
    :cond_8
    invoke-virtual {v1, v5}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    if-nez v5, :cond_9

    move v8, v3

    goto :goto_2

    :cond_9
    move v8, v4

    .line 23
    :goto_2
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    :goto_3
    const-string v1, "title"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "content"

    filled-new-array {v0, v8}, [Ljava/lang/String;

    move-result-object v8

    .line 25
    invoke-static {p1, v8}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0a014f

    .line 26
    invoke-virtual {p0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    if-nez p4, :cond_c

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    if-eqz p3, :cond_b

    const p3, 0x7f060095

    goto :goto_4

    :cond_b
    const p3, 0x7f060094

    :goto_4
    invoke-static {p4, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p4

    :cond_c
    if-eqz v9, :cond_13

    if-nez v1, :cond_d

    if-eqz v5, :cond_d

    if-ne p2, v2, :cond_d

    const p3, 0x7f121166

    .line 28
    invoke-virtual {v9, p3}, Landroid/widget/TextView;->setText(I)V

    .line 29
    invoke-virtual {v9, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_d
    if-nez v1, :cond_10

    if-eqz v5, :cond_10

    if-ne p2, v7, :cond_10

    .line 30
    iget p3, v5, Lcom/narvii/model/Media;->type:I

    if-eq p3, v6, :cond_f

    invoke-virtual {v5}, Lcom/narvii/model/Media;->isVideo()Z

    move-result p3

    if-eqz p3, :cond_e

    goto :goto_5

    :cond_e
    const p3, 0x7f121162

    .line 31
    invoke-virtual {v9, p3}, Landroid/widget/TextView;->setText(I)V

    .line 32
    invoke-virtual {v9, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_f
    :goto_5
    const p3, 0x7f121163

    .line 33
    invoke-virtual {v9, p3}, Landroid/widget/TextView;->setText(I)V

    .line 34
    invoke-virtual {v9, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_10
    if-nez v1, :cond_11

    if-nez p2, :cond_11

    const p3, 0x7f120176

    .line 35
    invoke-virtual {v9, p3}, Landroid/widget/TextView;->setText(I)V

    .line 36
    invoke-virtual {v9, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 37
    :cond_11
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_12

    move p3, v3

    goto :goto_6

    :cond_12
    move p3, v4

    :goto_6
    invoke-virtual {v9, p3}, Landroid/view/View;->setVisibility(I)V

    .line 39
    :goto_7
    invoke-virtual {v9, p4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_13
    const p3, 0x7f0a0149

    .line 40
    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_16

    if-nez v8, :cond_14

    if-eqz v5, :cond_14

    .line 41
    iget v1, v5, Lcom/narvii/model/Media;->type:I

    if-ne v1, v6, :cond_14

    if-ne p2, v7, :cond_14

    const-string p2, "extensions"

    const-string v1, "duration"

    filled-new-array {v0, p2, v1}, [Ljava/lang/String;

    move-result-object p2

    .line 42
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->nodeDouble(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)D

    move-result-wide p1

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide v1, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v1

    double-to-int p1, p1

    invoke-static {v0, p1}, Lcom/narvii/util/VoiceMessageUtils;->getVoiceMessageSummary(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 44
    :cond_14
    invoke-virtual {p3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_8

    :cond_15
    move v3, v4

    :goto_8
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 46
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_16
    return-void

    :cond_17
    if-eqz v2, :cond_18

    if-eqz v0, :cond_18

    if-eqz v1, :cond_18

    .line 47
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 48
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    return-void
.end method

.method private setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x7f0a0af3

    const v3, 0x7f0a0de5

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    .line 1
    invoke-virtual {v1, v5}, Lcom/narvii/chat/BubbleBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    const/16 v5, 0x33

    .line 2
    invoke-virtual {v1, v5}, Lcom/narvii/chat/BubbleDrawable;->setAlpha(I)V

    .line 3
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v7, v0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    const/16 v8, 0xff

    .line 7
    invoke-virtual {v7, v8}, Lcom/narvii/chat/BubbleDrawable;->setAlpha(I)V

    iget-boolean v7, v0, Lcom/narvii/chat/ChatBubbleView;->isVideo:Z

    if-eqz v7, :cond_3

    const v7, 0x7f0d00ab

    goto :goto_0

    :cond_3
    const v7, 0x7f0d00a6

    .line 8
    :goto_0
    invoke-virtual {v0, v7}, Lcom/narvii/chat/ChatBubbleView;->setLayout(I)V

    .line 9
    instance-of v7, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_4

    move-object v7, v1

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .line 10
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v1, v0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    .line 11
    invoke-virtual {v1, v7}, Lcom/narvii/chat/BubbleBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, v0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    .line 12
    invoke-virtual {v1, v6}, Lcom/narvii/chat/BubbleDrawable;->setHideArrow(Z)V

    .line 13
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 14
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    goto :goto_1

    :cond_4
    iget-object v7, v0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    .line 15
    invoke-virtual {v7, v5}, Lcom/narvii/chat/BubbleBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v7, v0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    const/4 v8, 0x1

    .line 16
    invoke-virtual {v7, v8}, Lcom/narvii/chat/BubbleDrawable;->setHideArrow(Z)V

    .line 17
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 18
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    move v1, v7

    move-object v7, v5

    .line 19
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0700d7

    .line 20
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x7f0700d6

    .line 21
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iget-boolean v12, v0, Lcom/narvii/chat/ChatBubbleView;->isVideo:Z

    if-eqz v12, :cond_5

    const v12, 0x7f0700dd

    goto :goto_2

    :cond_5
    const v12, 0x7f0700da

    .line 22
    :goto_2
    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iget-boolean v13, v0, Lcom/narvii/chat/ChatBubbleView;->isVideo:Z

    if-eqz v13, :cond_6

    const v13, 0x7f0700dc

    goto :goto_3

    :cond_6
    const v13, 0x7f0700d9

    .line 23
    :goto_3
    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iget-boolean v14, v0, Lcom/narvii/chat/ChatBubbleView;->isYoutubeVideo:Z

    if-eqz v14, :cond_7

    const v10, 0x7f0700e4

    .line 24
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x7f0700e3

    .line 25
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    move v12, v10

    move v13, v11

    :cond_7
    if-ge v1, v12, :cond_8

    if-le v8, v11, :cond_8

    move v8, v11

    move v1, v12

    :cond_8
    if-le v1, v10, :cond_9

    if-ge v8, v13, :cond_9

    move v1, v10

    move v8, v13

    :cond_9
    const/high16 v14, 0x3f000000    # 0.5f

    const/high16 v15, 0x3f800000    # 1.0f

    if-lt v1, v12, :cond_a

    if-ge v8, v13, :cond_b

    :cond_a
    int-to-float v12, v12

    mul-float/2addr v12, v15

    int-to-float v5, v1

    div-float/2addr v12, v5

    int-to-float v13, v13

    mul-float/2addr v13, v15

    int-to-float v6, v8

    div-float/2addr v13, v6

    .line 26
    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    cmpl-float v13, v12, v15

    if-eqz v13, :cond_b

    mul-float/2addr v5, v12

    add-float/2addr v5, v14

    float-to-int v1, v5

    mul-float/2addr v12, v6

    add-float/2addr v12, v14

    float-to-int v8, v12

    :cond_b
    if-gt v1, v10, :cond_c

    if-le v8, v11, :cond_d

    :cond_c
    int-to-float v5, v10

    mul-float/2addr v5, v15

    int-to-float v6, v1

    div-float/2addr v5, v6

    int-to-float v10, v11

    mul-float/2addr v10, v15

    int-to-float v11, v8

    div-float/2addr v10, v11

    .line 27
    invoke-static {v5, v10}, Ljava/lang/Math;->min(FF)F

    move-result v5

    cmpl-float v10, v5, v15

    if-eqz v10, :cond_d

    mul-float/2addr v6, v5

    add-float/2addr v6, v14

    float-to-int v1, v6

    mul-float/2addr v5, v11

    add-float/2addr v5, v14

    float-to-int v8, v5

    :cond_d
    const v5, 0x7f0700de

    .line 28
    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f0700df

    .line 29
    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v8, v6

    if-gez v1, :cond_e

    const/4 v1, 0x0

    :cond_e
    if-gez v8, :cond_f

    const/4 v8, 0x0

    :cond_f
    const v5, 0x7f0a06eb

    .line 30
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-nez v7, :cond_10

    sget-object v6, Lcom/narvii/chat/ChatBubbleView;->EXPAND_TAG:Ljava/lang/Object;

    goto :goto_4

    :cond_10
    const/4 v6, 0x0

    .line 31
    :goto_4
    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 33
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 34
    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 35
    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, 0x4

    .line 36
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0a0149

    .line 37
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 38
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 39
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 40
    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 41
    :cond_11
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 42
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a0f91

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-boolean v2, v0, Lcom/narvii/chat/ChatBubbleView;->isVideo:Z

    if-eqz v2, :cond_12

    const/4 v4, 0x0

    .line 44
    :cond_12
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 45
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private setReplyMessage()V
    .locals 0

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/ChatBubbleView;->downEvent:Landroid/view/MotionEvent;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/chat/ChatBubbleView;->downEvent:Landroid/view/MotionEvent;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/ChatBubbleView;->gestureDetector:Landroid/view/GestureDetector;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    new-instance v0, Landroid/view/GestureDetector;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    iget-object v2, p0, Lcom/narvii/chat/ChatBubbleView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/chat/ChatBubbleView;->gestureDetector:Landroid/view/GestureDetector;

    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/ChatBubbleView;->gestureDetector:Landroid/view/GestureDetector;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 42
    .line 43
    iget-boolean v0, p0, Lcom/narvii/chat/ChatBubbleView;->block:Z

    .line 44
    .line 45
    if-eqz v0, :cond_5

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 49
    move-result v0

    .line 50
    const/4 v1, 0x1

    .line 51
    const/4 v2, 0x0

    .line 52
    .line 53
    if-eq v0, v1, :cond_3

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 57
    move-result p1

    .line 58
    const/4 v0, 0x3

    .line 59
    .line 60
    if-ne p1, v0, :cond_4

    .line 61
    .line 62
    :cond_3
    iput-boolean v2, p0, Lcom/narvii/chat/ChatBubbleView;->block:Z

    .line 63
    :cond_4
    return v2

    .line 64
    .line 65
    .line 66
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 67
    move-result p1

    .line 68
    return p1
.end method

.method public getBubbleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    return-object v0
.end method

.method public getMaxContentWidth()I
    .locals 1

    iget v0, p0, Lcom/narvii/chat/ChatBubbleView;->maxContentWidth:I

    return v0
.end method

.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChatBubbleView;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 8
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a06eb

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    sget-object v1, Lcom/narvii/chat/ChatBubbleView;->EXPAND_TAG:Ljava/lang/Object;

    .line 19
    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/narvii/chat/ChatBubbleView;->mine:Z

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/chat/ChatBubbleView;->mine:Z

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    :goto_0
    sub-int/2addr p4, p2

    .line 38
    .line 39
    iget p2, p0, Lcom/narvii/chat/ChatBubbleView;->leftMargin:I

    .line 40
    sub-int/2addr p4, p2

    .line 41
    sub-int/2addr p5, p3

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1, v1, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_1
    iget v0, p0, Lcom/narvii/chat/ChatBubbleView;->leftMargin:I

    .line 48
    sub-int/2addr p4, p2

    .line 49
    sub-int/2addr p5, p3

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0, v1, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 53
    :cond_2
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/ChatBubbleView;->widthMargin:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    check-cast v1, Landroid/app/Activity;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    sget-object v2, Lcom/narvii/chat/ChatBubbleView;->size:Landroid/graphics/Point;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 28
    .line 29
    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 30
    .line 31
    iget v2, p0, Lcom/narvii/chat/ChatBubbleView;->widthMargin:I

    .line 32
    sub-int/2addr v1, v2

    .line 33
    .line 34
    if-ge v1, v0, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 38
    move-result p1

    .line 39
    .line 40
    .line 41
    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 42
    move-result p1

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 46
    return-void
.end method

.method public performLongClick()Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-wide v2, p0, Lcom/narvii/chat/ChatBubbleView;->lastLongClick:J

    .line 7
    .line 8
    sub-long v2, v0, v2

    .line 9
    .line 10
    const-wide/16 v4, 0x1f4

    .line 11
    .line 12
    cmp-long v2, v2, v4

    .line 13
    .line 14
    if-lez v2, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-super {p0}, Landroid/widget/RelativeLayout;->performLongClick()Z

    .line 18
    move-result v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    .line 22
    :goto_0
    iput-wide v0, p0, Lcom/narvii/chat/ChatBubbleView;->lastLongClick:J

    .line 23
    return v2
.end method

.method public setBubbleArrowMiddle(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/chat/BubbleDrawable;->setArrowMiddle(Z)V

    .line 6
    return-void
.end method

.method public setBubbleStyle(ZI)V
    .locals 2

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/chat/ChatBubbleView;->mine:Z

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/narvii/chat/BubbleDrawable;->setDirection(Z)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    .line 21
    .line 22
    xor-int/lit8 v1, p1, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/narvii/chat/BubbleDrawable;->setDirection(Z)V

    .line 26
    .line 27
    :goto_0
    if-nez p2, :cond_2

    .line 28
    .line 29
    iget-object p2, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    .line 38
    const p1, 0x7f06008b

    .line 39
    goto :goto_1

    .line 40
    .line 41
    .line 42
    :cond_1
    const p1, 0x7f06008c

    .line 43
    .line 44
    .line 45
    :goto_1
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    .line 46
    move-result p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p1}, Lcom/narvii/chat/BubbleDrawable;->setColor(I)V

    .line 50
    goto :goto_2

    .line 51
    .line 52
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Lcom/narvii/chat/BubbleDrawable;->setColor(I)V

    .line 56
    .line 57
    :goto_2
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    return-void
.end method

.method public setCallInfo(Lcom/narvii/model/ChatMessage;ILjava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0d00a5

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/narvii/chat/ChatBubbleView;->setLayout(I)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/chat/BubbleBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a0717

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/widget/TintButton;

    .line 22
    const/4 v1, 0x1

    .line 23
    .line 24
    if-ne p2, v1, :cond_0

    .line 25
    .line 26
    .line 27
    const p2, 0x7f0803ce

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_0
    const p2, 0x7f080675

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-static {v1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    .line 44
    iget-object p2, p0, Lcom/narvii/chat/ChatBubbleView;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1}, Lcom/narvii/chat/util/ChatHelper;->isMine(Lcom/narvii/model/ChatMessage;)Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    const/4 p1, -0x1

    .line 52
    goto :goto_1

    .line 53
    .line 54
    .line 55
    :cond_1
    const p1, -0xddddde

    .line 56
    .line 57
    .line 58
    :goto_1
    invoke-virtual {v0, p1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 59
    .line 60
    .line 61
    const p2, 0x7f0a0e51

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    check-cast p2, Landroid/widget/TextView;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const/4 p1, 0x0

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 78
    return-void
.end method

.method public setImage(Lcom/narvii/model/Media;ILcom/fasterxml/jackson/databind/node/ObjectNode;Z)V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/narvii/chat/ChatBubbleView;->isVideo:Z

    .line 46
    invoke-direct {p0, p3, p4}, Lcom/narvii/chat/ChatBubbleView;->hasAttachment(Lcom/fasterxml/jackson/databind/node/ObjectNode;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const v2, 0x7f0d00a7

    goto :goto_0

    :cond_0
    const v2, 0x7f0d00a6

    .line 47
    :goto_0
    invoke-virtual {p0, v2}, Lcom/narvii/chat/ChatBubbleView;->setLayout(I)V

    const/4 v2, 0x0

    if-nez p1, :cond_1

    move-object v3, v2

    goto :goto_1

    .line 48
    :cond_1
    iget-object v3, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    :goto_1
    const v4, 0x7f0a06eb

    .line 49
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/chat/ChatImageView;

    .line 50
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const v5, 0x7f0a0af3

    .line 51
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/narvii/widget/FlexSizeImageView;

    if-eqz v5, :cond_2

    .line 52
    invoke-virtual {v5, v3}, Lcom/narvii/widget/FlexSizeImageView;->setImageSizeFromUrl(Ljava/lang/String;)V

    :cond_2
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    .line 53
    invoke-virtual {v1, v2}, Lcom/narvii/chat/BubbleBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 54
    invoke-direct {p0, p3, p4, v0, v0}, Lcom/narvii/chat/ChatBubbleView;->setAttachment(Lcom/fasterxml/jackson/databind/node/ObjectNode;ZZI)V

    .line 55
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 56
    invoke-virtual {v4, v2}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 57
    invoke-virtual {v4, p1, p2}, Lcom/narvii/chat/ChatImageView;->setImageMedia(Lcom/narvii/model/Media;I)Z

    goto :goto_2

    .line 58
    :cond_3
    invoke-virtual {v4, p0}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 59
    invoke-virtual {v4, p1, p2}, Lcom/narvii/chat/ChatImageView;->setImageMedia(Lcom/narvii/model/Media;I)Z

    :goto_2
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView;->chatService:Lcom/narvii/chat/core/ChatService;

    const/4 p3, 0x4

    const/16 p4, 0xff

    if-eqz p1, :cond_4

    .line 60
    invoke-virtual {p1, p2}, Lcom/narvii/chat/core/ChatService;->isMediaUploadingStillInProcess(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    .line 61
    invoke-virtual {p1, p4}, Lcom/narvii/chat/BubbleDrawable;->setAlpha(I)V

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    .line 62
    invoke-virtual {v4}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result v0

    if-ne v0, p3, :cond_5

    goto :goto_3

    :cond_5
    const/16 p4, 0x33

    :goto_3
    invoke-virtual {p1, p4}, Lcom/narvii/chat/BubbleDrawable;->setAlpha(I)V

    :goto_4
    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView;->chatService:Lcom/narvii/chat/core/ChatService;

    if-eqz p1, :cond_6

    if-eqz v3, :cond_6

    const-string p1, "photo://"

    .line 63
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v4}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result p1

    if-ne p1, p3, :cond_6

    iget-object p1, p0, Lcom/narvii/chat/ChatBubbleView;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 64
    invoke-virtual {p1, p2}, Lcom/narvii/chat/core/ChatService;->removeInProcessUploadMedia(I)V

    :cond_6
    return-void
.end method

.method public setInnerPadding(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroid/app/Activity;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sget-object v1, Lcom/narvii/chat/ChatBubbleView;->size:Landroid/graphics/Point;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 20
    .line 21
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 22
    .line 23
    iget v1, p0, Lcom/narvii/chat/ChatBubbleView;->widthMargin:I

    .line 24
    sub-int/2addr v0, v1

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    new-instance p1, Landroid/graphics/Rect;

    .line 29
    .line 30
    .line 31
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Lcom/narvii/chat/BubbleDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 37
    .line 38
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 39
    sub-int/2addr v0, v1

    .line 40
    .line 41
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 42
    sub-int/2addr v0, p1

    .line 43
    .line 44
    iput v0, p0, Lcom/narvii/chat/ChatBubbleView;->maxContentWidth:I

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    sub-int/2addr v0, p1

    .line 47
    .line 48
    iput v0, p0, Lcom/narvii/chat/ChatBubbleView;->maxContentWidth:I

    .line 49
    :goto_0
    return-void
.end method

.method public setLayout(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/ChatBubbleView;->layoutId:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    .line 22
    :cond_0
    iput p1, p0, Lcom/narvii/chat/ChatBubbleView;->layoutId:I

    .line 23
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

    .line 1
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

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/chat/ChatBubbleView;->setText(Ljava/lang/CharSequence;Lcom/narvii/model/ChatMessage;ZLcom/fasterxml/jackson/databind/node/ObjectNode;ZI)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Lcom/narvii/model/ChatMessage;ZLcom/fasterxml/jackson/databind/node/ObjectNode;ZI)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p5

    .line 3
    invoke-direct {p0, v2, v3}, Lcom/narvii/chat/ChatBubbleView;->hasAttachment(Lcom/fasterxml/jackson/databind/node/ObjectNode;Z)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    .line 4
    iget-boolean v7, v1, Lcom/narvii/model/ChatMessage;->_linkParsing:Z

    if-eqz v7, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    if-eqz v1, :cond_1

    .line 5
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/model/ChatMessage;->isReplyMessage()Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v5

    goto :goto_1

    :cond_1
    move v8, v6

    :goto_1
    const/4 v9, 0x0

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/model/ChatMessage;->getFirstLinkSnippet()Lcom/narvii/model/LinkSummary;

    move-result-object v10

    goto :goto_2

    :cond_2
    move-object v10, v9

    :goto_2
    const/16 v11, 0x8

    if-nez v7, :cond_5

    if-eqz v10, :cond_3

    .line 7
    invoke-virtual {v10}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object v12

    if-eqz v12, :cond_3

    goto :goto_4

    :cond_3
    if-eqz v4, :cond_4

    const v7, 0x7f0d00a9

    goto :goto_3

    :cond_4
    const v7, 0x7f0d00a8

    .line 8
    :goto_3
    invoke-virtual {p0, v7}, Lcom/narvii/chat/ChatBubbleView;->setLayout(I)V

    goto :goto_5

    :cond_5
    :goto_4
    const v12, 0x7f0d00aa

    .line 9
    invoke-virtual {p0, v12}, Lcom/narvii/chat/ChatBubbleView;->setLayout(I)V

    const v12, 0x7f0a029a

    .line 10
    invoke-virtual {p0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/narvii/link/viewer/LinkSnippetImageLayout;

    const v13, 0x7f0a07ed

    .line 11
    invoke-virtual {p0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    if-eqz v10, :cond_6

    .line 12
    invoke-virtual {v12, v6}, Landroid/view/View;->setVisibility(I)V

    .line 13
    invoke-virtual {v13, v11}, Landroid/view/View;->setVisibility(I)V

    .line 14
    new-instance v7, Lcom/narvii/chat/ChatBubbleView$1;

    invoke-direct {v7, p0, v10}, Lcom/narvii/chat/ChatBubbleView$1;-><init>(Lcom/narvii/chat/ChatBubbleView;Lcom/narvii/model/LinkSummary;)V

    invoke-virtual {v12, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-virtual {v12, p0}, Lcom/narvii/link/viewer/LinkSnippetImageLayout;->setChatBubbleView(Lcom/narvii/chat/ChatBubbleView;)V

    .line 16
    invoke-virtual {v10}, Lcom/narvii/model/LinkSummary;->getFirstMedia()Lcom/narvii/model/Media;

    move-result-object v7

    invoke-virtual {v12, v7, v1}, Lcom/narvii/link/viewer/LinkSnippetImageLayout;->setImageMedia(Lcom/narvii/model/Media;Lcom/narvii/model/ChatMessage;)V

    goto :goto_5

    :cond_6
    if-eqz v7, :cond_7

    .line 17
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 18
    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_5
    iget-object v7, v0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    .line 19
    invoke-virtual {v7, v9}, Lcom/narvii/chat/BubbleBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    const v7, 0x7f0a0e51

    .line 20
    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    move-object v9, p1

    .line 21
    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v0, Lcom/narvii/chat/ChatBubbleView;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 22
    invoke-virtual {v9, v1}, Lcom/narvii/chat/util/ChatHelper;->isMine(Lcom/narvii/model/ChatMessage;)Z

    move-result v9

    if-nez p6, :cond_9

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    if-eqz v9, :cond_8

    const v12, 0x7f060095

    goto :goto_6

    :cond_8
    const v12, 0x7f060094

    :goto_6
    invoke-static {v10, v12}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    goto :goto_7

    :cond_9
    move/from16 v10, p6

    .line 24
    :goto_7
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p3, :cond_a

    .line 25
    invoke-virtual {v7, v5}, Landroid/view/View;->setClickable(Z)V

    .line 26
    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_8

    .line 27
    :cond_a
    invoke-virtual {v7, v6}, Landroid/view/View;->setClickable(Z)V

    :goto_8
    if-eqz v4, :cond_b

    .line 28
    invoke-direct {p0, v2, v3, v9, v10}, Lcom/narvii/chat/ChatBubbleView;->setAttachment(Lcom/fasterxml/jackson/databind/node/ObjectNode;ZZI)V

    :cond_b
    const v2, 0x7f0a0c16

    .line 29
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/ChatReplyLayout;

    if-eqz v2, :cond_d

    if-eqz v8, :cond_c

    .line 30
    invoke-virtual/range {p2 .. p2}, Lcom/narvii/model/ChatMessage;->getReplyMessage()Lcom/narvii/model/ChatMessage;

    move-result-object v1

    invoke-virtual {v2, v1, v10}, Lcom/narvii/chat/ChatReplyLayout;->setMessage(Lcom/narvii/model/ChatMessage;I)V

    .line 31
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    .line 32
    :cond_c
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    :goto_9
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0e51

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Landroid/widget/TextView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    :cond_0
    return-void
.end method

.method public setVideo(Lcom/narvii/model/ChatMessage;)V
    .locals 10

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
    iput-boolean v0, p0, Lcom/narvii/chat/ChatBubbleView;->isVideo:Z

    .line 7
    .line 8
    iget v1, p1, Lcom/narvii/model/ChatMessage;->mediaType:I

    .line 9
    .line 10
    const/16 v2, 0x67

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    move v1, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move v1, v3

    .line 17
    .line 18
    :goto_0
    iput-boolean v1, p0, Lcom/narvii/chat/ChatBubbleView;->isYoutubeVideo:Z

    .line 19
    .line 20
    iget v1, p1, Lcom/narvii/model/ChatMessage;->_status:I

    .line 21
    .line 22
    if-ne v1, v0, :cond_2

    .line 23
    move v1, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    move v1, v3

    .line 26
    .line 27
    .line 28
    :goto_1
    const v2, 0x7f0d00ab

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v2}, Lcom/narvii/chat/ChatBubbleView;->setLayout(I)V

    .line 32
    .line 33
    .line 34
    const v2, 0x7f0a0b8a

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    check-cast v2, Lcom/narvii/widget/SmoothProgressBar;

    .line 41
    .line 42
    const/16 v4, 0x8

    .line 43
    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    iget-object v5, p0, Lcom/narvii/chat/ChatBubbleView;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, p1}, Lcom/narvii/chat/core/ChatService;->getCurVideoUploadProgress(Lcom/narvii/model/ChatMessage;)I

    .line 52
    move-result v5

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v5}, Lcom/narvii/widget/SmoothProgressBar;->setProgress(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 59
    goto :goto_2

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getVideoInfo()Lcom/narvii/model/ChatMessageVideoInfo;

    .line 66
    move-result-object v2

    .line 67
    const/4 v5, 0x0

    .line 68
    .line 69
    if-nez v2, :cond_5

    .line 70
    move-object v2, v5

    .line 71
    goto :goto_3

    .line 72
    .line 73
    .line 74
    :cond_5
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getVideoInfo()Lcom/narvii/model/ChatMessageVideoInfo;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    iget-object v2, v2, Lcom/narvii/model/ChatMessageVideoInfo;->coverImage:Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    move-result v6

    .line 82
    .line 83
    .line 84
    const v7, 0x7f0a0af3

    .line 85
    .line 86
    if-nez v6, :cond_6

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object v6

    .line 91
    .line 92
    check-cast v6, Lcom/narvii/widget/FlexSizeImageView;

    .line 93
    .line 94
    if-eqz v6, :cond_7

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6, v2, v0}, Lcom/narvii/widget/FlexSizeImageView;->setImageSizeFromUrl(Ljava/lang/String;Z)V

    .line 98
    goto :goto_4

    .line 99
    .line 100
    :cond_6
    iget-boolean v0, p0, Lcom/narvii/chat/ChatBubbleView;->isYoutubeVideo:Z

    .line 101
    .line 102
    if-eqz v0, :cond_7

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    check-cast v0, Lcom/narvii/widget/FlexSizeImageView;

    .line 109
    .line 110
    if-eqz v0, :cond_7

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 114
    move-result-object v6

    .line 115
    .line 116
    .line 117
    const v7, 0x7f0700e4

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 121
    move-result v6

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 125
    move-result-object v7

    .line 126
    .line 127
    .line 128
    const v8, 0x7f0700e3

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 132
    move-result v7

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v6, v7}, Lcom/narvii/widget/FlexSizeImageView;->setImageSize(II)V

    .line 136
    .line 137
    .line 138
    :cond_7
    :goto_4
    const v0, 0x7f0a06eb

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    move-result-object v0

    .line 143
    .line 144
    check-cast v0, Lcom/narvii/chat/ChatImageView;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, p0}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    .line 151
    move-result-object v6

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 155
    move-result v7

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v6, v7}, Lcom/narvii/chat/ChatImageView;->setImageMedia(Lcom/narvii/model/Media;I)Z

    .line 159
    .line 160
    iget-object v6, p0, Lcom/narvii/chat/ChatBubbleView;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 161
    const/4 v7, 0x4

    .line 162
    .line 163
    const/16 v8, 0xff

    .line 164
    .line 165
    if-eqz v6, :cond_8

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 169
    move-result v9

    .line 170
    .line 171
    .line 172
    invoke-virtual {v6, v9}, Lcom/narvii/chat/core/ChatService;->isMediaUploadingStillInProcess(I)Z

    .line 173
    move-result v6

    .line 174
    .line 175
    if-eqz v6, :cond_8

    .line 176
    .line 177
    iget-object v6, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6, v8}, Lcom/narvii/chat/BubbleDrawable;->setAlpha(I)V

    .line 181
    goto :goto_6

    .line 182
    .line 183
    :cond_8
    iget-object v6, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/narvii/widget/NVImageView;->getStatus()I

    .line 187
    move-result v9

    .line 188
    .line 189
    if-ne v9, v7, :cond_9

    .line 190
    goto :goto_5

    .line 191
    .line 192
    :cond_9
    const/16 v8, 0x33

    .line 193
    .line 194
    .line 195
    :goto_5
    invoke-virtual {v6, v8}, Lcom/narvii/chat/BubbleDrawable;->setAlpha(I)V

    .line 196
    .line 197
    :goto_6
    iget-object v6, p0, Lcom/narvii/chat/ChatBubbleView;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 198
    .line 199
    if-eqz v6, :cond_a

    .line 200
    .line 201
    if-eqz v2, :cond_a

    .line 202
    .line 203
    const-string v6, "photo://"

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 207
    move-result v2

    .line 208
    .line 209
    if-nez v2, :cond_a

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Lcom/narvii/widget/NVImageView;->getStatus()I

    .line 213
    move-result v0

    .line 214
    .line 215
    if-ne v0, v7, :cond_a

    .line 216
    .line 217
    iget-object v0, p0, Lcom/narvii/chat/ChatBubbleView;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 221
    move-result v2

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v2}, Lcom/narvii/chat/core/ChatService;->removeInProcessUploadMedia(I)V

    .line 225
    .line 226
    .line 227
    :cond_a
    const v0, 0x7f0a0f91

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 231
    move-result-object v0

    .line 232
    .line 233
    if-eqz v0, :cond_c

    .line 234
    .line 235
    iget-object v2, p0, Lcom/narvii/chat/ChatBubbleView;->bubble:Lcom/narvii/chat/BubbleBitmapDrawable;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2}, Lcom/narvii/chat/BubbleBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 239
    move-result-object v2

    .line 240
    .line 241
    if-eqz v2, :cond_b

    .line 242
    .line 243
    if-nez v1, :cond_b

    .line 244
    move v1, v3

    .line 245
    goto :goto_7

    .line 246
    :cond_b
    move v1, v4

    .line 247
    .line 248
    .line 249
    :goto_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 250
    .line 251
    .line 252
    :cond_c
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->getVideoDuration()J

    .line 253
    move-result-wide v0

    .line 254
    .line 255
    .line 256
    const v2, 0x7f0a04a4

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 260
    move-result-object v2

    .line 261
    .line 262
    check-cast v2, Landroid/widget/TextView;

    .line 263
    .line 264
    iget-boolean v6, p0, Lcom/narvii/chat/ChatBubbleView;->isYoutubeVideo:Z

    .line 265
    .line 266
    if-eqz v6, :cond_d

    .line 267
    goto :goto_8

    .line 268
    .line 269
    .line 270
    :cond_d
    invoke-static {v0, v1}, Lcom/narvii/util/TimeUtils;->formatTimeDuration(J)Ljava/lang/String;

    .line 271
    move-result-object v5

    .line 272
    .line 273
    .line 274
    :goto_8
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    .line 276
    .line 277
    const v0, 0x7f0a0e51

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 281
    move-result-object v0

    .line 282
    .line 283
    check-cast v0, Landroid/widget/TextView;

    .line 284
    .line 285
    if-eqz v0, :cond_f

    .line 286
    .line 287
    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    .line 292
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 296
    move-result p1

    .line 297
    .line 298
    if-eqz p1, :cond_e

    .line 299
    goto :goto_9

    .line 300
    :cond_e
    move v4, v3

    .line 301
    .line 302
    .line 303
    :goto_9
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 304
    .line 305
    .line 306
    :cond_f
    const p1, 0x7f0a0149

    .line 307
    .line 308
    .line 309
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 310
    move-result-object p1

    .line 311
    .line 312
    if-eqz p1, :cond_10

    .line 313
    .line 314
    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 316
    move-result-object p1

    .line 317
    .line 318
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 319
    .line 320
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 321
    :cond_10
    return-void
.end method
