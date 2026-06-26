.class public Lcom/narvii/widget/InnerIconDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "InnerIconDrawable.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private radius:F

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 37
    invoke-super {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 39
    iget-object v0, p0, Lcom/narvii/widget/InnerIconDrawable;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v1, -0x10000

    .line 44
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/narvii/widget/InnerIconDrawable;->size:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/narvii/widget/InnerIconDrawable;->size:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 48
    new-instance v4, Landroid/graphics/Rect;

    add-int v5, v1, v3

    add-int/2addr v3, v2

    invoke-direct {v4, v1, v2, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 49
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/16 v2, 0x1f

    const/4 v3, 0x0

    .line 51
    invoke-virtual {p1, v1, v3, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v2

    .line 53
    iget v5, p0, Lcom/narvii/widget/InnerIconDrawable;->radius:F

    invoke-virtual {p1, v1, v5, v5, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 54
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 55
    iget-object v1, p0, Lcom/narvii/widget/InnerIconDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v3, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 57
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public setIconBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/narvii/widget/InnerIconDrawable;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setIconRadius(F)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/narvii/widget/InnerIconDrawable;->radius:F

    return-void
.end method

.method public setIconSize(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/narvii/widget/InnerIconDrawable;->size:I

    return-void
.end method
