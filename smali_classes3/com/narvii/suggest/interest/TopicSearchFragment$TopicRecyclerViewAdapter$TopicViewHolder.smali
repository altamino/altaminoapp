.class public final Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter$TopicViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "TopicSearchFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TopicViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;

.field private final topicView:Lcom/narvii/suggest/interest/InterestTopicView;


# direct methods
.method public constructor <init>(Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;Landroid/view/View;)V
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

    .line 157
    iput-object p1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter$TopicViewHolder;->this$0:Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090bd1

    .line 159
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.id.topic_view)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/suggest/interest/InterestTopicView;

    iput-object p1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter$TopicViewHolder;->topicView:Lcom/narvii/suggest/interest/InterestTopicView;

    return-void
.end method


# virtual methods
.method public final getTopicView()Lcom/narvii/suggest/interest/InterestTopicView;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter$TopicViewHolder;->topicView:Lcom/narvii/suggest/interest/InterestTopicView;

    return-object v0
.end method
