.class public final Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;
.super Lcom/narvii/community/adapter/CommunityListAdapter;
.source "CommunityModuleHorizontalAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InnerAdapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommunityModuleHorizontalAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommunityModuleHorizontalAdapter.kt\ncom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter\n*L\n1#1,363:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iput-object p1, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/community/adapter/CommunityListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 162
    invoke-static {p1}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->access$getDataSetChangeListener$p(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addDataSetChangeListener(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    return-void
.end method

.method private final hasMore()Z
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->getInnerDataSource()Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    move-result v0

    const/16 v1, 0x14

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;

    invoke-virtual {v0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->getInnerDataSource()Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/paging/source/PageDataSource;->get_nextPageToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

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


# virtual methods
.method public allowVisitorMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public autoLoadNextPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public communityLayoutId()I
    .locals 1

    const v0, 0x7f0b03b3

    return v0
.end method

.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 2
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

    .line 174
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;

    new-instance v1, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;

    invoke-direct {v1, v0, p1}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;-><init>(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, v1}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->setInnerDataSource(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;)V

    .line 175
    iget-object p1, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;

    invoke-virtual {p1}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->getInnerDataSource()Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lcom/narvii/model/Community;
    .locals 1

    .line 196
    invoke-direct {p0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 197
    new-instance p1, Lcom/narvii/model/Community;

    invoke-direct {p1}, Lcom/narvii/model/Community;-><init>()V

    const/16 v0, -0x64

    .line 198
    iput v0, p1, Lcom/narvii/model/Community;->id:I

    return-object p1

    .line 201
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p1

    const-string v0, "super.getItem(pos)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/model/Community;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Lcom/narvii/model/NVObject;
    .locals 0

    .line 159
    invoke-virtual {p0, p1}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;->getItem(I)Lcom/narvii/model/Community;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 159
    invoke-virtual {p0, p1}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;->getItem(I)Lcom/narvii/model/Community;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    .line 205
    invoke-direct {p0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    .line 206
    iget-object v1, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;

    invoke-virtual {v1}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->getInnerDataSource()Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/paging/source/DataSource;->getSize()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_0
    invoke-super {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected getItemType(I)I
    .locals 2

    .line 211
    invoke-direct {p0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public logItemClickEvent(Lcom/narvii/model/Community;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;

    sget-object v1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, p1, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    return-void
.end method

.method protected onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 221
    new-instance p2, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$MoreViewHolder;

    iget-object v0, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b038e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v1, "LayoutInflater.from(getC\u2026dule_more, parent, false)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$MoreViewHolder;-><init>(Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;Landroid/view/View;)V

    return-object p2

    .line 223
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/community/adapter/CommunityListAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 227
    instance-of v0, p3, Lcom/narvii/model/Community;

    if-eqz v0, :cond_4

    move-object v0, p3

    check-cast v0, Lcom/narvii/model/Community;

    iget v0, v0, Lcom/narvii/model/Community;->id:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_4

    .line 228
    iget-object p1, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;

    invoke-virtual {p1}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object p1

    iget-boolean p1, p1, Lcom/narvii/topic/model/discover/ContentModule;->userRemovable:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;

    invoke-virtual {p1}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/topic/model/discover/ContentModule;->getTopicId()I

    move-result p1

    if-ltz p1, :cond_0

    .line 229
    const-class p1, Lcom/narvii/topic/TopicTabFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 230
    iget-object p3, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;

    invoke-virtual {p3}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object p3

    invoke-virtual {p3}, Lcom/narvii/topic/model/discover/ContentModule;->getTopicId()I

    move-result p3

    const-string p4, "key_topic_id"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    iget-object p3, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p3, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 233
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "UUID.randomUUID().toString()"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    iget-object p3, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;

    invoke-virtual {p3}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->getInnerDataSource()Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;

    move-result-object p3

    invoke-virtual {p3}, Lcom/narvii/paging/source/PageDataSource;->get_nextPageToken()Ljava/lang/String;

    move-result-object p3

    .line 235
    iget-object p4, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;

    invoke-virtual {p4}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->getInnerDataSource()Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$DataSource;

    move-result-object p4

    invoke-virtual {p4}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object p4

    const/4 p5, 0x0

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/narvii/paging/storage/PageStorage;->getDataList()Ljava/util/List;

    move-result-object p4

    goto :goto_0

    :cond_1
    move-object p4, p5

    :goto_0
    instance-of v0, p4, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    move-object p4, p5

    :cond_2
    check-cast p4, Ljava/util/ArrayList;

    .line 236
    sget-object p5, Lcom/narvii/community/CommunityListFragment;->Companion:Lcom/narvii/community/CommunityListFragment$Companion;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    if-eqz p4, :cond_3

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    :goto_1
    invoke-virtual {p5, p1, v0, p3}, Lcom/narvii/community/CommunityListFragment$Companion;->addShareCommunityList(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 239
    const-class p3, Lcom/narvii/community/CommunityListFragment;

    invoke-static {p3}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p3

    .line 240
    iget-object p4, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;

    invoke-virtual {p4}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object p4

    iget-object p4, p4, Lcom/narvii/topic/model/discover/ContentModule;->displayName:Ljava/lang/String;

    const-string p5, "KEY_TITLE"

    invoke-virtual {p3, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    iget-object p4, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;

    invoke-virtual {p4}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object p4

    iget-object p4, p4, Lcom/narvii/topic/model/discover/ContentModule;->dataUrl:Ljava/lang/String;

    const-string p5, "KEY_PATH"

    invoke-virtual {p3, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "KEY_DATA_SOURCE_ID"

    .line 242
    invoke-virtual {p3, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "KEY_REPLACE"

    .line 243
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 244
    iget-object p1, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;

    invoke-virtual {p1}, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;->getContentModule()Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "_module"

    invoke-virtual {p3, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    invoke-virtual {p0, p3}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V

    .line 247
    :goto_2
    iget-object p1, p0, Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/topic/adapter/CommunityModuleHorizontalAdapter;

    sget-object p3, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;ZZ)V

    return p2

    .line 250
    :cond_4
    invoke-super/range {p0 .. p5}, Lcom/narvii/community/adapter/CommunityListAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onRefreshFinishedBeforePageResponse(I)V
    .locals 1

    .line 254
    invoke-super {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onRefreshFinishedBeforePageResponse(I)V

    .line 255
    iget-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 256
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0

    or-int/lit8 p1, p1, 0x1

    .line 166
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    return-void
.end method

.method protected showPageLoadingStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
