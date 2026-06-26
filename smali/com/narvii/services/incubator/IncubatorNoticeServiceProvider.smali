.class public Lcom/narvii/services/incubator/IncubatorNoticeServiceProvider;
.super Ljava/lang/Object;
.source "IncubatorNoticeServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/services/incubator/IncubatorNoticeService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/services/incubator/IncubatorNoticeService;
    .locals 1

    .line 9
    new-instance v0, Lcom/narvii/services/incubator/IncubatorNoticeService;

    invoke-direct {v0, p1}, Lcom/narvii/services/incubator/IncubatorNoticeService;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/narvii/services/incubator/IncubatorNoticeServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/services/incubator/IncubatorNoticeService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/services/incubator/IncubatorNoticeService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/services/incubator/IncubatorNoticeService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorNoticeServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/services/incubator/IncubatorNoticeService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/services/incubator/IncubatorNoticeService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/services/incubator/IncubatorNoticeService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorNoticeServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/services/incubator/IncubatorNoticeService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/services/incubator/IncubatorNoticeService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/services/incubator/IncubatorNoticeService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorNoticeServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/services/incubator/IncubatorNoticeService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/services/incubator/IncubatorNoticeService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/services/incubator/IncubatorNoticeService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorNoticeServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/services/incubator/IncubatorNoticeService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/services/incubator/IncubatorNoticeService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/services/incubator/IncubatorNoticeService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorNoticeServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/services/incubator/IncubatorNoticeService;)V

    return-void
.end method
