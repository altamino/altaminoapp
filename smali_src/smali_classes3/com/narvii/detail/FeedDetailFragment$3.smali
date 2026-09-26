.class Lcom/narvii/detail/FeedDetailFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$3;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFoldChanged(Z)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$3;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->isAvatarShown()Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$3;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/narvii/detail/FeedDetailFragment;->showPageMembersRunnable:Ljava/lang/Runnable;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$3;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/narvii/detail/FeedDetailFragment;->showPageMembersRunnable:Ljava/lang/Runnable;

    .line 28
    .line 29
    const-wide/16 v1, 0x7d0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$3;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/narvii/detail/FeedDetailFragment;->showPageMembersRunnable:Ljava/lang/Runnable;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    :cond_1
    :goto_0
    return-void
.end method
