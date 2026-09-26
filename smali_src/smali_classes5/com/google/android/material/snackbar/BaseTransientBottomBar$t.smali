.class public Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "t"
.end annotation


# static fields
.field private static final consumeAllTouchListener:Landroid/view/View$OnTouchListener;


# instance fields
.field private final actionTextColorAlpha:F

.field private addingToTargetParent:Z

.field private animationMode:I

.field private final backgroundOverlayColorAlpha:F

.field private backgroundTint:Landroid/content/res/ColorStateList;

.field private backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

.field private baseTransientBottomBar:Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar<",
            "*>;"
        }
    .end annotation
.end field

.field private final maxInlineActionWidth:I

.field private final maxWidth:I

.field private originalMargins:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->consumeAllTouchListener:Landroid/view/View$OnTouchListener;

    .line 8
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, p2, v0, v0}, Lr3/a;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    sget-object v1, Ld3/l;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 5
    sget v1, Ld3/l;->SnackbarLayout_elevation:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    .line 7
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->C0(Landroid/view/View;F)V

    .line 8
    :cond_0
    sget v1, Ld3/l;->SnackbarLayout_animationMode:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->animationMode:I

    .line 9
    sget v0, Ld3/l;->SnackbarLayout_backgroundOverlayColorAlpha:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->backgroundOverlayColorAlpha:F

    .line 11
    sget v0, Ld3/l;->SnackbarLayout_backgroundTint:I

    .line 12
    invoke-static {p1, p2, v0}, Lcom/google/android/material/resources/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 14
    sget p1, Ld3/l;->SnackbarLayout_backgroundTintMode:I

    const/4 v0, -0x1

    .line 15
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 16
    invoke-static {p1, v2}, Lcom/google/android/material/internal/u;->h(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 18
    sget p1, Ld3/l;->SnackbarLayout_actionTextColorAlpha:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->actionTextColorAlpha:F

    .line 19
    sget p1, Ld3/l;->SnackbarLayout_android_maxWidth:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->maxWidth:I

    .line 20
    sget p1, Ld3/l;->SnackbarLayout_maxActionInlineWidth:I

    .line 21
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->maxInlineActionWidth:I

    .line 22
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    sget-object p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->consumeAllTouchListener:Landroid/view/View$OnTouchListener;

    .line 23
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    .line 26
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->d()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->y0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->originalMargins:Landroid/graphics/Rect;

    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->setBaseTransientBottomBar(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 4
    return-void
.end method

.method private d()Landroid/graphics/drawable/Drawable;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget v1, Ld3/d;->mtrl_snackbar_background_corner_radius:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 10
    move-result v0

    .line 11
    .line 12
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 23
    .line 24
    sget v0, Ld3/b;->colorSurface:I

    .line 25
    .line 26
    sget v2, Ld3/b;->colorOnSurface:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->getBackgroundOverlayColorAlpha()F

    .line 30
    move-result v3

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v0, v2, v3}, Li3/a;->i(Landroid/view/View;IIF)I

    .line 34
    move-result v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 51
    return-object v0

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method

.method private e(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    .line 4
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 5
    .line 6
    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 7
    .line 8
    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 9
    .line 10
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->originalMargins:Landroid/graphics/Rect;

    .line 16
    return-void
.end method

.method private setBaseTransientBottomBar(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->baseTransientBottomBar:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    return-void
.end method


# virtual methods
.method c(Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->addingToTargetParent:Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->addingToTargetParent:Z

    .line 10
    return-void
.end method

.method getActionTextColorAlpha()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->actionTextColorAlpha:F

    return v0
.end method

.method getAnimationMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->animationMode:I

    return v0
.end method

.method getBackgroundOverlayColorAlpha()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->backgroundOverlayColorAlpha:F

    return v0
.end method

.method getMaxInlineActionWidth()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->maxInlineActionWidth:I

    return v0
.end method

.method getMaxWidth()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->maxWidth:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->baseTransientBottomBar:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->H()V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->q0(Landroid/view/View;)V

    .line 14
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->baseTransientBottomBar:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->I()V

    .line 11
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->baseTransientBottomBar:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->J()V

    .line 11
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 4
    .line 5
    iget p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->maxWidth:I

    .line 6
    .line 7
    if-lez p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 11
    move-result p1

    .line 12
    .line 13
    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->maxWidth:I

    .line 14
    .line 15
    if-le p1, v0, :cond_0

    .line 16
    .line 17
    const/high16 p1, 0x40000000    # 2.0f

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 21
    move-result p1

    .line 22
    .line 23
    .line 24
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 25
    :cond_0
    return-void
.end method

.method setAnimationMode(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->animationMode:I

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

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
    .line 15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 24
    .line 25
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    if-eq v0, p1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    :cond_0
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

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
    .line 15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    if-eq v0, p1, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    :cond_0
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->addingToTargetParent:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->e(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->baseTransientBottomBar:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->o(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 24
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    const/4 v0, 0x0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    :cond_0
    sget-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$t;->consumeAllTouchListener:Landroid/view/View$OnTouchListener;

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 10
    .line 11
    .line 12
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    return-void
.end method
