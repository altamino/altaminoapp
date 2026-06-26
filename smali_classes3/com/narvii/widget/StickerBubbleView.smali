.class public Lcom/narvii/widget/StickerBubbleView;
.super Lcom/narvii/monetization/sticker/widget/StickerImageView;
.source "StickerBubbleView.java"


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field dst:Landroid/graphics/Rect;

.field paint:Landroid/graphics/Paint;

.field porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

.field src:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/sticker/widget/StickerImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/StickerBubbleView;->paint:Landroid/graphics/Paint;

    .line 32
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/narvii/widget/StickerBubbleView;->porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 33
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0805fa

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 34
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/StickerBubbleView;->bitmap:Landroid/graphics/Bitmap;

    .line 35
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/StickerBubbleView;->src:Landroid/graphics/Rect;

    .line 36
    iget-object p1, p0, Lcom/narvii/widget/StickerBubbleView;->src:Landroid/graphics/Rect;

    const/4 p2, 0x0

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 37
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 38
    iget-object p2, p0, Lcom/narvii/widget/StickerBubbleView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 39
    iget-object p1, p0, Lcom/narvii/widget/StickerBubbleView;->src:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/narvii/widget/StickerBubbleView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 40
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/StickerBubbleView;->dst:Landroid/graphics/Rect;

    .line 41
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40400000    # 3.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    .line 42
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    .line 43
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    .line 44
    invoke-virtual {p0, p1, p1, p2, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 45
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x1f

    .line 50
    invoke-virtual {p1, v0, v0, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v1

    .line 51
    invoke-super {p0, p1}, Lcom/narvii/widget/NVImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 52
    iget-object v2, p0, Lcom/narvii/widget/StickerBubbleView;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/narvii/widget/StickerBubbleView;->porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 53
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    .line 54
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    .line 55
    iget-object v4, p0, Lcom/narvii/widget/StickerBubbleView;->dst:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 56
    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 57
    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 58
    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 59
    iget-object v2, p0, Lcom/narvii/widget/StickerBubbleView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 60
    iget-object v3, p0, Lcom/narvii/widget/StickerBubbleView;->src:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/narvii/widget/StickerBubbleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/narvii/widget/StickerBubbleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 63
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method
