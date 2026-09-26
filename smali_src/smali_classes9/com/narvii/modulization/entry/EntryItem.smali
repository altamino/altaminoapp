.class public Lcom/narvii/modulization/entry/EntryItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public backgroundColorId:I

.field public descriptionTextId:I

.field public iconDrawableId:I

.field public nameId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/narvii/modulization/entry/EntryItem;->nameId:I

    iput p2, p0, Lcom/narvii/modulization/entry/EntryItem;->backgroundColorId:I

    iput p3, p0, Lcom/narvii/modulization/entry/EntryItem;->iconDrawableId:I

    iput p4, p0, Lcom/narvii/modulization/entry/EntryItem;->descriptionTextId:I

    return-void
.end method


# virtual methods
.method public getIconBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/modulization/entry/EntryItem;->getIconColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/narvii/modulization/entry/EntryItem;->getIconBackgroundDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getIconBackgroundDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    sget v0, Lcom/narvii/lib/R$string;->compose_draft:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/narvii/modulization/entry/EntryItem;->nameId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget p2, Lcom/narvii/lib/R$drawable;->selector_draft_background:I

    .line 3
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 4
    invoke-static {p2, p1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v0, 0x2

    aget v1, p1, v0

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    aput v1, p1, v0

    .line 5
    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    .line 6
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    new-instance p2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {p2, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 9
    invoke-virtual {p2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v1, 0x10100a7

    filled-new-array {v1}, [I

    move-result-object v1

    .line 11
    invoke-virtual {p1, v1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    new-array p2, p2, [I

    .line 12
    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public getIconColor(Landroid/content/Context;)I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/modulization/entry/EntryItem;->backgroundColorId:I

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
    iget v0, p0, Lcom/narvii/modulization/entry/EntryItem;->iconDrawableId:I

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
    iget v0, p0, Lcom/narvii/modulization/entry/EntryItem;->nameId:I

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

.method public getNameId()I
    .locals 1

    iget v0, p0, Lcom/narvii/modulization/entry/EntryItem;->nameId:I

    return v0
.end method
