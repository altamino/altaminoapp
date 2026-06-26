.class Lcom/narvii/widget/recycleview/ItemClickSupport$1;
.super Ljava/lang/Object;
.source "ItemClickSupport.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/recycleview/ItemClickSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/recycleview/ItemClickSupport;


# direct methods
.method constructor <init>(Lcom/narvii/widget/recycleview/ItemClickSupport;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/narvii/widget/recycleview/ItemClickSupport$1;->this$0:Lcom/narvii/widget/recycleview/ItemClickSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport$1;->this$0:Lcom/narvii/widget/recycleview/ItemClickSupport;

    invoke-static {v0}, Lcom/narvii/widget/recycleview/ItemClickSupport;->access$000(Lcom/narvii/widget/recycleview/ItemClickSupport;)Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport$1;->this$0:Lcom/narvii/widget/recycleview/ItemClickSupport;

    invoke-static {v0}, Lcom/narvii/widget/recycleview/ItemClickSupport;->access$100(Lcom/narvii/widget/recycleview/ItemClickSupport;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/narvii/widget/recycleview/ItemClickSupport$1;->this$0:Lcom/narvii/widget/recycleview/ItemClickSupport;

    invoke-static {v1}, Lcom/narvii/widget/recycleview/ItemClickSupport;->access$000(Lcom/narvii/widget/recycleview/ItemClickSupport;)Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/widget/recycleview/ItemClickSupport$1;->this$0:Lcom/narvii/widget/recycleview/ItemClickSupport;

    invoke-static {v2}, Lcom/narvii/widget/recycleview/ItemClickSupport;->access$100(Lcom/narvii/widget/recycleview/ItemClickSupport;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-interface {v1, v2, v0, p1}, Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemClickListener;->onItemClicked(Landroid/support/v7/widget/RecyclerView;ILandroid/view/View;)V

    :cond_0
    return-void
.end method
