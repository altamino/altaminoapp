.class public final Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;
.super Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;
.source "AggregationTopicFragment.kt"


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
.field final synthetic this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/topic/picker/AggregationTopicFragment;Lcom/narvii/app/NVContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;->this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;

    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 1
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

    .line 113
    new-instance v0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter$InterestDataSource;

    invoke-direct {v0, p0, p1}, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter$InterestDataSource;-><init>(Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    instance-of v0, p1, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;

    if-eqz v0, :cond_0

    .line 108
    check-cast p1, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;

    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/InterestData;

    invoke-virtual {p1, p2}, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->bindInterest(Lcom/narvii/model/InterestData;)V

    :cond_0
    return-void
.end method

.method protected onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b03de

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 103
    new-instance p2, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;

    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;->this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;

    const-string v1, "cell"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;-><init>(Lcom/narvii/topic/picker/AggregationTopicFragment;Landroid/view/View;)V

    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 129
    instance-of v0, p3, Lcom/narvii/model/InterestData;

    if-eqz v0, :cond_0

    .line 130
    iget-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestAdapter;->this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;

    check-cast p3, Lcom/narvii/model/InterestData;

    invoke-virtual {p1, p3}, Lcom/narvii/topic/picker/AggregationTopicFragment;->onInterestSelected(Lcom/narvii/model/InterestData;)V

    const/4 p1, 0x1

    return p1

    .line 133
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
