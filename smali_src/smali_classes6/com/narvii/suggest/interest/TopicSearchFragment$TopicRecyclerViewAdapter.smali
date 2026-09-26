.class final Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;
.super Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;
.source "SourceFile"


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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/suggest/interest/TopicSearchFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/suggest/interest/TopicSearchFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/suggest/interest/TopicSearchFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;->this$0:Lcom/narvii/suggest/interest/TopicSearchFragment;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    iput-object p2, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;->ctx:Lcom/narvii/app/NVContext;

    .line 13
    const/4 p2, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->setDarkTheme(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 20
    return-void
.end method


# virtual methods
.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 2
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicDataSource;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;->this$0:Lcom/narvii/suggest/interest/TopicSearchFragment;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, p1}, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicDataSource;-><init>(Lcom/narvii/suggest/interest/TopicSearchFragment;Lcom/narvii/app/NVContext;)V

    .line 13
    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;->this$0:Lcom/narvii/suggest/interest/TopicSearchFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/narvii/suggest/interest/TopicSearchFragment;->access$getInstantSearchListener$p(Lcom/narvii/suggest/interest/TopicSearchFragment;)Lcom/narvii/search/InstantSearchListener;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
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
    instance-of v0, p1, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter$TopicViewHolder;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    check-cast p2, Lcom/narvii/model/story/StoryTopic;

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter$TopicViewHolder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter$TopicViewHolder;->getTopicView()Lcom/narvii/suggest/interest/InterestTopicView;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Lcom/narvii/suggest/interest/InterestTopicView;->setTopicData(Lcom/narvii/model/story/StoryTopic;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter$TopicViewHolder;->getTopicView()Lcom/narvii/suggest/interest/InterestTopicView;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;->this$0:Lcom/narvii/suggest/interest/TopicSearchFragment;

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lcom/narvii/suggest/interest/TopicSearchFragment;->access$getTopicIdList$p(Lcom/narvii/suggest/interest/TopicSearchFragment;)Ljava/util/ArrayList;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    .line 39
    const-string/jumbo v1, "topicIdList"

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x0

    .line 44
    .line 45
    :cond_0
    iget p2, p2, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 46
    .line 47
    .line 48
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 53
    move-result p2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p2}, Lcom/narvii/suggest/interest/InterestTopicView;->setChecked(Z)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter$TopicViewHolder;->getTopicView()Lcom/narvii/suggest/interest/InterestTopicView;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    iget-object p2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    :cond_1
    return-void
.end method

.method protected onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
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
    new-instance p2, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter$TopicViewHolder;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;->ctx:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    const v1, 0x7f0d0759

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    const-string v0, "inflate(...)"

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p2, p0, p1}, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter$TopicViewHolder;-><init>(Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;Landroid/view/View;)V

    .line 34
    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3
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
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 7
    move-result v1

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v1, v0

    .line 14
    .line 15
    :goto_0
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto/16 :goto_4

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result v1

    .line 22
    .line 23
    .line 24
    const v2, 0x7f0a0eec

    .line 25
    .line 26
    if-ne v1, v2, :cond_5

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    check-cast p1, Lcom/narvii/model/story/StoryTopic;

    .line 33
    .line 34
    const-string p3, "null cannot be cast to non-null type com.narvii.suggest.interest.InterestTopicView"

    .line 35
    .line 36
    .line 37
    invoke-static {p5, p3}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    check-cast p5, Lcom/narvii/suggest/interest/InterestTopicView;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p5}, Lcom/narvii/suggest/interest/InterestTopicView;->isChecked()Z

    .line 43
    move-result p3

    .line 44
    .line 45
    .line 46
    const-string/jumbo p4, "topicIdList"

    .line 47
    .line 48
    if-eqz p3, :cond_3

    .line 49
    .line 50
    iget-object p3, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;->this$0:Lcom/narvii/suggest/interest/TopicSearchFragment;

    .line 51
    .line 52
    .line 53
    invoke-static {p3}, Lcom/narvii/suggest/interest/TopicSearchFragment;->access$getTopicIdList$p(Lcom/narvii/suggest/interest/TopicSearchFragment;)Ljava/util/ArrayList;

    .line 54
    move-result-object p3

    .line 55
    .line 56
    if-nez p3, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-static {p4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move-object v0, p3

    .line 62
    .line 63
    :goto_1
    iget p3, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 64
    .line 65
    .line 66
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object p3

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 71
    .line 72
    iget-object p3, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;->this$0:Lcom/narvii/suggest/interest/TopicSearchFragment;

    .line 73
    .line 74
    .line 75
    invoke-static {p3}, Lcom/narvii/suggest/interest/TopicSearchFragment;->access$getCanceledTopicIdList$p(Lcom/narvii/suggest/interest/TopicSearchFragment;)Ljava/util/ArrayList;

    .line 76
    move-result-object p3

    .line 77
    .line 78
    iget p1, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 89
    goto :goto_3

    .line 90
    .line 91
    :cond_3
    iget-object p3, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;->this$0:Lcom/narvii/suggest/interest/TopicSearchFragment;

    .line 92
    .line 93
    .line 94
    invoke-static {p3}, Lcom/narvii/suggest/interest/TopicSearchFragment;->access$getTopicIdList$p(Lcom/narvii/suggest/interest/TopicSearchFragment;)Ljava/util/ArrayList;

    .line 95
    move-result-object p3

    .line 96
    .line 97
    if-nez p3, :cond_4

    .line 98
    .line 99
    .line 100
    invoke-static {p4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 101
    goto :goto_2

    .line 102
    :cond_4
    move-object v0, p3

    .line 103
    .line 104
    :goto_2
    iget p3, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 105
    .line 106
    .line 107
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    move-result-object p3

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 115
    .line 116
    new-instance p2, Landroid/content/Intent;

    .line 117
    .line 118
    .line 119
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 120
    .line 121
    const-string p3, "selected_topic"

    .line 122
    .line 123
    .line 124
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    .line 130
    iget-object p1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;->this$0:Lcom/narvii/suggest/interest/TopicSearchFragment;

    .line 131
    .line 132
    .line 133
    invoke-static {p1}, Lcom/narvii/suggest/interest/TopicSearchFragment;->access$getCanceledTopicIdList$p(Lcom/narvii/suggest/interest/TopicSearchFragment;)Ljava/util/ArrayList;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    .line 137
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    move-result-object p1

    .line 139
    .line 140
    const-string p3, "canceled_topic"

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    .line 145
    iget-object p1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;->this$0:Lcom/narvii/suggest/interest/TopicSearchFragment;

    .line 146
    const/4 p3, -0x1

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, p3, p2}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 150
    .line 151
    iget-object p1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;->this$0:Lcom/narvii/suggest/interest/TopicSearchFragment;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 155
    :goto_3
    const/4 p1, 0x1

    .line 156
    return p1

    .line 157
    .line 158
    .line 159
    :cond_5
    :goto_4
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 160
    move-result p1

    .line 161
    return p1
.end method
