.class Lcom/narvii/widget/recycleview/ItemClickSupport$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/recycleview/ItemClickSupport$2;->this$0:Lcom/narvii/widget/recycleview/ItemClickSupport;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport$2;->this$0:Lcom/narvii/widget/recycleview/ItemClickSupport;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/widget/recycleview/ItemClickSupport;->c(Lcom/narvii/widget/recycleview/ItemClickSupport;)Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemLongClickListener;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/widget/recycleview/ItemClickSupport$2;->this$0:Lcom/narvii/widget/recycleview/ItemClickSupport;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/widget/recycleview/ItemClickSupport;->e(Lcom/narvii/widget/recycleview/ItemClickSupport;)Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    .line 22
    move-result v0

    .line 23
    const/4 v1, -0x1

    .line 24
    .line 25
    if-eq v0, v1, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/widget/recycleview/ItemClickSupport$2;->this$0:Lcom/narvii/widget/recycleview/ItemClickSupport;

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lcom/narvii/widget/recycleview/ItemClickSupport;->c(Lcom/narvii/widget/recycleview/ItemClickSupport;)Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemLongClickListener;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    iget-object v2, p0, Lcom/narvii/widget/recycleview/ItemClickSupport$2;->this$0:Lcom/narvii/widget/recycleview/ItemClickSupport;

    .line 34
    .line 35
    .line 36
    invoke-static {v2}, Lcom/narvii/widget/recycleview/ItemClickSupport;->e(Lcom/narvii/widget/recycleview/ItemClickSupport;)Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-interface {v1, v2, v0, p1}, Lcom/narvii/widget/recycleview/ItemClickSupport$OnItemLongClickListener;->onItemLongClicked(Landroidx/recyclerview/widget/RecyclerView;ILandroid/view/View;)Z

    .line 41
    move-result p1

    .line 42
    return p1

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    return p1
.end method
