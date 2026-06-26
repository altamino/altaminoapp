.class public Lcom/narvii/app/NVTabDrawable;
.super Landroid/graphics/drawable/StateListDrawable;
.source "NVTabDrawable.java"


# static fields
.field protected static final hsv:[F

.field protected static final paint:Landroid/graphics/Paint;

.field protected static size:I

.field protected static final state_normal:[I

.field protected static final state_pressed:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 16
    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    sput-object v0, Lcom/narvii/app/NVTabDrawable;->state_normal:[I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a1

    aput v3, v1, v2

    .line 17
    sput-object v1, Lcom/narvii/app/NVTabDrawable;->state_pressed:[I

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 18
    sput-object v1, Lcom/narvii/app/NVTabDrawable;->hsv:[F

    .line 23
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/narvii/app/NVTabDrawable;->paint:Landroid/graphics/Paint;

    .line 24
    sget-object v1, Lcom/narvii/app/NVTabDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 25
    sget-object v0, Lcom/narvii/app/NVTabDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const-string v0, "config"

    .line 29
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 30
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVTabDrawable;->buildStates(Lcom/narvii/app/NVContext;)V

    .line 31
    sget v1, Lcom/narvii/app/NVTabDrawable;->size:I

    if-nez v1, :cond_0

    .line 32
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/narvii/lib/R$dimen;->switch_button_decorator:I

    .line 33
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/narvii/app/NVTabDrawable;->size:I

    .line 36
    :cond_0
    sget-object p1, Lcom/narvii/app/NVTabDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected buidIndicator(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 8

    .line 56
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 58
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    const v5, 0x10100a1

    if-ne v4, v5, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 66
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 67
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sget v2, Lcom/narvii/app/NVTabDrawable;->size:I

    sub-int v2, v1, v2

    int-to-float v4, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v0

    int-to-float v6, v1

    move-object v2, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method protected buildStates(Lcom/narvii/app/NVContext;)V
    .locals 2

    const-string v0, "config"

    .line 40
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 41
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result p1

    .line 43
    sget-object v0, Lcom/narvii/app/NVTabDrawable;->state_pressed:[I

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 44
    sget-object p1, Lcom/narvii/app/NVTabDrawable;->state_normal:[I

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xa0a0b

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
