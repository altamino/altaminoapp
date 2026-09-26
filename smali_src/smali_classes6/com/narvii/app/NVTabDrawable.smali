.class public Lcom/narvii/app/NVTabDrawable;
.super Landroid/graphics/drawable/StateListDrawable;
.source "SourceFile"


# static fields
.field protected static final hsv:[F

.field protected static final paint:Landroid/graphics/Paint;

.field protected static size:I

.field protected static final state_normal:[I

.field protected static final state_pressed:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    .line 3
    .line 4
    sput-object v0, Lcom/narvii/app/NVTabDrawable;->state_normal:[I

    .line 5
    .line 6
    .line 7
    const v0, 0x10100a1

    .line 8
    .line 9
    .line 10
    filled-new-array {v0}, [I

    .line 11
    move-result-object v0

    .line 12
    .line 13
    sput-object v0, Lcom/narvii/app/NVTabDrawable;->state_pressed:[I

    .line 14
    const/4 v0, 0x3

    .line 15
    .line 16
    new-array v0, v0, [F

    .line 17
    .line 18
    sput-object v0, Lcom/narvii/app/NVTabDrawable;->hsv:[F

    .line 19
    .line 20
    new-instance v0, Landroid/graphics/Paint;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 24
    .line 25
    sput-object v0, Lcom/narvii/app/NVTabDrawable;->paint:Landroid/graphics/Paint;

    .line 26
    const/4 v1, 0x1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 30
    .line 31
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 4
    .line 5
    const-string v0, "config"

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVTabDrawable;->buildStates(Lcom/narvii/app/NVContext;)V

    .line 15
    .line 16
    sget v1, Lcom/narvii/app/NVTabDrawable;->size:I

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    sget v1, Lcom/narvii/lib/R$dimen;->switch_button_decorator:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 32
    move-result p1

    .line 33
    .line 34
    sput p1, Lcom/narvii/app/NVTabDrawable;->size:I

    .line 35
    .line 36
    :cond_0
    sget-object p1, Lcom/narvii/app/NVTabDrawable;->paint:Landroid/graphics/Paint;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 44
    move-result v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    return-void
.end method


# virtual methods
.method protected buidIndicator(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    :goto_0
    if-ge v2, v1, :cond_1

    .line 11
    .line 12
    aget v3, v0, v2

    .line 13
    .line 14
    .line 15
    const v4, 0x10100a1

    .line 16
    .line 17
    if-ne v3, v4, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 24
    int-to-float v3, v1

    .line 25
    .line 26
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 27
    .line 28
    sget v2, Lcom/narvii/app/NVTabDrawable;->size:I

    .line 29
    .line 30
    sub-int v2, v1, v2

    .line 31
    int-to-float v4, v2

    .line 32
    .line 33
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 34
    int-to-float v5, v0

    .line 35
    int-to-float v6, v1

    .line 36
    move-object v2, p1

    .line 37
    move-object v7, p2

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    :goto_1
    return-void
.end method

.method protected buildStates(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 16
    move-result p1

    .line 17
    .line 18
    sget-object v0, Lcom/narvii/app/NVTabDrawable;->state_pressed:[I

    .line 19
    .line 20
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 27
    .line 28
    sget-object p1, Lcom/narvii/app/NVTabDrawable;->state_normal:[I

    .line 29
    .line 30
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 31
    .line 32
    .line 33
    const v1, -0xa0a0b

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 40
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4
    return-void
.end method
