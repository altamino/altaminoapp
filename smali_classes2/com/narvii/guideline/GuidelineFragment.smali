.class public Lcom/narvii/guideline/GuidelineFragment;
.super Lcom/narvii/list/NVListFragment;
.source "GuidelineFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;
    }
.end annotation


# static fields
.field static final COMMUNITY_GUIDE_TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

.field static final OFFICAL_GUIDE_TITLE:Lcom/narvii/detail/DetailAdapter$CellType;


# instance fields
.field communityGuideAdapter:Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;

.field private communityGuideFinished:Z

.field private communityResponse:Lcom/narvii/guideline/CommunityGuideLineResponse;

.field private mCid:I

.field private onlyShowCommunity:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const/4 v1, 0x0

    const-string v2, "guideline.title"

    invoke-direct {v0, v2, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/narvii/guideline/GuidelineFragment;->COMMUNITY_GUIDE_TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 47
    new-instance v0, Lcom/narvii/detail/DetailAdapter$CellType;

    const-string v2, "official.guideline.title"

    invoke-direct {v0, v2, v1}, Lcom/narvii/detail/DetailAdapter$CellType;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/narvii/guideline/GuidelineFragment;->OFFICAL_GUIDE_TITLE:Lcom/narvii/detail/DetailAdapter$CellType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/guideline/GuidelineFragment;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/narvii/guideline/GuidelineFragment;->communityGuideFinished:Z

    return p0
.end method

.method static synthetic access$002(Lcom/narvii/guideline/GuidelineFragment;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/narvii/guideline/GuidelineFragment;->communityGuideFinished:Z

    return p1
.end method

.method static synthetic access$100(Lcom/narvii/guideline/GuidelineFragment;)Lcom/narvii/guideline/CommunityGuideLineResponse;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/narvii/guideline/GuidelineFragment;->communityResponse:Lcom/narvii/guideline/CommunityGuideLineResponse;

    return-object p0
.end method

.method static synthetic access$102(Lcom/narvii/guideline/GuidelineFragment;Lcom/narvii/guideline/CommunityGuideLineResponse;)Lcom/narvii/guideline/CommunityGuideLineResponse;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/narvii/guideline/GuidelineFragment;->communityResponse:Lcom/narvii/guideline/CommunityGuideLineResponse;

    return-object p1
.end method

.method static synthetic access$200(Lcom/narvii/guideline/GuidelineFragment;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/narvii/guideline/GuidelineFragment;->mCid:I

    return p0
.end method

.method static synthetic access$300(Lcom/narvii/guideline/GuidelineFragment;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/narvii/guideline/GuidelineFragment;->onlyShowCommunity:Z

    return p0
.end method

.method private requestCommunityGuideline()V
    .locals 4

    .line 98
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v1, "/community/guideline"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget v1, p0, Lcom/narvii/guideline/GuidelineFragment;->mCid:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 100
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 101
    new-instance v2, Lcom/narvii/guideline/GuidelineFragment$1;

    const-class v3, Lcom/narvii/guideline/CommunityGuideLineResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/guideline/GuidelineFragment$1;-><init>(Lcom/narvii/guideline/GuidelineFragment;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 119
    new-instance p1, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;-><init>(Lcom/narvii/guideline/GuidelineFragment;)V

    iput-object p1, p0, Lcom/narvii/guideline/GuidelineFragment;->communityGuideAdapter:Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;

    .line 120
    iget-object p1, p0, Lcom/narvii/guideline/GuidelineFragment;->communityGuideAdapter:Lcom/narvii/guideline/GuidelineFragment$OfficialGuideAdapter;

    return-object p1
.end method

.method protected initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 2

    .line 249
    new-instance v0, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/narvii/nvplayerview/delegate/NVVideoListDelegate;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "config"

    .line 60
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 61
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    iput v0, p0, Lcom/narvii/guideline/GuidelineFragment;->mCid:I

    .line 62
    iget v0, p0, Lcom/narvii/guideline/GuidelineFragment;->mCid:I

    if-nez v0, :cond_0

    const-string v0, "id"

    .line 63
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/guideline/GuidelineFragment;->mCid:I

    :cond_0
    const-string v0, "title"

    .line 65
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0f0b0e

    .line 68
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v0, "onlyShowCommunity"

    .line 70
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/guideline/GuidelineFragment;->onlyShowCommunity:Z

    .line 71
    invoke-direct {p0}, Lcom/narvii/guideline/GuidelineFragment;->requestCommunityGuideline()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 91
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 92
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 93
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 80
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
