.class public abstract Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;
.super Lcom/narvii/list/NVListFragment;
.source "LiveLayerDetailBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;,
        Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;,
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

    .line 55
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;)Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/narvii/list/NVListFragment;->swipeLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;)Lcom/narvii/list/overlay/OverlayLayout;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    return-object p0
.end method


# virtual methods
.method public createDefaultAdapter()Lcom/narvii/list/MergeAdapter;
    .locals 2

    .line 153
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 155
    new-instance v1, Lcom/narvii/livelayer/detailview/HeaderLayout$TopAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/livelayer/detailview/HeaderLayout$TopAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 225
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method protected abstract getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;
.end method

.method public hasOnlineBar()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 188
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

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

    .line 162
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result p1

    if-nez p1, :cond_0

    .line 164
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 193
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 195
    invoke-virtual {p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->onlineCategoryConfig:Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    if-nez p1, :cond_0

    .line 198
    new-instance p1, Lcom/narvii/chat/invite/ChatInviteFragment;

    invoke-direct {p1}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 199
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 200
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 201
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "chatInvite"

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 p3, 0x0

    const v0, 0x7f0b04cd

    .line 82
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 84
    invoke-static {}, Lcom/narvii/livelayer/BackgroundHelper;->getDynamicBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 86
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const v0, 0x7f090b68

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/github/mmin18/widget/RealtimeBlurLayout;

    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/livelayer/category/OnlineCategoryConfig;->color()I

    move-result v0

    const/16 v1, 0x99

    .line 89
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    const/high16 v1, 0x26000000

    .line 90
    invoke-static {v0, v1}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v0

    .line 91
    invoke-virtual {p2, v0}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->setOverlayColor(I)V

    .line 92
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 208
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 209
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 210
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public onRefresh()V
    .locals 3

    .line 231
    new-instance v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$3;

    invoke-direct {v0, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$3;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;)V

    .line 244
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->mainListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;

    const/16 v2, 0x200

    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {v1, v2, v0}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->memberAdapter:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    if-eqz v1, :cond_1

    .line 248
    invoke-virtual {v1, v2, v0}, Lcom/narvii/user/favorite/NVRecycleViewWrapAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 101
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f09080a

    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/list/overlay/OverlayLayout;

    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    .line 106
    iget-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVListView;

    invoke-static {p0, p1, p2}, Lcom/narvii/livelayer/detailview/HeaderLayout;->initHeadView(Lcom/narvii/app/NVFragment;Lcom/narvii/list/overlay/OverlayLayout;Lcom/narvii/widget/NVListView;)V

    .line 108
    iget-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const p2, 0x7f090687

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/livelayer/detailview/HeaderLayout;

    .line 109
    iget-object p2, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->onlineCategoryConfig:Lcom/narvii/livelayer/category/OnlineCategoryConfig;

    invoke-virtual {p1, p2}, Lcom/narvii/livelayer/detailview/HeaderLayout;->setViewInfo(Lcom/narvii/livelayer/category/OnlineCategoryConfig;)V

    .line 111
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 112
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const v0, 0x7f0904ba

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/SwipeableLayout;

    if-eqz p2, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    invoke-virtual {p2, v0}, Lcom/narvii/widget/SwipeableLayout;->bindListView(Landroid/widget/AbsListView;)V

    :cond_0
    const p2, 0x7f090048

    .line 119
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TintButton;

    .line 120
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    const-string v0, "fullScreenMode"

    .line 121
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 122
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v1

    iput v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 123
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    new-instance p2, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$1;

    invoke-direct {p2, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$1;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const p2, 0x7f090718

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TintButton;

    .line 135
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v2, 0x4

    :cond_2
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 137
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v0

    iget v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 138
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance p2, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$2;

    invoke-direct {p2, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$2;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public randomAnimView(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->getProgress()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 175
    :try_start_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fd99999a0000000L    # 0.4000000059604645

    mul-double v0, v0, v2

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 181
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
