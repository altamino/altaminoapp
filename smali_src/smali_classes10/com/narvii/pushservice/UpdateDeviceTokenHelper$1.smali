.class Lcom/narvii/pushservice/UpdateDeviceTokenHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper$1;->this$0:Lcom/narvii/pushservice/UpdateDeviceTokenHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string p2, "account"

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Lcom/narvii/account/AccountService;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper$1;->this$0:Lcom/narvii/pushservice/UpdateDeviceTokenHelper;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->prevUid:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result p2

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    iget-object p2, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper$1;->this$0:Lcom/narvii/pushservice/UpdateDeviceTokenHelper;

    .line 29
    .line 30
    iget-object p2, p2, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->requestTime:Ljava/util/HashMap;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 34
    .line 35
    :cond_0
    iget-object p2, p0, Lcom/narvii/pushservice/UpdateDeviceTokenHelper$1;->this$0:Lcom/narvii/pushservice/UpdateDeviceTokenHelper;

    .line 36
    const/4 v0, 0x0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1, v0}, Lcom/narvii/pushservice/UpdateDeviceTokenHelper;->sendDeviceRequest(Lcom/narvii/app/NVContext;I)V

    .line 40
    return-void
.end method
