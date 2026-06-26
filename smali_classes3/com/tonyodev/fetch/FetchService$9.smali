.class Lcom/tonyodev/fetch/FetchService$9;
.super Landroid/content/BroadcastReceiver;
.source "FetchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonyodev/fetch/FetchService;
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

    .line 829
    iput-object p1, p0, Lcom/tonyodev/fetch/FetchService$9;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 835
    invoke-static {p2}, Lcom/tonyodev/fetch/FetchRunnable;->getIdFromIntent(Landroid/content/Intent;)J

    move-result-wide p1

    .line 837
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$9;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {v0}, Lcom/tonyodev/fetch/FetchService;->access$2200(Lcom/tonyodev/fetch/FetchService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/tonyodev/fetch/FetchService$9;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {v0}, Lcom/tonyodev/fetch/FetchService;->access$2200(Lcom/tonyodev/fetch/FetchService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    :cond_0
    iget-object p1, p0, Lcom/tonyodev/fetch/FetchService$9;->this$0:Lcom/tonyodev/fetch/FetchService;

    invoke-static {p1}, Lcom/tonyodev/fetch/FetchService;->access$700(Lcom/tonyodev/fetch/FetchService;)V

    :cond_1
    return-void
.end method
