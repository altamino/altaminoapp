.class public Lcom/narvii/livelayer/detailview/AutoBubbleView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


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
    .locals 24

    .line 1
    .line 2
    new-instance v0, Ljava/util/Random;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 10
    .line 11
    sput-object v0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->RANDOM:Ljava/util/Random;

    .line 12
    .line 13
    const-string v3, "\ud83d\udc40\ud83d\ude4b"

    .line 14
    .line 15
    const-string v4, "\ud83d\udc36\ud83d\ude3a\ud83d\ude39"

    .line 16
    .line 17
    const-string v5, "\ud83d\udc4f\ud83d\udc4f\ud83d\udc4f\ud83d\udc4f\ud83d\udc4f"

    .line 18
    .line 19
    const-string v6, "\ud83c\udf3c\ud83c\udf08\ud83d\ude0a\ud83d\udc49"

    .line 20
    .line 21
    const-string v7, "\ud83d\udc36\ud83d\ude3a\ud83d\ude39"

    .line 22
    .line 23
    const-string v8, "\ud83d\udc49\ud83d\udc49"

    .line 24
    .line 25
    const-string v9, "\u2764\ufe0f\ud83d\ude04\u2764\ufe0f"

    .line 26
    .line 27
    const-string v10, "\ud83d\udc4b\ud83c\udf38\u2600\ufe0f\u2600\ufe0f"

    .line 28
    .line 29
    const-string v11, "\ud83d\udc4c\u2728"

    .line 30
    .line 31
    const-string v12, "\ud83d\ude4b\u200d\u2642\ufe0f\ud83d\ude4b\ud83d\ude47\u200d\u2640\ufe0f"

    .line 32
    .line 33
    const-string v13, "\ud83d\udeb6\ud83c\udfc3\ud83d\udeb6\ud83c\udfc3"

    .line 34
    .line 35
    const-string v14, "\ud83d\udc40\ud83d\ude31\ud83d\ude44"

    .line 36
    .line 37
    const-string v15, "\ud83d\udc25"

    .line 38
    .line 39
    const-string v16, "\ud83c\udf40\ud83c\udf40"

    .line 40
    .line 41
    const-string v17, "\ud83c\udf49\ud83c\udf49\ud83c\udf4e\ud83c\udf4e"

    .line 42
    .line 43
    const-string v18, "\ud83c\udf53\ud83c\udf47\ud83c\udf50"

    .line 44
    .line 45
    const-string v19, "\ud83c\udf6d\ud83c\udf6d\ud83c\udf6c\ud83c\udf6c"

    .line 46
    .line 47
    const-string v20, "\ud83c\udf7b"

    .line 48
    .line 49
    const-string v21, "\ud83c\udfc0\u26bd\ufe0f\ud83c\udfd0\u26be\ufe0f"

    .line 50
    .line 51
    const-string v22, "\ud83c\udf81\ud83c\udf81\ud83c\udf81"

    .line 52
    .line 53
    const-string v23, "\ud83c\udf88\ud83c\udf88\ud83c\udf8a\ud83c\udf8a\ud83c\udf88"

    .line 54
    .line 55
    .line 56
    filled-new-array/range {v3 .. v23}, [Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    sput-object v0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_TEXT:[Ljava/lang/String;

    .line 60
    array-length v0, v0

    .line 61
    .line 62
    new-array v0, v0, [Landroid/graphics/Bitmap;

    .line 63
    .line 64
    sput-object v0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_BMP:[Landroid/graphics/Bitmap;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    const/16 p2, 0x64

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->MOVE_DISTANCE:I

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    iput p2, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_HEIGHT:I

    .line 11
    .line 12
    iput p2, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_DIVIDER:I

    .line 13
    .line 14
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->handler:Landroid/os/Handler;

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/livelayer/detailview/AutoBubbleView$1;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/narvii/livelayer/detailview/AutoBubbleView$1;-><init>(Lcom/narvii/livelayer/detailview/AutoBubbleView;)V

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->autoRun:Ljava/lang/Runnable;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    const/high16 v1, 0x41a00000    # 20.0f

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 33
    move-result v0

    .line 34
    float-to-int v0, v0

    .line 35
    .line 36
    iput v0, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_HEIGHT:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    const/high16 v1, 0x40800000    # 4.0f

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 46
    move-result v0

    .line 47
    float-to-int v0, v0

    .line 48
    .line 49
    iput v0, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_DIVIDER:I

    .line 50
    .line 51
    iget v1, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_HEIGHT:I

    .line 52
    add-int/2addr v1, v0

    .line 53
    .line 54
    iput v1, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->MOVE_DISTANCE:I

    .line 55
    const/4 v0, 0x1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 59
    .line 60
    .line 61
    const v1, 0x800053

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 71
    const/4 v1, 0x3

    .line 72
    .line 73
    new-array v1, v1, [Landroid/widget/ImageView;

    .line 74
    .line 75
    iput-object v1, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->views:[Landroid/widget/ImageView;

    .line 76
    .line 77
    :goto_0
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->views:[Landroid/widget/ImageView;

    .line 78
    array-length v1, v1

    .line 79
    .line 80
    if-ge p2, v1, :cond_1

    .line 81
    .line 82
    new-instance v1, Landroid/widget/ImageView;

    .line 83
    .line 84
    .line 85
    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 86
    .line 87
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 88
    const/4 v3, -0x2

    .line 89
    .line 90
    iget v4, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_HEIGHT:I

    .line 91
    .line 92
    .line 93
    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 94
    .line 95
    iget-object v3, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->views:[Landroid/widget/ImageView;

    .line 96
    array-length v3, v3

    .line 97
    sub-int/2addr v3, v0

    .line 98
    .line 99
    if-ge p2, v3, :cond_0

    .line 100
    .line 101
    iget v3, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_DIVIDER:I

    .line 102
    .line 103
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 104
    .line 105
    .line 106
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 110
    .line 111
    iget-object v2, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->views:[Landroid/widget/ImageView;

    .line 112
    .line 113
    aput-object v1, v2, p2

    .line 114
    .line 115
    add-int/lit8 p2, p2, 0x1

    .line 116
    goto :goto_0

    .line 117
    :cond_1
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/livelayer/detailview/AutoBubbleView;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/livelayer/detailview/AutoBubbleView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/livelayer/detailview/AutoBubbleView;->getRandomBubble()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/livelayer/detailview/AutoBubbleView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/detailview/AutoBubbleView;->insertBubble(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private getRandomBubble()Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->RANDOM:Ljava/util/Random;

    .line 3
    .line 4
    sget-object v1, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_BMP:[Landroid/graphics/Bitmap;

    .line 5
    array-length v1, v1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 9
    move-result v0

    .line 10
    .line 11
    sget-object v1, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_BMP:[Landroid/graphics/Bitmap;

    .line 12
    .line 13
    aget-object v1, v1, v0

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Lcom/narvii/livelayer/detailview/LiveLayerChatBubbleView;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2, v3}, Lcom/narvii/livelayer/detailview/LiveLayerChatBubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    .line 27
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 28
    const/4 v3, -0x2

    .line 29
    .line 30
    iget v4, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_HEIGHT:I

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    .line 38
    sget-object v2, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_TEXT:[Ljava/lang/String;

    .line 39
    .line 40
    aget-object v2, v2, v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/narvii/livelayer/detailview/LiveLayerChatBubbleView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    const/high16 v3, 0x42c80000    # 100.0f

    .line 50
    .line 51
    .line 52
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 53
    move-result v2

    .line 54
    float-to-int v2, v2

    .line 55
    .line 56
    const/high16 v3, -0x80000000

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 60
    move-result v2

    .line 61
    .line 62
    iget v3, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_HEIGHT:I

    .line 63
    .line 64
    const/high16 v4, 0x40000000    # 2.0f

    .line 65
    .line 66
    .line 67
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 68
    move-result v3

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 75
    move-result v2

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 79
    move-result v3

    .line 80
    const/4 v4, 0x0

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 84
    .line 85
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 86
    .line 87
    .line 88
    invoke-static {v2, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 89
    move-result-object v2

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 93
    .line 94
    new-instance v3, Landroid/graphics/Canvas;

    .line 95
    .line 96
    .line 97
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 101
    .line 102
    sget-object v1, Lcom/narvii/livelayer/detailview/AutoBubbleView;->BUBBLE_BMP:[Landroid/graphics/Bitmap;

    .line 103
    .line 104
    aput-object v2, v1, v0

    .line 105
    move-object v1, v2

    .line 106
    :cond_0
    return-object v1
.end method

.method private insertBubble(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 14
    move-object p1, v0

    .line 15
    .line 16
    :goto_0
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->views:[Landroid/widget/ImageView;

    .line 17
    array-length v0, v0

    .line 18
    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    :goto_1
    if-ltz v0, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->views:[Landroid/widget/ImageView;

    .line 24
    .line 25
    aget-object v1, v1, v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    .line 34
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    .line 35
    .line 36
    iget v3, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->MOVE_DISTANCE:I

    .line 37
    int-to-float v3, v3

    .line 38
    const/4 v4, 0x0

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, v4, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 42
    .line 43
    const-wide/16 v3, 0x1f4

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 50
    .line 51
    add-int/lit8 v0, v0, -0x1

    .line 52
    move-object p1, v2

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    return-void
.end method


# virtual methods
.method protected onWindowVisibilityChanged(I)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->handler:Landroid/os/Handler;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->autoRun:Ljava/lang/Runnable;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->handler:Landroid/os/Handler;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/AutoBubbleView;->autoRun:Ljava/lang/Runnable;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 20
    move-result-wide v1

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    const-wide v3, 0x407f400000000000L    # 500.0

    .line 26
    mul-double/2addr v1, v3

    .line 27
    add-double/2addr v1, v3

    .line 28
    double-to-long v1, v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    :cond_0
    return-void
.end method
