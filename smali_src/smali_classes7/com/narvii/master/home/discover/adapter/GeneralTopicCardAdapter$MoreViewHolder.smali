.class final Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$MoreViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MoreViewHolder"
.end annotation


# instance fields
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
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$MoreViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    iget-object p1, p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    return-void
.end method
