.class Lcom/narvii/detail/FeedDetailFragment$5;
.super Ljava/lang/Object;
.source "FeedDetailFragment.java"

# interfaces
.implements Lcom/narvii/livelayer/LiveLayerOnlineBar$OnFoldChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/detail/FeedDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/detail/FeedDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/detail/FeedDetailFragment;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$5;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFoldChanged(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 241
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$5;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iget-object p1, p1, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->isAvatarShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 242
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$5;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iget-object v0, v0, Lcom/narvii/detail/FeedDetailFragment;->showPageMembersRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 243
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$5;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iget-object v0, v0, Lcom/narvii/detail/FeedDetailFragment;->showPageMembersRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 246
    :cond_0
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$5;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iget-object v0, v0, Lcom/narvii/detail/FeedDetailFragment;->showPageMembersRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
