.class public Lcom/narvii/community/CommunityListFragment$Adapter;
.super Lcom/narvii/community/adapter/CommunityListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/CommunityListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/CommunityListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/community/CommunityListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0
    .param p1    # Lcom/narvii/community/CommunityListFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/CommunityListFragment$Adapter;->this$0:Lcom/narvii/community/CommunityListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/community/adapter/CommunityListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CommunityListFragment$Adapter;->this$0:Lcom/narvii/community/CommunityListFragment;

    .line 3
    .line 4
    const-string v1, "KEY_DATA_SOURCE_ID"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sget-object v1, Lcom/narvii/community/CommunityListFragment;->Companion:Lcom/narvii/community/CommunityListFragment$Companion;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/narvii/community/CommunityListFragment$Companion;->getInitCommunityListMap()Ljava/util/HashMap;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 33
    :goto_1
    return v0
.end method

.method public communityLayoutId()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CommunityListFragment$Adapter;->this$0:Lcom/narvii/community/CommunityListFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/community/CommunityListFragment;->communityLayoutId()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 4
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CommunityListFragment$Adapter;->this$0:Lcom/narvii/community/CommunityListFragment;

    .line 3
    .line 4
    const-string v1, "KEY_DATA_SOURCE_ID"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sget-object v1, Lcom/narvii/community/CommunityListFragment;->Companion:Lcom/narvii/community/CommunityListFragment$Companion;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/narvii/community/CommunityListFragment$Companion;->getInitCommunityListMap()Ljava/util/HashMap;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    check-cast v2, Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/narvii/community/CommunityListFragment$Companion;->getTokenMap()Ljava/util/HashMap;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Ljava/lang/String;

    .line 31
    .line 32
    new-instance v1, Lcom/narvii/community/CommunityListFragment$DataSource;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/narvii/community/CommunityListFragment$Adapter;->this$0:Lcom/narvii/community/CommunityListFragment;

    .line 35
    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    new-instance v2, Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-direct {v1, v3, p1, v2}, Lcom/narvii/community/CommunityListFragment$DataSource;-><init>(Lcom/narvii/community/CommunityListFragment;Lcom/narvii/app/NVContext;Ljava/util/ArrayList;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0}, Lcom/narvii/paging/source/PageDataSource;->set_nextPageToken(Ljava/lang/String;)V

    .line 54
    :cond_1
    return-object v1
.end method

.method public onAttach()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onAttach()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/community/CommunityListFragment$Adapter$onAttach$1;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/community/CommunityListFragment$Adapter;->this$0:Lcom/narvii/community/CommunityListFragment;

    .line 8
    .line 9
    const-class v2, Lcom/narvii/model/Community;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/narvii/community/CommunityListFragment$Adapter$onAttach$1;-><init>(Lcom/narvii/community/CommunityListFragment;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 16
    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 2
    .param p2    # Lcom/narvii/paging/source/PageRequestCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/community/CommunityListFragment$DataSource;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string v1, "null cannot be cast to non-null type com.narvii.community.CommunityListFragment.DataSource"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/community/CommunityListFragment$DataSource;

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityListFragment$DataSource;->setFirstResponse(Z)V

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/CommunityListFragment$Adapter;->this$0:Lcom/narvii/community/CommunityListFragment;

    .line 20
    .line 21
    const-string v1, "KEY_REPLACE"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    or-int/lit8 p1, p1, 0x1

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 33
    return-void
.end method
