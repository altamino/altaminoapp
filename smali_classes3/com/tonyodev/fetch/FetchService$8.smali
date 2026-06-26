.class Lcom/tonyodev/fetch/FetchService$8;
.super Landroid/content/BroadcastReceiver;
.source "FetchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch/FetchService;->updateRequestUrl(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonyodev/fetch/FetchService;

.field final synthetic val$id:J

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tonyodev/fetch/FetchService;JLjava/lang/String;)V
    .locals 0

    .line 795
    iput-object p1, p0, Lcom/tonyodev/fetch/FetchService$8;->this$0:Lcom/tonyodev/fetch/FetchService;

    iput-wide p2, p0, Lcom/tonyodev/fetch/FetchService$8;->val$id:J

    iput-object p4, p0, Lcom/tonyodev/fetch/FetchService$8;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 799
    invoke-static {p2}, Lcom/tonyodev/fetch/FetchRunnable;->getIdFromIntent(Landroid/content/Intent;)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/tonyodev/fetch/FetchService$8;->val$id:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 800
    iget-object p1, p0, Lcom/tonyodev/fetch/FetchService$8;->this$0:Lcom/tonyodev/fetch/FetchService;

    iget-object p2, p0, Lcom/tonyodev/fetch/FetchService$8;->val$url:Ljava/lang/String;

    invoke-static {p1, v0, v1, p2}, Lcom/tonyodev/fetch/FetchService;->access$2600(Lcom/tonyodev/fetch/FetchService;JLjava/lang/String;)V

    .line 802
    iget-object p1, p0, Lcom/tonyodev/fetch/FetchService$8;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {p1}, Lcom/tonyodev/fetch/FetchService;->access$1800(Lcom/tonyodev/fetch/FetchService;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 803
    iget-object p1, p0, Lcom/tonyodev/fetch/FetchService$8;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {p1}, Lcom/tonyodev/fetch/FetchService;->access$1900(Lcom/tonyodev/fetch/FetchService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 804
    iget-object p1, p0, Lcom/tonyodev/fetch/FetchService$8;->this$0:Lcom/tonyodev/fetch/FetchService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/tonyodev/fetch/FetchService;->access$2002(Lcom/tonyodev/fetch/FetchService;Z)Z

    .line 805
    iget-object p1, p0, Lcom/tonyodev/fetch/FetchService$8;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {p1}, Lcom/tonyodev/fetch/FetchService;->access$700(Lcom/tonyodev/fetch/FetchService;)V

    :cond_0
    return-void
.end method
