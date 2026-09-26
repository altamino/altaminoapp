.class public Lcom/narvii/app/SwipeableActivity;
.super Lcom/narvii/app/FragmentWrapperActivity;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/ISwipeableActivity;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/amino/CommunityJoinBarFragment$OnCommunityActionClickListener;


# instance fields
.field bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/FragmentWrapperActivity;-><init>()V

    .line 4
    return-void
.end method

.method private getCommunityActionBarLogContext()Lcom/narvii/app/NVContext;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->getRootFragment()Landroidx/fragment/app/Fragment;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->getRootFragment()Landroidx/fragment/app/Fragment;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/app/NVContext;

    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
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

    const v0, 0x7f0a05fd

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

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/FragmentWrapperActivity;->onBackPressed()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f01000d

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 11
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a008e

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a0321

    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/FragmentWrapperActivity;->finish()V

    .line 19
    const/4 p1, 0x0

    .line 20
    .line 21
    .line 22
    const v0, 0x7f01000d

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 26
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/FragmentWrapperActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lcom/narvii/app/theme/NVThemeActivity;->setShouldInflateAd(Z)V

    .line 27
    .line 28
    .line 29
    const p1, 0x7f0d04ab

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/narvii/app/DrawerActivity;->setContentView(I)V

    .line 33
    .line 34
    .line 35
    const p1, 0x7f0a0e14

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    check-cast p1, Lcom/narvii/widget/RoundFrameLayout;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    const v2, 0x7f0704f6

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 56
    move-result v0

    .line 57
    .line 58
    const/16 v2, 0x8

    .line 59
    .line 60
    new-array v2, v2, [F

    .line 61
    int-to-float v0, v0

    .line 62
    .line 63
    aput v0, v2, v1

    .line 64
    const/4 v3, 0x1

    .line 65
    .line 66
    aput v0, v2, v3

    .line 67
    const/4 v3, 0x2

    .line 68
    .line 69
    aput v0, v2, v3

    .line 70
    const/4 v3, 0x3

    .line 71
    .line 72
    aput v0, v2, v3

    .line 73
    const/4 v0, 0x4

    .line 74
    const/4 v4, 0x0

    .line 75
    .line 76
    aput v4, v2, v0

    .line 77
    const/4 v0, 0x5

    .line 78
    .line 79
    aput v4, v2, v0

    .line 80
    const/4 v0, 0x6

    .line 81
    .line 82
    aput v4, v2, v0

    .line 83
    const/4 v0, 0x7

    .line 84
    .line 85
    aput v4, v2, v0

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v2}, Lcom/narvii/widget/RoundFrameLayout;->setCornerRadius([F)V

    .line 89
    .line 90
    .line 91
    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    iput-object p1, p0, Lcom/narvii/app/SwipeableActivity;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->V(I)V

    .line 98
    .line 99
    iget-object p1, p0, Lcom/narvii/app/SwipeableActivity;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Z(I)V

    .line 103
    .line 104
    iget-object p1, p0, Lcom/narvii/app/SwipeableActivity;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 105
    .line 106
    new-instance v0, Lcom/narvii/app/SwipeableActivity$1;

    .line 107
    .line 108
    .line 109
    invoke-direct {v0, p0}, Lcom/narvii/app/SwipeableActivity$1;-><init>(Lcom/narvii/app/SwipeableActivity;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;)V

    .line 113
    .line 114
    .line 115
    const p1, 0x7f0a0321

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    .line 124
    .line 125
    const p1, 0x7f0a008e

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isGlobalInteractionScope()Z

    .line 136
    move-result p1

    .line 137
    .line 138
    if-eqz p1, :cond_0

    .line 139
    .line 140
    const-string p1, "preview"

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    .line 144
    move-result p1

    .line 145
    .line 146
    if-nez p1, :cond_0

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    const-string v0, "_join_bar_community"

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    move-result-object v0

    .line 157
    .line 158
    .line 159
    invoke-static {p1, v0}, Lcom/narvii/amino/CommunityJoinBarFragment;->attachTo(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/narvii/amino/CommunityJoinBarFragment;

    .line 160
    move-result-object p1

    .line 161
    .line 162
    if-eqz p1, :cond_0

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, p0}, Lcom/narvii/amino/CommunityJoinBarFragment;->setOnCommunityActionClickListener(Lcom/narvii/amino/CommunityJoinBarFragment$OnCommunityActionClickListener;)V

    .line 166
    :cond_0
    return-void
.end method

.method public onEnterCommunity(Lcom/narvii/model/Community;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/SwipeableActivity;->getCommunityActionBarLogContext()Lcom/narvii/app/NVContext;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    sget-object v0, Lcom/narvii/logging/ActSemantic;->aminoEnter:Lcom/narvii/logging/ActSemantic;

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v0, "CommunityBar"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 20
    return-void
.end method

.method public onJoinCommunity(Lcom/narvii/model/Community;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/SwipeableActivity;->getCommunityActionBarLogContext()Lcom/narvii/app/NVContext;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    sget-object v0, Lcom/narvii/logging/ActSemantic;->aminoJoin:Lcom/narvii/logging/ActSemantic;

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v0, "CommunityBar"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 20
    return-void
.end method
