.class Lcom/narvii/item/detail/ItemDetailFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$2;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    new-instance p1, Lcom/narvii/item/detail/ItemDetailFragment$2$1;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$2;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, p0, v0}, Lcom/narvii/item/detail/ItemDetailFragment$2$1;-><init>(Lcom/narvii/item/detail/ItemDetailFragment$2;Lcom/narvii/app/NVContext;)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$2;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/model/Item;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedHelper;->copyAndEdit(Lcom/narvii/model/Item;)V

    .line 21
    :cond_0
    const/4 p1, 0x1

    .line 22
    .line 23
    if-ne p2, p1, :cond_1

    .line 24
    .line 25
    new-instance p2, Lcom/narvii/feed/FeedHelper;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$2;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 28
    .line 29
    .line 30
    invoke-direct {p2, v0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$2;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v0, p1}, Lcom/narvii/feed/FeedHelper;->delete(Lcom/narvii/model/Feed;Z)V

    .line 40
    :cond_1
    return-void
.end method
