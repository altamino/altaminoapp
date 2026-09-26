.class public final Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;
.super Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/picker/AggregationTopicFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InterestAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter$InterestDataSource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter<",
        "Lcom/narvii/model/InterestData;",
        "Lcom/narvii/suggest/interest/MainInterestResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private selectFirstItem:Z

.field final synthetic this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/topic/picker/AggregationTopicFragment;Lcom/narvii/app/NVContext;Z)V
    .locals 0
    .param p1    # Lcom/narvii/topic/picker/AggregationTopicFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Z)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;->this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-boolean p3, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;->selectFirstItem:Z

    .line 8
    return-void
.end method


# virtual methods
.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 1
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
            "Lcom/narvii/model/InterestData;",
            "Lcom/narvii/suggest/interest/MainInterestResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter$InterestDataSource;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter$InterestDataSource;-><init>(Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;Lcom/narvii/app/NVContext;)V

    .line 6
    return-object v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
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
    instance-of v0, p1, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/model/InterestData;

    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;->selectFirstItem:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->selectFirstTopic(Lcom/narvii/model/InterestData;)V

    .line 27
    const/4 p1, 0x0

    .line 28
    .line 29
    iput-boolean p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;->selectFirstItem:Z

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    check-cast p1, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->bindInterest(Lcom/narvii/model/InterestData;)V

    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p2, "parent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    const v0, 0x7f0d0414

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    new-instance p2, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;->this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, v0, p1}, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;-><init>(Lcom/narvii/topic/picker/AggregationTopicFragment;Landroid/view/View;)V

    .line 32
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
    instance-of v0, p3, Lcom/narvii/model/InterestData;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;->this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;

    .line 7
    .line 8
    check-cast p3, Lcom/narvii/model/InterestData;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3}, Lcom/narvii/topic/picker/AggregationTopicFragment;->onInterestSelected(Lcom/narvii/model/InterestData;)V

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 17
    move-result p1

    .line 18
    return p1
.end method
