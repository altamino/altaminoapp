.class public Lcom/narvii/widget/EmojioneView;
.super Landroid/view/View;
.source "EmojioneView.java"


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

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$dimen;->emoji_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/EmojioneView;->size:I

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/EmojioneView;->src:Landroid/graphics/Rect;

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/EmojioneView;->dst:Landroid/graphics/Rect;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/EmojioneView;->paint:Landroid/graphics/Paint;

    .line 34
    iget-object v0, p0, Lcom/narvii/widget/EmojioneView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 35
    iget-object v0, p0, Lcom/narvii/widget/EmojioneView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 36
    iget-object v0, p0, Lcom/narvii/widget/EmojioneView;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    sget-object v0, Lcom/narvii/lib/R$styleable;->EmojioneView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 39
    sget p2, Lcom/narvii/lib/R$styleable;->EmojioneView_emojiUnicode:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 41
    sget v0, Lcom/narvii/lib/R$styleable;->EmojioneView_emojiShortName:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    sget-object p2, Lcom/narvii/util/emojione/EmojioneShortName;->shortNameToUnicode:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_1

    .line 49
    invoke-virtual {p0, p2}, Lcom/narvii/widget/EmojioneView;->setEmoji(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public isEmojiAvailable()Z
    .locals 1

    .line 65
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

    .line 75
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 76
    iget-object v0, p0, Lcom/narvii/widget/EmojioneView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 79
    iget-object v5, p0, Lcom/narvii/widget/EmojioneView;->dst:Landroid/graphics/Rect;

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 80
    iget v0, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v4

    iput v0, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 81
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    iput v1, v5, Landroid/graphics/Rect;->top:I

    .line 82
    iget v0, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v4

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 83
    iget-object v0, p0, Lcom/narvii/widget/EmojioneView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/narvii/widget/EmojioneView;->src:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/narvii/widget/EmojioneView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 70
    iget v0, p0, Lcom/narvii/widget/EmojioneView;->size:I

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    iget v0, p0, Lcom/narvii/widget/EmojioneView;->size:I

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setEmoji(Ljava/lang/String;)V
    .locals 2

    .line 54
    iput-object p1, p0, Lcom/narvii/widget/EmojioneView;->emoji:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/util/emojione/EmojionePng;->getBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/EmojioneView;->bitmap:Landroid/graphics/Bitmap;

    .line 56
    iget-object p1, p0, Lcom/narvii/widget/EmojioneView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/narvii/widget/EmojioneView;->src:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 59
    iget-object p1, p0, Lcom/narvii/widget/EmojioneView;->src:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/narvii/widget/EmojioneView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 61
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
