.class public final Lcom/narvii/account/GlobalAccountHelper$refreshAccountWithAvatarFrame$1;
.super Lcom/narvii/account/AccountResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/GlobalAccountHelper;->refreshAccountWithAvatarFrame(ZLcom/narvii/util/Callback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $sendNotification:Z


# direct methods
.method constructor <init>(Lcom/narvii/util/Callback;ZLcom/narvii/app/NVContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/User;",
            ">;Z",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/GlobalAccountHelper$refreshAccountWithAvatarFrame$1;->$callback:Lcom/narvii/util/Callback;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/account/GlobalAccountHelper$refreshAccountWithAvatarFrame$1;->$sendNotification:Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p3}, Lcom/narvii/account/AccountResponseListener;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    return-void
.end method


# virtual methods
.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V
    .locals 2
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/AccountResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/narvii/account/GlobalAccountHelper$refreshAccountWithAvatarFrame$1;->$callback:Lcom/narvii/util/Callback;

    iget-boolean v0, p0, Lcom/narvii/account/GlobalAccountHelper$refreshAccountWithAvatarFrame$1;->$sendNotification:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p2, Lcom/narvii/model/api/AccountResponse;->account:Lcom/narvii/model/User;

    invoke-interface {p1, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 5
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string v1, "update"

    iget-object p2, p2, Lcom/narvii/model/api/AccountResponse;->account:Lcom/narvii/model/User;

    invoke-direct {v0, v1, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/AccountResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/GlobalAccountHelper$refreshAccountWithAvatarFrame$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method
