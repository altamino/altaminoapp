.class Lcom/tonyodev/fetch/FetchService$6;
.super Landroid/content/BroadcastReceiver;
.source "FetchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tonyodev/fetch/FetchService;->removeRequestAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonyodev/fetch/FetchService;


# direct methods
.method constructor <init>(Lcom/tonyodev/fetch/FetchService;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/tonyodev/fetch/FetchService$6;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 640
    invoke-static {p2}, Lcom/tonyodev/fetch/FetchRunnable;->getIdFromIntent(Landroid/content/Intent;)J

    move-result-wide p1

    .line 641
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$6;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {v0, p1, p2}, Lcom/tonyodev/fetch/FetchService;->access$2400(Lcom/tonyodev/fetch/FetchService;J)V

    .line 644
    :cond_0
    iget-object p1, p0, Lcom/tonyodev/fetch/FetchService$6;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {p1}, Lcom/tonyodev/fetch/FetchService;->access$2200(Lcom/tonyodev/fetch/FetchService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 645
    iget-object p1, p0, Lcom/tonyodev/fetch/FetchService$6;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {p1}, Lcom/tonyodev/fetch/FetchService;->access$2500(Lcom/tonyodev/fetch/FetchService;)V

    .line 646
    iget-object p1, p0, Lcom/tonyodev/fetch/FetchService$6;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {p1}, Lcom/tonyodev/fetch/FetchService;->access$1800(Lcom/tonyodev/fetch/FetchService;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 647
    iget-object p1, p0, Lcom/tonyodev/fetch/FetchService$6;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {p1}, Lcom/tonyodev/fetch/FetchService;->access$1900(Lcom/tonyodev/fetch/FetchService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 648
    iget-object p1, p0, Lcom/tonyodev/fetch/FetchService$6;->this$0:Lcom/tonyodev/fetch/FetchService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/tonyodev/fetch/FetchService;->access$2002(Lcom/tonyodev/fetch/FetchService;Z)Z

    .line 649
    iget-object p1, p0, Lcom/tonyodev/fetch/FetchService$6;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {p1}, Lcom/tonyodev/fetch/FetchService;->access$700(Lcom/tonyodev/fetch/FetchService;)V

    :cond_1
    return-void
.end method
