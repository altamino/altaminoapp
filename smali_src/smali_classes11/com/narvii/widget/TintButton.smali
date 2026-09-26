.class public Lcom/narvii/widget/TintButton;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


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

    sput-object v0, Lcom/narvii/widget/TintButton;->iarr:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/lib/R$styleable;->TintButton:[I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    sget p2, Lcom/narvii/lib/R$styleable;->TintButton_tintColor:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    iput-object p2, p0, Lcom/narvii/widget/TintButton;->colorList:Landroid/content/res/ColorStateList;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/widget/TintButton;->updateState()V

    .line 24
    return-void
.end method

.method public static tintColorFilter(I)Landroid/graphics/ColorFilter;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    .line 7
    const/high16 v1, 0x437f0000    # 255.0f

    .line 8
    div-float/2addr v0, v1

    .line 9
    .line 10
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    .line 11
    .line 12
    const/16 v2, 0x14

    .line 13
    .line 14
    new-array v2, v2, [F

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    .line 18
    aput v4, v2, v3

    .line 19
    const/4 v3, 0x1

    .line 20
    .line 21
    aput v4, v2, v3

    .line 22
    const/4 v3, 0x2

    .line 23
    .line 24
    aput v4, v2, v3

    .line 25
    const/4 v3, 0x3

    .line 26
    .line 27
    aput v4, v2, v3

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 31
    move-result v3

    .line 32
    int-to-float v3, v3

    .line 33
    const/4 v5, 0x4

    .line 34
    .line 35
    aput v3, v2, v5

    .line 36
    const/4 v3, 0x5

    .line 37
    .line 38
    aput v4, v2, v3

    .line 39
    const/4 v3, 0x6

    .line 40
    .line 41
    aput v4, v2, v3

    .line 42
    const/4 v3, 0x7

    .line 43
    .line 44
    aput v4, v2, v3

    .line 45
    .line 46
    const/16 v3, 0x8

    .line 47
    .line 48
    aput v4, v2, v3

    .line 49
    .line 50
    .line 51
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 52
    move-result v3

    .line 53
    int-to-float v3, v3

    .line 54
    .line 55
    const/16 v5, 0x9

    .line 56
    .line 57
    aput v3, v2, v5

    .line 58
    .line 59
    const/16 v3, 0xa

    .line 60
    .line 61
    aput v4, v2, v3

    .line 62
    .line 63
    const/16 v3, 0xb

    .line 64
    .line 65
    aput v4, v2, v3

    .line 66
    .line 67
    const/16 v3, 0xc

    .line 68
    .line 69
    aput v4, v2, v3

    .line 70
    .line 71
    const/16 v3, 0xd

    .line 72
    .line 73
    aput v4, v2, v3

    .line 74
    .line 75
    .line 76
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 77
    move-result p0

    .line 78
    int-to-float p0, p0

    .line 79
    .line 80
    const/16 v3, 0xe

    .line 81
    .line 82
    aput p0, v2, v3

    .line 83
    .line 84
    const/16 p0, 0xf

    .line 85
    .line 86
    aput v4, v2, p0

    .line 87
    .line 88
    const/16 p0, 0x10

    .line 89
    .line 90
    aput v4, v2, p0

    .line 91
    .line 92
    const/16 p0, 0x11

    .line 93
    .line 94
    aput v4, v2, p0

    .line 95
    .line 96
    const/16 p0, 0x12

    .line 97
    .line 98
    aput v0, v2, p0

    .line 99
    .line 100
    const/16 p0, 0x13

    .line 101
    .line 102
    aput v4, v2, p0

    .line 103
    .line 104
    .line 105
    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 106
    return-object v1
.end method

.method private updateState()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/widget/TintButton;->colorList:Landroid/content/res/ColorStateList;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    sget-object v0, Lcom/narvii/widget/TintButton;->iarr:[I

    .line 28
    .line 29
    .line 30
    const v2, 0x10100a7

    .line 31
    .line 32
    aput v2, v0, v1

    .line 33
    const/4 v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v0, v1

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 39
    move-result v2

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    sget-object v2, Lcom/narvii/widget/TintButton;->iarr:[I

    .line 44
    .line 45
    add-int/lit8 v3, v0, 0x1

    .line 46
    .line 47
    .line 48
    const v4, 0x101009c

    .line 49
    .line 50
    aput v4, v2, v0

    .line 51
    move v0, v3

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 55
    move-result v2

    .line 56
    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    sget-object v2, Lcom/narvii/widget/TintButton;->iarr:[I

    .line 60
    .line 61
    add-int/lit8 v3, v0, 0x1

    .line 62
    .line 63
    .line 64
    const v4, 0x101009e

    .line 65
    .line 66
    aput v4, v2, v0

    .line 67
    move v0, v3

    .line 68
    .line 69
    :cond_3
    new-array v2, v0, [I

    .line 70
    .line 71
    sget-object v3, Lcom/narvii/widget/TintButton;->iarr:[I

    .line 72
    .line 73
    .line 74
    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/widget/TintButton;->colorList:Landroid/content/res/ColorStateList;

    .line 77
    .line 78
    .line 79
    const v1, -0x777778

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 83
    move-result v0

    .line 84
    goto :goto_2

    .line 85
    .line 86
    :cond_4
    iget-object v0, p0, Lcom/narvii/widget/TintButton;->colorList:Landroid/content/res/ColorStateList;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 90
    move-result v0

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    .line 94
    move-result v1

    .line 95
    .line 96
    if-nez v1, :cond_5

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 100
    move-result v1

    .line 101
    .line 102
    if-eqz v1, :cond_7

    .line 103
    :cond_5
    const/4 v1, 0x3

    .line 104
    .line 105
    new-array v1, v1, [F

    .line 106
    .line 107
    .line 108
    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 109
    const/4 v0, 0x2

    .line 110
    .line 111
    aget v2, v1, v0

    .line 112
    .line 113
    .line 114
    const v3, 0x3f333333    # 0.7f

    .line 115
    .line 116
    cmpg-float v3, v2, v3

    .line 117
    .line 118
    if-gez v3, :cond_6

    .line 119
    .line 120
    .line 121
    const v3, 0x3dcccccd    # 0.1f

    .line 122
    add-float/2addr v2, v3

    .line 123
    .line 124
    .line 125
    const v3, 0x3f99999a    # 1.2f

    .line 126
    mul-float/2addr v2, v3

    .line 127
    .line 128
    aput v2, v1, v0

    .line 129
    goto :goto_1

    .line 130
    .line 131
    .line 132
    :cond_6
    const v3, 0x3f59999a    # 0.85f

    .line 133
    mul-float/2addr v2, v3

    .line 134
    .line 135
    aput v2, v1, v0

    .line 136
    .line 137
    .line 138
    :goto_1
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 139
    move-result v0

    .line 140
    .line 141
    .line 142
    :cond_7
    :goto_2
    invoke-static {v0}, Lcom/narvii/widget/TintButton;->tintColorFilter(I)Landroid/graphics/ColorFilter;

    .line 143
    move-result-object v0

    .line 144
    .line 145
    iput-object v0, p0, Lcom/narvii/widget/TintButton;->colorFilter:Landroid/graphics/ColorFilter;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 149
    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public getTintColor()I
    .locals 1

    iget v0, p0, Lcom/narvii/widget/TintButton;->tintColor:I

    return v0
.end method

.method public getTintColorStateList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/TintButton;->colorList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/widget/TintButton;->colorFilter:Landroid/graphics/ColorFilter;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    iget-object v2, p0, Lcom/narvii/widget/TintButton;->colorFilter:Landroid/graphics/ColorFilter;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x0

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const-string v0, "TintButton only support BitmapDrawable now"

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 39
    .line 40
    iput-object v2, p0, Lcom/narvii/widget/TintButton;->colorFilter:Landroid/graphics/ColorFilter;

    .line 41
    :cond_1
    move-object v0, v2

    .line 42
    move-object v1, v0

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 51
    :cond_2
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ImageView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/widget/TintButton;->updateState()V

    .line 7
    return-void
.end method

.method public removeTintColor()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/widget/TintButton;->colorFilter:Landroid/graphics/ColorFilter;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/narvii/widget/TintButton;->colorList:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/widget/TintButton;->updateState()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 12
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/widget/TintButton;->updateState()V

    .line 7
    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/widget/TintButton;->updateState()V

    .line 7
    return-void
.end method

.method public setTintColor(I)V
    .locals 4

    iput p1, p0, Lcom/narvii/widget/TintButton;->tintColor:I

    .line 2
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    new-array v1, v1, [[I

    const/4 v2, 0x0

    new-array v3, v2, [I

    aput-object v3, v1, v2

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v0}, Lcom/narvii/widget/TintButton;->setTintColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/TintButton;->colorList:Landroid/content/res/ColorStateList;

    .line 1
    invoke-direct {p0}, Lcom/narvii/widget/TintButton;->updateState()V

    return-void
.end method

.method public setTintColorStateList(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/narvii/widget/TintButton;->setTintColor(Landroid/content/res/ColorStateList;)V

    .line 12
    return-void
.end method
