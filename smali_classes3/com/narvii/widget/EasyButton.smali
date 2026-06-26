.class public Lcom/narvii/widget/EasyButton;
.super Landroid/widget/ImageView;
.source "EasyButton.java"


# static fields
.field private static final iarr:[I


# instance fields
.field colorFilter:Landroid/graphics/ColorFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 50
    sput-object v0, Lcom/narvii/widget/EasyButton;->iarr:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/narvii/widget/EasyButton;->updateState()V

    return-void
.end method

.method public static tintColorFilter(FF)Landroid/graphics/ColorFilter;
    .locals 4

    .line 94
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    const/16 v1, 0x14

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    aput v2, v1, v3

    const/4 v3, 0x4

    aput v2, v1, v3

    const/4 v3, 0x5

    aput v2, v1, v3

    const/4 v3, 0x6

    aput p0, v1, v3

    const/4 v3, 0x7

    aput v2, v1, v3

    const/16 v3, 0x8

    aput v2, v1, v3

    const/16 v3, 0x9

    aput v2, v1, v3

    const/16 v3, 0xa

    aput v2, v1, v3

    const/16 v3, 0xb

    aput v2, v1, v3

    const/16 v3, 0xc

    aput p0, v1, v3

    const/16 p0, 0xd

    aput v2, v1, p0

    const/16 p0, 0xe

    aput v2, v1, p0

    const/16 p0, 0xf

    aput v2, v1, p0

    const/16 p0, 0x10

    aput v2, v1, p0

    const/16 p0, 0x11

    aput v2, v1, p0

    const/16 p0, 0x12

    aput p1, v1, p0

    const/16 p0, 0x13

    aput v2, v1, p0

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    return-object v0
.end method

.method private updateState()V
    .locals 4

    .line 53
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->isPressed()Z

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f400000    # 0.75f

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 62
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    const v0, 0x3f59999a    # 0.85f

    .line 65
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 69
    :goto_1
    invoke-static {v0, v1}, Lcom/narvii/widget/EasyButton;->tintColorFilter(FF)Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/narvii/widget/EasyButton;->colorFilter:Landroid/graphics/ColorFilter;

    .line 71
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 76
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/narvii/widget/EasyButton;->colorFilter:Landroid/graphics/ColorFilter;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 80
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/narvii/widget/EasyButton;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/narvii/widget/EasyButton;->colorFilter:Landroid/graphics/ColorFilter;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string v0, "TintButton only support BitmapDrawable now"

    .line 84
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 85
    iput-object v2, p0, Lcom/narvii/widget/EasyButton;->colorFilter:Landroid/graphics/ColorFilter;

    :cond_1
    move-object v0, v2

    .line 87
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    if-eqz v2, :cond_2

    .line 89
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_2
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 40
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ImageView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 41
    invoke-direct {p0}, Lcom/narvii/widget/EasyButton;->updateState()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 47
    invoke-direct {p0}, Lcom/narvii/widget/EasyButton;->updateState()V

    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 34
    invoke-direct {p0}, Lcom/narvii/widget/EasyButton;->updateState()V

    return-void
.end method
