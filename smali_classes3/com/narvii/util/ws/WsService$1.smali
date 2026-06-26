.class Lcom/narvii/util/ws/WsService$1;
.super Landroid/content/BroadcastReceiver;
.source "WsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/ws/WsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/ws/WsService;


# direct methods
.method constructor <init>(Lcom/narvii/util/ws/WsService;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/narvii/util/ws/WsService$1;->this$0:Lcom/narvii/util/ws/WsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 173
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/narvii/util/ws/WsService$1;->this$0:Lcom/narvii/util/ws/WsService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/util/ws/WsService;->updateWs(Z)Z

    :cond_0
    return-void
.end method
