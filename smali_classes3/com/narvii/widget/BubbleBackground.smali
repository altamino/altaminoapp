.class public Lcom/narvii/widget/BubbleBackground;
.super Landroid/view/View;
.source "BubbleBackground.java"


# static fields
.field private static final colors:[I


# instance fields
.field private id:Ljava/lang/String;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/16 v1, 0x96

    const/16 v2, 0xcf

    const/16 v3, 0xe8

    .line 15
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x6a

    const/16 v2, 0xd2

    const/16 v3, 0x92

    .line 16
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/16 v1, 0xee

    const/16 v2, 0xaf

    const/16 v3, 0x99

    .line 17
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    const/16 v1, 0xa6

    const/16 v2, 0x9e

    const/16 v3, 0xd6

    .line 18
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    const/16 v1, 0xb8

    const/16 v2, 0x9c

    const/16 v3, 0x93

    .line 19
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    const/16 v1, 0xdd

    const/16 v2, 0xda

    const/16 v3, 0x8a

    .line 20
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    sput-object v0, Lcom/narvii/widget/BubbleBackground;->colors:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/BubbleBackground;->paint:Landroid/graphics/Paint;

    .line 29
    iget-object p1, p0, Lcom/narvii/widget/BubbleBackground;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/narvii/widget/BubbleBackground;->id:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 43
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 45
    iget-object v0, p0, Lcom/narvii/widget/BubbleBackground;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    sget-object v1, Lcom/narvii/widget/BubbleBackground;->colors:[I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sget-object v2, Lcom/narvii/widget/BubbleBackground;->colors:[I

    array-length v2, v2

    rem-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    aget v0, v1, v0

    .line 50
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x34

    const/16 v2, 0xff

    if-le v1, v2, :cond_1

    const/16 v1, 0xff

    .line 52
    :cond_1
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x34

    if-le v3, v2, :cond_2

    const/16 v3, 0xff

    .line 54
    :cond_2
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x34

    if-le v4, v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v4

    .line 56
    :goto_0
    invoke-static {v1, v3, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 58
    iget-object v2, p0, Lcom/narvii/widget/BubbleBackground;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v7, v0

    iget-object v8, p0, Lcom/narvii/widget/BubbleBackground;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 61
    iget-object v0, p0, Lcom/narvii/widget/BubbleBackground;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x42000000    # 32.0f

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    div-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    div-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x4

    neg-int v3, v1

    :goto_1
    if-gt v3, v1, :cond_6

    mul-int v4, v3, v0

    mul-int/lit8 v4, v4, 0x2

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    neg-int v5, v2

    :goto_2
    if-gt v5, v2, :cond_5

    .line 68
    rem-int/lit8 v6, v3, 0x2

    if-nez v6, :cond_4

    const/4 v6, -0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x1

    :goto_3
    mul-int v6, v6, v0

    mul-int v7, v5, v0

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    int-to-float v7, v4

    int-to-float v8, v0

    .line 69
    iget-object v9, p0, Lcom/narvii/widget/BubbleBackground;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/narvii/widget/BubbleBackground;->id:Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
