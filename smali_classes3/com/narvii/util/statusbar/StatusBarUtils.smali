.class public Lcom/narvii/util/statusbar/StatusBarUtils;
.super Ljava/lang/Object;
.source "StatusBarUtils.java"


# static fields
.field public static final STATUS_BAR_ENABLE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/narvii/util/statusbar/StatusBarUtils;->STATUS_BAR_ENABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;I)V
    .locals 0

    .line 34
    invoke-static {p0, p1}, Lcom/narvii/util/statusbar/StatusBarUtils;->beginToSetStatusBarColor(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;IZZ)V
    .locals 0

    .line 34
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/util/statusbar/StatusBarUtils;->translucentStatusBar(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;IZZ)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/Activity;Z)V
    .locals 0

    .line 34
    invoke-static {p0, p1}, Lcom/narvii/util/statusbar/StatusBarUtils;->setSystemUiFlagLightStatusBar(Landroid/app/Activity;Z)V

    return-void
.end method

.method private static actionBarShown(Landroid/app/Activity;)Z
    .locals 1

    .line 342
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActionBar;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

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

    .line 229
    invoke-static/range {v0 .. v5}, Lcom/narvii/util/statusbar/StatusBarUtils;->addFakeStatusBar(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;IZZZ)V

    return-void
.end method

.method private static addFakeStatusBar(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;IZZZ)V
    .locals 8

    if-eqz p0, :cond_10

    if-nez p1, :cond_0

    goto/16 :goto_8

    .line 235
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    .line 236
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 237
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 239
    :cond_1
    invoke-static {p0}, Lcom/narvii/util/statusbar/StatusBarUtils;->actionBarShown(Landroid/app/Activity;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-nez p3, :cond_2

    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    .line 241
    :goto_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    sget v5, Lcom/narvii/lib/R$id;->flag_fake_status:I

    invoke-virtual {v2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 242
    instance-of v5, v2, Ljava/lang/Boolean;

    if-eqz v5, :cond_3

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_8

    .line 244
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-lez p0, :cond_4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of p0, p0, Lcom/narvii/theme/PageBackgroundView;

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    .line 245
    :goto_2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    if-le p4, v3, :cond_5

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    :goto_3
    if-eqz p0, :cond_6

    .line 246
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 p5, 0x2

    if-le p0, p5, :cond_6

    .line 247
    invoke-virtual {v1, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 249
    :cond_6
    instance-of p0, p4, Lcom/narvii/util/statusbar/StatusBarLayout;

    if-eqz p0, :cond_10

    if-eqz p3, :cond_7

    goto :goto_4

    .line 250
    :cond_7
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_4
    invoke-virtual {p4, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    check-cast p4, Lcom/narvii/util/statusbar/StatusBarLayout;

    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p4, p0}, Lcom/narvii/util/statusbar/StatusBarLayout;->setStatusBarDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 255
    :cond_8
    instance-of v2, p0, Lcom/narvii/app/NVActivity;

    if-eqz v2, :cond_9

    .line 256
    move-object v2, p0

    check-cast v2, Lcom/narvii/app/NVActivity;

    invoke-virtual {v2}, Lcom/narvii/app/NVActivity;->shouldShowPageBackground()Z

    move-result v2

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    .line 259
    :goto_5
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v2, :cond_c

    .line 261
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ne v2, v3, :cond_a

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v6, Lcom/narvii/lib/R$id;->page_background:I

    invoke-virtual {v2, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    return-void

    :cond_a
    const/4 v2, 0x0

    .line 264
    :goto_6
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_c

    .line 265
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 266
    sget v7, Lcom/narvii/lib/R$id;->page_background:I

    invoke-virtual {v6, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_b

    move-object v5, v6

    goto :goto_7

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 272
    :cond_c
    :goto_7
    invoke-static {v5, v4}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    if-nez p3, :cond_d

    if-nez p4, :cond_d

    .line 273
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-direct {p1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 274
    :cond_d
    invoke-static {p0, p1, p2}, Lcom/narvii/util/statusbar/StatusBarUtils;->createFakeStatusBar(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Lcom/narvii/util/statusbar/StatusBarLayout;

    move-result-object p1

    .line 276
    invoke-virtual {v1, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    if-eqz p3, :cond_e

    .line 277
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 278
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    :cond_e
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$id;->flag_fake_status:I

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 281
    invoke-static {p0}, Lcom/narvii/util/statusbar/StatusBarUtils;->getFakeActionBarOffset(Landroid/app/Activity;)I

    move-result p0

    if-eqz p5, :cond_10

    if-nez p3, :cond_f

    if-nez p4, :cond_f

    const/4 p0, 0x0

    .line 284
    :cond_f
    invoke-static {v5, p0}, Lcom/narvii/util/statusbar/StatusBarUtils;->addMarginTopToContentChild(Landroid/view/View;I)V

    :cond_10
    :goto_8
    return-void
.end method

.method public static addMarginTopToContentChild(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 324
    sget-boolean v0, Lcom/narvii/util/statusbar/StatusBarUtils;->STATUS_BAR_ENABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 325
    :cond_0
    invoke-static {p0}, Lcom/narvii/util/statusbar/StatusBarUtils;->getFakeActionBarOffset(Landroid/app/Activity;)I

    move-result p0

    .line 326
    invoke-static {p1, p0}, Lcom/narvii/util/statusbar/StatusBarUtils;->addMarginTopToContentChild(Landroid/view/View;I)V

    return-void
.end method

.method public static addMarginTopToContentChild(Landroid/view/View;I)V
    .locals 2

    .line 330
    sget-boolean v0, Lcom/narvii/util/statusbar/StatusBarUtils;->STATUS_BAR_ENABLE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 334
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 335
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 336
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 337
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static addPaddingToChild(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    check-cast p0, Lcom/narvii/app/NVActivity;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    move-result p0

    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static addTranslucentFlags(Landroid/view/Window;)V
    .locals 3

    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x4000000

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    const/high16 v0, -0x80000000

    .line 216
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 217
    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 219
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 222
    invoke-virtual {p0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static beginToSetStatusBarColor(Landroid/app/Activity;I)V
    .locals 4

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    return-void

    .line 67
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/high16 v3, 0x4000000

    if-lt v1, v2, :cond_1

    .line 68
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v1, -0x80000000

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 70
    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 71
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 73
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 75
    :cond_2
    :goto_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/16 p1, 0x100

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v1}, Lcom/narvii/util/statusbar/StatusBarUtils;->addFakeStatusBar(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;IZZ)V

    return-void
.end method

.method private static createFakeStatusBar(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Lcom/narvii/util/statusbar/StatusBarLayout;
    .locals 3

    .line 291
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$layout;->status_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/statusbar/StatusBarLayout;

    .line 292
    invoke-static {p0}, Lcom/narvii/util/statusbar/StatusBarUtils;->getFakeActionBarOffset(Landroid/app/Activity;)I

    move-result p0

    .line 293
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p0, 0x30

    .line 294
    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 295
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-static {p2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-direct {p0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/narvii/util/statusbar/StatusBarLayout;->setStatusBarDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private static getFakeActionBarDrawable(Lcom/narvii/app/NVContext;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "config"

    .line 302
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/config/ConfigService;

    .line 303
    invoke-virtual {p0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object p0

    invoke-interface {p0}, Lcom/narvii/config/ConfigTheme;->fakeActionbarBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static getFakeActionBarOffset(Landroid/app/Activity;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 309
    :cond_0
    invoke-static {}, Lcom/narvii/util/statusbar/StatusBarUtils;->isAmazingDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 310
    :goto_0
    instance-of v1, p0, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_3

    .line 311
    move-object v1, p0

    check-cast v1, Lcom/narvii/app/NVActivity;

    invoke-virtual {v1}, Lcom/narvii/app/NVActivity;->isActionBarOverlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 314
    :cond_2
    invoke-static {p0}, Lcom/narvii/util/statusbar/StatusBarUtils;->actionBarShown(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 319
    :cond_3
    invoke-static {p0}, Lcom/narvii/util/Utils;->getActionBarHeight(Landroid/content/Context;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static isAmazingDevice()Z
    .locals 2

    .line 379
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "PH-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setAsActionBar(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .line 352
    sget-boolean v0, Lcom/narvii/util/statusbar/StatusBarUtils;->STATUS_BAR_ENABLE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 354
    :cond_1
    invoke-static {p0}, Lcom/narvii/util/Utils;->getActionBarHeight(Landroid/content/Context;)I

    move-result v0

    move-object v1, p0

    check-cast v1, Lcom/narvii/app/NVActivity;

    invoke-virtual {v1}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    move-result v1

    add-int/2addr v0, v1

    .line 355
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 356
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 357
    invoke-static {p0, p1}, Lcom/narvii/util/statusbar/StatusBarUtils;->addPaddingToChild(Landroid/app/Activity;Landroid/view/View;)V

    .line 358
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static setStatusBarColor(Landroid/app/Activity;I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 40
    sget-boolean v0, Lcom/narvii/util/statusbar/StatusBarUtils;->STATUS_BAR_ENABLE:Z

    if-eqz v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

    .line 46
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 47
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/narvii/util/statusbar/StatusBarUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/util/statusbar/StatusBarUtils$1;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    goto :goto_0

    .line 59
    :cond_2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/16 p1, 0x100

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v1}, Lcom/narvii/util/statusbar/StatusBarUtils;->addFakeStatusBar(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;IZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static setStatusBarDrawable(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 365
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const v0, 0x1020002

    .line 366
    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 367
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 368
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 369
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 370
    instance-of v2, v1, Lcom/narvii/util/statusbar/StatusBarLayout;

    if-eqz v2, :cond_2

    .line 371
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private static setSystemUiFlagLightStatusBar(Landroid/app/Activity;Z)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 187
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 189
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_0

    and-int/lit8 p1, v0, -0x1

    or-int/lit16 p1, p1, 0x2000

    .line 193
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    or-int/lit16 p1, p1, 0x2000

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    and-int/lit16 p1, v0, 0x2000

    or-int/lit8 p1, p1, -0x1

    .line 197
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    or-int/lit8 p1, p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method public static setSystemUiFlagLightStatusBar(Lcom/narvii/app/NVContext;Z)V
    .locals 2

    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 158
    instance-of v0, p0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_0

    .line 159
    check-cast p0, Lcom/narvii/app/NVActivity;

    goto :goto_0

    .line 160
    :cond_0
    instance-of v0, p0, Lcom/narvii/app/NVFragment;

    if-eqz v0, :cond_2

    .line 161
    check-cast p0, Lcom/narvii/app/NVFragment;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    return-void

    .line 167
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    .line 168
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 170
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/narvii/util/statusbar/StatusBarUtils$3;

    invoke-direct {v1, p0, p1}, Lcom/narvii/util/statusbar/StatusBarUtils$3;-><init>(Landroid/app/Activity;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    nop

    :cond_2
    return-void
.end method

.method public static setTranslucentStatusBar(Lcom/narvii/app/NVContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-static {p0, v0}, Lcom/narvii/util/statusbar/StatusBarUtils;->setTranslucentStatusBar(Lcom/narvii/app/NVContext;I)V

    return-void
.end method

.method public static setTranslucentStatusBar(Lcom/narvii/app/NVContext;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 83
    invoke-static {p0, v0, p1, v1}, Lcom/narvii/util/statusbar/StatusBarUtils;->setTranslucentStatusBar(Lcom/narvii/app/NVContext;Landroid/graphics/drawable/Drawable;IZ)V

    return-void
.end method

.method public static setTranslucentStatusBar(Lcom/narvii/app/NVContext;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 91
    invoke-static {p0, p1, v0, v1}, Lcom/narvii/util/statusbar/StatusBarUtils;->setTranslucentStatusBar(Lcom/narvii/app/NVContext;Landroid/graphics/drawable/Drawable;IZ)V

    return-void
.end method

.method public static setTranslucentStatusBar(Lcom/narvii/app/NVContext;Landroid/graphics/drawable/Drawable;IZ)V
    .locals 5

    .line 104
    sget-boolean v0, Lcom/narvii/util/statusbar/StatusBarUtils;->STATUS_BAR_ENABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    instance-of v0, p0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_1

    .line 109
    move-object v0, p0

    check-cast v0, Lcom/narvii/app/NVActivity;

    goto :goto_0

    .line 110
    :cond_1
    instance-of v0, p0, Lcom/narvii/app/NVFragment;

    if-eqz v0, :cond_9

    .line 111
    move-object v0, p0

    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 117
    :cond_2
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 118
    move-object v3, v0

    check-cast v3, Lcom/narvii/app/NVActivity;

    invoke-virtual {v3, v2}, Lcom/narvii/app/NVActivity;->setActionBarCustomed(Z)V

    .line 120
    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x1020002

    .line 121
    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-nez p1, :cond_4

    .line 123
    invoke-static {p0}, Lcom/narvii/util/statusbar/StatusBarUtils;->getFakeActionBarDrawable(Lcom/narvii/app/NVContext;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 125
    :cond_4
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-nez p0, :cond_6

    .line 127
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt p0, v1, :cond_9

    .line 128
    sget p0, Lcom/narvii/lib/R$id;->window_attach_listener:I

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    if-eqz p0, :cond_5

    .line 130
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    .line 132
    :cond_5
    new-instance p0, Lcom/narvii/util/statusbar/StatusBarUtils$2;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/narvii/util/statusbar/StatusBarUtils$2;-><init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;IZ)V

    .line 143
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    .line 144
    sget p1, Lcom/narvii/lib/R$id;->window_attach_listener:I

    invoke-virtual {v3, p1, p0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    goto :goto_2

    .line 147
    :cond_6
    sget p0, Lcom/narvii/lib/R$id;->window_attach_listener:I

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    if-eqz p0, :cond_7

    .line 149
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V

    :cond_7
    if-eqz v1, :cond_8

    .line 151
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

    .line 95
    invoke-static {p0, p1, v0, p2}, Lcom/narvii/util/statusbar/StatusBarUtils;->setTranslucentStatusBar(Lcom/narvii/app/NVContext;Landroid/graphics/drawable/Drawable;IZ)V

    return-void
.end method

.method public static setTranslucentStatusBar(Lcom/narvii/app/NVContext;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-static {p0, v0, v1, p1}, Lcom/narvii/util/statusbar/StatusBarUtils;->setTranslucentStatusBar(Lcom/narvii/app/NVContext;Landroid/graphics/drawable/Drawable;IZ)V

    return-void
.end method

.method private static translucentStatusBar(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;IZZ)V
    .locals 2

    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    .line 206
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 207
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 209
    :cond_1
    invoke-static {v0}, Lcom/narvii/util/statusbar/StatusBarUtils;->addTranslucentFlags(Landroid/view/Window;)V

    .line 211
    invoke-static {p0, p1, p2, p3, p4}, Lcom/narvii/util/statusbar/StatusBarUtils;->addFakeStatusBar(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;IZZ)V

    :cond_2
    :goto_0
    return-void
.end method
