.class Lcom/narvii/scene/view/SceneRecyclerView$1;
.super Ljava/lang/Object;
.source "SceneRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/view/SceneRecyclerView;->scrollToEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/view/SceneRecyclerView;


# direct methods
.method constructor <init>(Lcom/narvii/scene/view/SceneRecyclerView;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/narvii/scene/view/SceneRecyclerView$1;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$1;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 329
    iget-object v1, p0, Lcom/narvii/scene/view/SceneRecyclerView$1;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {v1}, Lcom/narvii/scene/view/SceneRecyclerView;->access$000(Lcom/narvii/scene/view/SceneRecyclerView;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 330
    iget-object v0, p0, Lcom/narvii/scene/view/SceneRecyclerView$1;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-static {v0}, Lcom/narvii/scene/view/SceneRecyclerView;->access$000(Lcom/narvii/scene/view/SceneRecyclerView;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v0

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/narvii/scene/view/SceneRecyclerView$1;->this$0:Lcom/narvii/scene/view/SceneRecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
