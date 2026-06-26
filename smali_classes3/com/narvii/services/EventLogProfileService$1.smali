.class Lcom/narvii/services/EventLogProfileService$1;
.super Landroid/content/BroadcastReceiver;
.source "EventLogProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/services/EventLogProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/services/EventLogProfileService;


# direct methods
.method constructor <init>(Lcom/narvii/services/EventLogProfileService;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/narvii/services/EventLogProfileService$1;->this$0:Lcom/narvii/services/EventLogProfileService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 56
    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService$1;->this$0:Lcom/narvii/services/EventLogProfileService;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/narvii/services/EventLogProfileService;->error:Ljava/lang/String;

    .line 57
    iput-object p2, p1, Lcom/narvii/services/EventLogProfileService;->response:Lcom/narvii/logging/EventLogProfileResponse;

    .line 58
    iget-object p1, p1, Lcom/narvii/services/EventLogProfileService;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance p2, Lcom/narvii/services/EventLogProfileService$1$1;

    invoke-direct {p2, p0}, Lcom/narvii/services/EventLogProfileService$1$1;-><init>(Lcom/narvii/services/EventLogProfileService$1;)V

    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 64
    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService$1;->this$0:Lcom/narvii/services/EventLogProfileService;

    invoke-static {p1}, Lcom/narvii/services/EventLogProfileService;->access$000(Lcom/narvii/services/EventLogProfileService;)Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService$1;->this$0:Lcom/narvii/services/EventLogProfileService;

    iget-object p1, p1, Lcom/narvii/services/EventLogProfileService;->nvContext:Lcom/narvii/app/NVContext;

    const-string p2, "api"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 66
    iget-object p2, p0, Lcom/narvii/services/EventLogProfileService$1;->this$0:Lcom/narvii/services/EventLogProfileService;

    invoke-static {p2}, Lcom/narvii/services/EventLogProfileService;->access$000(Lcom/narvii/services/EventLogProfileService;)Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService$1;->this$0:Lcom/narvii/services/EventLogProfileService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p2}, Lcom/narvii/services/EventLogProfileService;->refresh(ZZ)V

    :cond_1
    return-void
.end method
