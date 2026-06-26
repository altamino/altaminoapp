.class public Lcom/narvii/modulization/page/PageItem;
.super Ljava/lang/Object;
.source "PageItem.java"


# instance fields
.field public backgroundColorId:I

.field public iconDrawableId:I

.field public nameId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/narvii/modulization/page/PageItem;->nameId:I

    .line 27
    iput p2, p0, Lcom/narvii/modulization/page/PageItem;->backgroundColorId:I

    .line 28
    iput p3, p0, Lcom/narvii/modulization/page/PageItem;->iconDrawableId:I

    return-void
.end method


# virtual methods
.method public getIconBackgroundDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    if-nez p2, :cond_0

    .line 43
    invoke-virtual {p0, p1}, Lcom/narvii/modulization/page/PageItem;->getIconColor(Landroid/content/Context;)I

    move-result p2

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 45
    invoke-static {p2, p1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v0, 0x2

    .line 46
    aget v1, p1, v0

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v1, v1, v2

    aput v1, p1, v0

    .line 47
    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    .line 48
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 49
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    new-instance p2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {p2, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 51
    invoke-virtual {p2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100a7

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 54
    invoke-virtual {p1, v1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p2, v3, [I

    .line 55
    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public getIconColor(Landroid/content/Context;)I
    .locals 1

    .line 39
    iget v0, p0, Lcom/narvii/modulization/page/PageItem;->backgroundColorId:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 61
    iget v0, p0, Lcom/narvii/modulization/page/PageItem;->iconDrawableId:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 32
    iget v0, p0, Lcom/narvii/modulization/page/PageItem;->nameId:I

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 35
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
