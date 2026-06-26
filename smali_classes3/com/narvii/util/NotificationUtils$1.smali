.class final Lcom/narvii/util/NotificationUtils$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "NotificationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/NotificationUtils;->sendUserNotification(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/UserResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$clone:Lcom/narvii/notification/Notification;

.field final synthetic val$includeGlobal:Z

.field final synthetic val$nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/narvii/notification/Notification;Lcom/narvii/app/NVContext;Z)V
    .locals 0

    .line 66
    iput-object p2, p0, Lcom/narvii/util/NotificationUtils$1;->val$clone:Lcom/narvii/notification/Notification;

    iput-object p3, p0, Lcom/narvii/util/NotificationUtils$1;->val$nvContext:Lcom/narvii/app/NVContext;

    iput-boolean p4, p0, Lcom/narvii/util/NotificationUtils$1;->val$includeGlobal:Z

    invoke-direct {p0, p1}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 77
    iget-object p1, p0, Lcom/narvii/util/NotificationUtils$1;->val$nvContext:Lcom/narvii/app/NVContext;

    iget-object p2, p0, Lcom/narvii/util/NotificationUtils$1;->val$clone:Lcom/narvii/notification/Notification;

    iget-boolean p3, p0, Lcom/narvii/util/NotificationUtils$1;->val$includeGlobal:Z

    invoke-static {p1, p2, p3}, Lcom/narvii/util/NotificationUtils;->sendNotification(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;Z)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    check-cast p2, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/NotificationUtils$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 69
    iget-object p1, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    if-eqz p1, :cond_0

    .line 70
    iget-object p2, p0, Lcom/narvii/util/NotificationUtils$1;->val$clone:Lcom/narvii/notification/Notification;

    iput-object p1, p2, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/NotificationUtils$1;->val$nvContext:Lcom/narvii/app/NVContext;

    iget-object p2, p0, Lcom/narvii/util/NotificationUtils$1;->val$clone:Lcom/narvii/notification/Notification;

    iget-boolean v0, p0, Lcom/narvii/util/NotificationUtils$1;->val$includeGlobal:Z

    invoke-static {p1, p2, v0}, Lcom/narvii/util/NotificationUtils;->sendNotification(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;Z)V

    return-void
.end method
