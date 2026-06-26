.class Lcom/narvii/detail/FeedDetailFragment$19$1;
.super Ljava/lang/Object;
.source "FeedDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/detail/FeedDetailFragment$19;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/detail/FeedDetailFragment$19;

.field final synthetic val$ops:[I


# direct methods
.method constructor <init>(Lcom/narvii/detail/FeedDetailFragment$19;[I)V
    .locals 0

    .line 1447
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$19$1;->this$1:Lcom/narvii/detail/FeedDetailFragment$19;

    iput-object p2, p0, Lcom/narvii/detail/FeedDetailFragment$19$1;->val$ops:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1450
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$19$1;->val$ops:[I

    aget p1, p1, p2

    const p2, 0x7f0f0170

    if-eq p1, p2, :cond_2

    const p2, 0x7f0f06d5

    if-eq p1, p2, :cond_1

    const p2, 0x7f0f0fa2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1452
    :cond_0
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$19$1;->this$1:Lcom/narvii/detail/FeedDetailFragment$19;

    iget-object p1, p1, Lcom/narvii/detail/FeedDetailFragment$19;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->bottomActionShare()V

    goto :goto_0

    .line 1458
    :cond_1
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    iget-object p2, p0, Lcom/narvii/detail/FeedDetailFragment$19$1;->this$1:Lcom/narvii/detail/FeedDetailFragment$19;

    iget-object p2, p2, Lcom/narvii/detail/FeedDetailFragment$19;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-direct {p1, p2}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object p2, p0, Lcom/narvii/detail/FeedDetailFragment$19$1;->this$1:Lcom/narvii/detail/FeedDetailFragment$19;

    iget-object p2, p2, Lcom/narvii/detail/FeedDetailFragment$19;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {p2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/feed/FeedHelper;->flagForReview(Lcom/narvii/model/Feed;)V

    goto :goto_0

    .line 1455
    :cond_2
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$19$1;->this$1:Lcom/narvii/detail/FeedDetailFragment$19;

    iget-object p1, p1, Lcom/narvii/detail/FeedDetailFragment$19;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->access$900(Lcom/narvii/detail/FeedDetailFragment;)V

    :goto_0
    return-void
.end method
