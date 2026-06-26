.class final Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$MoreViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "GeneralTopicCardAdapter.kt"


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter$MoreViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 118
    iget-object p1, p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
