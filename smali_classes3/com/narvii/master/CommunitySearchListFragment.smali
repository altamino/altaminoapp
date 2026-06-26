.class public Lcom/narvii/master/CommunitySearchListFragment;
.super Lcom/narvii/community/BaseCommunitySearchListFragment;
.source "CommunitySearchListFragment.java"

# interfaces
.implements Lcom/narvii/search/SwitchSearchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/CommunitySearchListFragment$MasterTrendingCommunityAdapter;,
        Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;,
        Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;,
        Lcom/narvii/master/CommunitySearchListFragment$MyLaunchHelper;,
        Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;,
        Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;
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

    .line 77
    invoke-direct {p0}, Lcom/narvii/community/BaseCommunitySearchListFragment;-><init>()V

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->users:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$1000(Lcom/narvii/master/CommunitySearchListFragment;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/master/CommunitySearchListFragment;->setUserJoinedCommunityList(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/narvii/master/CommunitySearchListFragment;->timestamp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/narvii/master/CommunitySearchListFragment;Lcom/narvii/model/Community;Landroid/view/View;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/narvii/master/CommunitySearchListFragment;->enterCommunityDetail(Lcom/narvii/model/Community;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/narvii/master/CommunitySearchListFragment;)Lcom/narvii/master/search/history/SearchHistoryDelegate;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/narvii/master/CommunitySearchListFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/narvii/master/CommunitySearchListFragment;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->pendingSearch:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/narvii/master/CommunitySearchListFragment;Ljava/lang/String;)Z
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lcom/narvii/community/search/BaseSearchListFragment;->isAminoCommunityLink(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/narvii/master/CommunitySearchListFragment;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/narvii/master/CommunitySearchListFragment;->showLanguageChooseDialog()V

    return-void
.end method

.method static synthetic access$2302(Lcom/narvii/master/CommunitySearchListFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->searchLanguage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->searchLanguage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/master/CommunitySearchListFragment;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->showMyCommunity:Z

    return p0
.end method

.method static synthetic access$600(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    return-object p0
.end method

.method private enterCommunityDetail(Lcom/narvii/model/Community;Landroid/view/View;)V
    .locals 2

    .line 213
    new-instance v0, Lcom/narvii/master/CommunityHelper;

    invoke-direct {v0, p0}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v1, "search"

    invoke-virtual {v0, v1}, Lcom/narvii/master/CommunityHelper;->source(Ljava/lang/String;)Lcom/narvii/master/CommunityHelper;

    move-result-object v0

    sget-object v1, Lcom/narvii/util/logging/LoggingOrigin;->Search:Lcom/narvii/util/logging/LoggingOrigin;

    invoke-virtual {v0, v1}, Lcom/narvii/master/CommunityHelper;->eventOrigin(Lcom/narvii/util/logging/LoggingOrigin;)Lcom/narvii/master/CommunityHelper;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/narvii/community/search/BaseSearchListFragment;->isInviteLink(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    iget-object p2, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/master/CommunityHelper;->communityDetailWithInviteUrl(Lcom/narvii/model/Community;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/narvii/master/CommunityHelper;->visitCommunity(Lcom/narvii/model/Community;Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$bJIGCl_daat9UQm5Koi0XdCJaLw(Lcom/narvii/master/CommunitySearchListFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/narvii/master/CommunitySearchListFragment;->showSearchHistory()Z

    move-result p0

    return p0
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

    .line 437
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->userJoinedCommunityList:Ljava/util/List;

    .line 438
    iput-object p3, p0, Lcom/narvii/master/CommunitySearchListFragment;->timestamp:Ljava/lang/String;

    .line 439
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->users:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    if-eqz p2, :cond_0

    .line 441
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->users:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 443
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    if-eqz p1, :cond_1

    .line 444
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 446
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecyclerAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 447
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecyclerAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method private showLanguageChooseDialog()V
    .locals 5

    .line 767
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 768
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 769
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v2, "community-collection/supported-languages"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 770
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 771
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "start"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const/16 v2, 0x64

    .line 772
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "size"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 773
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    const-string v2, "api"

    .line 774
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 775
    new-instance v3, Lcom/narvii/master/CommunitySearchListFragment$4;

    const-class v4, Lcom/narvii/master/explorer/SupportLanguageResponse;

    invoke-direct {v3, p0, v4, v0}, Lcom/narvii/master/CommunitySearchListFragment$4;-><init>(Lcom/narvii/master/CommunitySearchListFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private showSearchHistory()Z
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 167
    new-instance p1, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;-><init>(Lcom/narvii/master/CommunitySearchListFragment;Lcom/narvii/master/CommunitySearchListFragment$1;)V

    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->mergeAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;

    .line 168
    new-instance p1, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;-><init>(Lcom/narvii/master/CommunitySearchListFragment;)V

    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecyclerAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

    .line 169
    new-instance p1, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    invoke-direct {p1, p0}, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;-><init>(Lcom/narvii/master/CommunitySearchListFragment;)V

    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    .line 170
    new-instance p1, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;

    invoke-direct {p1, p0, v0}, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;-><init>(Lcom/narvii/master/CommunitySearchListFragment;Lcom/narvii/master/CommunitySearchListFragment$1;)V

    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->searchResultCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;

    .line 172
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    iget-object v1, p0, Lcom/narvii/master/CommunitySearchListFragment;->mergeAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;

    invoke-virtual {p1, v1}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->addSearchHistoryAdapters(Lcom/narvii/list/MergeAdapter;)V

    .line 174
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->mergeAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;

    iget-object v1, p0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    const-string p1, "hide_match_id_adapter"

    const/4 v1, 0x0

    .line 176
    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->hideMathIdAdapter:Z

    .line 178
    new-instance p1, Lcom/narvii/master/CommunitySearchListFragment$1;

    invoke-direct {p1, p0, p0}, Lcom/narvii/master/CommunitySearchListFragment$1;-><init>(Lcom/narvii/master/CommunitySearchListFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 192
    iget-boolean p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->hideMathIdAdapter:Z

    if-eqz p1, :cond_0

    .line 193
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->setCustomObjectType(I)V

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->mergeAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;

    iget-object v1, p0, Lcom/narvii/master/CommunitySearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 197
    new-instance p1, Lcom/narvii/master/CommunitySearchListFragment$2;

    iget-boolean v1, p0, Lcom/narvii/master/CommunitySearchListFragment;->hideMathIdAdapter:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0f02bf

    goto :goto_0

    :cond_1
    const v1, 0x7f0f02d4

    :goto_0
    invoke-direct {p1, p0, p0, v1}, Lcom/narvii/master/CommunitySearchListFragment$2;-><init>(Lcom/narvii/master/CommunitySearchListFragment;Lcom/narvii/app/NVContext;I)V

    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->searchKeywordHeaderAdapter:Lcom/narvii/master/search/trending/SectionHeaderAdapter;

    .line 203
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->searchKeywordHeaderAdapter:Lcom/narvii/master/search/trending/SectionHeaderAdapter;

    iget-object v1, p0, Lcom/narvii/master/CommunitySearchListFragment;->searchResultCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;

    invoke-virtual {p1, v1}, Lcom/narvii/master/search/trending/SectionHeaderAdapter;->setAttachHost(Lcom/narvii/list/NVAdapter;)V

    .line 204
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->mergeAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;

    iget-object v1, p0, Lcom/narvii/master/CommunitySearchListFragment;->searchKeywordHeaderAdapter:Lcom/narvii/master/search/trending/SectionHeaderAdapter;

    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 205
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->mergeAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;

    iget-object v1, p0, Lcom/narvii/master/CommunitySearchListFragment;->searchResultCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;

    invoke-virtual {p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 206
    new-instance p1, Lcom/narvii/master/CommunitySearchListFragment$MasterTrendingCommunityAdapter;

    invoke-direct {p1, p0, v0}, Lcom/narvii/master/CommunitySearchListFragment$MasterTrendingCommunityAdapter;-><init>(Lcom/narvii/master/CommunitySearchListFragment;Lcom/narvii/master/CommunitySearchListFragment$1;)V

    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->trendingCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterTrendingCommunityAdapter;

    .line 207
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->mergeAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;

    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->trendingCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterTrendingCommunityAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 208
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->mergeAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;

    return-object p1
.end method

.method protected getCurSearchLanguage()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Aminos"

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$onCreate$0$CommunitySearchListFragment(Ljava/lang/String;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment;->changeSearchTextListener:Lcom/narvii/master/search/ChangeSearchTextListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 111
    invoke-interface {v0, p1, v1}, Lcom/narvii/master/search/ChangeSearchTextListener;->changeSearchText(Ljava/lang/String;Z)V

    .line 113
    :cond_0
    iput-object p1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->jumpToSearchResultView()V

    .line 115
    invoke-virtual {p0, p1}, Lcom/narvii/master/CommunitySearchListFragment;->onSearch(Ljava/lang/String;)V

    return-void
.end method

.method protected matchedCommunityAdapter()Lcom/narvii/community/BaseCommunitySearchListFragment$MatchedCommunityAdapter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected notifyAllAdapters()V
    .locals 3

    .line 712
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->trendingCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterTrendingCommunityAdapter;

    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {v0}, Lcom/narvii/community/CommunityListWithSectionAdapter;->notifyDataSetChanged()V

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    if-eqz v0, :cond_1

    .line 716
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecyclerAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecyclerAdapter;

    if-eqz v0, :cond_2

    .line 719
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 721
    :cond_2
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->searchResultCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;

    if-eqz v0, :cond_3

    .line 722
    invoke-virtual {v0}, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->resetList()V

    .line 724
    :cond_3
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    if-eqz v0, :cond_4

    .line 725
    iget-object v1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->notifyKeyChange(Ljava/lang/String;)V

    .line 727
    :cond_4
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->searchKeywordHeaderAdapter:Lcom/narvii/master/search/trending/SectionHeaderAdapter;

    if-eqz v0, :cond_5

    .line 728
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 730
    :cond_5
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 731
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->userJoinedCommunityList:Ljava/util/List;

    .line 732
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->users:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 733
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 734
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->refresh(ILcom/narvii/util/Callback;)V

    :cond_6
    return-void
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0

    .line 160
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/SplashUtils;->cancelSplash(Landroid/app/Activity;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Lcom/narvii/community/search/BaseSearchListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "search_key"

    .line 104
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    const-string p1, "language"

    .line 106
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/language/LanguageManager;

    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->languageManager:Lcom/narvii/language/LanguageManager;

    const-string p1, "content_language"

    .line 107
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 108
    new-instance p1, Lcom/narvii/master/search/history/SearchHistoryDelegate;

    const-string v0, "community"

    invoke-direct {p1, p0, v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 109
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    new-instance v0, Lcom/narvii/master/-$$Lambda$CommunitySearchListFragment$aaABw2k30L4Sy3Gw0meEiZ14qCI;

    invoke-direct {v0, p0}, Lcom/narvii/master/-$$Lambda$CommunitySearchListFragment$aaABw2k30L4Sy3Gw0meEiZ14qCI;-><init>(Lcom/narvii/master/CommunitySearchListFragment;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->functionUnit(Lcom/narvii/util/Callback;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->setOnSearchHistory(Lkotlin/jvm/functions/Function1;)V

    .line 117
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    new-instance v0, Lcom/narvii/master/-$$Lambda$CommunitySearchListFragment$bJIGCl_daat9UQm5Koi0XdCJaLw;

    invoke-direct {v0, p0}, Lcom/narvii/master/-$$Lambda$CommunitySearchListFragment$bJIGCl_daat9UQm5Koi0XdCJaLw;-><init>(Lcom/narvii/master/CommunitySearchListFragment;)V

    invoke-virtual {p1, v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->setShowSearchHistory(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method protected onRealTimeSearch()V
    .locals 2

    .line 678
    invoke-super {p0}, Lcom/narvii/community/search/BaseSearchListFragment;->onRealTimeSearch()V

    .line 679
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/search/ISearchBarHost;

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/search/ISearchBarHost;

    iget-object v1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lcom/narvii/search/ISearchBarHost;->onChildFragmentRealtimeSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V

    .line 682
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->jumpToSearchResultView()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 137
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 138
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SplashUtils;->cancelSplash(Landroid/app/Activity;)Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 131
    invoke-super {p0, p1}, Lcom/narvii/community/search/BaseSearchListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 132
    iget-object v0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    const-string v1, "curQueryKey"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onSearch(Ljava/lang/String;)V
    .locals 4

    .line 695
    invoke-super {p0, p1}, Lcom/narvii/community/BaseCommunitySearchListFragment;->onSearch(Ljava/lang/String;)V

    .line 697
    invoke-static {p1}, Lcom/narvii/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment;->searchHistoryDelegate:Lcom/narvii/master/search/history/SearchHistoryDelegate;

    invoke-virtual {v0, p1}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->addSearchHistory(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onSearchButtonClicked()V
    .locals 0

    .line 672
    invoke-super {p0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->onSearchButtonClicked()V

    .line 673
    invoke-virtual {p0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->jumpToSearchResultView()V

    return-void
.end method

.method public onSwitchSearch(Ljava/lang/String;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 227
    :cond_0
    invoke-static {p0, p1}, Lcom/narvii/master/search/SearchUtils;->logSwitchSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V

    .line 228
    iput-object p1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    .line 229
    invoke-virtual {p0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->jumpToSearchResultView()V

    .line 230
    iget-object p1, p0, Lcom/narvii/community/search/BaseSearchListFragment;->curQueryKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/master/CommunitySearchListFragment;->onSearch(Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 0

    .line 687
    invoke-super {p0, p1, p2}, Lcom/narvii/community/BaseCommunitySearchListFragment;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 688
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment;->searchResultCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;

    if-eqz p1, :cond_0

    .line 689
    invoke-virtual {p1}, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 122
    invoke-super {p0, p1, p2}, Lcom/narvii/community/search/BaseSearchListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    const-string v0, "curQueryKey"

    .line 124
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/CommunitySearchListFragment;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setUpEmptyView()V
    .locals 2

    const v0, 0x7f0b035d

    .line 757
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09062a

    .line 758
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/narvii/master/CommunitySearchListFragment$3;

    invoke-direct {v1, p0}, Lcom/narvii/master/CommunitySearchListFragment$3;-><init>(Lcom/narvii/master/CommunitySearchListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected updateViews()V
    .locals 4

    .line 741
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    const v1, 0x7f090316

    .line 742
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 743
    iget-object v1, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    const v2, 0x7f0903ed

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 744
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 745
    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/narvii/master/CommunitySearchListFragment;->languageManager:Lcom/narvii/language/LanguageManager;

    iget-object v3, p0, Lcom/narvii/master/CommunitySearchListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    invoke-virtual {v3}, Lcom/narvii/language/ContentLanguageService;->getLanguageShowCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/language/LanguageManager;->getLocalDisplayText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    :cond_0
    instance-of v0, v1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 748
    check-cast v1, Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 751
    :cond_1
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->updateViews()V

    return-void
.end method
