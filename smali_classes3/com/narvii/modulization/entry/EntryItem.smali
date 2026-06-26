.class public Lcom/narvii/modulization/entry/EntryItem;
.super Ljava/lang/Object;
.source "EntryItem.java"


# instance fields
.field public backgroundColorId:I

.field public descriptionTextId:I

.field public iconDrawableId:I

.field public nameId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/narvii/modulization/entry/EntryItem;->nameId:I

    .line 31
    iput p2, p0, Lcom/narvii/modulization/entry/EntryItem;->backgroundColorId:I

    .line 32
    iput p3, p0, Lcom/narvii/modulization/entry/EntryItem;->iconDrawableId:I

    .line 33
    iput p4, p0, Lcom/narvii/modulization/entry/EntryItem;->descriptionTextId:I

    return-void
.end method


# virtual methods
.method public getIconBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 48
    invoke-virtual {p0, p1}, Lcom/narvii/modulization/entry/EntryItem;->getIconColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/narvii/modulization/entry/EntryItem;->getIconBackgroundDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getIconBackgroundDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 52
    sget v0, Lcom/narvii/lib/R$string;->compose_draft:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/narvii/modulization/entry/EntryItem;->nameId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget p2, Lcom/narvii/lib/R$drawable;->selector_draft_background:I

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 57
    invoke-static {p2, p1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v0, 0x2

    .line 58
    aget v1, p1, v0

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v1, v1, v2

    aput v1, p1, v0

    .line 59
    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    .line 60
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 61
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    new-instance p2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {p2, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 63
    invoke-virtual {p2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100a7

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 66
    invoke-virtual {p1, v1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p2, v3, [I

    .line 67
    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public getIconColor(Landroid/content/Context;)I
    .locals 1

    .line 44
    iget v0, p0, Lcom/narvii/modulization/entry/EntryItem;->backgroundColorId:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 72
    iget v0, p0, Lcom/narvii/modulization/entry/EntryItem;->iconDrawableId:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 37
    iget v0, p0, Lcom/narvii/modulization/entry/EntryItem;->nameId:I

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 40
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNameId()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/narvii/modulization/entry/EntryItem;->nameId:I

    return v0
.end method
