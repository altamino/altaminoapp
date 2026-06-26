.class Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$1;
.super Ljava/lang/Object;
.source "AutoScrollHorizontalRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$1;->this$0:Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$1;->this$0:Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$1;->this$0:Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    invoke-static {v0}, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->access$000(Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$1;->this$0:Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    invoke-static {v0}, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->access$000(Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 31
    iget-object v1, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$1;->this$0:Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    rem-int/2addr v0, v1

    .line 32
    iget-object v1, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$1;->this$0:Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    invoke-static {v1, v0}, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->access$102(Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;I)I

    .line 33
    iget-object v1, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$1;->this$0:Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$1;->this$0:Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    iget-wide v0, v0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->delay:J

    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method
