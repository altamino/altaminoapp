.class public Lcom/narvii/user/profile/BioDetailFragment;
.super Lcom/narvii/detail/DetailFragment;
.source "BioDetailFragment.java"

# interfaces
.implements Lcom/narvii/theme/IFakeActionBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;,
        Lcom/narvii/user/profile/BioDetailFragment$CommentAdapter;,
        Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;
    }
.end annotation


# static fields
.field static final FOLLOWERS_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

.field static final MY_FOLLOWERS_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;


# instance fields
.field private actionBarOverlay:Landroid/view/View;

.field public bioAdapter:Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;

.field bioMedias:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field public commentAdapter:Lcom/narvii/user/profile/BioDetailFragment$CommentAdapter;

.field fakeActionBar:Landroid/view/View;

.field private topAdapter:Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 71
    new-instance v0, Lcom/narvii/detail/DetailAdapter$HeaderTag;

    const-string v1, "profile.my_followers.header"

    const v2, 0x7f0f112b

    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$HeaderTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/user/profile/BioDetailFragment;->FOLLOWERS_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 72
    new-instance v0, Lcom/narvii/detail/DetailAdapter$HeaderTag;

    const v2, 0x7f0f112f

    invoke-direct {v0, v1, v2}, Lcom/narvii/detail/DetailAdapter$HeaderTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/narvii/user/profile/BioDetailFragment;->MY_FOLLOWERS_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/narvii/detail/DetailFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/user/profile/BioDetailFragment;Ljava/lang/Object;)Z
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/narvii/detail/DetailFragment;->shouldBlockClick(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/user/profile/BioDetailFragment;Ljava/lang/Object;)Z
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/narvii/detail/DetailFragment;->shouldBlockClick(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/narvii/user/profile/BioDetailFragment;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/narvii/user/profile/BioDetailFragment;->updateBackground()V

    return-void
.end method

.method static synthetic access$1100(Lcom/narvii/user/profile/BioDetailFragment;)Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/narvii/user/profile/BioDetailFragment;->topAdapter:Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/user/profile/BioDetailFragment;)Z
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/narvii/user/profile/BioDetailFragment;->hasBackgroundOrUseGlobalTheme()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/narvii/user/profile/BioDetailFragment;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/narvii/detail/DetailFragment;->disabled:Z

    return p0
.end method

.method static synthetic access$500(Lcom/narvii/user/profile/BioDetailFragment;)Landroid/view/View;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/narvii/user/profile/BioDetailFragment;->actionBarOverlay:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/user/profile/BioDetailFragment;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/narvii/detail/DetailFragment;->disabled:Z

    return p0
.end method

.method static synthetic access$702(Lcom/narvii/user/profile/BioDetailFragment;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/narvii/detail/DetailFragment;->_hasBackground:Z

    return p1
.end method

.method static synthetic access$802(Lcom/narvii/user/profile/BioDetailFragment;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/narvii/detail/DetailFragment;->_isBackgroundDark:Z

    return p1
.end method

.method static synthetic access$902(Lcom/narvii/user/profile/BioDetailFragment;I)I
    .locals 0

    .line 70
    iput p1, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    return p1
.end method

.method private hasBackgroundOrUseGlobalTheme()Z
    .locals 1

    .line 529
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->hasBackground()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isBioDetailDarkTheme()Z
    .locals 1

    .line 521
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->hasBackground()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 524
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    move-result v0

    return v0
.end method

.method private updateBackground()V
    .locals 4

    .line 505
    invoke-virtual {p0}, Lcom/narvii/user/profile/BioDetailFragment;->updateFakeActionBarThemeUI()V

    .line 506
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment;->bioAdapter:Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;

    if-eqz v0, :cond_0

    .line 507
    iget-object v1, p0, Lcom/narvii/detail/DetailFragment;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/narvii/image/BackgroundSource;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/image/BackgroundSource;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/narvii/widget/FullscreenBackgroundView;->setBackgroundSource([Lcom/narvii/image/BackgroundSource;)V

    .line 509
    :cond_0
    invoke-direct {p0}, Lcom/narvii/user/profile/BioDetailFragment;->isBioDetailDarkTheme()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment;->setDarkTheme(Z)V

    .line 511
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment;->bioAdapter:Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;

    if-eqz v0, :cond_1

    .line 512
    invoke-direct {p0}, Lcom/narvii/user/profile/BioDetailFragment;->isBioDetailDarkTheme()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment;->commentAdapter:Lcom/narvii/user/profile/BioDetailFragment$CommentAdapter;

    if-eqz v0, :cond_2

    .line 516
    invoke-direct {p0}, Lcom/narvii/user/profile/BioDetailFragment;->isBioDetailDarkTheme()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 5

    .line 83
    new-instance p1, Lcom/narvii/user/profile/BioDetailFragment$1;

    invoke-direct {p1, p0, p0}, Lcom/narvii/user/profile/BioDetailFragment$1;-><init>(Lcom/narvii/user/profile/BioDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 103
    new-instance v0, Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;-><init>(Lcom/narvii/user/profile/BioDetailFragment;Lcom/narvii/user/profile/BioDetailFragment$1;)V

    iput-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment;->topAdapter:Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;

    .line 104
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment;->topAdapter:Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    new-instance v3, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 105
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment;->topAdapter:Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    new-instance v0, Lcom/narvii/adapter/MarginAdapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, p0, v2}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 108
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    new-instance v0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;-><init>(Lcom/narvii/user/profile/BioDetailFragment;)V

    iput-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment;->bioAdapter:Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;

    .line 111
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment;->bioAdapter:Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->setShowBioOnly(Z)V

    .line 112
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment;->bioAdapter:Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 114
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/narvii/user/profile/BioDetailFragment$CommentAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/user/profile/BioDetailFragment$CommentAdapter;-><init>(Lcom/narvii/user/profile/BioDetailFragment;)V

    iput-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment;->commentAdapter:Lcom/narvii/user/profile/BioDetailFragment$CommentAdapter;

    .line 116
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment;->commentAdapter:Lcom/narvii/user/profile/BioDetailFragment$CommentAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-object p1
.end method

.method public editProfile(Ljava/lang/String;)V
    .locals 5

    .line 168
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 169
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v1, "api"

    .line 171
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 172
    iget-object v2, p0, Lcom/narvii/user/profile/BioDetailFragment;->bioAdapter:Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;

    invoke-virtual {v2}, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->createRequest()Lcom/narvii/util/http/ApiRequest;

    move-result-object v2

    new-instance v3, Lcom/narvii/user/profile/BioDetailFragment$3;

    const-class v4, Lcom/narvii/model/api/UserResponse;

    invoke-direct {v3, p0, v4, v0, p1}, Lcom/narvii/user/profile/BioDetailFragment$3;-><init>(Lcom/narvii/user/profile/BioDetailFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000c

    return v0
.end method

.method protected initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 2

    .line 534
    new-instance v0, Lcom/narvii/nvplayer/delegate/FeedDetailVideoDelegate;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/nvplayer/delegate/FeedDetailVideoDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    return-object v0
.end method

.method public isMe()Z
    .locals 2

    const-string v0, "account"

    .line 239
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 240
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected observeThemeDownloadFinish()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 147
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 148
    invoke-virtual {p0}, Lcom/narvii/user/profile/BioDetailFragment;->isMe()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-nez p1, :cond_0

    .line 149
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/FragmentWrapperActivity;

    const v0, 0x7f0f03cd

    .line 150
    new-instance v1, Lcom/narvii/user/profile/BioDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/narvii/user/profile/BioDetailFragment$2;-><init>(Lcom/narvii/user/profile/BioDetailFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment;->bioAdapter:Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;

    const-string v1, "collectionId"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->commentNew(Ljava/lang/String;)V

    .line 164
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 124
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0f0168

    .line 125
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 127
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-static {v0}, Lcom/narvii/master/theme/MasterThemeExtensionKt;->addMasterThemeFragment(Landroid/support/v4/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b047f

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 202
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 203
    instance-of p2, p1, Lcom/narvii/widget/NVListView;

    if-eqz p2, :cond_0

    .line 204
    check-cast p1, Lcom/narvii/widget/NVListView;

    new-instance p2, Lcom/narvii/user/profile/BioDetailFragment$4;

    invoke-direct {p2, p0}, Lcom/narvii/user/profile/BioDetailFragment$4;-><init>(Lcom/narvii/user/profile/BioDetailFragment;)V

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x7f090416

    .line 233
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment;->fakeActionBar:Landroid/view/View;

    const v0, 0x7f090031

    .line 234
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment;->actionBarOverlay:Landroid/view/View;

    .line 235
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public updateFakeActionBarThemeUI()V
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment;->fakeActionBar:Landroid/view/View;

    if-eqz v0, :cond_2

    const-string v0, "config"

    .line 540
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 541
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->fakeActionbarBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 542
    iget-object v1, p0, Lcom/narvii/user/profile/BioDetailFragment;->fakeActionBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 543
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment;->fakeActionBar:Landroid/view/View;

    invoke-direct {p0}, Lcom/narvii/user/profile/BioDetailFragment;->hasBackgroundOrUseGlobalTheme()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/narvii/detail/DetailFragment;->disabled:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
