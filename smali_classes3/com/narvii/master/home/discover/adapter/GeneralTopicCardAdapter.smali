.class public abstract Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;
.super Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;
.source "GeneralTopicCardAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$TopicCardViewHolder;,
        Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$MoreViewHolder;,
        Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter<",
        "Lcom/narvii/model/story/StoryTopic;",
        "Lcom/narvii/model/story/StoryTopicListResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGeneralTopicCardAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeneralTopicCardAdapter.kt\ncom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter\n*L\n1#1,129:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$Companion;

.field private static final MAX_TOPIC_SIZE:I = 0x14

.field private static final MORE_TYPE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GeneralTopicCard"

.field private static final TOPIC_CARD_TYPE:I


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;

.field private itemClickListener:Lcom/narvii/list/ObjectItemClickListener;

.field private final module:Lcom/narvii/topic/model/discover/ContentModule;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->Companion:Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    return-void
.end method


# virtual methods
.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getItemClickListener()Lcom/narvii/list/ObjectItemClickListener;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->itemClickListener:Lcom/narvii/list/ObjectItemClickListener;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    const-string v1, "TopicBasedTrendingTopics"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x14

    if-eqz v0, :cond_0

    .line 34
    invoke-super {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemCount()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 36
    :cond_0
    invoke-super {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemCount()I

    move-result v0

    if-lt v0, v1, :cond_1

    const/16 v0, 0x15

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected getItemType(I)I
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    const-string v1, "TopicBasedTrendingTopics"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected getItemViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final getModule()Lcom/narvii/topic/model/discover/ContentModule;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    return-object v0
.end method

.method protected onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    instance-of v0, p1, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$TopicCardViewHolder;

    if-eqz v0, :cond_0

    .line 52
    move-object v0, p1

    check-cast v0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$TopicCardViewHolder;

    invoke-virtual {v0}, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$TopicCardViewHolder;->getGeneralTopicCard()Lcom/narvii/topic/widgets/GeneralTopicCard;

    move-result-object v1

    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->showSubscribeTag()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/narvii/topic/widgets/GeneralTopicCard;->setShownSubscribeTag(Z)V

    .line 53
    invoke-virtual {v0}, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$TopicCardViewHolder;->getGeneralTopicCard()Lcom/narvii/topic/widgets/GeneralTopicCard;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/story/StoryTopic;

    invoke-virtual {v0, v1}, Lcom/narvii/topic/widgets/GeneralTopicCard;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    .line 54
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    .line 45
    new-instance p2, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$TopicCardViewHolder;

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0399

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(getC\u2026e_related, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$TopicCardViewHolder;-><init>(Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 42
    :cond_0
    new-instance p2, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$MoreViewHolder;

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0398

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(getC\u2026dule_more, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$MoreViewHolder;-><init>(Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;Landroid/view/View;)V

    :goto_0
    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object p1, p1, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    const-string p3, "TopicBasedTrendingTopics"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x1

    if-nez p1, :cond_3

    const/16 p1, 0x14

    if-ge p2, p1, :cond_0

    goto :goto_1

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->itemClickListener:Lcom/narvii/list/ObjectItemClickListener;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/narvii/list/ObjectItemClickListener;->onItemClick(Lcom/narvii/model/NVObject;)V

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object p1, p1, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    const-string p2, "BookmarkedTopics"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 94
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    const-class p2, Lcom/narvii/topic/picker/AggregationTopicFragment;

    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 96
    :cond_2
    const-class p1, Lcom/narvii/topic/TopicListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 97
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object p2, p2, Lcom/narvii/topic/model/discover/ContentModule;->displayName:Ljava/lang/String;

    const-string p4, "KEY_TITLE"

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object p2, p2, Lcom/narvii/topic/model/discover/ContentModule;->dataUrl:Ljava/lang/String;

    const-string p4, "KEY_PATH"

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "_module"

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return p3

    .line 77
    :cond_3
    :goto_1
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/story/StoryTopic;

    .line 78
    const-class p2, Lcom/narvii/topic/TopicTabFragment;

    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    .line 79
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "topic"

    invoke-virtual {p2, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget p4, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    const/4 p5, 0x0

    if-nez p4, :cond_4

    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "topic0problem : StoryTopicView open with error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    return p5

    .line 84
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object p4

    instance-of p4, p4, Lcom/narvii/app/NVActivity;

    if-eqz p4, :cond_6

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object p4

    if-eqz p4, :cond_5

    check-cast p4, Lcom/narvii/app/NVActivity;

    invoke-virtual {p4}, Lcom/narvii/app/NVActivity;->isGlobalInteractionScope()Z

    move-result p4

    if-nez p4, :cond_6

    const-string p4, "__communityId"

    .line 85
    invoke-virtual {p2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 84
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.app.NVActivity"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    const-string p4, "__interactionScope"

    .line 87
    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 90
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->itemClickListener:Lcom/narvii/list/ObjectItemClickListener;

    if-eqz p2, :cond_7

    invoke-interface {p2, p1}, Lcom/narvii/list/ObjectItemClickListener;->onItemClick(Lcom/narvii/model/NVObject;)V

    :cond_7
    return p3
.end method

.method public final setItemClickListener(Lcom/narvii/list/ObjectItemClickListener;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->itemClickListener:Lcom/narvii/list/ObjectItemClickListener;

    return-void
.end method

.method public showSubscribeTag()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
