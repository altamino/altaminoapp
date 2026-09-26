.class public Lcom/narvii/util/NotificationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static sendNotification(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;Z)V
    .locals 0

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    const-string p2, "notification"

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    check-cast p0, Lcom/narvii/notification/NotificationCenter;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 18
    :goto_0
    return-void
.end method

.method public static sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V
    .locals 1

    const-string v0, "notification"

    .line 4
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/notification/NotificationCenter;

    .line 5
    invoke-static {p0, p1}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public static sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 2
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    if-eq v0, p0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/narvii/notification/Notification;->clone()Lcom/narvii/notification/Notification;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    :cond_1
    return-void
.end method

.method public static sendUserNotification(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;ZZ)V
    .locals 3

    .line 1
    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    goto :goto_1

    .line 6
    .line 7
    :cond_0
    if-eqz p3, :cond_2

    .line 8
    .line 9
    iget-object p3, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 10
    .line 11
    instance-of p3, p3, Lcom/narvii/model/User;

    .line 12
    .line 13
    if-nez p3, :cond_1

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/notification/Notification;->clone()Lcom/narvii/notification/Notification;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    iget-object p3, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p3, Lcom/narvii/model/User;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    const-string v2, "/user-profile/"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    iget p3, p3, Lcom/narvii/model/User;->ndcId:I

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    move-result-object p3

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 61
    move-result-object p3

    .line 62
    .line 63
    const-string v0, "api"

    .line 64
    .line 65
    .line 66
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 70
    .line 71
    new-instance v1, Lcom/narvii/util/NotificationUtils$1;

    .line 72
    .line 73
    const-class v2, Lcom/narvii/model/api/UserResponse;

    .line 74
    .line 75
    .line 76
    invoke-direct {v1, v2, p1, p0, p2}, Lcom/narvii/util/NotificationUtils$1;-><init>(Ljava/lang/Class;Lcom/narvii/notification/Notification;Lcom/narvii/app/NVContext;Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p3, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 80
    return-void

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/narvii/util/NotificationUtils;->sendNotification(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;Z)V

    .line 84
    :cond_3
    :goto_1
    return-void
.end method
