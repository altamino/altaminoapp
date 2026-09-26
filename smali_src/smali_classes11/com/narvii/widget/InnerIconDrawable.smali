.class public Lcom/narvii/widget/InnerIconDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "SourceFile"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private radius:F

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/InnerIconDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    .line 19
    const/high16 v1, -0x10000

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 26
    move-result v1

    .line 27
    .line 28
    iget v2, p0, Lcom/narvii/widget/InnerIconDrawable;->size:I

    .line 29
    sub-int/2addr v1, v2

    .line 30
    .line 31
    div-int/lit8 v1, v1, 0x2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 35
    move-result v2

    .line 36
    .line 37
    iget v3, p0, Lcom/narvii/widget/InnerIconDrawable;->size:I

    .line 38
    sub-int/2addr v2, v3

    .line 39
    .line 40
    div-int/lit8 v2, v2, 0x2

    .line 41
    .line 42
    new-instance v3, Landroid/graphics/Rect;

    .line 43
    .line 44
    iget v4, p0, Lcom/narvii/widget/InnerIconDrawable;->size:I

    .line 45
    .line 46
    add-int v5, v1, v4

    .line 47
    add-int/2addr v4, v2

    .line 48
    .line 49
    .line 50
    invoke-direct {v3, v1, v2, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 51
    .line 52
    new-instance v1, Landroid/graphics/RectF;

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 56
    .line 57
    const/16 v2, 0x1f

    .line 58
    const/4 v4, 0x0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1, v4, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 62
    move-result v2

    .line 63
    .line 64
    iget v5, p0, Lcom/narvii/widget/InnerIconDrawable;->radius:F

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v1, v5, v5, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 68
    .line 69
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 70
    .line 71
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 72
    .line 73
    .line 74
    invoke-direct {v1, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/narvii/widget/InnerIconDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v1, v4, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 86
    return-void
.end method

.method public setIconBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/InnerIconDrawable;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setIconRadius(F)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/InnerIconDrawable;->radius:F

    return-void
.end method

.method public setIconSize(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/InnerIconDrawable;->size:I

    return-void
.end method
