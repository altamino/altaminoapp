.class Lcom/narvii/master/CommunityDetailFragment$11$1;
.super Ljava/lang/Object;
.source "CommunityDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/CommunityDetailFragment$11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/CommunityDetailFragment$11;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityDetailFragment$11;)V
    .locals 0

    .line 1584
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$11$1;->this$1:Lcom/narvii/master/CommunityDetailFragment$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1587
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$11$1;->this$1:Lcom/narvii/master/CommunityDetailFragment$11;

    invoke-static {v1}, Lcom/narvii/master/CommunityDetailFragment$11;->access$2500(Lcom/narvii/master/CommunityDetailFragment$11;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1588
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$11$1;->this$1:Lcom/narvii/master/CommunityDetailFragment$11;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/master/CommunityDetailFragment$11;->access$2602(Lcom/narvii/master/CommunityDetailFragment$11;Z)Z

    .line 1589
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$11$1;->this$1:Lcom/narvii/master/CommunityDetailFragment$11;

    invoke-static {v0}, Lcom/narvii/master/CommunityDetailFragment$11;->access$2700(Lcom/narvii/master/CommunityDetailFragment$11;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1590
    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$11$1;->this$1:Lcom/narvii/master/CommunityDetailFragment$11;

    invoke-virtual {v0}, Lcom/narvii/master/CommunityDetailFragment$11;->beginFinishWork()V

    :cond_0
    return-void
.end method
