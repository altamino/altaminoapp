.class public Lcom/narvii/modulization/page/PageItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public backgroundColorId:I

.field public iconDrawableId:I

.field public nameId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/narvii/modulization/page/PageItem;->nameId:I

    iput p2, p0, Lcom/narvii/modulization/page/PageItem;->backgroundColorId:I

    iput p3, p0, Lcom/narvii/modulization/page/PageItem;->iconDrawableId:I

    return-void
.end method


# virtual methods
.method public getIconBackgroundDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/modulization/page/PageItem;->getIconColor(Landroid/content/Context;)I

    .line 6
    move-result p2

    .line 7
    :cond_0
    const/4 p1, 0x3

    .line 8
    .line 9
    new-array p1, p1, [F

    .line 10
    .line 11
    .line 12
    invoke-static {p2, p1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 13
    const/4 v0, 0x2

    .line 14
    .line 15
    aget v1, p1, v0

    .line 16
    .line 17
    const/high16 v2, 0x3f400000    # 0.75f

    .line 18
    mul-float/2addr v1, v2

    .line 19
    .line 20
    aput v1, p1, v0

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 24
    move-result p1

    .line 25
    .line 26
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 27
    .line 28
    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    .line 43
    new-instance p2, Landroid/graphics/drawable/ShapeDrawable;

    .line 44
    .line 45
    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    .line 46
    .line 47
    .line 48
    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-direct {p2, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    .line 60
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    .line 61
    .line 62
    .line 63
    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 64
    .line 65
    .line 66
    const v1, 0x10100a7

    .line 67
    .line 68
    .line 69
    filled-new-array {v1}, [I

    .line 70
    move-result-object v1

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 74
    const/4 p2, 0x0

    .line 75
    .line 76
    new-array p2, p2, [I

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 80
    return-object p1
.end method

.method public getIconColor(Landroid/content/Context;)I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/modulization/page/PageItem;->backgroundColorId:I

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/modulization/page/PageItem;->iconDrawableId:I

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/modulization/page/PageItem;->nameId:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string p1, ""

    .line 7
    return-object p1

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method
