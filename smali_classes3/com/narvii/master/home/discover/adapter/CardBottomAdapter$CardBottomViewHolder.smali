.class final Lcom/narvii/master/home/discover/adapter/CardBottomAdapter$CardBottomViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "CardBottomAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CardBottomViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;Landroid/view/View;)V
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

    .line 48
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/CardBottomAdapter$CardBottomViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/CardBottomAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
