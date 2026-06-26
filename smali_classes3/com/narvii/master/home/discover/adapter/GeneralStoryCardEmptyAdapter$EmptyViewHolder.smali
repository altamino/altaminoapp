.class final Lcom/narvii/master/home/discover/adapter/GeneralStoryCardEmptyAdapter$EmptyViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "GeneralStoryCardEmptyAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/discover/adapter/GeneralStoryCardEmptyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EmptyViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/GeneralStoryCardEmptyAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/discover/adapter/GeneralStoryCardEmptyAdapter;Landroid/view/View;)V
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

    .line 36
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GeneralStoryCardEmptyAdapter$EmptyViewHolder;->this$0:Lcom/narvii/master/home/discover/adapter/GeneralStoryCardEmptyAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
