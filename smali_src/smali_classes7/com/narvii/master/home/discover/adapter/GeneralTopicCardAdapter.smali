.class public abstract Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;
.super Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$Companion;,
        Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$MoreViewHolder;,
        Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$TopicCardViewHolder;
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


# static fields
.field public static final Companion:Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MAX_TOPIC_SIZE:I = 0x14

.field private static final MORE_TYPE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GeneralTopicCard"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TOPIC_CARD_TYPE:I


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private itemClickListener:Lcom/narvii/list/ObjectItemClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final module:Lcom/narvii/topic/model/discover/ContentModule;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->Companion:Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/topic/model/discover/ContentModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "module"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 18
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getItemClickListener()Lcom/narvii/list/ObjectItemClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->itemClickListener:Lcom/narvii/list/ObjectItemClickListener;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "TopicBasedTrendingTopics"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    const/16 v1, 0x14

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-super {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemCount()I

    .line 18
    move-result v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-super {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemCount()I

    .line 27
    move-result v0

    .line 28
    .line 29
    if-lt v0, v1, :cond_1

    .line 30
    .line 31
    const/16 v0, 0x15

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-super {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemCount()I

    .line 36
    move-result v0

    .line 37
    :goto_0
    return v0
.end method

.method protected getItemType(I)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "TopicBasedTrendingTopics"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    return v1

    .line 15
    .line 16
    :cond_0
    const/16 v0, 0x14

    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    const/4 v1, 0x1

    .line 20
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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    return-object v0
.end method

.method protected onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "holder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of v0, p1, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$TopicCardViewHolder;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    move-object v0, p1

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$TopicCardViewHolder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$TopicCardViewHolder;->getGeneralTopicCard()Lcom/narvii/topic/widgets/GeneralTopicCard;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->showSubscribeTag()Z

    .line 20
    move-result v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/narvii/topic/widgets/GeneralTopicCard;->setShownSubscribeTag(Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$TopicCardViewHolder;->getGeneralTopicCard()Lcom/narvii/topic/widgets/GeneralTopicCard;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    check-cast v1, Lcom/narvii/model/story/StoryTopic;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/narvii/topic/widgets/GeneralTopicCard;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    .line 37
    .line 38
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    .line 45
    invoke-static {p1, p2}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    .line 46
    :cond_0
    return-void
.end method

.method protected onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "parent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    const-string v1, "inflate(...)"

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-ne p2, v0, :cond_0

    .line 12
    .line 13
    new-instance p2, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$MoreViewHolder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    const v3, 0x7f0d03cf

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$MoreViewHolder;-><init>(Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;Landroid/view/View;)V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    new-instance p2, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$TopicCardViewHolder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    const v3, 0x7f0d03d0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$TopicCardViewHolder;-><init>(Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;Landroid/view/View;)V

    .line 59
    :goto_0
    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1    # Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    .line 5
    .line 6
    const-string p3, "TopicBasedTrendingTopics"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    const/4 p3, 0x1

    .line 12
    .line 13
    if-nez p1, :cond_3

    .line 14
    .line 15
    const/16 p1, 0x14

    .line 16
    .line 17
    if-ge p2, p1, :cond_0

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->itemClickListener:Lcom/narvii/list/ObjectItemClickListener;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    const/4 p2, 0x0

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, p2}, Lcom/narvii/list/ObjectItemClickListener;->onItemClick(Lcom/narvii/model/NVObject;)V

    .line 27
    .line 28
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    .line 31
    .line 32
    const-string p2, "BookmarkedTopics"

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result p1

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    .line 41
    .line 42
    const-class p2, Lcom/narvii/topic/picker/AggregationTopicFragment;

    .line 43
    .line 44
    .line 45
    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    .line 49
    invoke-static {p1, p2}, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_2
    const-class p1, Lcom/narvii/topic/TopicListFragment;

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 59
    .line 60
    iget-object p2, p2, Lcom/narvii/topic/model/discover/ContentModule;->displayName:Ljava/lang/String;

    .line 61
    .line 62
    const-string p4, "KEY_TITLE"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    .line 67
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 68
    .line 69
    iget-object p2, p2, Lcom/narvii/topic/model/discover/ContentModule;->dataUrl:Ljava/lang/String;

    .line 70
    .line 71
    const-string p4, "KEY_PATH"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    .line 76
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 77
    .line 78
    .line 79
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    const-string p4, "_module"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    .line 87
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    .line 88
    .line 89
    .line 90
    invoke-static {p2, p1}, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 91
    :goto_0
    return p3

    .line 92
    .line 93
    .line 94
    :cond_3
    :goto_1
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    check-cast p1, Lcom/narvii/model/story/StoryTopic;

    .line 98
    .line 99
    const-class p2, Lcom/narvii/topic/TopicTabFragment;

    .line 100
    .line 101
    .line 102
    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 103
    move-result-object p2

    .line 104
    .line 105
    const-string p4, "topic"

    .line 106
    .line 107
    .line 108
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    move-result-object p5

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    .line 114
    iget p4, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 115
    const/4 p5, 0x0

    .line 116
    .line 117
    if-nez p4, :cond_4

    .line 118
    .line 119
    new-instance p2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    const-string p3, "topic0problem : StoryTopicView open with error: "

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    .line 137
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 138
    return p5

    .line 139
    .line 140
    .line 141
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 142
    move-result-object p4

    .line 143
    .line 144
    instance-of p4, p4, Lcom/narvii/app/NVActivity;

    .line 145
    .line 146
    if-eqz p4, :cond_5

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 150
    move-result-object p4

    .line 151
    .line 152
    const-string v0, "null cannot be cast to non-null type com.narvii.app.NVActivity"

    .line 153
    .line 154
    .line 155
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    check-cast p4, Lcom/narvii/app/NVActivity;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p4}, Lcom/narvii/app/NVActivity;->isGlobalInteractionScope()Z

    .line 161
    move-result p4

    .line 162
    .line 163
    if-nez p4, :cond_5

    .line 164
    .line 165
    const-string p4, "__communityId"

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    .line 170
    :cond_5
    const-string p4, "__interactionScope"

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 177
    move-result-object p4

    .line 178
    .line 179
    .line 180
    invoke-static {p4, p2}, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 181
    .line 182
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->itemClickListener:Lcom/narvii/list/ObjectItemClickListener;

    .line 183
    .line 184
    if-eqz p2, :cond_6

    .line 185
    .line 186
    .line 187
    invoke-interface {p2, p1}, Lcom/narvii/list/ObjectItemClickListener;->onItemClick(Lcom/narvii/model/NVObject;)V

    .line 188
    :cond_6
    return p3
.end method

.method public final setItemClickListener(Lcom/narvii/list/ObjectItemClickListener;)V
    .locals 0
    .param p1    # Lcom/narvii/list/ObjectItemClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;->itemClickListener:Lcom/narvii/list/ObjectItemClickListener;

    return-void
.end method

.method public showSubscribeTag()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
