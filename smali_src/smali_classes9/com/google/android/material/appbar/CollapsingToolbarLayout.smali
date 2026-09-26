.class public Lcom/google/android/material/appbar/CollapsingToolbarLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/CollapsingToolbarLayout$d;,
        Lcom/google/android/material/appbar/CollapsingToolbarLayout$c;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCRIM_ANIMATION_DURATION:I = 0x258

.field private static final DEF_STYLE_RES:I

.field public static final TITLE_COLLAPSE_MODE_FADE:I = 0x1

.field public static final TITLE_COLLAPSE_MODE_SCALE:I


# instance fields
.field final collapsingTextHelper:Lcom/google/android/material/internal/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private collapsingTitleEnabled:Z

.field private contentScrim:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field currentOffset:I

.field private drawCollapsingTitle:Z

.field private dummyView:Landroid/view/View;

.field final elevationOverlayProvider:Ll3/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private expandedMarginBottom:I

.field private expandedMarginEnd:I

.field private expandedMarginStart:I

.field private expandedMarginTop:I

.field private extraMultilineHeight:I

.field private extraMultilineHeightEnabled:Z

.field private forceApplySystemWindowInsetTop:Z

.field lastInsets:Landroidx/core/view/WindowInsetsCompat;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$h;

.field private refreshToolbar:Z

.field private scrimAlpha:I

.field private scrimAnimationDuration:J

.field private scrimAnimator:Landroid/animation/ValueAnimator;

.field private scrimVisibleHeightTrigger:I

.field private scrimsAreShown:Z

.field statusBarScrim:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private titleCollapseMode:I

.field private final tmpRect:Landroid/graphics/Rect;

.field private toolbar:Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private toolbarDirectChild:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private toolbarId:I

.field private topInsetApplied:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Ld3/k;->Widget_Design_CollapsingToolbar:I

    sput v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Ld3/b;->collapsingToolbarLayoutStyle:I

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->DEF_STYLE_RES:I

    .line 3
    invoke-static {p1, p2, p3, v4}, Lr3/a;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->refreshToolbar:Z

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    const/4 v6, -0x1

    iput v6, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    const/4 v7, 0x0

    iput v7, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->topInsetApplied:I

    iput v7, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->extraMultilineHeight:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 6
    new-instance v9, Lcom/google/android/material/internal/b;

    invoke-direct {v9, p0}, Lcom/google/android/material/internal/b;-><init>(Landroid/view/View;)V

    iput-object v9, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 7
    sget-object v0, Le3/a;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v9, v0}, Lcom/google/android/material/internal/b;->G0(Landroid/animation/TimeInterpolator;)V

    .line 8
    invoke-virtual {v9, v7}, Lcom/google/android/material/internal/b;->D0(Z)V

    .line 9
    new-instance v0, Ll3/a;

    invoke-direct {v0, v8}, Ll3/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->elevationOverlayProvider:Ll3/a;

    .line 10
    sget-object v2, Ld3/l;->CollapsingToolbarLayout:[I

    new-array v5, v7, [I

    move-object v0, v8

    move-object v1, p2

    move v3, p3

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/s;->h(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 12
    sget p3, Ld3/l;->CollapsingToolbarLayout_expandedTitleGravity:I

    const v0, 0x800053

    .line 13
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 14
    invoke-virtual {v9, p3}, Lcom/google/android/material/internal/b;->q0(I)V

    .line 15
    sget p3, Ld3/l;->CollapsingToolbarLayout_collapsedTitleGravity:I

    const v0, 0x800013

    .line 16
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 17
    invoke-virtual {v9, p3}, Lcom/google/android/material/internal/b;->g0(I)V

    .line 18
    sget p3, Ld3/l;->CollapsingToolbarLayout_expandedTitleMargin:I

    .line 19
    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginBottom:I

    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginTop:I

    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    .line 20
    sget p3, Ld3/l;->CollapsingToolbarLayout_expandedTitleMarginStart:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    .line 22
    :cond_0
    sget p3, Ld3/l;->CollapsingToolbarLayout_expandedTitleMarginEnd:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    .line 24
    :cond_1
    sget p3, Ld3/l;->CollapsingToolbarLayout_expandedTitleMarginTop:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginTop:I

    .line 26
    :cond_2
    sget p3, Ld3/l;->CollapsingToolbarLayout_expandedTitleMarginBottom:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27
    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginBottom:I

    .line 28
    :cond_3
    sget p3, Ld3/l;->CollapsingToolbarLayout_titleEnabled:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    .line 29
    sget p3, Ld3/l;->CollapsingToolbarLayout_title:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    sget p3, Ld3/k;->TextAppearance_Design_CollapsingToolbar_Expanded:I

    .line 30
    invoke-virtual {v9, p3}, Lcom/google/android/material/internal/b;->n0(I)V

    sget p3, Landroidx/appcompat/R$style;->TextAppearance_AppCompat_Widget_ActionBar_Title:I

    .line 31
    invoke-virtual {v9, p3}, Lcom/google/android/material/internal/b;->d0(I)V

    .line 32
    sget p3, Ld3/l;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33
    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 34
    invoke-virtual {v9, p3}, Lcom/google/android/material/internal/b;->n0(I)V

    .line 35
    :cond_4
    sget p3, Ld3/l;->CollapsingToolbarLayout_collapsedTitleTextAppearance:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 36
    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 37
    invoke-virtual {v9, p3}, Lcom/google/android/material/internal/b;->d0(I)V

    .line 38
    :cond_5
    sget p3, Ld3/l;->CollapsingToolbarLayout_expandedTitleTextColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 39
    invoke-static {v8, p2, p3}, Lcom/google/android/material/resources/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 40
    invoke-virtual {v9, p3}, Lcom/google/android/material/internal/b;->p0(Landroid/content/res/ColorStateList;)V

    .line 41
    :cond_6
    sget p3, Ld3/l;->CollapsingToolbarLayout_collapsedTitleTextColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 42
    invoke-static {v8, p2, p3}, Lcom/google/android/material/resources/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 43
    invoke-virtual {v9, p3}, Lcom/google/android/material/internal/b;->f0(Landroid/content/res/ColorStateList;)V

    .line 44
    :cond_7
    sget p3, Ld3/l;->CollapsingToolbarLayout_scrimVisibleHeightTrigger:I

    .line 45
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    .line 46
    sget p3, Ld3/l;->CollapsingToolbarLayout_maxLines:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 47
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {v9, p1}, Lcom/google/android/material/internal/b;->B0(I)V

    .line 48
    :cond_8
    sget p1, Ld3/l;->CollapsingToolbarLayout_titlePositionInterpolator:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 49
    invoke-virtual {p2, p1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 50
    invoke-static {v8, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    .line 51
    invoke-virtual {v9, p1}, Lcom/google/android/material/internal/b;->C0(Landroid/animation/TimeInterpolator;)V

    .line 52
    :cond_9
    sget p1, Ld3/l;->CollapsingToolbarLayout_scrimAnimationDuration:I

    const/16 p3, 0x258

    .line 53
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimationDuration:J

    .line 54
    sget p1, Ld3/l;->CollapsingToolbarLayout_contentScrim:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 55
    sget p1, Ld3/l;->CollapsingToolbarLayout_statusBarScrim:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 56
    sget p1, Ld3/l;->CollapsingToolbarLayout_titleCollapseMode:I

    .line 57
    invoke-virtual {p2, p1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitleCollapseMode(I)V

    .line 59
    sget p1, Ld3/l;->CollapsingToolbarLayout_toolbarId:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarId:I

    .line 60
    sget p1, Ld3/l;->CollapsingToolbarLayout_forceApplySystemWindowInsetTop:I

    .line 61
    invoke-virtual {p2, p1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->forceApplySystemWindowInsetTop:Z

    .line 62
    sget p1, Ld3/l;->CollapsingToolbarLayout_extraMultilineHeightEnabled:I

    .line 63
    invoke-virtual {p2, p1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->extraMultilineHeightEnabled:Z

    .line 64
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    invoke-virtual {p0, v7}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 66
    new-instance p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout$a;

    invoke-direct {p1, p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$a;-><init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->L0(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private a(I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    .line 17
    .line 18
    if-le p1, v1, :cond_0

    .line 19
    .line 20
    sget-object v1, Le3/a;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    sget-object v1, Le3/a;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    .line 29
    .line 30
    new-instance v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout$b;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$b;-><init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 37
    goto :goto_1

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 49
    .line 50
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    .line 51
    .line 52
    iget-wide v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimationDuration:J

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    .line 58
    .line 59
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    .line 60
    .line 61
    .line 62
    filled-new-array {v1, p1}, [I

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 67
    .line 68
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 72
    return-void
.end method

.method private b(Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->k()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftOnScroll(Z)V

    .line 11
    :cond_0
    return-void
.end method

.method private c()V
    .locals 6

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->refreshToolbar:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    .line 11
    .line 12
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarId:I

    .line 13
    const/4 v2, -0x1

    .line 14
    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Landroid/view/ViewGroup;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d(Landroid/view/View;)Landroid/view/View;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    .line 32
    .line 33
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    .line 34
    const/4 v2, 0x0

    .line 35
    .line 36
    if-nez v1, :cond_4

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 40
    move-result v1

    .line 41
    move v3, v2

    .line 42
    .line 43
    :goto_0
    if-ge v3, v1, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 47
    move-result-object v4

    .line 48
    .line 49
    .line 50
    invoke-static {v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->l(Landroid/view/View;)Z

    .line 51
    move-result v5

    .line 52
    .line 53
    if-eqz v5, :cond_2

    .line 54
    move-object v0, v4

    .line 55
    .line 56
    check-cast v0, Landroid/view/ViewGroup;

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_3
    :goto_1
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    .line 63
    .line 64
    .line 65
    :cond_4
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->t()V

    .line 66
    .line 67
    iput-boolean v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->refreshToolbar:Z

    .line 68
    return-void
.end method

.method private d(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    :goto_0
    if-eq v0, p0, :cond_1

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    instance-of v1, v0, Landroid/view/View;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    move-object p1, v0

    .line 14
    .line 15
    check-cast p1, Landroid/view/View;

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return-object p1
.end method

.method private static g(Landroid/view/View;)I
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 14
    move-result p0

    .line 15
    .line 16
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 17
    add-int/2addr p0, v1

    .line 18
    .line 19
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 20
    add-int/2addr p0, v0

    .line 21
    return p0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method private static i(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p0, Landroidx/appcompat/widget/Toolbar;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    .line 13
    :cond_0
    instance-of v0, p0, Landroid/widget/Toolbar;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    check-cast p0, Landroid/widget/Toolbar;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method static j(Landroid/view/View;)Lcom/google/android/material/appbar/i;
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    sget v0, Ld3/f;->view_offset_helper:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Lcom/google/android/material/appbar/i;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/google/android/material/appbar/i;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/google/android/material/appbar/i;-><init>(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 19
    :cond_0
    return-object v1
.end method

.method private k()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->titleCollapseMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static l(Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p0, Landroidx/appcompat/widget/Toolbar;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    instance-of p0, p0, Landroid/widget/Toolbar;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method private m(Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_1

    :cond_0
    if-ne p1, v0, :cond_2

    :goto_0
    move v1, v2

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    return v1
.end method

.method private p(Z)V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h(Landroid/view/View;)I

    .line 11
    move-result v0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v1, v2}, Lcom/google/android/material/internal/d;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    .line 21
    .line 22
    instance-of v2, v1, Landroidx/appcompat/widget/Toolbar;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginStart()I

    .line 30
    move-result v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginEnd()I

    .line 34
    move-result v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginTop()I

    .line 38
    move-result v4

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getTitleMarginBottom()I

    .line 42
    move-result v1

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 46
    .line 47
    const/16 v3, 0x18

    .line 48
    .line 49
    if-lt v2, v3, :cond_2

    .line 50
    .line 51
    instance-of v2, v1, Landroid/widget/Toolbar;

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    check-cast v1, Landroid/widget/Toolbar;

    .line 56
    .line 57
    .line 58
    invoke-static {v1}, Lcom/google/android/material/appbar/b;->a(Landroid/widget/Toolbar;)I

    .line 59
    move-result v2

    .line 60
    .line 61
    .line 62
    invoke-static {v1}, Lcom/google/android/material/appbar/c;->a(Landroid/widget/Toolbar;)I

    .line 63
    move-result v3

    .line 64
    .line 65
    .line 66
    invoke-static {v1}, Lcom/google/android/material/appbar/d;->a(Landroid/widget/Toolbar;)I

    .line 67
    move-result v4

    .line 68
    .line 69
    .line 70
    invoke-static {v1}, Lcom/google/android/material/appbar/e;->a(Landroid/widget/Toolbar;)I

    .line 71
    move-result v1

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    const/4 v2, 0x0

    .line 74
    move v1, v2

    .line 75
    move v3, v1

    .line 76
    move v4, v3

    .line 77
    .line 78
    :goto_1
    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 79
    .line 80
    iget-object v6, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    .line 81
    .line 82
    iget v7, v6, Landroid/graphics/Rect;->left:I

    .line 83
    .line 84
    if-eqz p1, :cond_3

    .line 85
    move v8, v3

    .line 86
    goto :goto_2

    .line 87
    :cond_3
    move v8, v2

    .line 88
    :goto_2
    add-int/2addr v7, v8

    .line 89
    .line 90
    iget v8, v6, Landroid/graphics/Rect;->top:I

    .line 91
    add-int/2addr v8, v0

    .line 92
    add-int/2addr v8, v4

    .line 93
    .line 94
    iget v4, v6, Landroid/graphics/Rect;->right:I

    .line 95
    .line 96
    if-eqz p1, :cond_4

    .line 97
    goto :goto_3

    .line 98
    :cond_4
    move v2, v3

    .line 99
    :goto_3
    sub-int/2addr v4, v2

    .line 100
    .line 101
    iget p1, v6, Landroid/graphics/Rect;->bottom:I

    .line 102
    add-int/2addr p1, v0

    .line 103
    sub-int/2addr p1, v1

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, v7, v8, v4, p1}, Lcom/google/android/material/internal/b;->b0(IIII)V

    .line 107
    return-void
.end method

.method private q()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getTitle()Ljava/lang/CharSequence;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 8
    return-void
.end method

.method private r(Landroid/graphics/drawable/Drawable;II)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s(Landroid/graphics/drawable/Drawable;Landroid/view/View;II)V

    .line 6
    return-void
.end method

.method private s(Landroid/graphics/drawable/Drawable;Landroid/view/View;II)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->k()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 16
    move-result p4

    .line 17
    :cond_0
    const/4 p2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 21
    return-void
.end method

.method private t()V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    check-cast v0, Landroid/view/ViewGroup;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 24
    .line 25
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    new-instance v0, Landroid/view/View;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    .line 47
    .line 48
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    .line 59
    const/4 v2, -0x1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 63
    :cond_2
    return-void
.end method

.method private v(IIIIZ)V
    .locals 5

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    .line 7
    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->W(Landroid/view/View;)Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->dummyView:Landroid/view/View;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    move v0, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v0, v1

    .line 28
    .line 29
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->drawCollapsingTitle:Z

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    if-eqz p5, :cond_5

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->D(Landroid/view/View;)I

    .line 37
    move-result v0

    .line 38
    .line 39
    if-ne v0, v2, :cond_2

    .line 40
    move v1, v2

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-direct {p0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->p(Z)V

    .line 44
    .line 45
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    iget v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_3
    iget v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    .line 53
    .line 54
    :goto_1
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->tmpRect:Landroid/graphics/Rect;

    .line 55
    .line 56
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 57
    .line 58
    iget v4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginTop:I

    .line 59
    add-int/2addr v3, v4

    .line 60
    sub-int/2addr p3, p1

    .line 61
    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    iget p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    .line 65
    goto :goto_2

    .line 66
    .line 67
    :cond_4
    iget p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    .line 68
    :goto_2
    sub-int/2addr p3, p1

    .line 69
    sub-int/2addr p4, p2

    .line 70
    .line 71
    iget p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginBottom:I

    .line 72
    sub-int/2addr p4, p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2, v3, p3, p4}, Lcom/google/android/material/internal/b;->k0(IIII)V

    .line 76
    .line 77
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p5}, Lcom/google/android/material/internal/b;->Z(Z)V

    .line 81
    :cond_5
    return-void
.end method

.method private w()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/material/internal/b;->M()Ljava/lang/CharSequence;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->i(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    .line 2
    instance-of p1, p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout$c;

    .line 3
    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c()V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    .line 17
    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 33
    .line 34
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->drawCollapsingTitle:Z

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    .line 51
    .line 52
    if-lez v0, :cond_1

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->k()Z

    .line 56
    move-result v0

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/google/android/material/internal/b;->D()F

    .line 64
    move-result v0

    .line 65
    .line 66
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/google/android/material/internal/b;->E()F

    .line 70
    move-result v1

    .line 71
    .line 72
    cmpg-float v0, v0, v1

    .line 73
    .line 74
    if-gez v0, :cond_1

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 78
    move-result v0

    .line 79
    .line 80
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 90
    .line 91
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, p1}, Lcom/google/android/material/internal/b;->l(Landroid/graphics/Canvas;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 98
    goto :goto_0

    .line 99
    .line 100
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/b;->l(Landroid/graphics/Canvas;)V

    .line 104
    .line 105
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 106
    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    .line 110
    .line 111
    if-lez v0, :cond_4

    .line 112
    .line 113
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 114
    const/4 v1, 0x0

    .line 115
    .line 116
    if-eqz v0, :cond_3

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->m()I

    .line 120
    move-result v0

    .line 121
    goto :goto_1

    .line 122
    :cond_3
    move v0, v1

    .line 123
    .line 124
    :goto_1
    if-lez v0, :cond_4

    .line 125
    .line 126
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 127
    .line 128
    iget v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    .line 129
    neg-int v3, v3

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 133
    move-result v4

    .line 134
    .line 135
    iget v5, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    .line 136
    sub-int/2addr v0, v5

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 140
    .line 141
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 151
    .line 152
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 156
    :cond_4
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->m(Landroid/view/View;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 22
    move-result v3

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 26
    move-result v4

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0, p2, v3, v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s(Landroid/graphics/drawable/Drawable;Landroid/view/View;II)V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    iget v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 41
    .line 42
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 46
    move v0, v1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move v0, v2

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 52
    move-result p1

    .line 53
    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move v1, v2

    .line 59
    :cond_2
    :goto_1
    return v1
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 21
    move-result v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    .line 25
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 31
    move-result v3

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 37
    move-result v2

    .line 38
    or-int/2addr v1, v2

    .line 39
    .line 40
    :cond_1
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v0}, Lcom/google/android/material/internal/b;->E0([I)Z

    .line 46
    move-result v0

    .line 47
    or-int/2addr v1, v0

    .line 48
    .line 49
    :cond_2
    if-eqz v1, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 53
    :cond_3
    return-void
.end method

.method protected e()Lcom/google/android/material/appbar/CollapsingToolbarLayout$c;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$c;

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$c;-><init>(II)V

    .line 7
    return-object v0
.end method

.method protected f(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$c;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$c;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->e()Lcom/google/android/material/appbar/CollapsingToolbarLayout$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->e()Lcom/google/android/material/appbar/CollapsingToolbarLayout$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 3
    new-instance v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCollapsedTitleGravity()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/internal/b;->q()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getCollapsedTitleTypeface()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/internal/b;->u()Landroid/graphics/Typeface;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getContentScrim()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getExpandedTitleGravity()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/internal/b;->A()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getExpandedTitleMarginBottom()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginBottom:I

    return v0
.end method

.method public getExpandedTitleMarginEnd()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    return v0
.end method

.method public getExpandedTitleMarginStart()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    return v0
.end method

.method public getExpandedTitleMarginTop()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginTop:I

    return v0
.end method

.method public getExpandedTitleTypeface()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/internal/b;->C()Landroid/graphics/Typeface;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getHyphenationFrequency()I
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/internal/b;->F()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getLineCount()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/internal/b;->G()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getLineSpacingAdd()F
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/internal/b;->H()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getLineSpacingMultiplier()F
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/internal/b;->I()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMaxLines()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/internal/b;->J()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method getScrimAlpha()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    return v0
.end method

.method public getScrimAnimationDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimationDuration:J

    return-wide v0
.end method

.method public getScrimVisibleHeightTrigger()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->topInsetApplied:I

    .line 7
    add-int/2addr v0, v1

    .line 8
    .line 9
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->extraMultilineHeight:I

    .line 10
    add-int/2addr v0, v1

    .line 11
    return v0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->m()I

    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->E(Landroid/view/View;)I

    .line 25
    move-result v1

    .line 26
    .line 27
    if-lez v1, :cond_2

    .line 28
    .line 29
    mul-int/lit8 v1, v1, 0x2

    .line 30
    add-int/2addr v1, v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 34
    move-result v0

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 38
    move-result v0

    .line 39
    return v0

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 43
    move-result v0

    .line 44
    .line 45
    div-int/lit8 v0, v0, 0x3

    .line 46
    return v0
.end method

.method public getStatusBarScrim()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/material/internal/b;->M()Ljava/lang/CharSequence;

    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public getTitleCollapseMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->titleCollapseMode:I

    return v0
.end method

.method public getTitlePositionInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/internal/b;->L()Landroid/animation/TimeInterpolator;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method final h(Landroid/view/View;)I
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->j(Landroid/view/View;)Lcom/google/android/material/appbar/i;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    check-cast v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout$c;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 14
    move-result v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/material/appbar/i;->b()I

    .line 18
    move-result v0

    .line 19
    sub-int/2addr v2, v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 23
    move-result p1

    .line 24
    sub-int/2addr v2, p1

    .line 25
    .line 26
    iget p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 27
    sub-int/2addr v2, p1

    .line 28
    return v2
.end method

.method n(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2
    .param p1    # Landroidx/core/view/WindowInsetsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->A(Landroid/view/View;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    move-object v0, p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    .line 11
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v0}, Landroidx/core/util/ObjectsCompat;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->c()Landroidx/core/view/WindowInsetsCompat;

    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public o(ZZ)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimsAreShown:Z

    .line 3
    .line 4
    if-eq v0, p1, :cond_3

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    const/16 v1, 0xff

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    move v0, v1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a(I)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_1
    if-eqz p1, :cond_2

    .line 19
    move v0, v1

    .line 20
    .line 21
    .line 22
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setScrimAlpha(I)V

    .line 23
    .line 24
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimsAreShown:Z

    .line 25
    :cond_3
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->b(Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->A(Landroid/view/View;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->D0(Landroid/view/View;Z)V

    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$h;

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    new-instance v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout$d;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$d;-><init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V

    .line 33
    .line 34
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$h;

    .line 35
    .line 36
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$h;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->d(Lcom/google/android/material/appbar/AppBarLayout$h;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->q0(Landroid/view/View;)V

    .line 43
    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/b;->V(Landroid/content/res/Configuration;)V

    .line 9
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$h;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    instance-of v2, v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->r(Lcom/google/android/material/appbar/AppBarLayout$h;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 21
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->m()I

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    move-result v1

    .line 17
    move v2, v0

    .line 18
    .line 19
    :goto_0
    if-ge v2, v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    .line 26
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->A(Landroid/view/View;)Z

    .line 27
    move-result v4

    .line 28
    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 33
    move-result v4

    .line 34
    .line 35
    if-ge v4, p1, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-static {v3, p1}, Landroidx/core/view/ViewCompat;->e0(Landroid/view/View;I)V

    .line 39
    .line 40
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 41
    goto :goto_0

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 45
    move-result p1

    .line 46
    move v1, v0

    .line 47
    .line 48
    :goto_1
    if-ge v1, p1, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    invoke-static {v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->j(Landroid/view/View;)Lcom/google/android/material/appbar/i;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/google/android/material/appbar/i;->d()V

    .line 60
    .line 61
    add-int/lit8 v1, v1, 0x1

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const/4 v7, 0x0

    .line 64
    move-object v2, p0

    .line 65
    move v3, p2

    .line 66
    move v4, p3

    .line 67
    move v5, p4

    .line 68
    move v6, p5

    .line 69
    .line 70
    .line 71
    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->v(IIIIZ)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->w()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->u()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 81
    move-result p1

    .line 82
    .line 83
    :goto_2
    if-ge v0, p1, :cond_3

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 87
    move-result-object p2

    .line 88
    .line 89
    .line 90
    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->j(Landroid/view/View;)Lcom/google/android/material/appbar/i;

    .line 91
    move-result-object p2

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Lcom/google/android/material/appbar/i;->a()V

    .line 95
    .line 96
    add-int/lit8 v0, v0, 0x1

    .line 97
    goto :goto_2

    .line 98
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 10
    move-result p2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->m()I

    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    .line 22
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    iget-boolean p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->forceApplySystemWindowInsetTop:Z

    .line 27
    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    :cond_1
    if-lez v0, :cond_2

    .line 31
    .line 32
    iput v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->topInsetApplied:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 36
    move-result p2

    .line 37
    add-int/2addr p2, v0

    .line 38
    .line 39
    .line 40
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 41
    move-result p2

    .line 42
    .line 43
    .line 44
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 45
    .line 46
    :cond_2
    iget-boolean p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->extraMultilineHeightEnabled:Z

    .line 47
    .line 48
    if-eqz p2, :cond_3

    .line 49
    .line 50
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/google/android/material/internal/b;->J()I

    .line 54
    move-result p2

    .line 55
    const/4 v0, 0x1

    .line 56
    .line 57
    if-le p2, v0, :cond_3

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->w()V

    .line 61
    const/4 v3, 0x0

    .line 62
    const/4 v4, 0x0

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 66
    move-result v5

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 70
    move-result v6

    .line 71
    const/4 v7, 0x1

    .line 72
    move-object v2, p0

    .line 73
    .line 74
    .line 75
    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->v(IIIIZ)V

    .line 76
    .line 77
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Lcom/google/android/material/internal/b;->y()I

    .line 81
    move-result p2

    .line 82
    .line 83
    if-le p2, v0, :cond_3

    .line 84
    .line 85
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/google/android/material/internal/b;->z()F

    .line 89
    move-result v2

    .line 90
    .line 91
    .line 92
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 93
    move-result v2

    .line 94
    sub-int/2addr p2, v0

    .line 95
    mul-int/2addr v2, p2

    .line 96
    .line 97
    iput v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->extraMultilineHeight:I

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 101
    move-result p2

    .line 102
    .line 103
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->extraMultilineHeight:I

    .line 104
    add-int/2addr p2, v0

    .line 105
    .line 106
    .line 107
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 108
    move-result p2

    .line 109
    .line 110
    .line 111
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 112
    .line 113
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    .line 114
    .line 115
    if-eqz p1, :cond_6

    .line 116
    .line 117
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbarDirectChild:Landroid/view/View;

    .line 118
    .line 119
    if-eqz p2, :cond_5

    .line 120
    .line 121
    if-ne p2, p0, :cond_4

    .line 122
    goto :goto_1

    .line 123
    .line 124
    .line 125
    :cond_4
    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->g(Landroid/view/View;)I

    .line 126
    move-result p1

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 130
    goto :goto_2

    .line 131
    .line 132
    .line 133
    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->g(Landroid/view/View;)I

    .line 134
    move-result p1

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 138
    :cond_6
    :goto_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 4
    .line 5
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p3, p1, p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r(Landroid/graphics/drawable/Drawable;II)V

    .line 11
    :cond_0
    return-void
.end method

.method public setCollapsedTitleGravity(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/b;->g0(I)V

    .line 6
    return-void
.end method

.method public setCollapsedTitleTextAppearance(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/b;->d0(I)V

    .line 6
    return-void
.end method

.method public setCollapsedTitleTextColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/b;->f0(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCollapsedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/b;->h0(Landroid/graphics/Typeface;)V

    .line 6
    return-void
.end method

.method public setContentScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    if-eq v0, p1, :cond_3

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 11
    .line 12
    :cond_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    :cond_1
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 24
    move-result p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 28
    move-result v0

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r(Landroid/graphics/drawable/Drawable;II)V

    .line 32
    .line 33
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 37
    .line 38
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->k0(Landroid/view/View;)V

    .line 47
    :cond_3
    return-void
.end method

.method public setContentScrimColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 9
    return-void
.end method

.method public setContentScrimResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 12
    return-void
.end method

.method public setExpandedTitleColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 8
    return-void
.end method

.method public setExpandedTitleGravity(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/b;->q0(I)V

    .line 6
    return-void
.end method

.method public setExpandedTitleMarginBottom(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginBottom:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    return-void
.end method

.method public setExpandedTitleMarginEnd(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginEnd:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    return-void
.end method

.method public setExpandedTitleMarginStart(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginStart:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    return-void
.end method

.method public setExpandedTitleMarginTop(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->expandedMarginTop:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 6
    return-void
.end method

.method public setExpandedTitleTextAppearance(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/b;->n0(I)V

    .line 6
    return-void
.end method

.method public setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/b;->p0(Landroid/content/res/ColorStateList;)V

    .line 6
    return-void
.end method

.method public setExpandedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/b;->s0(Landroid/graphics/Typeface;)V

    .line 6
    return-void
.end method

.method public setExtraMultilineHeightEnabled(Z)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->extraMultilineHeightEnabled:Z

    return-void
.end method

.method public setForceApplySystemWindowInsetTop(Z)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->forceApplySystemWindowInsetTop:Z

    return-void
.end method

.method public setHyphenationFrequency(I)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/b;->x0(I)V

    .line 6
    return-void
.end method

.method public setLineSpacingAdd(F)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/b;->z0(F)V

    .line 6
    return-void
.end method

.method public setLineSpacingMultiplier(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/b;->A0(F)V

    .line 6
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/b;->B0(I)V

    .line 6
    return-void
.end method

.method public setRtlTextDirectionHeuristicsEnabled(Z)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/b;->D0(Z)V

    .line 6
    return-void
.end method

.method setScrimAlpha(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    .line 3
    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->toolbar:Landroid/view/ViewGroup;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->k0(Landroid/view/View;)V

    .line 16
    .line 17
    :cond_0
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->k0(Landroid/view/View;)V

    .line 21
    :cond_1
    return-void
.end method

.method public setScrimAnimationDuration(J)V
    .locals 0
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param

    iput-wide p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAnimationDuration:J

    return-void
.end method

.method public setScrimVisibleHeightTrigger(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimVisibleHeightTrigger:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->u()V

    .line 10
    :cond_0
    return-void
.end method

.method public setScrimsShown(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->X(Landroid/view/View;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o(ZZ)V

    .line 19
    return-void
.end method

.method public setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    if-eq v0, p1, :cond_5

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 11
    .line 12
    :cond_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    :cond_1
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    if-eqz v1, :cond_4

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 36
    .line 37
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->D(Landroid/view/View;)I

    .line 41
    move-result v0

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->m(Landroid/graphics/drawable/Drawable;I)Z

    .line 45
    .line 46
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 50
    move-result v0

    .line 51
    const/4 v1, 0x0

    .line 52
    .line 53
    if-nez v0, :cond_3

    .line 54
    const/4 v0, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    move v0, v1

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 60
    .line 61
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 65
    .line 66
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 67
    .line 68
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->scrimAlpha:I

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 72
    .line 73
    .line 74
    :cond_4
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->k0(Landroid/view/View;)V

    .line 75
    :cond_5
    return-void
.end method

.method public setStatusBarScrimColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 9
    return-void
.end method

.method public setStatusBarScrimResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 12
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/b;->F0(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q()V

    .line 9
    return-void
.end method

.method public setTitleCollapseMode(I)V
    .locals 2

    .line 1
    .line 2
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->titleCollapseMode:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->k()Z

    .line 6
    move-result p1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/b;->v0(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->b(Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 25
    .line 26
    :cond_0
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    sget v0, Ld3/d;->design_appbar_elevation:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 40
    move-result p1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->elevationOverlayProvider:Ll3/a;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ll3/a;->d(F)I

    .line 46
    move-result p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setContentScrimColor(I)V

    .line 50
    :cond_1
    return-void
.end method

.method public setTitleEnabled(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTitleEnabled:Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->t()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 16
    :cond_0
    return-void
.end method

.method public setTitlePositionInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 1
    .param p1    # Landroid/animation/TimeInterpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/b;->C0(Landroid/animation/TimeInterpolator;)V

    .line 6
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p1, v0

    .line 10
    .line 11
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eq v1, p1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 25
    .line 26
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-eq v1, p1, :cond_2

    .line 35
    .line 36
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 40
    :cond_2
    return-void
.end method

.method final u()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 12
    move-result v0

    .line 13
    .line 14
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    .line 15
    add-int/2addr v0, v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getScrimVisibleHeightTrigger()I

    .line 19
    move-result v1

    .line 20
    .line 21
    if-ge v0, v1, :cond_1

    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setScrimsShown(Z)V

    .line 28
    :cond_2
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 19
    :goto_1
    return p1
.end method
