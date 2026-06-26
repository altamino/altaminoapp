.class public Lcom/narvii/livelayer/detailview/AutoBubbleView;
.super Landroid/widget/LinearLayout;
.source "AutoBubbleView.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0x1f4

.field private static final ANIMATION_INTERVAL:I = 0xbb8

.field private static BUBBLE_BMP:[Landroid/graphics/Bitmap;

.field private static BUBBLE_TEXT:[Ljava/lang/String;

.field private static final RANDOM:Ljava/util/Random;


# instance fields
.field private BUBBLE_DIVIDER:I

.field private BUBBLE_HEIGHT:I

.field private MOVE_DISTANCE:I

.field private autoRun:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private views:[Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->RANDOM:Ljava/util/Random;

    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\ud83d\udc40\ud83d\ude4b"

    aput-object v2, v0, v1

    const-string v1, "\ud83d\udc36\ud83d\ude3a\ud83d\ude39"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    const-string v3, "\ud83d\udc4f\ud83d\udc4f\ud83d\udc4f\ud83d\udc4f\ud83d\udc4f"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "\ud83c\udf3c\ud83c\udf08\ud83d\ude0a\ud83d\udc49"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    const-string v2, "\ud83d\udc49\ud83d\udc49"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u2764\ufe0f\ud83d\ude04\u2764\ufe0f"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\ud83d\udc4b\ud83c\udf38\u2600\ufe0f\u2600\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\ud83d\udc4c\u2728"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\ud83d\ude4b\u200d\u2642\ufe0f\ud83d\ude4b\ud83d\ude47\u200d\u2640\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\ud83d\udeb6\ud83c\udfc3\ud83d\udeb6\ud83c\udfc3"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\ud83d\udc40\ud83d\ude31\ud83d\ude44"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\ud83d\udc25"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\ud83c\udf40\ud83c\udf40"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\ud83c\udf49\ud83c\udf49\ud83c\udf4e\ud83c\udf4e"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\ud83c\udf53\ud83c\udf47\ud83c\udf50"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\ud83c\udf6d\ud83c\udf6d\ud83c\udf6c\ud83c\udf6c"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\ud83c\udf7b"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\ud83c\udfc0\u26bd\ufe0f\ud83c\udfd0\u26be\ufe0f"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\ud83c\udf81\ud83c\udf81\ud83c\udf81"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\ud83c\udf88\ud83c\udf88\ud83c\udf8a\ud83c\udf8a\ud83c\udf88"

    aput-object v2, v0, v1

    .line 45
    sput-object v0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_TEXT:[Ljava/lang/String;

    .line 68
    sget-object v0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_TEXT:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    sput-object v0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_BMP:[Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x64

    .line 31
    iput p2, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->MOVE_DISTANCE:I

    const/4 p2, 0x0

    .line 32
    iput p2, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_HEIGHT:I

    .line 33
    iput p2, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_DIVIDER:I

    .line 35
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->handler:Landroid/os/Handler;

    .line 36
    new-instance v0, Lcom/narvii/livelayer/detailview/AutoBubbleView$1;

    invoke-direct {v0, p0}, Lcom/narvii/livelayer/detailview/AutoBubbleView$1;-><init>(Lcom/narvii/livelayer/detailview/AutoBubbleView;)V

    iput-object v0, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->autoRun:Ljava/lang/Runnable;

    .line 72
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_HEIGHT:I

    .line 73
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_DIVIDER:I

    .line 74
    iget v0, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_HEIGHT:I

    iget v1, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_DIVIDER:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->MOVE_DISTANCE:I

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v1, 0x800053

    .line 76
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 77
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 78
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/widget/ImageView;

    .line 79
    iput-object v1, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->views:[Landroid/widget/ImageView;

    .line 80
    :goto_0
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->views:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge p2, v1, :cond_1

    .line 81
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    iget v4, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_HEIGHT:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 83
    iget-object v3, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->views:[Landroid/widget/ImageView;

    array-length v3, v3

    sub-int/2addr v3, v0

    if-ge p2, v3, :cond_0

    .line 84
    iget v3, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_DIVIDER:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 86
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    iget-object v2, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->views:[Landroid/widget/ImageView;

    aput-object v1, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/livelayer/detailview/AutoBubbleView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/narvii/livelayer/detailview/AutoBubbleView;->getRandomBubble()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/livelayer/detailview/AutoBubbleView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/detailview/AutoBubbleView;->insertBubble(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/livelayer/detailview/AutoBubbleView;)Landroid/os/Handler;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private getRandomBubble()Landroid/graphics/Bitmap;
    .locals 6

    .line 118
    sget-object v0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->RANDOM:Ljava/util/Random;

    sget-object v1, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_BMP:[Landroid/graphics/Bitmap;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 119
    sget-object v1, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_BMP:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 121
    new-instance v1, Lcom/narvii/livelayer/detailview/LiveLayerChatBubbleView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/narvii/livelayer/detailview/LiveLayerChatBubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    iget v4, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_HEIGHT:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 123
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    sget-object v2, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_TEXT:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/narvii/livelayer/detailview/LiveLayerChatBubbleView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_HEIGHT:I

    const/high16 v4, 0x40000000    # 2.0f

    .line 127
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 126
    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 128
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v2

    .line 129
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    .line 130
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 131
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 132
    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 133
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 134
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 135
    sget-object v1, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_BMP:[Landroid/graphics/Bitmap;

    aput-object v2, v1, v0

    move-object v1, v2

    :cond_0
    return-object v1
.end method

.method private insertBubble(Landroid/graphics/Bitmap;)V
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 104
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object p1, v0

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->views:[Landroid/widget/ImageView;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 106
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->views:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    .line 107
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 108
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->MOVE_DISTANCE:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {p1, v4, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v3, 0x1f4

    .line 112
    invoke-virtual {p1, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 113
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v0, v0, -0x1

    move-object p1, v2

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method protected onWindowVisibilityChanged(I)V
    .locals 5

    .line 94
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->autoRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->autoRun:Ljava/lang/Runnable;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x407f400000000000L    # 500.0

    mul-double v1, v1, v3

    add-double/2addr v1, v3

    double-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
