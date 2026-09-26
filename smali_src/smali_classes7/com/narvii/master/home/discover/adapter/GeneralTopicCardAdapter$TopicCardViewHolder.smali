.class final Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$TopicCardViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TopicCardViewHolder"
.end annotation


# instance fields
.field private generalTopicCard:Lcom/narvii/topic/widgets/GeneralTopicCard;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;
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
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$TopicCardViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    const v0, 0x7f0a0dd3

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    const-string v0, "findViewById(...)"

    .line 20
    .line 21
    .line 22
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    check-cast p2, Lcom/narvii/topic/widgets/GeneralTopicCard;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$TopicCardViewHolder;->generalTopicCard:Lcom/narvii/topic/widgets/GeneralTopicCard;

    .line 27
    const/4 v0, 0x1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v0}, Lcom/narvii/topic/widgets/GeneralTopicCard;->setShownOnlineInfo(Z)V

    .line 31
    .line 32
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$TopicCardViewHolder;->generalTopicCard:Lcom/narvii/topic/widgets/GeneralTopicCard;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method


# virtual methods
.method public final getGeneralTopicCard()Lcom/narvii/topic/widgets/GeneralTopicCard;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$TopicCardViewHolder;->generalTopicCard:Lcom/narvii/topic/widgets/GeneralTopicCard;

    return-object v0
.end method

.method public final setGeneralTopicCard(Lcom/narvii/topic/widgets/GeneralTopicCard;)V
    .locals 1
    .param p1    # Lcom/narvii/topic/widgets/GeneralTopicCard;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$TopicCardViewHolder;->generalTopicCard:Lcom/narvii/topic/widgets/GeneralTopicCard;

    return-void
.end method
