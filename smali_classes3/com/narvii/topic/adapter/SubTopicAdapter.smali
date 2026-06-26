.class public final Lcom/narvii/topic/adapter/SubTopicAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;
.source "SubTopicAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/adapter/SubTopicAdapter$SubTopicViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/adapter/NVRecyclerViewAdapter<",
        "Lcom/narvii/model/story/StoryTopic;",
        ">;"
    }
.end annotation


# instance fields
.field private languageService:Lcom/narvii/language/ContentLanguageService;

.field private storyTopic:Lcom/narvii/model/story/StoryTopic;

.field private final topicId:I

.field private topicPreClickListener:Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput p2, p0, Lcom/narvii/topic/adapter/SubTopicAdapter;->topicId:I

    const-string p2, "content_language"

    .line 22
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "context.getService<Conte\u2026vice>(\"content_language\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    iput-object p1, p0, Lcom/narvii/topic/adapter/SubTopicAdapter;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-void
.end method

.method public static final synthetic access$getStoryTopic$p(Lcom/narvii/topic/adapter/SubTopicAdapter;)Lcom/narvii/model/story/StoryTopic;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/narvii/topic/adapter/SubTopicAdapter;->storyTopic:Lcom/narvii/model/story/StoryTopic;

    return-object p0
.end method

.method public static final synthetic access$setStoryTopic$p(Lcom/narvii/topic/adapter/SubTopicAdapter;Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/narvii/topic/adapter/SubTopicAdapter;->storyTopic:Lcom/narvii/model/story/StoryTopic;

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
            "Lcom/narvii/model/story/StoryTopic;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/narvii/topic/adapter/SubTopicAdapter$createDataSource$dataSource$1;

    invoke-direct {v0, p0, p1, p1}, Lcom/narvii/topic/adapter/SubTopicAdapter$createDataSource$dataSource$1;-><init>(Lcom/narvii/topic/adapter/SubTopicAdapter;Lcom/narvii/app/NVContext;Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public final getLanguageService()Lcom/narvii/language/ContentLanguageService;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/narvii/topic/adapter/SubTopicAdapter;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-object v0
.end method

.method public final getTopicId()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/narvii/topic/adapter/SubTopicAdapter;->topicId:I

    return v0
.end method

.method public getTopicPreClickListener()Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/narvii/topic/adapter/SubTopicAdapter;->topicPreClickListener:Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    instance-of v0, p1, Lcom/narvii/topic/adapter/SubTopicAdapter$SubTopicViewHolder;

    if-eqz v0, :cond_0

    .line 55
    move-object v0, p1

    check-cast v0, Lcom/narvii/topic/adapter/SubTopicAdapter$SubTopicViewHolder;

    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object v1

    const-string v2, "getItem(position)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/narvii/model/story/StoryTopic;

    invoke-virtual {v0, v1}, Lcom/narvii/topic/adapter/SubTopicAdapter$SubTopicViewHolder;->bindStoryTopic(Lcom/narvii/model/story/StoryTopic;)V

    .line 56
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0671

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 34
    new-instance p2, Lcom/narvii/topic/adapter/SubTopicAdapter$SubTopicViewHolder;

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/topic/adapter/SubTopicAdapter$SubTopicViewHolder;-><init>(Lcom/narvii/topic/adapter/SubTopicAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public final refreshData()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->loadInitData()V

    .line 49
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final setLanguageService(Lcom/narvii/language/ContentLanguageService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/narvii/topic/adapter/SubTopicAdapter;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-void
.end method

.method public final setStoryTopic(Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/narvii/topic/adapter/SubTopicAdapter;->storyTopic:Lcom/narvii/model/story/StoryTopic;

    .line 28
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/SubTopicAdapter;->refreshData()V

    return-void
.end method

.method public setTopicPreClickListener(Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/narvii/topic/adapter/SubTopicAdapter;->topicPreClickListener:Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;

    return-void
.end method
