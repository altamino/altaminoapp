.class public final Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "AggregationTopicFragment.kt"


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iput-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;

    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0905b4

    .line 139
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->interestName:Landroid/widget/TextView;

    const p1, 0x7f0905b0

    .line 140
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->indicator:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final bindInterest(Lcom/narvii/model/InterestData;)V
    .locals 7

    .line 143
    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->interestName:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/model/InterestData;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;

    invoke-virtual {v0}, Lcom/narvii/topic/picker/AggregationTopicFragment;->getSelectedInterestId()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    iget-object v2, p1, Lcom/narvii/model/InterestData;->interestId:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3, v1}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    .line 145
    iget-object v2, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->interestName:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 146
    :cond_3
    iget-object v2, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;

    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_4

    const v5, 0x7f07019a

    goto :goto_2

    :cond_4
    const v5, 0x7f07019b

    :goto_2
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 147
    iget-object v5, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->interestName:Landroid/widget/TextView;

    instance-of v6, v5, Lcom/narvii/widget/AutoSizingTextView;

    if-eqz v6, :cond_6

    if-eqz v5, :cond_5

    .line 148
    check-cast v5, Lcom/narvii/widget/AutoSizingTextView;

    invoke-virtual {v5, v2}, Lcom/narvii/widget/AutoSizingTextView;->setAutoSizeTextMaxSize(I)V

    goto :goto_3

    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.widget.AutoSizingTextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->indicator:Landroid/view/View;

    if-eqz v2, :cond_8

    if-eqz v0, :cond_7

    const/4 v5, 0x0

    goto :goto_4

    :cond_7
    const/4 v5, 0x4

    :goto_4
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    if-eqz p1, :cond_9

    .line 151
    iget-object v1, p1, Lcom/narvii/model/InterestData;->style:Lcom/narvii/model/InterestData$Style;

    :cond_9
    if-eqz v1, :cond_a

    iget-object p1, p1, Lcom/narvii/model/InterestData;->style:Lcom/narvii/model/InterestData$Style;

    iget p1, p1, Lcom/narvii/model/InterestData$Style;->backgroundColor:I

    goto :goto_5

    :cond_a
    const-wide v1, 0xfff45faaL

    long-to-int p1, v1

    .line 152
    :goto_5
    iget-object v1, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->indicator:Landroid/view/View;

    if-eqz v1, :cond_b

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 153
    :cond_b
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p1, :cond_d

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->this$0:Lcom/narvii/topic/picker/AggregationTopicFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    :cond_c
    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_d
    return-void
.end method

.method public final getIndicator()Landroid/view/View;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->indicator:Landroid/view/View;

    return-object v0
.end method

.method public final getInterestName()Landroid/widget/TextView;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/narvii/topic/picker/AggregationTopicFragment$InterestViewHolder;->interestName:Landroid/widget/TextView;

    return-object v0
.end method
