.class public Lcom/narvii/pushservice/PushServiceProvider;
.super Ljava/lang/Object;
.source "PushServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/pushservice/PushService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lorg/apache/http/entity/mime/HeaderEntity;

    invoke-direct {v0}, Lorg/apache/http/entity/mime/HeaderEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/pushservice/PushService;
    .locals 1

    .line 16
    new-instance v0, Lcom/narvii/pushservice/PushService;

    invoke-direct {v0, p1}, Lcom/narvii/pushservice/PushService;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/pushservice/PushServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/pushservice/PushService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p2, Lcom/narvii/pushservice/PushService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/pushservice/PushServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService;)V
    .locals 0

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p2, Lcom/narvii/pushservice/PushService;->resumed:Z

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p2, Lcom/narvii/pushservice/PushService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/pushservice/PushServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService;)V
    .locals 0

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p2, Lcom/narvii/pushservice/PushService;->resumed:Z

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p2, Lcom/narvii/pushservice/PushService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/pushservice/PushServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p2, Lcom/narvii/pushservice/PushService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/pushservice/PushServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p2, Lcom/narvii/pushservice/PushService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/pushservice/PushServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/pushservice/PushService;)V

    return-void
.end method
