.class public Lcom/narvii/services/incubator/IncubatorCommunityServiceProvider;
.super Ljava/lang/Object;
.source "IncubatorCommunityServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/community/CommunityService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/community/CommunityService;
    .locals 2

    .line 11
    new-instance v0, Lcom/narvii/community/CommunityService;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/narvii/community/CommunityService;-><init>(Lcom/narvii/app/NVContext;Z)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/services/incubator/IncubatorCommunityServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/community/CommunityService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/community/CommunityService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p2, Lcom/narvii/community/CommunityService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorCommunityServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/community/CommunityService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/community/CommunityService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p2, Lcom/narvii/community/CommunityService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorCommunityServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/community/CommunityService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/community/CommunityService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p2, Lcom/narvii/community/CommunityService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorCommunityServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/community/CommunityService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/community/CommunityService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p2, Lcom/narvii/community/CommunityService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorCommunityServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/community/CommunityService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/community/CommunityService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p2, Lcom/narvii/community/CommunityService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorCommunityServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/community/CommunityService;)V

    return-void
.end method
