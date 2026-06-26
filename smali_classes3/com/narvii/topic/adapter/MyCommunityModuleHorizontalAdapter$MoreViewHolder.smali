.class final Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$MoreViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "MyCommunityModuleHorizontalAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MoreViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;Landroid/view/View;)V
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

    .line 166
    iput-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$MoreViewHolder;->this$0:Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 168
    new-instance p1, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$MoreViewHolder$1;

    invoke-direct {p1, p0}, Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$MoreViewHolder$1;-><init>(Lcom/narvii/topic/adapter/MyCommunityModuleHorizontalAdapter$MoreViewHolder;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
