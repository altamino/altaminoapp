.class public final Lcom/narvii/account/GlobalAccountHelper$refreshAccountWithAvatarFrame$1;
.super Lcom/narvii/account/AccountResponseListener;
.source "GlobalAccountHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/GlobalAccountHelper;->refreshAccountWithAvatarFrame(ZLcom/narvii/util/Callback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalAccountHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalAccountHelper.kt\ncom/narvii/account/GlobalAccountHelper$refreshAccountWithAvatarFrame$1\n*L\n1#1,36:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/util/Callback;

.field final synthetic $sendNotification:Z

.field final synthetic this$0:Lcom/narvii/account/GlobalAccountHelper;


# direct methods
.method constructor <init>(Lcom/narvii/account/GlobalAccountHelper;Lcom/narvii/util/Callback;ZLcom/narvii/app/NVContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback;",
            "Z",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/narvii/account/GlobalAccountHelper$refreshAccountWithAvatarFrame$1;->this$0:Lcom/narvii/account/GlobalAccountHelper;

    iput-object p2, p0, Lcom/narvii/account/GlobalAccountHelper$refreshAccountWithAvatarFrame$1;->$callback:Lcom/narvii/util/Callback;

    iput-boolean p3, p0, Lcom/narvii/account/GlobalAccountHelper$refreshAccountWithAvatarFrame$1;->$sendNotification:Z

    invoke-direct {p0, p4}, Lcom/narvii/account/AccountResponseListener;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V
    .locals 2

    .line 24
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    if-eqz p2, :cond_1

    .line 26
    iget-object p1, p0, Lcom/narvii/account/GlobalAccountHelper$refreshAccountWithAvatarFrame$1;->$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    iget-object v0, p2, Lcom/narvii/model/api/AccountResponse;->account:Lcom/narvii/model/User;

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 27
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/account/GlobalAccountHelper$refreshAccountWithAvatarFrame$1;->$sendNotification:Z

    if-eqz p1, :cond_1

    .line 28
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 29
    new-instance v0, Lcom/narvii/notification/Notification;

    iget-object p2, p2, Lcom/narvii/model/api/AccountResponse;->account:Lcom/narvii/model/User;

    const-string/jumbo v1, "update"

    invoke-direct {v0, v1, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 30
    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 22
    check-cast p2, Lcom/narvii/model/api/AccountResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/GlobalAccountHelper$refreshAccountWithAvatarFrame$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method
