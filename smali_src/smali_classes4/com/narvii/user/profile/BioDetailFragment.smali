.class public Lcom/narvii/user/profile/BioDetailFragment;
.super Lcom/narvii/detail/DetailFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/theme/IFakeActionBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;,
        Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;,
        Lcom/narvii/user/profile/BioDetailFragment$CommentAdapter;
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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f121236

    .line 6
    .line 7
    const-string v2, "profile.my_followers.header"

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v2, v1}, Lcom/narvii/detail/DetailAdapter$HeaderTag;-><init>(Ljava/lang/String;I)V

    .line 11
    .line 12
    sput-object v0, Lcom/narvii/user/profile/BioDetailFragment;->FOLLOWERS_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 15
    .line 16
    .line 17
    const v1, 0x7f12123a

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v2, v1}, Lcom/narvii/detail/DetailAdapter$HeaderTag;-><init>(Ljava/lang/String;I)V

    .line 21
    .line 22
    sput-object v0, Lcom/narvii/user/profile/BioDetailFragment;->MY_FOLLOWERS_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/detail/DetailFragment;-><init>()V

    .line 4
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/user/profile/BioDetailFragment;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/detail/DetailFragment;->shouldBlockClick(Ljava/lang/Object;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$100(Lcom/narvii/user/profile/BioDetailFragment;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/detail/DetailFragment;->shouldBlockClick(Ljava/lang/Object;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$200(Lcom/narvii/user/profile/BioDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/detail/DetailFragment;->disabled:Z

    .line 3
    return p0
.end method

.method static synthetic access$300(Lcom/narvii/user/profile/BioDetailFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/detail/DetailFragment;->disabled:Z

    .line 3
    return p0
.end method

.method static synthetic access$402(Lcom/narvii/user/profile/BioDetailFragment;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/detail/DetailFragment;->_hasBackground:Z

    .line 3
    return p1
.end method

.method static synthetic access$502(Lcom/narvii/user/profile/BioDetailFragment;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/detail/DetailFragment;->_isBackgroundDark:Z

    .line 3
    return p1
.end method

.method static synthetic access$602(Lcom/narvii/user/profile/BioDetailFragment;I)I
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    .line 3
    return p1
.end method

.method private hasBackgroundOrUseGlobalTheme()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->hasBackground()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method private isBioDetailDarkTheme()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->hasBackground()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailFragment;->isBackgroundColorDark()Z

    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method static bridge synthetic t(Lcom/narvii/user/profile/BioDetailFragment;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/user/profile/BioDetailFragment;->actionBarOverlay:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/user/profile/BioDetailFragment;)Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/user/profile/BioDetailFragment;->topAdapter:Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;

    return-object p0
.end method

.method private updateBackground()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/user/profile/BioDetailFragment;->updateFakeActionBarThemeUI()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment;->bioAdapter:Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/detail/DetailFragment;->backgroundView:Lcom/narvii/widget/FullscreenBackgroundView;

    .line 10
    const/4 v2, 0x1

    .line 11
    .line 12
    new-array v2, v2, [Lcom/narvii/image/BackgroundSource;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/image/BackgroundSource;

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    aput-object v0, v2, v3

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/narvii/widget/FullscreenBackgroundView;->setBackgroundSource([Lcom/narvii/image/BackgroundSource;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-direct {p0}, Lcom/narvii/user/profile/BioDetailFragment;->isBioDetailDarkTheme()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment;->setDarkTheme(Z)V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment;->bioAdapter:Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/narvii/user/profile/BioDetailFragment;->isBioDetailDarkTheme()Z

    .line 39
    move-result v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment;->commentAdapter:Lcom/narvii/user/profile/BioDetailFragment$CommentAdapter;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/narvii/user/profile/BioDetailFragment;->isBioDetailDarkTheme()Z

    .line 50
    move-result v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 54
    :cond_2
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/user/profile/BioDetailFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/user/profile/BioDetailFragment;->hasBackgroundOrUseGlobalTheme()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic w(Lcom/narvii/user/profile/BioDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/user/profile/BioDetailFragment;->updateBackground()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 5

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/user/profile/BioDetailFragment$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0, p0}, Lcom/narvii/user/profile/BioDetailFragment$1;-><init>(Lcom/narvii/user/profile/BioDetailFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;-><init>(Lcom/narvii/user/profile/BioDetailFragment;Lcom/narvii/user/profile/a;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment;->topAdapter:Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    new-array v2, v1, [Landroid/view/View;

    .line 17
    .line 18
    new-instance v3, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v4

    .line 23
    .line 24
    .line 25
    invoke-direct {v3, v4}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v4, 0x0

    .line 27
    .line 28
    aput-object v3, v2, v4

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment;->topAdapter:Lcom/narvii/user/profile/BioDetailFragment$TopAdapter;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 37
    .line 38
    new-instance v0, Lcom/narvii/adapter/MarginAdapter;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    const/high16 v3, 0x41200000    # 10.0f

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 48
    move-result v2

    .line 49
    float-to-int v2, v2

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, p0, v2}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    .line 57
    new-instance v0, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, p0}, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;-><init>(Lcom/narvii/user/profile/BioDetailFragment;)V

    .line 61
    .line 62
    iput-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment;->bioAdapter:Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 66
    move-result v2

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->setShowBioOnly(Z)V

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment;->bioAdapter:Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 78
    move-result v0

    .line 79
    .line 80
    if-nez v0, :cond_0

    .line 81
    .line 82
    new-instance v0, Lcom/narvii/user/profile/BioDetailFragment$CommentAdapter;

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, p0}, Lcom/narvii/user/profile/BioDetailFragment$CommentAdapter;-><init>(Lcom/narvii/user/profile/BioDetailFragment;)V

    .line 86
    .line 87
    iput-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment;->commentAdapter:Lcom/narvii/user/profile/BioDetailFragment$CommentAdapter;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    :cond_0
    return-object p1
.end method

.method public editProfile(Ljava/lang/String;)V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 13
    .line 14
    const-string v1, "api"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/user/profile/BioDetailFragment;->bioAdapter:Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->createRequest()Lcom/narvii/util/http/ApiRequest;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    new-instance v3, Lcom/narvii/user/profile/BioDetailFragment$3;

    .line 29
    .line 30
    const-class v4, Lcom/narvii/model/api/UserResponse;

    .line 31
    .line 32
    .line 33
    invoke-direct {v3, p0, v4, v0, p1}, Lcom/narvii/user/profile/BioDetailFragment$3;-><init>(Lcom/narvii/user/profile/BioDetailFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 37
    return-void
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method protected initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/nvplayer/delegate/FeedDetailVideoDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Lcom/narvii/nvplayer/delegate/FeedDetailVideoDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    .line 10
    return-object v0
.end method

.method public isMe()Z
    .locals 2

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "id"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
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
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/user/profile/BioDetailFragment;->isMe()Z

    .line 7
    move-result p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Lcom/narvii/app/FragmentWrapperActivity;

    .line 20
    .line 21
    new-instance v0, Lcom/narvii/user/profile/BioDetailFragment$2;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/narvii/user/profile/BioDetailFragment$2;-><init>(Lcom/narvii/user/profile/BioDetailFragment;)V

    .line 25
    .line 26
    .line 27
    const v1, 0x7f120438

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    .line 31
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x6f

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    const/4 v0, -0x1

    .line 6
    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment;->bioAdapter:Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;

    .line 10
    .line 11
    const-string v1, "collectionId"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/user/profile/BioDetailFragment$BioAdapter;->commentNew(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 22
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f1201a8

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/narvii/master/theme/MasterThemeExtensionKt;->addMasterThemeFragment(Landroidx/fragment/app/FragmentManager;)Lcom/narvii/master/theme/MasterThemeFragment;

    .line 25
    .line 26
    :cond_0
    if-nez p1, :cond_1

    .line 27
    .line 28
    const-string p1, "statistics"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 35
    .line 36
    const-string v0, "Looks at Bio Detail View"

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    const-string v0, "Looks at Bio Detail View Total"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    const-string v0, "Source"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 56
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d04ae

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    .line 5
    instance-of p2, p1, Lcom/narvii/widget/NVListView;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    check-cast p1, Lcom/narvii/widget/NVListView;

    .line 10
    .line 11
    new-instance p2, Lcom/narvii/user/profile/BioDetailFragment$4;

    .line 12
    .line 13
    .line 14
    invoke-direct {p2, p0}, Lcom/narvii/user/profile/BioDetailFragment$4;-><init>(Lcom/narvii/user/profile/BioDetailFragment;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 18
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0550

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment;->fakeActionBar:Landroid/view/View;

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a0061

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment;->actionBarOverlay:Landroid/view/View;

    .line 19
    .line 20
    .line 21
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 22
    return-void
.end method

.method public updateFakeActionBarThemeUI()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment;->fakeActionBar:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    const-string v0, "config"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->fakeActionbarBackground()Landroid/graphics/drawable/Drawable;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/user/profile/BioDetailFragment;->fakeActionBar:Landroid/view/View;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/user/profile/BioDetailFragment;->fakeActionBar:Landroid/view/View;

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/narvii/user/profile/BioDetailFragment;->hasBackgroundOrUseGlobalTheme()Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    iget-boolean v1, p0, Lcom/narvii/detail/DetailFragment;->disabled:Z

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 41
    move-result v1

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v1, 0x0

    .line 46
    goto :goto_1

    .line 47
    .line 48
    :cond_1
    :goto_0
    const/16 v1, 0x8

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :cond_2
    return-void
.end method
