.class public Lcom/narvii/widget/EasyButton;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field private static final iarr:[I


# instance fields
.field colorFilter:Landroid/graphics/ColorFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/narvii/widget/EasyButton;->iarr:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/widget/EasyButton;->updateState()V

    .line 7
    return-void
.end method

.method public static tintColorFilter(FF)Landroid/graphics/ColorFilter;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    .line 3
    .line 4
    const/16 v1, 0x14

    .line 5
    .line 6
    new-array v1, v1, [F

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    aput p0, v1, v2

    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    aput v3, v1, v2

    .line 14
    const/4 v2, 0x2

    .line 15
    .line 16
    aput v3, v1, v2

    .line 17
    const/4 v2, 0x3

    .line 18
    .line 19
    aput v3, v1, v2

    .line 20
    const/4 v2, 0x4

    .line 21
    .line 22
    aput v3, v1, v2

    .line 23
    const/4 v2, 0x5

    .line 24
    .line 25
    aput v3, v1, v2

    .line 26
    const/4 v2, 0x6

    .line 27
    .line 28
    aput p0, v1, v2

    .line 29
    const/4 v2, 0x7

    .line 30
    .line 31
    aput v3, v1, v2

    .line 32
    .line 33
    const/16 v2, 0x8

    .line 34
    .line 35
    aput v3, v1, v2

    .line 36
    .line 37
    const/16 v2, 0x9

    .line 38
    .line 39
    aput v3, v1, v2

    .line 40
    .line 41
    const/16 v2, 0xa

    .line 42
    .line 43
    aput v3, v1, v2

    .line 44
    .line 45
    const/16 v2, 0xb

    .line 46
    .line 47
    aput v3, v1, v2

    .line 48
    .line 49
    const/16 v2, 0xc

    .line 50
    .line 51
    aput p0, v1, v2

    .line 52
    .line 53
    const/16 p0, 0xd

    .line 54
    .line 55
    aput v3, v1, p0

    .line 56
    .line 57
    const/16 p0, 0xe

    .line 58
    .line 59
    aput v3, v1, p0

    .line 60
    .line 61
    const/16 p0, 0xf

    .line 62
    .line 63
    aput v3, v1, p0

    .line 64
    .line 65
    const/16 p0, 0x10

    .line 66
    .line 67
    aput v3, v1, p0

    .line 68
    .line 69
    const/16 p0, 0x11

    .line 70
    .line 71
    aput v3, v1, p0

    .line 72
    .line 73
    const/16 p0, 0x12

    .line 74
    .line 75
    aput p1, v1, p0

    .line 76
    .line 77
    const/16 p0, 0x13

    .line 78
    .line 79
    aput v3, v1, p0

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 83
    return-object v0
.end method

.method private updateState()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    const/high16 v1, 0x3f400000    # 0.75f

    .line 14
    .line 15
    const/high16 v2, 0x3f800000    # 1.0f

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    move v0, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v0, v2

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 24
    move-result v3

    .line 25
    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    .line 29
    const v0, 0x3f59999a    # 0.85f

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 33
    move-result v3

    .line 34
    .line 35
    if-nez v3, :cond_3

    .line 36
    goto :goto_1

    .line 37
    :cond_3
    move v1, v2

    .line 38
    .line 39
    .line 40
    :goto_1
    invoke-static {v0, v1}, Lcom/narvii/widget/EasyButton;->tintColorFilter(FF)Landroid/graphics/ColorFilter;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    iput-object v0, p0, Lcom/narvii/widget/EasyButton;->colorFilter:Landroid/graphics/ColorFilter;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 47
    return-void
.end method


# virtual methods
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
    iget-object v1, p0, Lcom/narvii/widget/EasyButton;->colorFilter:Landroid/graphics/ColorFilter;

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
    iget-object v2, p0, Lcom/narvii/widget/EasyButton;->colorFilter:Landroid/graphics/ColorFilter;

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
    iput-object v2, p0, Lcom/narvii/widget/EasyButton;->colorFilter:Landroid/graphics/ColorFilter;

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
    invoke-direct {p0}, Lcom/narvii/widget/EasyButton;->updateState()V

    .line 7
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
    invoke-direct {p0}, Lcom/narvii/widget/EasyButton;->updateState()V

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
    invoke-direct {p0}, Lcom/narvii/widget/EasyButton;->updateState()V

    .line 7
    return-void
.end method
