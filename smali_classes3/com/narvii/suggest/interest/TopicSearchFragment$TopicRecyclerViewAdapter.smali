.class final Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;
.super Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;
.source "TopicSearchFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/suggest/interest/TopicSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TopicRecyclerViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter$TopicViewHolder;
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


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;

.field final synthetic this$0:Lcom/narvii/suggest/interest/TopicSearchFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/suggest/interest/TopicSearchFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;->this$0:Lcom/narvii/suggest/interest/TopicSearchFragment;

    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;->ctx:Lcom/narvii/app/NVContext;

    const/4 p2, 0x1

    .line 111
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->setDarkTheme(Z)V

    .line 112
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")",
            "Lcom/narvii/paging/source/PageDataSource<",
            "Lcom/narvii/model/story/StoryTopic;",
            "Lcom/narvii/model/story/StoryTopicListResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicDataSource;

    iget-object v1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;->this$0:Lcom/narvii/suggest/interest/TopicSearchFragment;

    invoke-direct {v0, v1, p1}, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicDataSource;-><init>(Lcom/narvii/suggest/interest/TopicSearchFragment;Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 164
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;->this$0:Lcom/narvii/suggest/interest/TopicSearchFragment;

    invoke-static {v0}, Lcom/narvii/suggest/interest/TopicSearchFragment;->access$getInstantSearchListener$p(Lcom/narvii/suggest/interest/TopicSearchFragment;)Lcom/narvii/search/InstantSearchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    instance-of v0, p1, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter$TopicViewHolder;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/story/StoryTopic;

    .line 122
    check-cast p1, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter$TopicViewHolder;

    invoke-virtual {p1}, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter$TopicViewHolder;->getTopicView()Lcom/narvii/suggest/interest/InterestTopicView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/narvii/suggest/interest/InterestTopicView;->setTopicData(Lcom/narvii/model/story/StoryTopic;)V

    .line 123
    invoke-virtual {p1}, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter$TopicViewHolder;->getTopicView()Lcom/narvii/suggest/interest/InterestTopicView;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;->this$0:Lcom/narvii/suggest/interest/TopicSearchFragment;

    invoke-static {v1}, Lcom/narvii/suggest/interest/TopicSearchFragment;->access$getTopicIdList$p(Lcom/narvii/suggest/interest/TopicSearchFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget p2, p2, Lcom/narvii/model/story/StoryTopic;->topicId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/narvii/suggest/interest/InterestTopicView;->setChecked(Z)V

    .line 124
    invoke-virtual {p1}, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter$TopicViewHolder;->getTopicView()Lcom/narvii/suggest/interest/InterestTopicView;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    new-instance p2, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter$TopicViewHolder;

    iget-object v0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b06a2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(ctx.\u2026arch_item, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter$TopicViewHolder;-><init>(Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    if-eqz p5, :cond_0

    .line 129
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x7f090bd1

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 130
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 131
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/story/StoryTopic;

    if-eqz p5, :cond_3

    .line 132
    check-cast p5, Lcom/narvii/suggest/interest/InterestTopicView;

    invoke-virtual {p5}, Lcom/narvii/suggest/interest/InterestTopicView;->isChecked()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 133
    iget-object p3, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;->this$0:Lcom/narvii/suggest/interest/TopicSearchFragment;

    invoke-static {p3}, Lcom/narvii/suggest/interest/TopicSearchFragment;->access$getTopicIdList$p(Lcom/narvii/suggest/interest/TopicSearchFragment;)Ljava/util/ArrayList;

    move-result-object p3

    iget p4, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 134
    iget-object p3, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;->this$0:Lcom/narvii/suggest/interest/TopicSearchFragment;

    invoke-static {p3}, Lcom/narvii/suggest/interest/TopicSearchFragment;->access$getCanceledTopicIdList$p(Lcom/narvii/suggest/interest/TopicSearchFragment;)Ljava/util/ArrayList;

    move-result-object p3

    iget p1, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    .line 137
    :cond_2
    iget-object p3, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;->this$0:Lcom/narvii/suggest/interest/TopicSearchFragment;

    invoke-static {p3}, Lcom/narvii/suggest/interest/TopicSearchFragment;->access$getTopicIdList$p(Lcom/narvii/suggest/interest/TopicSearchFragment;)Ljava/util/ArrayList;

    move-result-object p3

    iget p4, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 139
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 140
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "selected_topic"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object p1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;->this$0:Lcom/narvii/suggest/interest/TopicSearchFragment;

    invoke-static {p1}, Lcom/narvii/suggest/interest/TopicSearchFragment;->access$getCanceledTopicIdList$p(Lcom/narvii/suggest/interest/TopicSearchFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "canceled_topic"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget-object p1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;->this$0:Lcom/narvii/suggest/interest/TopicSearchFragment;

    const/4 p3, -0x1

    invoke-virtual {p1, p3, p2}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 143
    iget-object p1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;->this$0:Lcom/narvii/suggest/interest/TopicSearchFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    :goto_1
    const/4 p1, 0x1

    return p1

    .line 132
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.suggest.interest.InterestTopicView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_4
    :goto_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
