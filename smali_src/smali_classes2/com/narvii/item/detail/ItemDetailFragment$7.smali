.class Lcom/narvii/item/detail/ItemDetailFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$7;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$7;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$000(Lcom/narvii/item/detail/ItemDetailFragment;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$7;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 13
    .line 14
    iget-boolean v2, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/narvii/detail/DetailFragment;->showPreviewToast(Landroid/content/Context;)V

    .line 24
    return v1

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Lcom/narvii/model/Item;

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    const/4 p1, 0x0

    .line 34
    return p1

    .line 35
    .line 36
    .line 37
    :cond_2
    const v2, 0x7f0a1002

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    new-instance v3, Lcom/narvii/feed/vote/VotePopupDialog;

    .line 44
    .line 45
    iget-object v4, p0, Lcom/narvii/item/detail/ItemDetailFragment$7;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    .line 52
    invoke-direct {v3, v4}, Lcom/narvii/feed/vote/VotePopupDialog;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v0}, Lcom/narvii/feed/vote/VotePopupDialog;->setFeed(Lcom/narvii/model/NVObject;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, p1}, Lcom/narvii/util/dialog/PopupBubbleDialog;->setPosition(Landroid/view/View;)V

    .line 59
    .line 60
    new-instance p1, Lcom/narvii/item/detail/ItemDetailFragment$7$1;

    .line 61
    .line 62
    .line 63
    invoke-direct {p1, p0, v2}, Lcom/narvii/item/detail/ItemDetailFragment$7$1;-><init>(Lcom/narvii/item/detail/ItemDetailFragment$7;Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, p1}, Lcom/narvii/feed/vote/VotePopupDialog;->setVoteListener(Lcom/narvii/util/Callback;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/narvii/app/NVDialog;->show()V

    .line 70
    return v1
.end method
