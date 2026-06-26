.class public final Lcom/narvii/master/home/profile/LinkCommunityFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "LinkCommunityFragment.kt"

# interfaces
.implements Lcom/narvii/master/home/profile/LinkCommunityFragment$ItemMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/LinkCommunityFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemMoveEnd()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$reorderCommunity(Lcom/narvii/master/home/profile/LinkCommunityFragment;)V

    return-void
.end method

.method public onItemMoved(II)V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedCommu$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    .line 97
    invoke-virtual {v0, p2}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedCommu$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 99
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedDataSource$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Lcom/narvii/paging/source/DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->resetDataSource()V

    .line 100
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedDataSource$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Lcom/narvii/paging/source/DataSource;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {v1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedCommu$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/paging/source/DataSource;->appendData(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V

    .line 101
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$onViewCreated$1;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedAdapter$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    :cond_0
    return-void
.end method
