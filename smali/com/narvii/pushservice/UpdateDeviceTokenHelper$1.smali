.class Lcom/narvii/pushservice/UpdateDeviceTokenHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "UpdateDeviceTokenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/pushservice/UpdateDeviceTokenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pushservice/UpdateDeviceTokenHelper;


# direct methods
.method constructor <init>(Lcom/narvii/pushservice/UpdateDeviceTokenHelper;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper$1;->this$0:Lcom/narvii/pushservice/UpdateDeviceTokenHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 106
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    const-string p2, "account"

    .line 107
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/AccountService;

    .line 108
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p2

    .line 109
    iget-object v0, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper$1;->this$0:Lcom/narvii/pushservice/UpdateDeviceTokenHelper;

    iget-object v0, v0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->prevUid:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 110
    iget-object p2, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper$1;->this$0:Lcom/narvii/pushservice/UpdateDeviceTokenHelper;

    iget-object p2, p2, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->requestTime:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 112
    :cond_0
    iget-object p2, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper$1;->this$0:Lcom/narvii/pushservice/UpdateDeviceTokenHelper;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->sendDeviceRequest(Lcom/narvii/app/NVContext;I)V

    return-void
.end method
