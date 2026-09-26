.class final Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$FeaturedTopicViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "SourceFile"


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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;
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
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$FeaturedTopicViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;

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
    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$FeaturedTopicViewHolder;->generalTopicCard:Lcom/narvii/topic/widgets/GeneralTopicCard;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method


# virtual methods
.method public final getGeneralTopicCard()Lcom/narvii/topic/widgets/GeneralTopicCard;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$FeaturedTopicViewHolder;->generalTopicCard:Lcom/narvii/topic/widgets/GeneralTopicCard;

    return-object v0
.end method
