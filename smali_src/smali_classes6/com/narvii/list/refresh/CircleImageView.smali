.class Lcom/narvii/list/refresh/CircleImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/list/refresh/CircleImageView$OvalShadow;
    }
.end annotation


# static fields
.field private static final FILL_SHADOW_COLOR:I = 0x3d000000

.field private static final KEY_SHADOW_COLOR:I = 0x1e000000

.field private static final SHADOW_ELEVATION:I = 0x4

.field private static final SHADOW_RADIUS:F = 3.5f

.field private static final X_OFFSET:F = 0.0f

.field private static final Y_OFFSET:F = 1.75f


# instance fields
.field private mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mShadowRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IF)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 18
    mul-float/2addr p3, p1

    .line 19
    .line 20
    const/high16 v0, 0x40000000    # 2.0f

    .line 21
    mul-float/2addr p3, v0

    .line 22
    float-to-int p3, p3

    .line 23
    .line 24
    const/high16 v0, 0x3fe00000    # 1.75f

    .line 25
    mul-float/2addr v0, p1

    .line 26
    float-to-int v0, v0

    .line 27
    const/4 v1, 0x0

    .line 28
    mul-float/2addr v1, p1

    .line 29
    float-to-int v1, v1

    .line 30
    .line 31
    const/high16 v2, 0x40600000    # 3.5f

    .line 32
    mul-float/2addr v2, p1

    .line 33
    float-to-int v2, v2

    .line 34
    .line 35
    iput v2, p0, Lcom/narvii/list/refresh/CircleImageView;->mShadowRadius:I

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/narvii/list/refresh/CircleImageView;->elevationSupported()Z

    .line 39
    move-result v2

    .line 40
    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    new-instance p3, Landroid/graphics/drawable/ShapeDrawable;

    .line 44
    .line 45
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-direct {p3, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 52
    .line 53
    const/high16 v0, 0x40800000    # 4.0f

    .line 54
    mul-float/2addr p1, v0

    .line 55
    .line 56
    .line 57
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->C0(Landroid/view/View;F)V

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_0
    new-instance p1, Lcom/narvii/list/refresh/CircleImageView$OvalShadow;

    .line 61
    .line 62
    iget v2, p0, Lcom/narvii/list/refresh/CircleImageView;->mShadowRadius:I

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, p0, v2, p3}, Lcom/narvii/list/refresh/CircleImageView$OvalShadow;-><init>(Lcom/narvii/list/refresh/CircleImageView;II)V

    .line 66
    .line 67
    new-instance p3, Landroid/graphics/drawable/ShapeDrawable;

    .line 68
    .line 69
    .line 70
    invoke-direct {p3, p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 71
    const/4 p1, 0x1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    .line 78
    invoke-static {p0, p1, v2}, Landroidx/core/view/ViewCompat;->I0(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    iget v2, p0, Lcom/narvii/list/refresh/CircleImageView;->mShadowRadius:I

    .line 85
    int-to-float v2, v2

    .line 86
    int-to-float v1, v1

    .line 87
    int-to-float v0, v0

    .line 88
    .line 89
    const/high16 v3, 0x1e000000

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 93
    .line 94
    iget p1, p0, Lcom/narvii/list/refresh/CircleImageView;->mShadowRadius:I

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 98
    .line 99
    .line 100
    :goto_0
    invoke-virtual {p3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/list/refresh/CircleImageView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/list/refresh/CircleImageView;->mShadowRadius:I

    return p0
.end method

.method static bridge synthetic b(Lcom/narvii/list/refresh/CircleImageView;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/list/refresh/CircleImageView;->mShadowRadius:I

    return-void
.end method

.method private elevationSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationEnd()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/list/refresh/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 15
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationStart()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/list/refresh/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 15
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/list/refresh/CircleImageView;->elevationSupported()Z

    .line 7
    move-result p1

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 13
    move-result p1

    .line 14
    .line 15
    iget p2, p0, Lcom/narvii/list/refresh/CircleImageView;->mShadowRadius:I

    .line 16
    .line 17
    mul-int/lit8 p2, p2, 0x2

    .line 18
    add-int/2addr p1, p2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 22
    move-result p2

    .line 23
    .line 24
    iget v0, p0, Lcom/narvii/list/refresh/CircleImageView;->mShadowRadius:I

    .line 25
    .line 26
    mul-int/lit8 v0, v0, 0x2

    .line 27
    add-int/2addr p2, v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 31
    :cond_0
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/list/refresh/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    :cond_0
    return-void
.end method

.method public setBackgroundColorRes(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/list/refresh/CircleImageView;->setBackgroundColor(I)V

    .line 16
    return-void
.end method
