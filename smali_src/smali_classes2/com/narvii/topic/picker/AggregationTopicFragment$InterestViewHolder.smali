.class public final Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/picker/AggregationTopicFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InterestViewHolder"
.end annotation


# instance fields
.field private final indicator:Landroid/view/View;

.field private final interestName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/topic/picker/AggregationTopicFragment;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/narvii/topic/picker/AggregationTopicFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "itemView"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    const p1, 0x7f0a0732

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->interestName:Landroid/widget/TextView;

    .line 22
    .line 23
    .line 24
    const p1, 0x7f0a072e

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->indicator:Landroid/view/View;

    .line 31
    return-void
.end method


# virtual methods
.method public final bindInterest(Lcom/narvii/model/InterestData;)V
    .locals 6
    .param p1    # Lcom/narvii/model/InterestData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->interestName:Landroid/widget/TextView;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    goto :goto_1

    .line 7
    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/model/InterestData;->getDisplayName()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move-object v2, v1

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    :goto_1
    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/topic/picker/AggregationTopicFragment;->getSelectedInterestId()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    iget-object v2, p1, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    move-object v2, v1

    .line 30
    :goto_2
    const/4 v3, 0x2

    .line 31
    const/4 v4, 0x0

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v2, v4, v3, v1}, Lkotlin/text/k;->x(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    iget-object v2, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->interestName:Landroid/widget/TextView;

    .line 38
    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 43
    .line 44
    :cond_3
    iget-object v2, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    .line 57
    const v3, 0x7f070219

    .line 58
    goto :goto_3

    .line 59
    .line 60
    .line 61
    :cond_4
    const v3, 0x7f07021a

    .line 62
    .line 63
    .line 64
    :goto_3
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 65
    move-result v2

    .line 66
    .line 67
    iget-object v3, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->interestName:Landroid/widget/TextView;

    .line 68
    .line 69
    instance-of v5, v3, Lcom/narvii/widget/AutoSizingTextView;

    .line 70
    .line 71
    if-eqz v5, :cond_5

    .line 72
    .line 73
    check-cast v3, Lcom/narvii/widget/AutoSizingTextView;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v2}, Lcom/narvii/widget/AutoSizingTextView;->setAutoSizeTextMaxSize(I)V

    .line 77
    .line 78
    :cond_5
    iget-object v2, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->indicator:Landroid/view/View;

    .line 79
    .line 80
    if-nez v2, :cond_6

    .line 81
    goto :goto_5

    .line 82
    .line 83
    :cond_6
    if-eqz v0, :cond_7

    .line 84
    move v3, v4

    .line 85
    goto :goto_4

    .line 86
    :cond_7
    const/4 v3, 0x4

    .line 87
    .line 88
    .line 89
    :goto_4
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    :goto_5
    if-eqz p1, :cond_8

    .line 92
    .line 93
    iget-object v1, p1, Lcom/narvii/model/InterestData;->style:Lcom/narvii/model/InterestData$Style;

    .line 94
    .line 95
    :cond_8
    if-eqz v1, :cond_9

    .line 96
    .line 97
    iget-object p1, p1, Lcom/narvii/model/InterestData;->style:Lcom/narvii/model/InterestData$Style;

    .line 98
    .line 99
    iget p1, p1, Lcom/narvii/model/InterestData$Style;->backgroundColor:I

    .line 100
    goto :goto_6

    .line 101
    .line 102
    .line 103
    :cond_9
    const p1, -0xba056

    .line 104
    .line 105
    :goto_6
    iget-object v1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->indicator:Landroid/view/View;

    .line 106
    .line 107
    if-eqz v1, :cond_a

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 111
    .line 112
    :cond_a
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 113
    .line 114
    if-eqz v0, :cond_b

    .line 115
    .line 116
    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    .line 127
    const v1, 0x7f06002d

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 131
    move-result v4

    .line 132
    .line 133
    .line 134
    :cond_b
    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 135
    return-void
.end method

.method public final getIndicator()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->indicator:Landroid/view/View;

    return-object v0
.end method

.method public final getInterestName()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->interestName:Landroid/widget/TextView;

    return-object v0
.end method

.method public final selectFirstTopic(Lcom/narvii/model/InterestData;)V
    .locals 2
    .param p1    # Lcom/narvii/model/InterestData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;

    .line 6
    .line 7
    iget-object v1, p1, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/topic/picker/AggregationTopicFragment;->setSelectedInterestId(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->bindInterest(Lcom/narvii/model/InterestData;)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/topic/picker/AggregationTopicFragment;->access$updateBookmarkSection(Lcom/narvii/topic/picker/AggregationTopicFragment;)V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/topic/picker/AggregationTopicFragment;->getTopicFragments()Lcom/narvii/util/LruCache;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/narvii/topic/picker/AggregationTopicFragment;->getSelectedInterestId()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/narvii/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Lcom/narvii/topic/picker/InterestSubTopicListFragment;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/narvii/topic/picker/AggregationTopicFragment;->getSelectedInterestId()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v0, v1}, Lcom/narvii/topic/picker/AggregationTopicFragment;->access$buildTopicFragment(Lcom/narvii/topic/picker/AggregationTopicFragment;Lcom/narvii/topic/picker/InterestSubTopicListFragment;Ljava/lang/String;)Lcom/narvii/topic/picker/InterestSubTopicListFragment;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;

    .line 49
    .line 50
    .line 51
    invoke-static {v0, p1}, Lcom/narvii/topic/picker/AggregationTopicFragment;->access$showSelectedTopicFragment(Lcom/narvii/topic/picker/AggregationTopicFragment;Lcom/narvii/topic/picker/InterestSubTopicListFragment;)V

    .line 52
    return-void
.end method
