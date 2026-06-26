.class final Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$FeaturedTopicViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "GridTopicCardAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FeaturedTopicViewHolder"
.end annotation


# instance fields
.field private final generalTopicCard:Lcom/narvii/topic/widgets/GeneralTopicCard;

.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;Landroid/view/View;)V
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

    .line 135
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$FeaturedTopicViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 136
    sget v0, Lcom/narvii/amino/R$id;->story_topic_card_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/topic/widgets/GeneralTopicCard;

    const-string v0, "itemView.story_topic_card_view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$FeaturedTopicViewHolder;->generalTopicCard:Lcom/narvii/topic/widgets/GeneralTopicCard;

    .line 139
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$FeaturedTopicViewHolder;->generalTopicCard:Lcom/narvii/topic/widgets/GeneralTopicCard;

    iget-object p1, p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final getGeneralTopicCard()Lcom/narvii/topic/widgets/GeneralTopicCard;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$FeaturedTopicViewHolder;->generalTopicCard:Lcom/narvii/topic/widgets/GeneralTopicCard;

    return-object v0
.end method
