.class public final Lcom/narvii/topic/adapter/StorySectionAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;
.source "StorySectionAdapter.kt"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder;,
        Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/adapter/NVRecyclerViewAdapter<",
        "Lcom/narvii/topic/model/StorySections;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# instance fields
.field private communityInfoMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field public innerDataSource:Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;

.field private requestFinished:Z

.field private sectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/topic/model/StorySections;",
            ">;"
        }
    .end annotation
.end field

.field private final topicId:I

.field private userInfoMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput p2, p0, Lcom/narvii/topic/adapter/StorySectionAdapter;->topicId:I

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter;->communityInfoMapping:Ljava/util/Map;

    .line 47
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter;->userInfoMapping:Ljava/util/Map;

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter;->sectionList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/narvii/topic/adapter/StorySectionAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method public static final synthetic access$setContext$p(Lcom/narvii/topic/adapter/StorySectionAdapter;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method public createDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/DataSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")",
            "Lcom/narvii/paging/source/DataSource<",
            "Lcom/narvii/topic/model/StorySections;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;

    invoke-direct {v0, p0, p1}, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;-><init>(Lcom/narvii/topic/adapter/StorySectionAdapter;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/topic/adapter/StorySectionAdapter;->innerDataSource:Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;

    .line 94
    iget-object p1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter;->innerDataSource:Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p1, "innerDataSource"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final getCommunityInfoMapping()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/narvii/topic/adapter/StorySectionAdapter;->communityInfoMapping:Ljava/util/Map;

    return-object v0
.end method

.method public final getInnerDataSource()Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/narvii/topic/adapter/StorySectionAdapter;->innerDataSource:Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "innerDataSource"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getRequestFinished()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/narvii/topic/adapter/StorySectionAdapter;->requestFinished:Z

    return v0
.end method

.method public final getSectionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/topic/model/StorySections;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/narvii/topic/adapter/StorySectionAdapter;->sectionList:Ljava/util/List;

    return-object v0
.end method

.method public final getTopicId()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/narvii/topic/adapter/StorySectionAdapter;->topicId:I

    return v0
.end method

.method public final getUserInfoMapping$Amino_bundle()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/narvii/topic/adapter/StorySectionAdapter;->userInfoMapping:Ljava/util/Map;

    return-object v0
.end method

.method public onAttach()V
    .locals 4

    .line 52
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onAttach()V

    .line 53
    iget-object v0, p0, Lcom/narvii/topic/adapter/StorySectionAdapter;->innerDataSource:Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v1}, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;->sendRequest$default(Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;Lcom/narvii/paging/source/PageRequestCallback;ZILjava/lang/Object;)V

    .line 54
    new-instance v0, Lcom/narvii/topic/adapter/StorySectionAdapter$onAttach$1;

    const-class v1, Lcom/narvii/model/Blog;

    invoke-direct {v0, v1}, Lcom/narvii/topic/adapter/StorySectionAdapter$onAttach$1;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void

    :cond_0
    const-string v0, "innerDataSource"

    .line 53
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    instance-of v0, p1, Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder;

    if-eqz v0, :cond_0

    .line 99
    check-cast p1, Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder;

    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/topic/model/StorySections;

    invoke-virtual {p1, p2}, Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder;->bindSection(Lcom/narvii/topic/model/StorySections;)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b044e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 66
    invoke-static {p1, p0}, Lcom/narvii/logging/LogUtils;->setShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Area;)V

    .line 67
    instance-of p2, p1, Lcom/narvii/topic/widgets/StorySectionItemView;

    if-eqz p2, :cond_0

    .line 68
    move-object p2, p1

    check-cast p2, Lcom/narvii/topic/widgets/StorySectionItemView;

    invoke-virtual {p2, p0}, Lcom/narvii/topic/widgets/StorySectionItemView;->setAdapter(Lcom/narvii/logging/Area;)V

    :cond_0
    const p2, 0x7f090aec

    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "cell.findViewById(R.id.story_section_layout)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/topic/widgets/StorySectionItemView;

    .line 71
    iget-object v0, p0, Lcom/narvii/topic/adapter/StorySectionAdapter;->communityInfoMapping:Ljava/util/Map;

    iget-object v1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter;->userInfoMapping:Ljava/util/Map;

    invoke-virtual {p2, v0, v1}, Lcom/narvii/topic/widgets/StorySectionItemView;->setAttachInfo(Ljava/util/Map;Ljava/util/Map;)V

    .line 72
    new-instance p2, Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder;

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/topic/adapter/StorySectionAdapter$StorySectionViewHolder;-><init>(Lcom/narvii/topic/adapter/StorySectionAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 200
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v2, "update"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    const-string v2, "edit"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_2
    if-eqz p1, :cond_3

    .line 201
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    :cond_3
    instance-of v0, v0, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type com.narvii.model.Blog"

    if-eqz v0, :cond_7

    check-cast v0, Lcom/narvii/model/Blog;

    iget v0, v0, Lcom/narvii/model/Blog;->type:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_8

    .line 203
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v2, -0x1

    iput v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v3, 0x0

    .line 204
    iget-object v4, p0, Lcom/narvii/topic/adapter/StorySectionAdapter;->sectionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    :goto_2
    if-ge v3, v4, :cond_6

    .line 205
    iget-object v5, p0, Lcom/narvii/topic/adapter/StorySectionAdapter;->sectionList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/topic/model/StorySections;

    iget-object v5, v5, Lcom/narvii/topic/model/StorySections;->blogList:Ljava/util/List;

    iget-object v6, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_5

    .line 207
    iget-object v6, p0, Lcom/narvii/topic/adapter/StorySectionAdapter;->sectionList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/topic/model/StorySections;

    iget-object v6, v6, Lcom/narvii/topic/model/StorySections;->blogList:Ljava/util/List;

    iget-object v7, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_4

    check-cast v7, Lcom/narvii/model/Blog;

    invoke-interface {v6, v5, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 208
    iput v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_3

    .line 207
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 211
    :cond_6
    iget p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eq p1, v2, :cond_8

    .line 212
    new-instance p1, Lcom/narvii/topic/adapter/StorySectionAdapter$onNotification$1;

    invoke-direct {p1, p0, v0}, Lcom/narvii/topic/adapter/StorySectionAdapter$onNotification$1;-><init>(Lcom/narvii/topic/adapter/StorySectionAdapter;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 201
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_4
    return-void
.end method

.method public onPageListChanged(Lcom/narvii/paging/storage/PageStorage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/paging/storage/PageStorage<",
            "*>;)V"
        }
    .end annotation

    .line 84
    invoke-super {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onPageListChanged(Lcom/narvii/paging/storage/PageStorage;)V

    .line 85
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 86
    iget-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    sget-object v0, Lcom/narvii/topic/adapter/StorySectionAdapter$onPageListChanged$1;->INSTANCE:Lcom/narvii/topic/adapter/StorySectionAdapter$onPageListChanged$1;

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public onPageLoadStatusChanged()V
    .locals 2

    .line 76
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onPageLoadStatusChanged()V

    .line 77
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 78
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    sget-object v1, Lcom/narvii/topic/adapter/StorySectionAdapter$onPageLoadStatusChanged$1;->INSTANCE:Lcom/narvii/topic/adapter/StorySectionAdapter$onPageLoadStatusChanged$1;

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public final setCommunityInfoMapping(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/Community;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter;->communityInfoMapping:Ljava/util/Map;

    return-void
.end method

.method public final setInnerDataSource(Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter;->innerDataSource:Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;

    return-void
.end method

.method public final setRequestFinished(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter;->requestFinished:Z

    return-void
.end method

.method public final setSectionList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/topic/model/StorySections;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter;->sectionList:Ljava/util/List;

    return-void
.end method

.method public final setUserInfoMapping$Amino_bundle(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter;->userInfoMapping:Ljava/util/Map;

    return-void
.end method
