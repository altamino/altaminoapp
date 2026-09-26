.class public Lcom/narvii/master/CommunitySearchListFragment;
.super Lcom/narvii/community/BaseCommunitySearchListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/search/SwitchSearchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;,
        Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;,
        Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;,
        Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;,
        Lcom/narvii/master/CommunitySearchListFragment$MasterTrendingCommunityAdapter;,
        Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper;
    }
.end annotation


# static fields
.field public static final KEY_IS_RESUT_PAGE:Ljava/lang/String; = "key_result_page"

.field public static final KEY_PRE_QUERY_KEY:Ljava/lang/String; = "search_key"


# instance fields
.field aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

.field private hideMathIdAdapter:Z

.field languageManager:Lcom/narvii/language/LanguageManager;

.field languageService:Lcom/narvii/language/ContentLanguageService;

.field mergeAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;

.field myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

.field myCommunityRecyclerAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

.field private searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

.field searchKeywordHeaderAdapter:Lcom/narvii/master/search/trending/SectionHeaderAdapter;

.field searchResultCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;

.field private timestamp:Ljava/lang/String;

.field trendingCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterTrendingCommunityAdapter;

.field public userJoinedCommunityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field final users:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/community/CommunityUserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/community/BaseCommunitySearchListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->users:Ljava/util/HashMap;

    .line 11
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic access$1100(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic access$1200(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic access$1300(Lcom/narvii/master/CommunitySearchListFragment;Ljava/lang/String;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/community/search/BaseSearchListFragment;->isAminoCommunityLink(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$1402(Lcom/narvii/master/CommunitySearchListFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->searchLanguage:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method static synthetic access$1500(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->searchLanguage:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic access$1600(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/master/CommunitySearchListFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->showMyCommunity:Z

    .line 3
    return p0
.end method

.method static synthetic access$300(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lcom/narvii/master/CommunitySearchListFragment;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->pendingSearch:Z

    .line 3
    return p0
.end method

.method private enterCommunityDetail(Lcom/narvii/model/Community;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/master/CommunityHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string/jumbo v1, "search"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/master/CommunityHelper;->source(Ljava/lang/String;)Lcom/narvii/master/CommunityHelper;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    sget-object v1, Lcom/narvii/util/logging/LoggingOrigin;->Search:Lcom/narvii/util/logging/LoggingOrigin;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/narvii/master/CommunityHelper;->eventOrigin(Lcom/narvii/util/logging/LoggingOrigin;)Lcom/narvii/master/CommunityHelper;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/narvii/community/search/BaseSearchListFragment;->isInviteLink(Ljava/lang/String;)Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object p2, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1, p2}, Lcom/narvii/master/CommunityHelper;->communityDetailWithInviteUrl(Lcom/narvii/model/Community;Ljava/lang/String;)V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/narvii/master/CommunityHelper;->visitCommunity(Lcom/narvii/model/Community;Landroid/view/View;)V

    .line 35
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$0(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment;->changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1, v1}, Lcom/narvii/master/search/ChangeSearchTextListener;->changeSearchText(Ljava/lang/String;Z)V

    .line 9
    .line 10
    :cond_0
    iput-object p1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->jumpToSearchResultView()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/master/CommunitySearchListFragment;->onSearch(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method private setUserJoinedCommunityList(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/community/CommunityUserInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->userJoinedCommunityList:Ljava/util/List;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/master/CommunitySearchListFragment;->timestamp:Ljava/lang/String;

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->users:Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->users:Ljava/util/HashMap;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 24
    .line 25
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecyclerAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 31
    move-result p1

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecyclerAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 39
    :cond_2
    return-void
.end method

.method private showLanguageChooseDialog()V
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
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 18
    .line 19
    const-string v2, "community-collection/supported-languages"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x0

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    const-string/jumbo v3, "start"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    const/16 v2, 0x64

    .line 41
    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    const-string/jumbo v3, "size"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    const-string v2, "api"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 63
    .line 64
    new-instance v3, Lcom/narvii/master/CommunitySearchListFragment$4;

    .line 65
    .line 66
    const-class v4, Lcom/narvii/master/explorer/SupportLanguageResponse;

    .line 67
    .line 68
    .line 69
    invoke-direct {v3, p0, v4, v0}, Lcom/narvii/master/CommunitySearchListFragment$4;-><init>(Lcom/narvii/master/CommunitySearchListFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 73
    return-void
.end method

.method private showSearchHistory()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static synthetic t(Lcom/narvii/master/CommunitySearchListFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/master/CommunitySearchListFragment;->lambda$onCreate$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic u(Lcom/narvii/master/CommunitySearchListFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/master/CommunitySearchListFragment;->showSearchHistory()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic v(Lcom/narvii/master/CommunitySearchListFragment;)Lcom/narvii/master/search/history/SearchHistoryDelegate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/CommunitySearchListFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/CommunitySearchListFragment;->timestamp:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/master/CommunitySearchListFragment;Lcom/narvii/model/Community;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/CommunitySearchListFragment;->enterCommunityDetail(Lcom/narvii/model/Community;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/master/CommunitySearchListFragment;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/master/CommunitySearchListFragment;->setUserJoinedCommunityList(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic z(Lcom/narvii/master/CommunitySearchListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/master/CommunitySearchListFragment;->showLanguageChooseDialog()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {p1, p0, v0}, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;-><init>(Lcom/narvii/master/CommunitySearchListFragment;Lcom/narvii/master/f;)V

    .line 7
    .line 8
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->mergeAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;

    .line 9
    .line 10
    new-instance p1, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;-><init>(Lcom/narvii/master/CommunitySearchListFragment;)V

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecyclerAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

    .line 16
    .line 17
    new-instance p1, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;-><init>(Lcom/narvii/master/CommunitySearchListFragment;)V

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    .line 23
    .line 24
    new-instance p1, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, p0, v0}, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;-><init>(Lcom/narvii/master/CommunitySearchListFragment;Lcom/narvii/master/d;)V

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->searchResultCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/master/CommunitySearchListFragment;->mergeAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->addSearchHistoryAdapters(Lcom/narvii/list/MergeAdapter;)V

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->mergeAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    .line 45
    const-string p1, "hide_match_id_adapter"

    .line 46
    const/4 v1, 0x0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    .line 50
    move-result p1

    .line 51
    .line 52
    iput-boolean p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->hideMathIdAdapter:Z

    .line 53
    .line 54
    new-instance p1, Lcom/narvii/master/CommunitySearchListFragment$1;

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, p0, p0}, Lcom/narvii/master/CommunitySearchListFragment$1;-><init>(Lcom/narvii/master/CommunitySearchListFragment;Lcom/narvii/app/NVContext;)V

    .line 58
    .line 59
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 60
    .line 61
    iget-boolean v1, p0, Lcom/narvii/master/CommunitySearchListFragment;->hideMathIdAdapter:Z

    .line 62
    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    const/16 v1, 0x10

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->setCustomObjectType(I)V

    .line 69
    .line 70
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->mergeAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/narvii/master/CommunitySearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    .line 77
    new-instance p1, Lcom/narvii/master/CommunitySearchListFragment$2;

    .line 78
    .line 79
    iget-boolean v1, p0, Lcom/narvii/master/CommunitySearchListFragment;->hideMathIdAdapter:Z

    .line 80
    .line 81
    if-eqz v1, :cond_1

    .line 82
    .line 83
    .line 84
    const v1, 0x7f12030a

    .line 85
    goto :goto_0

    .line 86
    .line 87
    .line 88
    :cond_1
    const v1, 0x7f12031f

    .line 89
    .line 90
    .line 91
    :goto_0
    invoke-direct {p1, p0, p0, v1}, Lcom/narvii/master/CommunitySearchListFragment$2;-><init>(Lcom/narvii/master/CommunitySearchListFragment;Lcom/narvii/app/NVContext;I)V

    .line 92
    .line 93
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->searchKeywordHeaderAdapter:Lcom/narvii/master/search/trending/SectionHeaderAdapter;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/narvii/master/CommunitySearchListFragment;->searchResultCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v1}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;->setAttachHost(Lcom/narvii/list/NVAdapter;)V

    .line 99
    .line 100
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->mergeAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;

    .line 101
    .line 102
    iget-object v1, p0, Lcom/narvii/master/CommunitySearchListFragment;->searchKeywordHeaderAdapter:Lcom/narvii/master/search/trending/SectionHeaderAdapter;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    .line 107
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->mergeAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;

    .line 108
    .line 109
    iget-object v1, p0, Lcom/narvii/master/CommunitySearchListFragment;->searchResultCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    .line 114
    new-instance p1, Lcom/narvii/master/CommunitySearchListFragment$MasterTrendingCommunityAdapter;

    .line 115
    .line 116
    .line 117
    invoke-direct {p1, p0, v0}, Lcom/narvii/master/CommunitySearchListFragment$MasterTrendingCommunityAdapter;-><init>(Lcom/narvii/master/CommunitySearchListFragment;Lcom/narvii/master/e;)V

    .line 118
    .line 119
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->trendingCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterTrendingCommunityAdapter;

    .line 120
    .line 121
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->mergeAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    .line 126
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->mergeAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;

    .line 127
    return-object p1
.end method

.method protected getCurSearchLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "content_search"

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected matchedCommunityAdapter()Lcom/narvii/community/BaseCommunitySearchListFragment$MatchedCommunityAdapter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected notifyAllAdapters()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->trendingCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterTrendingCommunityAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/community/CommunityListWithSectionAdapter;->notifyDataSetChanged()V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecyclerAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 22
    .line 23
    :cond_2
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->searchResultCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->resetList()V

    .line 29
    .line 30
    :cond_3
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 31
    .line 32
    if-eqz v0, :cond_4

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->notifyKeyChange(Ljava/lang/String;)V

    .line 38
    .line 39
    :cond_4
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->searchKeywordHeaderAdapter:Lcom/narvii/master/search/trending/SectionHeaderAdapter;

    .line 40
    .line 41
    if-eqz v0, :cond_5

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 45
    .line 46
    :cond_5
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    .line 47
    .line 48
    if-eqz v0, :cond_6

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 52
    move-result v0

    .line 53
    .line 54
    if-eqz v0, :cond_6

    .line 55
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    iput-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->userJoinedCommunityList:Ljava/util/List;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->users:Ljava/util/HashMap;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 67
    .line 68
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 72
    .line 73
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    .line 74
    const/4 v1, 0x0

    .line 75
    const/4 v2, 0x0

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->refresh(ILcom/narvii/util/Callback;)V

    .line 79
    :cond_6
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/util/SplashUtils;->cancelSplash(Landroid/app/Activity;)Z

    .line 8
    const/4 p1, 0x0

    .line 9
    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/community/search/BaseSearchListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string/jumbo p1, "search_key"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 12
    .line 13
    const-string p1, "language"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Lcom/narvii/language/LanguageManager;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->languageManager:Lcom/narvii/language/LanguageManager;

    .line 22
    .line 23
    const-string p1, "content_language"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 32
    .line 33
    new-instance p1, Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 34
    .line 35
    const-string v0, "community"

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, p0, v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 39
    .line 40
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 41
    .line 42
    new-instance v0, Lcom/narvii/master/b;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p0}, Lcom/narvii/master/b;-><init>(Lcom/narvii/master/CommunitySearchListFragment;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/narvii/util/Utils;->functionUnit(Lcom/narvii/util/Callback;)Le8/l;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->setOnSearchHistory(Le8/l;)V

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 55
    .line 56
    new-instance v0, Lcom/narvii/master/c;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, p0}, Lcom/narvii/master/c;-><init>(Lcom/narvii/master/CommunitySearchListFragment;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->setShowSearchHistory(Le8/a;)V

    .line 63
    return-void
.end method

.method protected onRealTimeSearch()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/community/search/BaseSearchListFragment;->onRealTimeSearch()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    instance-of v0, v0, Lcom/narvii/search/ISearchBarHost;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/search/ISearchBarHost;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p0, v1}, Lcom/narvii/search/ISearchBarHost;->onChildFragmentRealtimeSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->jumpToSearchResultView()V

    .line 26
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/util/SplashUtils;->cancelSplash(Landroid/app/Activity;)Z

    .line 11
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/community/search/BaseSearchListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "curQueryKey"

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method protected onSearch(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/community/BaseCommunitySearchListFragment;->onSearch(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "logging"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    .line 18
    const/4 v1, 0x4

    .line 19
    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    const-string/jumbo v3, "searchString"

    .line 24
    .line 25
    aput-object v3, v1, v2

    .line 26
    const/4 v2, 0x1

    .line 27
    .line 28
    aput-object p1, v1, v2

    .line 29
    const/4 v2, 0x2

    .line 30
    .line 31
    const-string v3, "language"

    .line 32
    .line 33
    aput-object v3, v1, v2

    .line 34
    .line 35
    iget-object v2, p0, Lcom/narvii/master/CommunitySearchListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    const/4 v3, 0x3

    .line 41
    .line 42
    aput-object v2, v1, v3

    .line 43
    .line 44
    const-string v2, "SearchAminoStarting"

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v2, v1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .line 49
    const-string/jumbo v0, "statistics"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 56
    .line 57
    const-string v1, "Search For Communities"

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    const-string v1, "Search For Communities Total"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    const-string v1, "Source"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p1}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->addSearchHistory(Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method

.method protected onSearchButtonClicked()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->onSearchButtonClicked()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->jumpToSearchResultView()V

    .line 7
    return-void
.end method

.method public onSwitchSearch(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p0, p1}, Lcom/narvii/master/search/SearchUtils;->logSwitchSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->jumpToSearchResultView()V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/narvii/master/CommunitySearchListFragment;->onSearch(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/community/BaseCommunitySearchListFragment;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->searchResultCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->notifyDataSetChanged()V

    .line 11
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/community/search/BaseSearchListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const-string p1, "curQueryKey"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p2, p1}, Lcom/narvii/master/CommunitySearchListFragment;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 16
    :cond_0
    return-void
.end method

.method protected setUpEmptyView()V
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0d0397

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    const v1, 0x7f0a07ac

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/master/CommunitySearchListFragment$3;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/narvii/master/CommunitySearchListFragment$3;-><init>(Lcom/narvii/master/CommunitySearchListFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    return-void
.end method

.method protected updateViews()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0a03ef

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    .line 14
    .line 15
    .line 16
    const v2, 0x7f0a04eb

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    instance-of v2, v0, Landroid/widget/TextView;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    check-cast v0, Landroid/widget/TextView;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/narvii/master/CommunitySearchListFragment;->languageManager:Lcom/narvii/language/LanguageManager;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/narvii/master/CommunitySearchListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/narvii/language/ContentLanguageService;->getLanguageShowCode()Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Lcom/narvii/language/LanguageManager;->getLocalDisplayText(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    :cond_0
    instance-of v0, v1, Landroid/widget/TextView;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    check-cast v1, Landroid/widget/TextView;

    .line 48
    const/4 v0, -0x1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->updateViews()V

    .line 55
    return-void
.end method
