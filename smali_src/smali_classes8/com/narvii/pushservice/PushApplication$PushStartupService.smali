.class Lcom/narvii/pushservice/PushApplication$PushStartupService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/pushservice/PushApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PushStartupService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pushservice/PushApplication;


# direct methods
.method private constructor <init>(Lcom/narvii/pushservice/PushApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/pushservice/PushApplication$PushStartupService;->this$0:Lcom/narvii/pushservice/PushApplication;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/pushservice/PushApplication;Lcom/narvii/pushservice/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/pushservice/PushApplication$PushStartupService;-><init>(Lcom/narvii/pushservice/PushApplication;)V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    new-instance p1, Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 6
    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    const-string p2, "push"

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/pushservice/PushService;

    .line 9
    const/4 p2, 0x0

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2, v0}, Lcom/narvii/pushservice/PushService;->updateGcmToken(ZLcom/narvii/util/Callback;)V

    .line 14
    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    const-string p2, "statistics"

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/pushservice/PushApplication$PushStartupService;->this$0:Lcom/narvii/pushservice/PushApplication;

    .line 13
    .line 14
    const-string v0, "push"

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0, v1}, Lcom/narvii/app/NVApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    const-string v0, "gcmToken"

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    .line 25
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    .line 29
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result p2

    .line 31
    .line 32
    if-nez p2, :cond_0

    .line 33
    .line 34
    const-string p2, "gcm"

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    const-string p2, "none"

    .line 38
    .line 39
    :goto_0
    const-string v0, "push_service_provider"

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v0, p2}, Lcom/narvii/util/statistics/StatisticsService;->setDeviceProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    :cond_1
    return-void
.end method
