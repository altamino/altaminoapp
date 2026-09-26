.class public final Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter$TopicViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "SourceFile"


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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;
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
    iput-object p1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter$TopicViewHolder;->this$0:Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    const p1, 0x7f0a0eec

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-string p2, "findViewById(...)"

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    check-cast p1, Lcom/narvii/suggest/interest/InterestTopicView;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter$TopicViewHolder;->topicView:Lcom/narvii/suggest/interest/InterestTopicView;

    .line 27
    return-void
.end method


# virtual methods
.method public final getTopicView()Lcom/narvii/suggest/interest/InterestTopicView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicRecyclerViewAdapter$TopicViewHolder;->topicView:Lcom/narvii/suggest/interest/InterestTopicView;

    return-object v0
.end method
