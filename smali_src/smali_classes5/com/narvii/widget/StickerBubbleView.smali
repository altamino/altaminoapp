.class public Lcom/narvii/widget/StickerBubbleView;
.super Lcom/narvii/monetization/sticker/widget/StickerImageView;
.source "SourceFile"


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field dst:Landroid/graphics/Rect;

.field paint:Landroid/graphics/Paint;

.field porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

.field src:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/sticker/widget/StickerImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Landroid/graphics/Paint;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/widget/StickerBubbleView;->paint:Landroid/graphics/Paint;

    .line 11
    .line 12
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 13
    .line 14
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/widget/StickerBubbleView;->porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    const p2, 0x7f0807e5

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    iput-object p1, p0, Lcom/narvii/widget/StickerBubbleView;->bitmap:Landroid/graphics/Bitmap;

    .line 39
    .line 40
    new-instance p1, Landroid/graphics/Rect;

    .line 41
    .line 42
    .line 43
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 44
    .line 45
    iput-object p1, p0, Lcom/narvii/widget/StickerBubbleView;->src:Landroid/graphics/Rect;

    .line 46
    const/4 p2, 0x0

    .line 47
    .line 48
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 49
    .line 50
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 51
    .line 52
    iget-object p2, p0, Lcom/narvii/widget/StickerBubbleView;->bitmap:Landroid/graphics/Bitmap;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 56
    move-result p2

    .line 57
    .line 58
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 59
    .line 60
    iget-object p1, p0, Lcom/narvii/widget/StickerBubbleView;->src:Landroid/graphics/Rect;

    .line 61
    .line 62
    iget-object p2, p0, Lcom/narvii/widget/StickerBubbleView;->bitmap:Landroid/graphics/Bitmap;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 66
    move-result p2

    .line 67
    .line 68
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 69
    .line 70
    new-instance p1, Landroid/graphics/Rect;

    .line 71
    .line 72
    .line 73
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 74
    .line 75
    iput-object p1, p0, Lcom/narvii/widget/StickerBubbleView;->dst:Landroid/graphics/Rect;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    const/high16 p2, 0x40400000    # 3.0f

    .line 82
    .line 83
    .line 84
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 85
    move-result p1

    .line 86
    float-to-int p1, p1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    const/high16 v0, 0x40800000    # 4.0f

    .line 93
    .line 94
    .line 95
    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 96
    move-result p2

    .line 97
    float-to-int p2, p2

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    const/high16 v1, 0x40a00000    # 5.0f

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 107
    move-result v0

    .line 108
    float-to-int v0, v0

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p1, p1, p2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 112
    .line 113
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 117
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    .line 2
    const/16 v0, 0x1f

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v1, v1, v0}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/narvii/widget/NVImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 11
    .line 12
    iget-object v2, p0, Lcom/narvii/widget/StickerBubbleView;->paint:Landroid/graphics/Paint;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/narvii/widget/StickerBubbleView;->porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 21
    move-result v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 25
    move-result v3

    .line 26
    .line 27
    iget-object v4, p0, Lcom/narvii/widget/StickerBubbleView;->dst:Landroid/graphics/Rect;

    .line 28
    const/4 v5, 0x0

    .line 29
    .line 30
    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 31
    .line 32
    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 33
    .line 34
    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 35
    .line 36
    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 37
    .line 38
    iget-object v2, p0, Lcom/narvii/widget/StickerBubbleView;->bitmap:Landroid/graphics/Bitmap;

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    iget-object v3, p0, Lcom/narvii/widget/StickerBubbleView;->src:Landroid/graphics/Rect;

    .line 43
    .line 44
    iget-object v5, p0, Lcom/narvii/widget/StickerBubbleView;->paint:Landroid/graphics/Paint;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 48
    .line 49
    :cond_0
    iget-object v2, p0, Lcom/narvii/widget/StickerBubbleView;->paint:Landroid/graphics/Paint;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 56
    return-void
.end method
