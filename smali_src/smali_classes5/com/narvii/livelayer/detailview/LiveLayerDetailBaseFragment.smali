.class public abstract Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;,
        Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;,
        Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$MemberListAdapterWithCapture;
    }
.end annotation


# instance fields
.field protected backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private header:Lcom/narvii/list/overlay/OverlayLayout;

.field protected mainListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;

.field protected memberAdapter:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

.field protected onlineCategoryConfig:Lcom/narvii/livelayer/category/OnlineCategoryConfig;

.field protected recommendListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$BaseRecommendedAdapter;

.field protected source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 3
    return-object p0
.end method

.method static bridge synthetic t(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;)Lcom/narvii/list/overlay/OverlayLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    return-object p0
.end method


# virtual methods
.method public createDefaultAdapter()Lcom/narvii/list/MergeAdapter;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/livelayer/detailview/HeaderLayout$TopAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/narvii/livelayer/detailview/HeaderLayout$TopAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 14
    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 7
    return-object v0
.end method

.method protected abstract getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;
.end method

.method public hasOnlineBar()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 7
    move-result p1

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 21
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->onlineCategoryConfig:Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 14
    .line 15
    .line 16
    invoke-direct {p1}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 17
    .line 18
    new-instance v0, Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    const-string v1, "chatInvite"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 42
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d04fa

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/livelayer/BackgroundHelper;->getDynamicBackground()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    .line 21
    const p3, 0x7f0a0e6d

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    check-cast p2, Lcom/github/mmin18/widget/RealtimeBlurLayout;

    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    .line 33
    move-result-object p3

    .line 34
    .line 35
    .line 36
    invoke-interface {p3}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->color()I

    .line 37
    move-result p3

    .line 38
    .line 39
    .line 40
    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    .line 41
    move-result v1

    .line 42
    .line 43
    .line 44
    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    .line 45
    move-result v2

    .line 46
    .line 47
    .line 48
    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    .line 49
    move-result p3

    .line 50
    .line 51
    const/16 v3, 0x99

    .line 52
    .line 53
    .line 54
    invoke-static {v3, v1, v2, p3}, Landroid/graphics/Color;->argb(IIII)I

    .line 55
    move-result p3

    .line 56
    .line 57
    const/high16 v1, 0x26000000

    .line 58
    .line 59
    .line 60
    invoke-static {p3, v1}, Landroidx/core/graphics/ColorUtils;->j(II)I

    .line 61
    move-result p3

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p3}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->setOverlayColor(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 68
    :cond_0
    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 12
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$3;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$3;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;)V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->mainListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;

    .line 8
    .line 9
    const/16 v2, 0x200

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2, v0}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->memberAdapter:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2, v0}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 22
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0ab1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/list/overlay/OverlayLayout;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    check-cast p2, Lcom/narvii/widget/NVListView;

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p1, p2}, Lcom/narvii/livelayer/detailview/HeaderLayout;->initHeadView(Lcom/narvii/app/NVFragment;Lcom/narvii/list/overlay/OverlayLayout;Lcom/narvii/widget/NVListView;)V

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 26
    .line 27
    .line 28
    const p2, 0x7f0a080c

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    check-cast p1, Lcom/narvii/livelayer/detailview/HeaderLayout;

    .line 35
    .line 36
    iget-object p2, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->onlineCategoryConfig:Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lcom/narvii/livelayer/detailview/HeaderLayout;->setViewInfo(Lcom/narvii/livelayer/category/OnlineCategoryConfig;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    if-eqz p2, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    .line 52
    const v0, 0x7f0a05ff

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    check-cast p2, Lcom/narvii/widget/SwipeableLayout;

    .line 59
    .line 60
    if-eqz p2, :cond_0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v0}, Lcom/narvii/widget/SwipeableLayout;->bindListView(Landroid/widget/AbsListView;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    const p2, 0x7f0a0079

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    check-cast p1, Lcom/narvii/widget/TintButton;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 82
    move-result-object p2

    .line 83
    .line 84
    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 85
    .line 86
    const-string v0, "fullScreenMode"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 90
    move-result v1

    .line 91
    const/4 v2, 0x0

    .line 92
    .line 93
    if-eqz v1, :cond_1

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 97
    move-result v1

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    move v1, v2

    .line 100
    .line 101
    :goto_0
    iput v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 105
    move-result v1

    .line 106
    .line 107
    iput v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    .line 112
    new-instance p2, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$1;

    .line 113
    .line 114
    .line 115
    invoke-direct {p2, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$1;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .line 120
    iget-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 121
    .line 122
    .line 123
    const p2, 0x7f0a097a

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    check-cast p1, Lcom/narvii/widget/TintButton;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 133
    move-result p2

    .line 134
    .line 135
    if-eqz p2, :cond_2

    .line 136
    const/4 v2, 0x4

    .line 137
    .line 138
    .line 139
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 143
    move-result-object p2

    .line 144
    .line 145
    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 149
    move-result v0

    .line 150
    .line 151
    iget v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 152
    sub-int/2addr v0, v1

    .line 153
    .line 154
    div-int/lit8 v0, v0, 0x2

    .line 155
    .line 156
    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    .line 161
    new-instance p2, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$2;

    .line 162
    .line 163
    .line 164
    invoke-direct {p2, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$2;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    return-void
.end method

.method public randomAnimView(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 4

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->k()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->getProgress()F

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    cmpl-float v0, v0, v1

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 26
    move-result-wide v0

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    const-wide v2, 0x3fd99999a0000000L    # 0.4000000059604645

    .line 32
    mul-double/2addr v0, v2

    .line 33
    double-to-float v0, v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->m()V

    .line 40
    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
