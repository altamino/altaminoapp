.class Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$1;->this$0:Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$1;->this$0:Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$1;->this$0:Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->b(Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$1;->this$0:Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->b(Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 26
    move-result v0

    .line 27
    const/4 v1, -0x1

    .line 28
    .line 29
    if-eq v0, v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$1;->this$0:Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 39
    move-result v1

    .line 40
    .line 41
    if-lez v1, :cond_0

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$1;->this$0:Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 53
    move-result v1

    .line 54
    rem-int/2addr v0, v1

    .line 55
    .line 56
    iget-object v1, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$1;->this$0:Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v0}, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->c(Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;I)V

    .line 60
    .line 61
    iget-object v1, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$1;->this$0:Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 65
    .line 66
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView$1;->this$0:Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;

    .line 67
    .line 68
    iget-wide v0, v0, Lcom/narvii/widget/AutoScrollHorizontalRecyclerView;->delay:J

    .line 69
    .line 70
    .line 71
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 72
    :cond_1
    return-void
.end method
