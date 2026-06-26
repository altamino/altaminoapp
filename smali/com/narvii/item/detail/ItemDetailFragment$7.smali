.class Lcom/narvii/item/detail/ItemDetailFragment$7;
.super Ljava/lang/Object;
.source "ItemDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/item/detail/ItemDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/item/detail/ItemDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/item/detail/ItemDetailFragment;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$7;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 525
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$7;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$200(Lcom/narvii/item/detail/ItemDetailFragment;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$7;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    iget-boolean v2, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-eqz v2, :cond_1

    .line 529
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/detail/DetailFragment;->showPreviewToast(Landroid/content/Context;)V

    return v1

    .line 532
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Item;

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    const v2, 0x7f090cdc

    .line 535
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 536
    new-instance v3, Lcom/narvii/feed/vote/VotePopupDialog;

    iget-object v4, p0, Lcom/narvii/item/detail/ItemDetailFragment$7;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {v4}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/narvii/feed/vote/VotePopupDialog;-><init>(Landroid/content/Context;)V

    .line 537
    invoke-virtual {v3, v0}, Lcom/narvii/feed/vote/VotePopupDialog;->setFeed(Lcom/narvii/model/NVObject;)V

    .line 538
    invoke-virtual {v3, p1}, Lcom/narvii/util/dialog/PopupBubbleDialog;->setPosition(Landroid/view/View;)V

    .line 539
    new-instance p1, Lcom/narvii/item/detail/ItemDetailFragment$7$1;

    invoke-direct {p1, p0, v2}, Lcom/narvii/item/detail/ItemDetailFragment$7$1;-><init>(Lcom/narvii/item/detail/ItemDetailFragment$7;Landroid/view/View;)V

    invoke-virtual {v3, p1}, Lcom/narvii/feed/vote/VotePopupDialog;->setVoteListener(Lcom/narvii/util/Callback;)V

    .line 548
    invoke-virtual {v3}, Lcom/narvii/app/NVDialog;->show()V

    return v1
.end method
