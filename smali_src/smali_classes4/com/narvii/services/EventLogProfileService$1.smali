.class Lcom/narvii/services/EventLogProfileService$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/services/EventLogProfileService$1;->this$0:Lcom/narvii/services/EventLogProfileService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/services/EventLogProfileService$1;->lambda$onReceive$0(Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V

    return-void
.end method

.method private static synthetic lambda$onReceive$0(Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;->clearResponseWhenAccountChange()V

    .line 4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "com.narvii.action.ACCOUNT_CHANGED"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService$1;->this$0:Lcom/narvii/services/EventLogProfileService;

    .line 15
    const/4 p2, 0x0

    .line 16
    .line 17
    iput-object p2, p1, Lcom/narvii/services/EventLogProfileService;->error:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p2, p1, Lcom/narvii/services/EventLogProfileService;->response:Lcom/narvii/logging/EventLogProfileResponse;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/narvii/services/EventLogProfileService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 22
    .line 23
    new-instance p2, Lcom/narvii/services/b;

    .line 24
    .line 25
    .line 26
    invoke-direct {p2}, Lcom/narvii/services/b;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService$1;->this$0:Lcom/narvii/services/EventLogProfileService;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/narvii/services/EventLogProfileService;->b(Lcom/narvii/services/EventLogProfileService;)Lcom/narvii/util/http/ApiRequest;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService$1;->this$0:Lcom/narvii/services/EventLogProfileService;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/narvii/services/EventLogProfileService;->nvContext:Lcom/narvii/app/NVContext;

    .line 42
    .line 43
    const-string p2, "api"

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 50
    .line 51
    iget-object p2, p0, Lcom/narvii/services/EventLogProfileService$1;->this$0:Lcom/narvii/services/EventLogProfileService;

    .line 52
    .line 53
    .line 54
    invoke-static {p2}, Lcom/narvii/services/EventLogProfileService;->b(Lcom/narvii/services/EventLogProfileService;)Lcom/narvii/util/http/ApiRequest;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 59
    .line 60
    :cond_0
    iget-object p1, p0, Lcom/narvii/services/EventLogProfileService$1;->this$0:Lcom/narvii/services/EventLogProfileService;

    .line 61
    const/4 p2, 0x1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2, p2}, Lcom/narvii/services/EventLogProfileService;->refresh(ZZ)V

    .line 65
    :cond_1
    return-void
.end method
