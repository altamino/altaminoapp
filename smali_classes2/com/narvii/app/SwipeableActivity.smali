.class public Lcom/narvii/app/SwipeableActivity;
.super Lcom/narvii/app/FragmentWrapperActivity;
.source "SwipeableActivity.java"

# interfaces
.implements Lcom/narvii/app/ISwipeableActivity;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/amino/CommunityJoinBarFragment$OnCommunityActionClickListener;


# instance fields
.field bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/narvii/app/FragmentWrapperActivity;-><init>()V

    return-void
.end method

.method private getCommunityActionBarLogContext()Lcom/narvii/app/NVContext;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->getRootFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVContext;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->getRootFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVContext;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getActionBarOverlaySize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getFragmentLayoutId()I
    .locals 1

    const v0, 0x7f0904b9

    return v0
.end method

.method public getStatusBarOverlaySize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasDrawer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasPostEntry()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPagebackgroundEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 104
    invoke-super {p0}, Lcom/narvii/app/FragmentWrapperActivity;->onBackPressed()V

    const/4 v0, 0x0

    const v1, 0x7f01000d

    .line 105
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09005c

    if-eq p1, v0, :cond_0

    const v0, 0x7f09025e

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->finish()V

    const/4 p1, 0x0

    const v0, 0x7f01000d

    .line 97
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 33
    invoke-super {p0, p1}, Lcom/narvii/app/FragmentWrapperActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f0b047c

    .line 37
    invoke-virtual {p0, p1}, Lcom/narvii/app/theme/NVThemeActivity;->setContentView(I)V

    const p1, 0x7f090b2f

    .line 39
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/RoundFrameLayout;

    .line 40
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0702c1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/16 v2, 0x8

    new-array v2, v2, [F

    int-to-float v0, v0

    aput v0, v2, v1

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v3, 0x2

    aput v0, v2, v3

    const/4 v3, 0x3

    aput v0, v2, v3

    const/4 v0, 0x0

    const/4 v4, 0x4

    aput v0, v2, v4

    const/4 v4, 0x5

    aput v0, v2, v4

    const/4 v4, 0x6

    aput v0, v2, v4

    const/4 v4, 0x7

    aput v0, v2, v4

    .line 41
    invoke-virtual {p1, v2}, Lcom/narvii/widget/RoundFrameLayout;->setCornerRadius([F)V

    .line 42
    invoke-static {p1}, Landroid/support/design/widget/BottomSheetBehavior;->from(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/app/SwipeableActivity;->bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    .line 43
    iget-object p1, p0, Lcom/narvii/app/SwipeableActivity;->bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {p1, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    .line 44
    iget-object p1, p0, Lcom/narvii/app/SwipeableActivity;->bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {p1, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 45
    iget-object p1, p0, Lcom/narvii/app/SwipeableActivity;->bottomSheetBehavior:Landroid/support/design/widget/BottomSheetBehavior;

    new-instance v0, Lcom/narvii/app/SwipeableActivity$1;

    invoke-direct {v0, p0}, Lcom/narvii/app/SwipeableActivity$1;-><init>(Lcom/narvii/app/SwipeableActivity;)V

    invoke-virtual {p1, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setBottomSheetCallback(Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;)V

    const p1, 0x7f09025e

    .line 60
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09005c

    .line 61
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isGlobalInteractionScope()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "preview"

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 64
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "_join_bar_community"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/amino/CommunityJoinBarFragment;->attachTo(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Lcom/narvii/amino/CommunityJoinBarFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1, p0}, Lcom/narvii/amino/CommunityJoinBarFragment;->setOnCommunityActionClickListener(Lcom/narvii/amino/CommunityJoinBarFragment$OnCommunityActionClickListener;)V

    :cond_0
    return-void
.end method

.method public onEnterCommunity(Lcom/narvii/model/Community;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Lcom/narvii/app/SwipeableActivity;->getCommunityActionBarLogContext()Lcom/narvii/app/NVContext;

    move-result-object p1

    sget-object v0, Lcom/narvii/logging/ActSemantic;->aminoEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "CommunityBar"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method public onJoinCommunity(Lcom/narvii/model/Community;)V
    .locals 1

    .line 110
    invoke-direct {p0}, Lcom/narvii/app/SwipeableActivity;->getCommunityActionBarLogContext()Lcom/narvii/app/NVContext;

    move-result-object p1

    sget-object v0, Lcom/narvii/logging/ActSemantic;->aminoJoin:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "CommunityBar"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method
