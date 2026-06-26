.class Lcom/narvii/item/detail/ItemDetailFragment$2;
.super Ljava/lang/Object;
.source "ItemDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/item/detail/ItemDetailFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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

    .line 355
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$2;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 359
    new-instance p1, Lcom/narvii/item/detail/ItemDetailFragment$2$1;

    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$2;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-direct {p1, p0, v0}, Lcom/narvii/item/detail/ItemDetailFragment$2$1;-><init>(Lcom/narvii/item/detail/ItemDetailFragment$2;Lcom/narvii/app/NVContext;)V

    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$2;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 365
    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Item;

    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedHelper;->copyAndEdit(Lcom/narvii/model/Item;)V

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 368
    new-instance p2, Lcom/narvii/feed/FeedHelper;

    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$2;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-direct {p2, v0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$2;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/narvii/feed/FeedHelper;->delete(Lcom/narvii/model/Feed;Z)V

    :cond_1
    return-void
.end method
