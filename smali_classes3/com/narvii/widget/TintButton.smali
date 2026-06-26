.class public Lcom/narvii/widget/TintButton;
.super Landroid/widget/ImageView;
.source "TintButton.java"


# static fields
.field private static final iarr:[I


# instance fields
.field colorFilter:Landroid/graphics/ColorFilter;

.field colorList:Landroid/content/res/ColorStateList;

.field tintColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 91
    sput-object v0, Lcom/narvii/widget/TintButton;->iarr:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    sget-object v0, Lcom/narvii/lib/R$styleable;->TintButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 36
    sget p2, Lcom/narvii/lib/R$styleable;->TintButton_tintColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/widget/TintButton;->colorList:Landroid/content/res/ColorStateList;

    .line 37
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    invoke-direct {p0}, Lcom/narvii/widget/TintButton;->updateState()V

    return-void
.end method

.method public static tintColorFilter(I)Landroid/graphics/ColorFilter;
    .locals 6

    .line 152
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 153
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    const/16 v2, 0x14

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v4, 0x2

    aput v3, v2, v4

    const/4 v4, 0x3

    aput v3, v2, v4

    .line 154
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x4

    aput v4, v2, v5

    const/4 v4, 0x5

    aput v3, v2, v4

    const/4 v4, 0x6

    aput v3, v2, v4

    const/4 v4, 0x7

    aput v3, v2, v4

    const/16 v4, 0x8

    aput v3, v2, v4

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    const/16 v5, 0x9

    aput v4, v2, v5

    const/16 v4, 0xa

    aput v3, v2, v4

    const/16 v4, 0xb

    aput v3, v2, v4

    const/16 v4, 0xc

    aput v3, v2, v4

    const/16 v4, 0xd

    aput v3, v2, v4

    .line 155
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    const/16 v4, 0xe

    aput p0, v2, v4

    const/16 p0, 0xf

    aput v3, v2, p0

    const/16 p0, 0x10

    aput v3, v2, p0

    const/16 p0, 0x11

    aput v3, v2, p0

    const/16 p0, 0x12

    aput v0, v2, p0

    const/16 p0, 0x13

    aput v3, v2, p0

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    return-object v1
.end method

.method private updateState()V
    .locals 5

    .line 94
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 95
    iget-object v0, p0, Lcom/narvii/widget/TintButton;->colorList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 99
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 101
    invoke-virtual {p0}, Landroid/widget/ImageView;->isPressed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 102
    sget-object v0, Lcom/narvii/widget/TintButton;->iarr:[I

    const v2, 0x10100a7

    aput v2, v0, v1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 104
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    sget-object v2, Lcom/narvii/widget/TintButton;->iarr:[I

    add-int/lit8 v3, v0, 0x1

    const v4, 0x101009c

    aput v4, v2, v0

    move v0, v3

    .line 107
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 108
    sget-object v2, Lcom/narvii/widget/TintButton;->iarr:[I

    add-int/lit8 v3, v0, 0x1

    const v4, 0x101009e

    aput v4, v2, v0

    move v0, v3

    .line 110
    :cond_3
    new-array v2, v0, [I

    .line 111
    sget-object v3, Lcom/narvii/widget/TintButton;->iarr:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    iget-object v0, p0, Lcom/narvii/widget/TintButton;->colorList:Landroid/content/res/ColorStateList;

    const v1, -0x777778

    invoke-virtual {v0, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    goto :goto_2

    .line 114
    :cond_4
    iget-object v0, p0, Lcom/narvii/widget/TintButton;->colorList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 115
    invoke-virtual {p0}, Landroid/widget/ImageView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/ImageView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 117
    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v0, 0x2

    .line 118
    aget v2, v1, v0

    const v3, 0x3f333333    # 0.7f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 119
    aget v2, v1, v0

    const v3, 0x3dcccccd    # 0.1f

    add-float/2addr v2, v3

    const v3, 0x3f99999a    # 1.2f

    mul-float v2, v2, v3

    aput v2, v1, v0

    goto :goto_1

    .line 121
    :cond_6
    aget v2, v1, v0

    const v3, 0x3f59999a    # 0.85f

    mul-float v2, v2, v3

    aput v2, v1, v0

    .line 123
    :goto_1
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 127
    :cond_7
    :goto_2
    invoke-static {v0}, Lcom/narvii/widget/TintButton;->tintColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 128
    iput-object v0, p0, Lcom/narvii/widget/TintButton;->colorFilter:Landroid/graphics/ColorFilter;

    .line 129
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public getTintColor()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/narvii/widget/TintButton;->tintColor:I

    return v0
.end method

.method public getTintColorStateList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/narvii/widget/TintButton;->colorList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 134
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/narvii/widget/TintButton;->colorFilter:Landroid/graphics/ColorFilter;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 138
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 139
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/narvii/widget/TintButton;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/narvii/widget/TintButton;->colorFilter:Landroid/graphics/ColorFilter;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string v0, "TintButton only support BitmapDrawable now"

    .line 142
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 143
    iput-object v2, p0, Lcom/narvii/widget/TintButton;->colorFilter:Landroid/graphics/ColorFilter;

    :cond_1
    move-object v0, v2

    .line 145
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    if-eqz v2, :cond_2

    .line 147
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_2
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ImageView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 82
    invoke-direct {p0}, Lcom/narvii/widget/TintButton;->updateState()V

    return-void
.end method

.method public removeTintColor()V
    .locals 1

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/narvii/widget/TintButton;->colorFilter:Landroid/graphics/ColorFilter;

    .line 63
    iput-object v0, p0, Lcom/narvii/widget/TintButton;->colorList:Landroid/content/res/ColorStateList;

    .line 64
    invoke-direct {p0}, Lcom/narvii/widget/TintButton;->updateState()V

    .line 65
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 88
    invoke-direct {p0}, Lcom/narvii/widget/TintButton;->updateState()V

    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 75
    invoke-direct {p0}, Lcom/narvii/widget/TintButton;->updateState()V

    return-void
.end method

.method public setTintColor(I)V
    .locals 5

    .line 48
    iput p1, p0, Lcom/narvii/widget/TintButton;->tintColor:I

    .line 49
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    new-array v2, v1, [[I

    const/4 v3, 0x0

    new-array v4, v3, [I

    aput-object v4, v2, v3

    new-array v1, v1, [I

    aput p1, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v0}, Lcom/narvii/widget/TintButton;->setTintColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/widget/TintButton;->colorList:Landroid/content/res/ColorStateList;

    .line 44
    invoke-direct {p0}, Lcom/narvii/widget/TintButton;->updateState()V

    return-void
.end method

.method public setTintColorStateList(I)V
    .locals 1

    .line 69
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/widget/TintButton;->setTintColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method
