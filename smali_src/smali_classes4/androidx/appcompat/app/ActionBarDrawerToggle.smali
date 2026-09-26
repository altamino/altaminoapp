.class public Landroidx/appcompat/app/ActionBarDrawerToggle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;,
        Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;,
        Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;,
        Landroidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider;
    }
.end annotation


# instance fields
.field private final mActivityImpl:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

.field private final mCloseDrawerContentDescRes:I

.field mDrawerIndicatorEnabled:Z

.field private final mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private mDrawerSlideAnimationEnabled:Z

.field private mHasCustomUpIndicator:Z

.field private mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

.field private final mOpenDrawerContentDescRes:I

.field private mSlider:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

.field mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

.field private mWarnedForDisplayHomeAsUp:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroidx/appcompat/widget/Toolbar;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;II)V
    .locals 1
    .param p5    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerSlideAnimationEnabled:Z

    iput-boolean v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z

    if-eqz p2, :cond_0

    .line 4
    new-instance p1, Landroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;

    invoke-direct {p1, p2}, Landroidx/appcompat/app/ActionBarDrawerToggle$ToolbarCompatDelegate;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    .line 5
    new-instance p1, Landroidx/appcompat/app/ActionBarDrawerToggle$1;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/ActionBarDrawerToggle$1;-><init>(Landroidx/appcompat/app/ActionBarDrawerToggle;)V

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 6
    :cond_0
    instance-of p2, p1, Landroidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider;

    if-eqz p2, :cond_1

    .line 7
    check-cast p1, Landroidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider;

    invoke-interface {p1}, Landroidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider;->getDrawerToggleDelegate()Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 8
    :cond_1
    new-instance p2, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;

    invoke-direct {p2, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    :goto_0
    iput-object p3, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    iput p5, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    iput p6, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    if-nez p4, :cond_2

    .line 9
    new-instance p1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    iget-object p2, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {p2}, Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->c()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    goto :goto_1

    :cond_2
    iput-object p4, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    .line 10
    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;II)V
    .locals 7
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/appcompat/widget/Toolbar;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;II)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V
    .locals 7
    .param p4    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v5, p4

    move v6, p5

    .line 2
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/appcompat/widget/Toolbar;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;II)V

    return-void
.end method

.method private c(F)V
    .locals 2

    .line 1
    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    .line 4
    cmpl-float v0, p1, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->g(Z)V

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    .line 16
    cmpl-float v0, p1, v0

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->g(Z)V

    .line 25
    .line 26
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mSlider:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 30
    return-void
.end method


# virtual methods
.method a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->a()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method b(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mActivityImpl:Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;->b(I)V

    .line 6
    return-void
.end method

.method d()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 3
    .line 4
    .line 5
    const v1, 0x800003

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->q(I)I

    .line 9
    move-result v0

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->E(I)Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    const/4 v2, 0x2

    .line 19
    .line 20
    if-eq v0, v2, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)V

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x1

    .line 28
    .line 29
    if-eq v0, v2, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->J(I)V

    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->c(F)V

    .line 5
    .line 6
    iget-boolean p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->b(I)V

    .line 14
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->c(F)V

    .line 6
    .line 7
    iget-boolean p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->b(I)V

    .line 15
    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 1

    .line 1
    .line 2
    iget-boolean p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle;->mDrawerSlideAnimationEnabled:Z

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/high16 p1, 0x3f800000    # 1.0f

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    .line 11
    move-result p2

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .line 15
    move-result p1

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->c(F)V

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-direct {p0, v0}, Landroidx/appcompat/app/ActionBarDrawerToggle;->c(F)V

    .line 23
    :goto_0
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0

    return-void
.end method
