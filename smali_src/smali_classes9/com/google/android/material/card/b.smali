.class Lcom/google/android/material/card/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# static fields
.field private static final CARD_VIEW_SHADOW_MULTIPLIER:F = 1.5f

.field private static final CHECKED_ICON_LAYER_INDEX:I = 0x2

.field private static final CHECKED_ICON_NONE:Landroid/graphics/drawable/Drawable;

.field private static final COS_45:D

.field private static final DEFAULT_STROKE_VALUE:I = -0x1


# instance fields
.field private final bgDrawable:Lcom/google/android/material/shape/g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private checkable:Z

.field private checkedIcon:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private checkedIconGravity:I

.field private checkedIconMargin:I
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field private checkedIconSize:I
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field private checkedIconTint:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private compatRippleDrawable:Lcom/google/android/material/shape/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fgDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final foregroundContentDrawable:Lcom/google/android/material/shape/g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private foregroundShapeDrawable:Lcom/google/android/material/shape/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isBackgroundOverwritten:Z

.field private final materialCardView:Lcom/google/android/material/card/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private rippleColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private rippleDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private shapeAppearanceModel:Lcom/google/android/material/shape/k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private strokeColor:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private strokeWidth:I
    .annotation build Landroidx/annotation/Dimension;
    .end annotation
.end field

.field private final userContentPadding:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    .line 4
    .line 5
    const-wide v0, 0x4046800000000000L    # 45.0

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 9
    move-result-wide v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 13
    move-result-wide v0

    .line 14
    .line 15
    sput-wide v0, Lcom/google/android/material/card/b;->COS_45:D

    .line 16
    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    const/16 v1, 0x1c

    .line 20
    .line 21
    if-gt v0, v1, :cond_0

    .line 22
    .line 23
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    .line 30
    :goto_0
    sput-object v0, Lcom/google/android/material/card/b;->CHECKED_ICON_NONE:Landroid/graphics/drawable/Drawable;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/card/a;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1    # Lcom/google/android/material/card/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/material/card/b;->userContentPadding:Landroid/graphics/Rect;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/google/android/material/card/b;->isBackgroundOverwritten:Z

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 16
    .line 17
    new-instance v0, Lcom/google/android/material/shape/g;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1, p2, p3, p4}, Lcom/google/android/material/shape/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 25
    .line 26
    iput-object v0, p0, Lcom/google/android/material/card/b;->bgDrawable:Lcom/google/android/material/shape/g;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    move-result-object p4

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p4}, Lcom/google/android/material/shape/g;->O(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    const p4, -0xbbbbbc

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p4}, Lcom/google/android/material/shape/g;->f0(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/google/android/material/shape/g;->E()Lcom/google/android/material/shape/k;

    .line 43
    move-result-object p4

    .line 44
    .line 45
    .line 46
    invoke-virtual {p4}, Lcom/google/android/material/shape/k;->v()Lcom/google/android/material/shape/k$b;

    .line 47
    move-result-object p4

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    sget-object v0, Ld3/l;->CardView:[I

    .line 54
    .line 55
    sget v1, Ld3/k;->CardView:I

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    sget p2, Ld3/l;->CardView_cardCornerRadius:I

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 65
    move-result p3

    .line 66
    .line 67
    if-eqz p3, :cond_0

    .line 68
    const/4 p3, 0x0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 72
    move-result p2

    .line 73
    .line 74
    .line 75
    invoke-virtual {p4, p2}, Lcom/google/android/material/shape/k$b;->o(F)Lcom/google/android/material/shape/k$b;

    .line 76
    .line 77
    :cond_0
    new-instance p2, Lcom/google/android/material/shape/g;

    .line 78
    .line 79
    .line 80
    invoke-direct {p2}, Lcom/google/android/material/shape/g;-><init>()V

    .line 81
    .line 82
    iput-object p2, p0, Lcom/google/android/material/card/b;->foregroundContentDrawable:Lcom/google/android/material/shape/g;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p4}, Lcom/google/android/material/shape/k$b;->m()Lcom/google/android/material/shape/k;

    .line 86
    move-result-object p2

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p2}, Lcom/google/android/material/card/b;->V(Lcom/google/android/material/shape/k;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    return-void
.end method

.method private B(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/android/material/card/b;->d()F

    .line 12
    move-result v0

    .line 13
    float-to-double v0, v0

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 17
    move-result-wide v0

    .line 18
    double-to-int v0, v0

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/google/android/material/card/b;->c()F

    .line 22
    move-result v1

    .line 23
    float-to-double v1, v1

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 27
    move-result-wide v1

    .line 28
    double-to-int v1, v1

    .line 29
    move v7, v0

    .line 30
    move v6, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    move v6, v0

    .line 34
    move v7, v6

    .line 35
    .line 36
    :goto_0
    new-instance v0, Lcom/google/android/material/card/b$a;

    .line 37
    move-object v1, v0

    .line 38
    move-object v2, p0

    .line 39
    move-object v3, p1

    .line 40
    move v4, v6

    .line 41
    move v5, v7

    .line 42
    .line 43
    .line 44
    invoke-direct/range {v1 .. v7}, Lcom/google/android/material/card/b$a;-><init>(Lcom/google/android/material/card/b;Landroid/graphics/drawable/Drawable;IIII)V

    .line 45
    return-object v0
.end method

.method private E()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/card/b;->checkedIconGravity:I

    const/16 v1, 0x50

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private F()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/card/b;->checkedIconGravity:I

    const v1, 0x800005

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private Z()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/android/material/card/b;->e()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method private a()F
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/b;->shapeAppearanceModel:Lcom/google/android/material/shape/k;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/shape/k;->q()Lcom/google/android/material/shape/d;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/material/card/b;->bgDrawable:Lcom/google/android/material/shape/g;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/android/material/shape/g;->H()F

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/card/b;->b(Lcom/google/android/material/shape/d;F)F

    .line 16
    move-result v0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/material/card/b;->shapeAppearanceModel:Lcom/google/android/material/shape/k;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/google/android/material/shape/k;->s()Lcom/google/android/material/shape/d;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    iget-object v2, p0, Lcom/google/android/material/card/b;->bgDrawable:Lcom/google/android/material/shape/g;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/google/android/material/shape/g;->I()F

    .line 28
    move-result v2

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v1, v2}, Lcom/google/android/material/card/b;->b(Lcom/google/android/material/shape/d;F)F

    .line 32
    move-result v1

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 36
    move-result v0

    .line 37
    .line 38
    iget-object v1, p0, Lcom/google/android/material/card/b;->shapeAppearanceModel:Lcom/google/android/material/shape/k;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/google/android/material/shape/k;->k()Lcom/google/android/material/shape/d;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    iget-object v2, p0, Lcom/google/android/material/card/b;->bgDrawable:Lcom/google/android/material/shape/g;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/google/android/material/shape/g;->t()F

    .line 48
    move-result v2

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, v1, v2}, Lcom/google/android/material/card/b;->b(Lcom/google/android/material/shape/d;F)F

    .line 52
    move-result v1

    .line 53
    .line 54
    iget-object v2, p0, Lcom/google/android/material/card/b;->shapeAppearanceModel:Lcom/google/android/material/shape/k;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/google/android/material/shape/k;->i()Lcom/google/android/material/shape/d;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    iget-object v3, p0, Lcom/google/android/material/card/b;->bgDrawable:Lcom/google/android/material/shape/g;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/google/android/material/shape/g;->s()F

    .line 64
    move-result v3

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, v2, v3}, Lcom/google/android/material/card/b;->b(Lcom/google/android/material/shape/d;F)F

    .line 68
    move-result v2

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 72
    move-result v1

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 76
    move-result v0

    .line 77
    return v0
.end method

.method private a0()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/android/material/card/b;->e()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method private b(Lcom/google/android/material/shape/d;F)F
    .locals 4

    .line 1
    .line 2
    instance-of v0, p1, Lcom/google/android/material/shape/j;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 7
    .line 8
    sget-wide v2, Lcom/google/android/material/card/b;->COS_45:D

    .line 9
    sub-double/2addr v0, v2

    .line 10
    float-to-double p1, p2

    .line 11
    mul-double/2addr v0, p1

    .line 12
    double-to-float p1, v0

    .line 13
    return p1

    .line 14
    .line 15
    :cond_0
    instance-of p1, p1, Lcom/google/android/material/shape/e;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const/high16 p1, 0x40000000    # 2.0f

    .line 20
    div-float/2addr p2, p1

    .line 21
    return p2

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method private c()F
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/material/card/b;->a0()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/google/android/material/card/b;->a()F

    .line 16
    move-result v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    add-float/2addr v0, v1

    .line 20
    return v0
.end method

.method private d()F
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    .line 6
    move-result v0

    .line 7
    .line 8
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 9
    mul-float/2addr v0, v1

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/google/android/material/card/b;->a0()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/google/android/material/card/b;->a()F

    .line 19
    move-result v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    add-float/2addr v0, v1

    .line 23
    return v0
.end method

.method private e()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/b;->bgDrawable:Lcom/google/android/material/shape/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/shape/g;->R()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private e0(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v0, v0, Landroid/graphics/drawable/InsetDrawable;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/material/card/b;->B(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 32
    :goto_0
    return-void
.end method

.method private f()Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/material/card/b;->h()Lcom/google/android/material/shape/g;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    iput-object v1, p0, Lcom/google/android/material/card/b;->compatRippleDrawable:Lcom/google/android/material/shape/g;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/android/material/card/b;->rippleColor:Landroid/content/res/ColorStateList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/g;->Z(Landroid/content/res/ColorStateList;)V

    .line 17
    .line 18
    .line 19
    const v1, 0x10100a7

    .line 20
    .line 21
    .line 22
    filled-new-array {v1}, [I

    .line 23
    move-result-object v1

    .line 24
    .line 25
    iget-object v2, p0, Lcom/google/android/material/card/b;->compatRippleDrawable:Lcom/google/android/material/shape/g;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 29
    return-object v0
.end method

.method private g()Landroid/graphics/drawable/Drawable;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    sget-boolean v0, Lcom/google/android/material/ripple/b;->USE_FRAMEWORK_RIPPLE:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/material/card/b;->h()Lcom/google/android/material/shape/g;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/material/card/b;->foregroundShapeDrawable:Lcom/google/android/material/shape/g;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/material/card/b;->rippleColor:Landroid/content/res/ColorStateList;

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    iget-object v3, p0, Lcom/google/android/material/card/b;->foregroundShapeDrawable:Lcom/google/android/material/shape/g;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 21
    return-object v0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/card/b;->f()Landroid/graphics/drawable/Drawable;

    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method private g0()V
    .locals 2

    .line 1
    .line 2
    sget-boolean v0, Lcom/google/android/material/ripple/b;->USE_FRAMEWORK_RIPPLE:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/material/card/b;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/material/card/b;->rippleColor:Landroid/content/res/ColorStateList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/card/b;->compatRippleDrawable:Lcom/google/android/material/shape/g;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/android/material/card/b;->rippleColor:Landroid/content/res/ColorStateList;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/g;->Z(Landroid/content/res/ColorStateList;)V

    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method private h()Lcom/google/android/material/shape/g;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/material/shape/g;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/material/card/b;->shapeAppearanceModel:Lcom/google/android/material/shape/k;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/material/shape/g;-><init>(Lcom/google/android/material/shape/k;)V

    .line 8
    return-object v0
.end method

.method private r()Landroid/graphics/drawable/Drawable;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/b;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/material/card/b;->g()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/material/card/b;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/card/b;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    .line 17
    const/4 v1, 0x3

    .line 18
    .line 19
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    iget-object v3, p0, Lcom/google/android/material/card/b;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    aput-object v3, v1, v2

    .line 25
    const/4 v2, 0x1

    .line 26
    .line 27
    iget-object v3, p0, Lcom/google/android/material/card/b;->foregroundContentDrawable:Lcom/google/android/material/shape/g;

    .line 28
    .line 29
    aput-object v3, v1, v2

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/android/material/card/b;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 32
    const/4 v3, 0x2

    .line 33
    .line 34
    aput-object v2, v1, v3

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 38
    .line 39
    iput-object v0, p0, Lcom/google/android/material/card/b;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 40
    .line 41
    sget v1, Ld3/f;->mtrl_card_checked_layer_id:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/card/b;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 47
    return-object v0
.end method

.method private t()F
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 19
    .line 20
    sget-wide v2, Lcom/google/android/material/card/b;->COS_45:D

    .line 21
    sub-double/2addr v0, v2

    .line 22
    .line 23
    iget-object v2, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/google/android/material/card/a;->getCardViewRadius()F

    .line 27
    move-result v2

    .line 28
    float-to-double v2, v2

    .line 29
    mul-double/2addr v0, v2

    .line 30
    double-to-float v0, v0

    .line 31
    return v0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    return v0
.end method


# virtual methods
.method A()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/b;->userContentPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/card/b;->isBackgroundOverwritten:Z

    return v0
.end method

.method D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/card/b;->checkable:Z

    return v0
.end method

.method G(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sget v1, Ld3/l;->MaterialCardView_strokeColor:I

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1, v1}, Lcom/google/android/material/resources/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/material/card/b;->strokeColor:Landroid/content/res/ColorStateList;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, -0x1

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/material/card/b;->strokeColor:Landroid/content/res/ColorStateList;

    .line 24
    .line 25
    :cond_0
    sget v0, Ld3/l;->MaterialCardView_strokeWidth:I

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 30
    move-result v0

    .line 31
    .line 32
    iput v0, p0, Lcom/google/android/material/card/b;->strokeWidth:I

    .line 33
    .line 34
    sget v0, Ld3/l;->MaterialCardView_android_checkable:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 38
    move-result v0

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/google/android/material/card/b;->checkable:Z

    .line 41
    .line 42
    iget-object v2, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 46
    .line 47
    iget-object v0, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    sget v2, Ld3/l;->MaterialCardView_checkedIconTint:I

    .line 54
    .line 55
    .line 56
    invoke-static {v0, p1, v2}, Lcom/google/android/material/resources/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    iput-object v0, p0, Lcom/google/android/material/card/b;->checkedIconTint:Landroid/content/res/ColorStateList;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    sget v2, Ld3/l;->MaterialCardView_checkedIcon:I

    .line 68
    .line 69
    .line 70
    invoke-static {v0, p1, v2}, Lcom/google/android/material/resources/c;->e(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lcom/google/android/material/card/b;->N(Landroid/graphics/drawable/Drawable;)V

    .line 75
    .line 76
    sget v0, Ld3/l;->MaterialCardView_checkedIconSize:I

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 80
    move-result v0

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lcom/google/android/material/card/b;->Q(I)V

    .line 84
    .line 85
    sget v0, Ld3/l;->MaterialCardView_checkedIconMargin:I

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 89
    move-result v0

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Lcom/google/android/material/card/b;->P(I)V

    .line 93
    .line 94
    sget v0, Ld3/l;->MaterialCardView_checkedIconGravity:I

    .line 95
    .line 96
    .line 97
    const v1, 0x800035

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 101
    move-result v0

    .line 102
    .line 103
    iput v0, p0, Lcom/google/android/material/card/b;->checkedIconGravity:I

    .line 104
    .line 105
    iget-object v0, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    sget v1, Ld3/l;->MaterialCardView_rippleColor:I

    .line 112
    .line 113
    .line 114
    invoke-static {v0, p1, v1}, Lcom/google/android/material/resources/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    iput-object v0, p0, Lcom/google/android/material/card/b;->rippleColor:Landroid/content/res/ColorStateList;

    .line 118
    .line 119
    if-nez v0, :cond_1

    .line 120
    .line 121
    iget-object v0, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 122
    .line 123
    sget v1, Ld3/b;->colorControlHighlight:I

    .line 124
    .line 125
    .line 126
    invoke-static {v0, v1}, Li3/a;->d(Landroid/view/View;I)I

    .line 127
    move-result v0

    .line 128
    .line 129
    .line 130
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 131
    move-result-object v0

    .line 132
    .line 133
    iput-object v0, p0, Lcom/google/android/material/card/b;->rippleColor:Landroid/content/res/ColorStateList;

    .line 134
    .line 135
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 139
    move-result-object v0

    .line 140
    .line 141
    sget v1, Ld3/l;->MaterialCardView_cardForegroundColor:I

    .line 142
    .line 143
    .line 144
    invoke-static {v0, p1, v1}, Lcom/google/android/material/resources/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, p1}, Lcom/google/android/material/card/b;->K(Landroid/content/res/ColorStateList;)V

    .line 149
    .line 150
    .line 151
    invoke-direct {p0}, Lcom/google/android/material/card/b;->g0()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/google/android/material/card/b;->d0()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/google/android/material/card/b;->h0()V

    .line 158
    .line 159
    iget-object p1, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 160
    .line 161
    iget-object v0, p0, Lcom/google/android/material/card/b;->bgDrawable:Lcom/google/android/material/shape/g;

    .line 162
    .line 163
    .line 164
    invoke-direct {p0, v0}, Lcom/google/android/material/card/b;->B(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 165
    move-result-object v0

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v0}, Lcom/google/android/material/card/a;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    .line 169
    .line 170
    iget-object p1, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    .line 174
    move-result p1

    .line 175
    .line 176
    if-eqz p1, :cond_2

    .line 177
    .line 178
    .line 179
    invoke-direct {p0}, Lcom/google/android/material/card/b;->r()Landroid/graphics/drawable/Drawable;

    .line 180
    move-result-object p1

    .line 181
    goto :goto_0

    .line 182
    .line 183
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/card/b;->foregroundContentDrawable:Lcom/google/android/material/shape/g;

    .line 184
    .line 185
    :goto_0
    iput-object p1, p0, Lcom/google/android/material/card/b;->fgDrawable:Landroid/graphics/drawable/Drawable;

    .line 186
    .line 187
    iget-object v0, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 188
    .line 189
    .line 190
    invoke-direct {p0, p1}, Lcom/google/android/material/card/b;->B(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 191
    move-result-object p1

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, p1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 195
    return-void
.end method

.method H(II)V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/b;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 3
    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/google/android/material/card/b;->d()F

    .line 16
    move-result v0

    .line 17
    .line 18
    const/high16 v1, 0x40000000    # 2.0f

    .line 19
    mul-float/2addr v0, v1

    .line 20
    float-to-double v2, v0

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 24
    move-result-wide v2

    .line 25
    double-to-int v0, v2

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/google/android/material/card/b;->c()F

    .line 29
    move-result v2

    .line 30
    mul-float/2addr v2, v1

    .line 31
    float-to-double v1, v2

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 35
    move-result-wide v1

    .line 36
    double-to-int v1, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    move v1, v0

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/card/b;->F()Z

    .line 43
    move-result v2

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    iget v2, p0, Lcom/google/android/material/card/b;->checkedIconMargin:I

    .line 48
    .line 49
    sub-int v2, p1, v2

    .line 50
    .line 51
    iget v3, p0, Lcom/google/android/material/card/b;->checkedIconSize:I

    .line 52
    sub-int/2addr v2, v3

    .line 53
    sub-int/2addr v2, v1

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_1
    iget v2, p0, Lcom/google/android/material/card/b;->checkedIconMargin:I

    .line 57
    .line 58
    .line 59
    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/card/b;->E()Z

    .line 60
    move-result v3

    .line 61
    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    iget v3, p0, Lcom/google/android/material/card/b;->checkedIconMargin:I

    .line 65
    :goto_2
    move v9, v3

    .line 66
    goto :goto_3

    .line 67
    .line 68
    :cond_2
    iget v3, p0, Lcom/google/android/material/card/b;->checkedIconMargin:I

    .line 69
    .line 70
    sub-int v3, p2, v3

    .line 71
    .line 72
    iget v4, p0, Lcom/google/android/material/card/b;->checkedIconSize:I

    .line 73
    sub-int/2addr v3, v4

    .line 74
    sub-int/2addr v3, v0

    .line 75
    goto :goto_2

    .line 76
    .line 77
    .line 78
    :goto_3
    invoke-direct {p0}, Lcom/google/android/material/card/b;->F()Z

    .line 79
    move-result v3

    .line 80
    .line 81
    if-eqz v3, :cond_3

    .line 82
    .line 83
    iget p1, p0, Lcom/google/android/material/card/b;->checkedIconMargin:I

    .line 84
    goto :goto_4

    .line 85
    .line 86
    :cond_3
    iget v3, p0, Lcom/google/android/material/card/b;->checkedIconMargin:I

    .line 87
    sub-int/2addr p1, v3

    .line 88
    .line 89
    iget v3, p0, Lcom/google/android/material/card/b;->checkedIconSize:I

    .line 90
    sub-int/2addr p1, v3

    .line 91
    sub-int/2addr p1, v1

    .line 92
    .line 93
    .line 94
    :goto_4
    invoke-direct {p0}, Lcom/google/android/material/card/b;->E()Z

    .line 95
    move-result v1

    .line 96
    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    iget v1, p0, Lcom/google/android/material/card/b;->checkedIconMargin:I

    .line 100
    sub-int/2addr p2, v1

    .line 101
    .line 102
    iget v1, p0, Lcom/google/android/material/card/b;->checkedIconSize:I

    .line 103
    sub-int/2addr p2, v1

    .line 104
    sub-int/2addr p2, v0

    .line 105
    :goto_5
    move v7, p2

    .line 106
    goto :goto_6

    .line 107
    .line 108
    :cond_4
    iget p2, p0, Lcom/google/android/material/card/b;->checkedIconMargin:I

    .line 109
    goto :goto_5

    .line 110
    .line 111
    :goto_6
    iget-object p2, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 112
    .line 113
    .line 114
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->D(Landroid/view/View;)I

    .line 115
    move-result p2

    .line 116
    const/4 v0, 0x1

    .line 117
    .line 118
    if-ne p2, v0, :cond_5

    .line 119
    move v6, p1

    .line 120
    move v8, v2

    .line 121
    goto :goto_7

    .line 122
    :cond_5
    move v8, p1

    .line 123
    move v6, v2

    .line 124
    .line 125
    :goto_7
    iget-object v4, p0, Lcom/google/android/material/card/b;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 126
    const/4 v5, 0x2

    .line 127
    .line 128
    .line 129
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 130
    :cond_6
    return-void
.end method

.method I(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/card/b;->isBackgroundOverwritten:Z

    return-void
.end method

.method J(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/b;->bgDrawable:Lcom/google/android/material/shape/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/g;->Z(Landroid/content/res/ColorStateList;)V

    .line 6
    return-void
.end method

.method K(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/b;->foregroundContentDrawable:Lcom/google/android/material/shape/g;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/g;->Z(Landroid/content/res/ColorStateList;)V

    .line 13
    return-void
.end method

.method L(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/card/b;->checkable:Z

    return-void
.end method

.method public M(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/b;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/16 p1, 0xff

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 14
    :cond_1
    return-void
.end method

.method N(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/material/card/b;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/material/card/b;->checkedIconTint:Landroid/content/res/ColorStateList;

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/google/android/material/card/a;->isChecked()Z

    .line 23
    move-result p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/material/card/b;->M(Z)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    sget-object p1, Lcom/google/android/material/card/b;->CHECKED_ICON_NONE:Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/google/android/material/card/b;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/card/b;->clickableForegroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    sget v0, Ld3/f;->mtrl_card_checked_layer_id:I

    .line 38
    .line 39
    iget-object v1, p0, Lcom/google/android/material/card/b;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 43
    :cond_1
    return-void
.end method

.method O(I)V
    .locals 1

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/card/b;->checkedIconGravity:I

    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 8
    move-result p1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/card/b;->H(II)V

    .line 18
    return-void
.end method

.method P(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/card/b;->checkedIconMargin:I

    return-void
.end method

.method Q(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/card/b;->checkedIconSize:I

    return-void
.end method

.method R(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/card/b;->checkedIconTint:Landroid/content/res/ColorStateList;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/card/b;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 10
    :cond_0
    return-void
.end method

.method S(F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/b;->shapeAppearanceModel:Lcom/google/android/material/shape/k;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/k;->w(F)Lcom/google/android/material/shape/k;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/card/b;->V(Lcom/google/android/material/shape/k;)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/material/card/b;->fgDrawable:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/google/android/material/card/b;->a0()Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/google/android/material/card/b;->Z()Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/card/b;->c0()V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/card/b;->a0()Z

    .line 33
    move-result p1

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/android/material/card/b;->f0()V

    .line 39
    :cond_2
    return-void
.end method

.method T(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/b;->bgDrawable:Lcom/google/android/material/shape/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/g;->a0(F)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/card/b;->foregroundContentDrawable:Lcom/google/android/material/shape/g;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/g;->a0(F)V

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/card/b;->foregroundShapeDrawable:Lcom/google/android/material/shape/g;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/g;->a0(F)V

    .line 20
    :cond_1
    return-void
.end method

.method U(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/card/b;->rippleColor:Landroid/content/res/ColorStateList;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/material/card/b;->g0()V

    .line 6
    return-void
.end method

.method V(Lcom/google/android/material/shape/k;)V
    .locals 2
    .param p1    # Lcom/google/android/material/shape/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/card/b;->shapeAppearanceModel:Lcom/google/android/material/shape/k;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/card/b;->bgDrawable:Lcom/google/android/material/shape/g;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/g;->setShapeAppearanceModel(Lcom/google/android/material/shape/k;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/material/card/b;->bgDrawable:Lcom/google/android/material/shape/g;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/material/shape/g;->R()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    xor-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/g;->e0(Z)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/material/card/b;->foregroundContentDrawable:Lcom/google/android/material/shape/g;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/g;->setShapeAppearanceModel(Lcom/google/android/material/shape/k;)V

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/card/b;->foregroundShapeDrawable:Lcom/google/android/material/shape/g;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/g;->setShapeAppearanceModel(Lcom/google/android/material/shape/k;)V

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/card/b;->compatRippleDrawable:Lcom/google/android/material/shape/g;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/g;->setShapeAppearanceModel(Lcom/google/android/material/shape/k;)V

    .line 40
    :cond_2
    return-void
.end method

.method W(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/b;->strokeColor:Landroid/content/res/ColorStateList;

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/card/b;->strokeColor:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/card/b;->h0()V

    .line 11
    return-void
.end method

.method X(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/material/card/b;->strokeWidth:I

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput p1, p0, Lcom/google/android/material/card/b;->strokeWidth:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/card/b;->h0()V

    .line 11
    return-void
.end method

.method Y(IIII)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/b;->userContentPadding:Landroid/graphics/Rect;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/card/b;->c0()V

    .line 9
    return-void
.end method

.method b0()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/b;->fgDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/View;->isClickable()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/google/android/material/card/b;->r()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v1

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/card/b;->foregroundContentDrawable:Lcom/google/android/material/shape/g;

    .line 18
    .line 19
    :goto_0
    iput-object v1, p0, Lcom/google/android/material/card/b;->fgDrawable:Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v1}, Lcom/google/android/material/card/b;->e0(Landroid/graphics/drawable/Drawable;)V

    .line 25
    :cond_1
    return-void
.end method

.method c0()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/card/b;->Z()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/material/card/b;->a0()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/card/b;->a()F

    .line 19
    move-result v0

    .line 20
    .line 21
    .line 22
    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/card/b;->t()F

    .line 23
    move-result v1

    .line 24
    sub-float/2addr v0, v1

    .line 25
    float-to-int v0, v0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/google/android/material/card/b;->userContentPadding:Landroid/graphics/Rect;

    .line 30
    .line 31
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 32
    add-int/2addr v3, v0

    .line 33
    .line 34
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 35
    add-int/2addr v4, v0

    .line 36
    .line 37
    iget v5, v2, Landroid/graphics/Rect;->right:I

    .line 38
    add-int/2addr v5, v0

    .line 39
    .line 40
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 41
    add-int/2addr v2, v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/google/android/material/card/a;->m(IIII)V

    .line 45
    return-void
.end method

.method d0()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/b;->bgDrawable:Lcom/google/android/material/shape/g;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getCardElevation()F

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/g;->Y(F)V

    .line 12
    return-void
.end method

.method f0()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/card/b;->C()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/material/card/b;->bgDrawable:Lcom/google/android/material/shape/g;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v1}, Lcom/google/android/material/card/b;->B(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/material/card/a;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/card/b;->materialCardView:Lcom/google/android/material/card/a;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/material/card/b;->fgDrawable:Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v1}, Lcom/google/android/material/card/b;->B(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 29
    return-void
.end method

.method h0()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/b;->foregroundContentDrawable:Lcom/google/android/material/shape/g;

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/material/card/b;->strokeWidth:I

    .line 5
    int-to-float v1, v1

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/material/card/b;->strokeColor:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/g;->j0(FLandroid/content/res/ColorStateList;)V

    .line 11
    return-void
.end method

.method i()V
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/b;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/material/card/b;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 15
    .line 16
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 17
    .line 18
    iget v5, v0, Landroid/graphics/Rect;->right:I

    .line 19
    .line 20
    add-int/lit8 v6, v1, -0x1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 24
    .line 25
    iget-object v2, p0, Lcom/google/android/material/card/b;->rippleDrawable:Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 28
    .line 29
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 30
    .line 31
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 35
    :cond_0
    return-void
.end method

.method j()Lcom/google/android/material/shape/g;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/b;->bgDrawable:Lcom/google/android/material/shape/g;

    return-object v0
.end method

.method k()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/b;->bgDrawable:Lcom/google/android/material/shape/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/shape/g;->x()Landroid/content/res/ColorStateList;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method l()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/b;->foregroundContentDrawable:Lcom/google/android/material/shape/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/shape/g;->x()Landroid/content/res/ColorStateList;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method m()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/b;->checkedIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/card/b;->checkedIconGravity:I

    return v0
.end method

.method o()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/card/b;->checkedIconMargin:I

    return v0
.end method

.method p()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/card/b;->checkedIconSize:I

    return v0
.end method

.method q()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/b;->checkedIconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method s()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/b;->bgDrawable:Lcom/google/android/material/shape/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/shape/g;->H()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method u()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/b;->bgDrawable:Lcom/google/android/material/shape/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/shape/g;->y()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method v()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/b;->rippleColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method w()Lcom/google/android/material/shape/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/b;->shapeAppearanceModel:Lcom/google/android/material/shape/k;

    return-object v0
.end method

.method x()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/card/b;->strokeColor:Landroid/content/res/ColorStateList;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, -0x1

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method y()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/card/b;->strokeColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method z()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/card/b;->strokeWidth:I

    return v0
.end method
