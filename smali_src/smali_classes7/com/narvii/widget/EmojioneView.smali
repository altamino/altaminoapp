.class public Lcom/narvii/widget/EmojioneView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private dst:Landroid/graphics/Rect;

.field protected emoji:Ljava/lang/String;

.field private paint:Landroid/graphics/Paint;

.field private size:I

.field private src:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    sget v1, Lcom/narvii/lib/R$dimen;->emoji_icon_size:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 13
    move-result v0

    .line 14
    .line 15
    iput v0, p0, Lcom/narvii/widget/EmojioneView;->size:I

    .line 16
    .line 17
    new-instance v0, Landroid/graphics/Rect;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/widget/EmojioneView;->src:Landroid/graphics/Rect;

    .line 23
    .line 24
    new-instance v0, Landroid/graphics/Rect;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 28
    .line 29
    iput-object v0, p0, Lcom/narvii/widget/EmojioneView;->dst:Landroid/graphics/Rect;

    .line 30
    .line 31
    new-instance v0, Landroid/graphics/Paint;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/widget/EmojioneView;->paint:Landroid/graphics/Paint;

    .line 37
    const/4 v1, 0x1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/widget/EmojioneView;->paint:Landroid/graphics/Paint;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/widget/EmojioneView;->paint:Landroid/graphics/Paint;

    .line 48
    .line 49
    const/high16 v1, -0x1000000

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    .line 54
    sget-object v0, Lcom/narvii/lib/R$styleable;->EmojioneView:[I

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    sget p2, Lcom/narvii/lib/R$styleable;->EmojioneView_emojiUnicode:I

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    if-nez p2, :cond_0

    .line 67
    .line 68
    sget v0, Lcom/narvii/lib/R$styleable;->EmojioneView_emojiShortName:I

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    if-eqz v0, :cond_0

    .line 75
    .line 76
    sget-object p2, Lcom/narvii/util/emojione/EmojioneShortName;->shortNameToUnicode:Ljava/util/Map;

    .line 77
    .line 78
    .line 79
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    check-cast p2, Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    .line 87
    if-eqz p2, :cond_1

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p2}, Lcom/narvii/widget/EmojioneView;->setEmoji(Ljava/lang/String;)V

    .line 91
    :cond_1
    return-void
.end method


# virtual methods
.method public isEmojiAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/EmojioneView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/EmojioneView;->bitmap:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 15
    move-result v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 19
    move-result v2

    .line 20
    sub-int/2addr v2, v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 24
    move-result v3

    .line 25
    sub-int/2addr v2, v3

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 29
    move-result v3

    .line 30
    sub-int/2addr v3, v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 34
    move-result v4

    .line 35
    sub-int/2addr v3, v4

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 39
    move-result v4

    .line 40
    .line 41
    iget-object v5, p0, Lcom/narvii/widget/EmojioneView;->dst:Landroid/graphics/Rect;

    .line 42
    sub-int/2addr v2, v4

    .line 43
    .line 44
    div-int/lit8 v2, v2, 0x2

    .line 45
    add-int/2addr v0, v2

    .line 46
    .line 47
    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 48
    add-int/2addr v0, v4

    .line 49
    .line 50
    iput v0, v5, Landroid/graphics/Rect;->right:I

    .line 51
    sub-int/2addr v3, v4

    .line 52
    .line 53
    div-int/lit8 v3, v3, 0x2

    .line 54
    add-int/2addr v1, v3

    .line 55
    .line 56
    iput v1, v5, Landroid/graphics/Rect;->top:I

    .line 57
    add-int/2addr v1, v4

    .line 58
    .line 59
    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/widget/EmojioneView;->bitmap:Landroid/graphics/Bitmap;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/narvii/widget/EmojioneView;->src:Landroid/graphics/Rect;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/narvii/widget/EmojioneView;->paint:Landroid/graphics/Paint;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0, v1, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 69
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/EmojioneView;->size:I

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    .line 6
    move-result p1

    .line 7
    .line 8
    iget v0, p0, Lcom/narvii/widget/EmojioneView;->size:I

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    .line 12
    move-result p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 16
    return-void
.end method

.method public setEmoji(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/EmojioneView;->emoji:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/narvii/util/emojione/EmojionePng;->getBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/widget/EmojioneView;->bitmap:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/widget/EmojioneView;->src:Landroid/graphics/Rect;

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 20
    .line 21
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 25
    move-result p1

    .line 26
    .line 27
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 28
    .line 29
    iget-object p1, p0, Lcom/narvii/widget/EmojioneView;->src:Landroid/graphics/Rect;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/widget/EmojioneView;->bitmap:Landroid/graphics/Bitmap;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 35
    move-result v0

    .line 36
    .line 37
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 41
    return-void
.end method
