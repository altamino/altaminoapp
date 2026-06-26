.class public Lcom/narvii/community/CommunityListFragment$Adapter;
.super Lcom/narvii/community/adapter/CommunityListAdapter;
.source "CommunityListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/CommunityListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommunityListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommunityListFragment.kt\ncom/narvii/community/CommunityListFragment$Adapter\n*L\n1#1,196:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/CommunityListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/community/CommunityListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/narvii/community/CommunityListFragment$Adapter;->this$0:Lcom/narvii/community/CommunityListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/community/adapter/CommunityListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public allowVisitorMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected autoLoadInitData()Z
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/narvii/community/CommunityListFragment$Adapter;->this$0:Lcom/narvii/community/CommunityListFragment;

    const-string v1, "KEY_DATA_SOURCE_ID"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    sget-object v1, Lcom/narvii/community/CommunityListFragment;->Companion:Lcom/narvii/community/CommunityListFragment$Companion;

    invoke-virtual {v1}, Lcom/narvii/community/CommunityListFragment$Companion;->getInitCommunityListMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 129
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

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

.method public communityLayoutId()I
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/narvii/community/CommunityListFragment$Adapter;->this$0:Lcom/narvii/community/CommunityListFragment;

    invoke-virtual {v0}, Lcom/narvii/community/CommunityListFragment;->communityLayoutId()I

    move-result v0

    return v0
.end method

.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")",
            "Lcom/narvii/paging/source/PageDataSource<",
            "Lcom/narvii/model/Community;",
            "Lcom/narvii/community/search/SearchCommunityListResponse;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/narvii/community/CommunityListFragment$Adapter;->this$0:Lcom/narvii/community/CommunityListFragment;

    const-string v1, "KEY_DATA_SOURCE_ID"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    sget-object v1, Lcom/narvii/community/CommunityListFragment;->Companion:Lcom/narvii/community/CommunityListFragment$Companion;

    invoke-virtual {v1}, Lcom/narvii/community/CommunityListFragment$Companion;->getInitCommunityListMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 114
    sget-object v2, Lcom/narvii/community/CommunityListFragment;->Companion:Lcom/narvii/community/CommunityListFragment$Companion;

    invoke-virtual {v2}, Lcom/narvii/community/CommunityListFragment$Companion;->getTokenMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    new-instance v2, Lcom/narvii/community/CommunityListFragment$DataSource;

    iget-object v3, p0, Lcom/narvii/community/CommunityListFragment$Adapter;->this$0:Lcom/narvii/community/CommunityListFragment;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-direct {v2, v3, p1, v1}, Lcom/narvii/community/CommunityListFragment$DataSource;-><init>(Lcom/narvii/community/CommunityListFragment;Lcom/narvii/app/NVContext;Ljava/util/ArrayList;)V

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 117
    invoke-virtual {v2, v0}, Lcom/narvii/paging/source/PageDataSource;->set_nextPageToken(Ljava/lang/String;)V

    :cond_1
    return-object v2
.end method

.method public onAttach()V
    .locals 2

    .line 98
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onAttach()V

    .line 99
    new-instance v0, Lcom/narvii/community/CommunityListFragment$Adapter$onAttach$1;

    const-class v1, Lcom/narvii/model/Community;

    invoke-direct {v0, p0, v1}, Lcom/narvii/community/CommunityListFragment$Adapter$onAttach$1;-><init>(Lcom/narvii/community/CommunityListFragment$Adapter;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    instance-of v1, v0, Lcom/narvii/community/CommunityListFragment$DataSource;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 134
    check-cast v0, Lcom/narvii/community/CommunityListFragment$DataSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityListFragment$DataSource;->setFirstResponse(Z)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.community.CommunityListFragment.DataSource"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 136
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/community/CommunityListFragment$Adapter;->this$0:Lcom/narvii/community/CommunityListFragment;

    const-string v1, "KEY_REPLACE"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    or-int/lit8 p1, p1, 0x1

    .line 137
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    return-void
.end method
