.class Lcom/tonyodev/fetch/FetchService$4;
.super Landroid/content/BroadcastReceiver;
.source "FetchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch/FetchService;->remove(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonyodev/fetch/FetchService;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/tonyodev/fetch/FetchService;J)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/tonyodev/fetch/FetchService$4;->this$0:Lcom/tonyodev/fetch/FetchService;

    iput-wide p2, p0, Lcom/tonyodev/fetch/FetchService$4;->val$id:J

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 544
    invoke-static {p2}, Lcom/tonyodev/fetch/FetchRunnable;->getIdFromIntent(Landroid/content/Intent;)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/tonyodev/fetch/FetchService$4;->val$id:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 545
    iget-object p1, p0, Lcom/tonyodev/fetch/FetchService$4;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {p1, v0, v1}, Lcom/tonyodev/fetch/FetchService;->access$2100(Lcom/tonyodev/fetch/FetchService;J)V

    .line 547
    iget-object p1, p0, Lcom/tonyodev/fetch/FetchService$4;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {p1}, Lcom/tonyodev/fetch/FetchService;->access$1800(Lcom/tonyodev/fetch/FetchService;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 548
    iget-object p1, p0, Lcom/tonyodev/fetch/FetchService$4;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {p1}, Lcom/tonyodev/fetch/FetchService;->access$1900(Lcom/tonyodev/fetch/FetchService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 549
    iget-object p1, p0, Lcom/tonyodev/fetch/FetchService$4;->this$0:Lcom/tonyodev/fetch/FetchService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/tonyodev/fetch/FetchService;->access$2002(Lcom/tonyodev/fetch/FetchService;Z)Z

    .line 550
    iget-object p1, p0, Lcom/tonyodev/fetch/FetchService$4;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {p1}, Lcom/tonyodev/fetch/FetchService;->access$700(Lcom/tonyodev/fetch/FetchService;)V

    :cond_0
    return-void
.end method
