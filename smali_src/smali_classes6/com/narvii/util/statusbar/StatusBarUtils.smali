.class public Lcom/narvii/util/statusbar/StatusBarUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final STATUS_BAR_ENABLE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/narvii/util/statusbar/StatusBarUtils;->STATUS_BAR_ENABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static bridge synthetic a(Landroid/app/Activity;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/util/statusbar/StatusBarUtils;->beginToSetStatusBarColor(Landroid/app/Activity;I)V

    return-void
.end method

.method private static actionBarShown(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/ActionBar;->isShowing()Z

    .line 14
    move-result p0

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method private static addFakeStatusBar(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;IZZ)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/narvii/util/statusbar/StatusBarUtils;->addFakeStatusBar(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;IZZZ)V

    return-void
.end method

.method private static addFakeStatusBar(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;IZZZ)V
    .locals 8

    if-eqz p0, :cond_f

    if-nez p1, :cond_0

    goto/16 :goto_8

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/narvii/util/statusbar/StatusBarUtils;->actionBarShown(Landroid/app/Activity;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-nez p3, :cond_2

    move p3, v3

    goto :goto_0

    :cond_2
    move p3, v4

    .line 6
    :goto_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    sget v5, Lcom/narvii/lib/R$id;->flag_fake_status:I

    invoke-virtual {v2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 7
    instance-of v5, v2, Ljava/lang/Boolean;

    if-eqz v5, :cond_7

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 8
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-lez p0, :cond_3

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of p0, p0, Lcom/narvii/theme/PageBackgroundView;

    if-eqz p0, :cond_3

    move p0, v3

    goto :goto_1

    :cond_3
    move p0, v4

    .line 9
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    if-le p4, v3, :cond_4

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    :goto_2
    if-eqz p0, :cond_5

    .line 10
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 p5, 0x2

    if-le p0, p5, :cond_5

    .line 11
    invoke-virtual {v1, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 12
    :cond_5
    instance-of p0, p4, Lcom/narvii/util/statusbar/StatusBarLayout;

    if-eqz p0, :cond_f

    if-eqz p3, :cond_6

    goto :goto_3

    .line 13
    :cond_6
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_3
    invoke-virtual {p4, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    check-cast p4, Lcom/narvii/util/statusbar/StatusBarLayout;

    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p4, p0}, Lcom/narvii/util/statusbar/StatusBarLayout;->setStatusBarDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 15
    :cond_7
    instance-of v2, p0, Lcom/narvii/app/NVActivity;

    if-eqz v2, :cond_8

    .line 16
    move-object v2, p0

    check-cast v2, Lcom/narvii/app/NVActivity;

    invoke-virtual {v2}, Lcom/narvii/app/NVActivity;->shouldShowPageBackground()Z

    move-result v2

    goto :goto_4

    :cond_8
    move v2, v4

    .line 17
    :goto_4
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v2, :cond_b

    .line 18
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ne v2, v3, :cond_9

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v6, Lcom/narvii/lib/R$id;->page_background:I

    invoke-virtual {v2, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    return-void

    :cond_9
    move v2, v4

    .line 19
    :goto_5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_b

    .line 20
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    sget v7, Lcom/narvii/lib/R$id;->page_background:I

    .line 21
    invoke-virtual {v6, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_a

    move-object v5, v6

    goto :goto_6

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 22
    :cond_b
    :goto_6
    invoke-static {v5, v4}, Landroidx/core/view/ViewCompat;->D0(Landroid/view/View;Z)V

    if-nez p3, :cond_c

    if-nez p4, :cond_c

    .line 23
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-direct {p1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 24
    :cond_c
    invoke-static {p0, p1, p2}, Lcom/narvii/util/statusbar/StatusBarUtils;->createFakeStatusBar(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Lcom/narvii/util/statusbar/StatusBarLayout;

    move-result-object p1

    .line 25
    invoke-virtual {v1, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    if-eqz p3, :cond_d

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    :cond_d
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$id;->flag_fake_status:I

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 29
    invoke-static {p0}, Lcom/narvii/util/statusbar/StatusBarUtils;->getFakeActionBarOffset(Landroid/app/Activity;)I

    move-result p0

    if-eqz p5, :cond_f

    if-nez p3, :cond_e

    if-nez p4, :cond_e

    goto :goto_7

    :cond_e
    move v4, p0

    .line 30
    :goto_7
    invoke-static {v5, v4}, Lcom/narvii/util/statusbar/StatusBarUtils;->addMarginTopToContentChild(Landroid/view/View;I)V

    :cond_f
    :goto_8
    return-void
.end method

.method public static addMarginTopToContentChild(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    sget-boolean v0, Lcom/narvii/util/statusbar/StatusBarUtils;->STATUS_BAR_ENABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/narvii/util/statusbar/StatusBarUtils;->getFakeActionBarOffset(Landroid/app/Activity;)I

    move-result p0

    .line 2
    invoke-static {p1, p0}, Lcom/narvii/util/statusbar/StatusBarUtils;->addMarginTopToContentChild(Landroid/view/View;I)V

    return-void
.end method

.method public static addMarginTopToContentChild(Landroid/view/View;I)V
    .locals 2

    sget-boolean v0, Lcom/narvii/util/statusbar/StatusBarUtils;->STATUS_BAR_ENABLE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 5
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static addPaddingToChild(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    check-cast p0, Lcom/narvii/app/NVActivity;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    .line 11
    move-result p0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 19
    move-result v1

    .line 20
    add-int/2addr v1, p0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 24
    move-result p0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 28
    move-result v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public static addTranslucentFlags(Landroid/view/Window;)V
    .locals 1

    .line 1
    .line 2
    const/high16 v0, -0x80000000

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 6
    .line 7
    const/high16 v0, 0x4000000

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    const/16 v0, 0x500

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 24
    return-void
.end method

.method static bridge synthetic b(Landroid/app/Activity;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/util/statusbar/StatusBarUtils;->setSystemUiFlagLightStatusBar(Landroid/app/Activity;Z)V

    return-void
.end method

.method private static beginToSetStatusBarColor(Landroid/app/Activity;I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const v1, 0x1020002

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    check-cast v1, Landroid/view/ViewGroup;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    return-void

    .line 17
    .line 18
    :cond_0
    const/high16 v1, 0x4000000

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 22
    .line 23
    const/high16 v1, -0x80000000

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 38
    .line 39
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 43
    .line 44
    const/16 p1, 0x100

    .line 45
    const/4 v1, 0x1

    .line 46
    .line 47
    .line 48
    invoke-static {p0, v0, p1, v1, v1}, Lcom/narvii/util/statusbar/StatusBarUtils;->addFakeStatusBar(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;IZZ)V

    .line 49
    return-void
.end method

.method static bridge synthetic c(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;IZZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/util/statusbar/StatusBarUtils;->translucentStatusBar(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;IZZ)V

    return-void
.end method

.method private static createFakeStatusBar(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Lcom/narvii/util/statusbar/StatusBarLayout;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/lib/R$layout;->status_layout:I

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/util/statusbar/StatusBarLayout;

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lcom/narvii/util/statusbar/StatusBarUtils;->getFakeActionBarOffset(Landroid/app/Activity;)I

    .line 17
    move-result p0

    .line 18
    .line 19
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 20
    const/4 v2, -0x1

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v2, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 24
    .line 25
    const/16 p0, 0x30

    .line 26
    .line 27
    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    .line 33
    const/4 v1, 0x0

    .line 34
    .line 35
    .line 36
    invoke-static {p2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 37
    move-result p2

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0}, Lcom/narvii/util/statusbar/StatusBarLayout;->setStatusBarDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    return-object v0
.end method

.method private static getFakeActionBarDrawable(Lcom/narvii/app/NVContext;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Lcom/narvii/config/ConfigTheme;->fakeActionbarBackground()Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static getFakeActionBarOffset(Landroid/app/Activity;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-static {}, Lcom/narvii/util/statusbar/StatusBarUtils;->isAmazingDevice()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-static {p0}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 15
    move-result v0

    .line 16
    .line 17
    :goto_0
    instance-of v1, p0, Lcom/narvii/app/NVActivity;

    .line 18
    .line 19
    if-eqz v1, :cond_3

    .line 20
    move-object v1, p0

    .line 21
    .line 22
    check-cast v1, Lcom/narvii/app/NVActivity;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/narvii/app/NVActivity;->isActionBarOverlaying()Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    return v0

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-static {p0}, Lcom/narvii/util/statusbar/StatusBarUtils;->actionBarShown(Landroid/app/Activity;)Z

    .line 33
    move-result v1

    .line 34
    .line 35
    if-nez v1, :cond_3

    .line 36
    return v0

    .line 37
    .line 38
    .line 39
    :cond_3
    invoke-static {p0}, Lcom/narvii/util/Utils;->getActionBarHeight(Landroid/content/Context;)I

    .line 40
    move-result p0

    .line 41
    add-int/2addr v0, p0

    .line 42
    return v0
.end method

.method public static isAmazingDevice()Z
    .locals 2

    .line 1
    .line 2
    const-string v0, "PH-1"

    .line 3
    .line 4
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static setAsActionBar(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/util/statusbar/StatusBarUtils;->STATUS_BAR_ENABLE:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    if-eqz p0, :cond_2

    .line 8
    .line 9
    if-nez p1, :cond_1

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-static {p0}, Lcom/narvii/util/Utils;->getActionBarHeight(Landroid/content/Context;)I

    .line 14
    move-result v0

    .line 15
    move-object v1, p0

    .line 16
    .line 17
    check-cast v1, Lcom/narvii/app/NVActivity;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    .line 21
    move-result v1

    .line 22
    add-int/2addr v0, v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 29
    .line 30
    .line 31
    invoke-static {p0, p1}, Lcom/narvii/util/statusbar/StatusBarUtils;->addPaddingToChild(Landroid/app/Activity;Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    :cond_2
    :goto_0
    return-void
.end method

.method public static setStatusBarColor(Landroid/app/Activity;I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/util/statusbar/StatusBarUtils;->STATUS_BAR_ENABLE:Z

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    const v1, 0x1020002

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Landroid/view/ViewGroup;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    return-void

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 27
    move-result v1

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    new-instance v1, Lcom/narvii/util/statusbar/StatusBarUtils$1;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, p0, p1}, Lcom/narvii/util/statusbar/StatusBarUtils$1;-><init>(Landroid/app/Activity;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 48
    .line 49
    const/16 p1, 0x100

    .line 50
    const/4 v1, 0x1

    .line 51
    .line 52
    .line 53
    invoke-static {p0, v0, p1, v1, v1}, Lcom/narvii/util/statusbar/StatusBarUtils;->addFakeStatusBar(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;IZZ)V

    .line 54
    :cond_3
    :goto_0
    return-void
.end method

.method public static setStatusBarDrawable(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 7
    move-result-object p0

    .line 8
    .line 9
    .line 10
    const v0, 0x1020002

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    check-cast p0, Landroid/view/ViewGroup;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    return-void

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 28
    move-result v1

    .line 29
    .line 30
    if-ge v0, v1, :cond_3

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    instance-of v2, v1, Lcom/narvii/util/statusbar/StatusBarLayout;

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    :goto_1
    return-void
.end method

.method private static setSystemUiFlagLightStatusBar(Landroid/app/Activity;Z)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    or-int/lit16 p1, v0, 0x2000

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method public static setSystemUiFlagLightStatusBar(Lcom/narvii/app/NVContext;Z)V
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/narvii/app/NVActivity;

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p0, Lcom/narvii/app/NVFragment;

    if-eqz v0, :cond_2

    .line 4
    check-cast p0, Lcom/narvii/app/NVFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/narvii/util/statusbar/StatusBarUtils$3;

    invoke-direct {v1, p0, p1}, Lcom/narvii/util/statusbar/StatusBarUtils$3;-><init>(Landroid/app/Activity;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    :cond_2
    return-void
.end method

.method public static setTranslucentStatusBar(Lcom/narvii/app/NVContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/narvii/util/statusbar/StatusBarUtils;->setTranslucentStatusBar(Lcom/narvii/app/NVContext;I)V

    return-void
.end method

.method public static setTranslucentStatusBar(Lcom/narvii/app/NVContext;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-static {p0, v0, p1, v1}, Lcom/narvii/util/statusbar/StatusBarUtils;->setTranslucentStatusBar(Lcom/narvii/app/NVContext;Landroid/graphics/drawable/Drawable;IZ)V

    return-void
.end method

.method public static setTranslucentStatusBar(Lcom/narvii/app/NVContext;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4
    invoke-static {p0, p1, v0, v1}, Lcom/narvii/util/statusbar/StatusBarUtils;->setTranslucentStatusBar(Lcom/narvii/app/NVContext;Landroid/graphics/drawable/Drawable;IZ)V

    return-void
.end method

.method public static setTranslucentStatusBar(Lcom/narvii/app/NVContext;Landroid/graphics/drawable/Drawable;IZ)V
    .locals 5

    sget-boolean v0, Lcom/narvii/util/statusbar/StatusBarUtils;->STATUS_BAR_ENABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    instance-of v0, p0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_1

    .line 7
    move-object v0, p0

    check-cast v0, Lcom/narvii/app/NVActivity;

    goto :goto_0

    .line 8
    :cond_1
    instance-of v0, p0, Lcom/narvii/app/NVFragment;

    if-eqz v0, :cond_9

    .line 9
    move-object v0, p0

    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 10
    :cond_2
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 11
    move-object v3, v0

    check-cast v3, Lcom/narvii/app/NVActivity;

    invoke-virtual {v3, v2}, Lcom/narvii/app/NVActivity;->setActionBarCustomed(Z)V

    .line 12
    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x1020002

    .line 13
    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-nez p1, :cond_4

    .line 14
    invoke-static {p0}, Lcom/narvii/util/statusbar/StatusBarUtils;->getFakeActionBarDrawable(Lcom/narvii/app/NVContext;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_4
    if-eqz v3, :cond_9

    .line 15
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-nez p0, :cond_6

    sget p0, Lcom/narvii/lib/R$id;->window_attach_listener:I

    .line 16
    invoke-virtual {v3, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    if-eqz v1, :cond_5

    .line 17
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewTreeObserver;->removeOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    .line 18
    :cond_5
    new-instance v1, Lcom/narvii/util/statusbar/StatusBarUtils$2;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/narvii/util/statusbar/StatusBarUtils$2;-><init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;IZ)V

    .line 19
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    .line 20
    invoke-virtual {v3, p0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    sget p0, Lcom/narvii/lib/R$id;->window_attach_listener:I

    .line 21
    invoke-virtual {v3, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    if-eqz p0, :cond_7

    .line 22
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    :cond_7
    if-eqz v1, :cond_8

    .line 23
    move-object p0, v0

    check-cast p0, Lcom/narvii/app/NVActivity;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isActionBarOverlaying()Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    :goto_1
    invoke-static {v0, p1, p2, v2, p3}, Lcom/narvii/util/statusbar/StatusBarUtils;->translucentStatusBar(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;IZZ)V

    :cond_9
    :goto_2
    return-void
.end method

.method public static setTranslucentStatusBar(Lcom/narvii/app/NVContext;Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, p1, v0, p2}, Lcom/narvii/util/statusbar/StatusBarUtils;->setTranslucentStatusBar(Lcom/narvii/app/NVContext;Landroid/graphics/drawable/Drawable;IZ)V

    return-void
.end method

.method public static setTranslucentStatusBar(Lcom/narvii/app/NVContext;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1, p1}, Lcom/narvii/util/statusbar/StatusBarUtils;->setTranslucentStatusBar(Lcom/narvii/app/NVContext;Landroid/graphics/drawable/Drawable;IZ)V

    return-void
.end method

.method private static translucentStatusBar(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;IZZ)V
    .locals 2

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    const v1, 0x1020002

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Landroid/view/ViewGroup;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    move-result v1

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    return-void

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {v0}, Lcom/narvii/util/statusbar/StatusBarUtils;->addTranslucentFlags(Landroid/view/Window;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/util/statusbar/StatusBarUtils;->addFakeStatusBar(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;IZZ)V

    .line 30
    return-void
.end method
