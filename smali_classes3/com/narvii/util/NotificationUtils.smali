.class public Lcom/narvii/util/NotificationUtils;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendNotification(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 44
    invoke-static {p0, p1}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V

    goto :goto_0

    :cond_0
    const-string p2, "notification"

    .line 46
    invoke-interface {p0, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/notification/NotificationCenter;

    .line 47
    invoke-virtual {p0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    :goto_0
    return-void
.end method

.method public static sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V
    .locals 1

    const-string v0, "notification"

    .line 37
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/notification/NotificationCenter;

    .line 38
    invoke-static {p0, p1}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public static sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 29
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    if-eq v0, p0, :cond_1

    .line 32
    invoke-virtual {p1}, Lcom/narvii/notification/Notification;->clone()Lcom/narvii/notification/Notification;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    :cond_1
    return-void
.end method

.method public static sendUserNotification(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;ZZ)V
    .locals 3

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_2

    .line 56
    iget-object p3, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of p3, p3, Lcom/narvii/model/User;

    if-nez p3, :cond_1

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/notification/Notification;->clone()Lcom/narvii/notification/Notification;

    move-result-object p1

    .line 62
    iget-object p3, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p3, Lcom/narvii/model/User;

    .line 64
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/user-profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget p3, p3, Lcom/narvii/model/User;->ndcId:I

    invoke-virtual {v0, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p3

    const-string v0, "api"

    .line 65
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 66
    new-instance v1, Lcom/narvii/util/NotificationUtils$1;

    const-class v2, Lcom/narvii/model/api/UserResponse;

    invoke-direct {v1, v2, p1, p0, p2}, Lcom/narvii/util/NotificationUtils$1;-><init>(Ljava/lang/Class;Lcom/narvii/notification/Notification;Lcom/narvii/app/NVContext;Z)V

    invoke-virtual {v0, p3, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void

    .line 57
    :cond_2
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/narvii/util/NotificationUtils;->sendNotification(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;Z)V

    :cond_3
    :goto_1
    return-void
.end method
