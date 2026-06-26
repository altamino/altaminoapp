.class public Lcom/narvii/community/JoinCommunityServiceProvider;
.super Ljava/lang/Object;
.source "JoinCommunityServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/community/IJoinCommunityService;",
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
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/community/IJoinCommunityService;
    .locals 0

    .line 9
    new-instance p1, Lcom/narvii/community/JoinCommunityService;

    invoke-direct {p1}, Lcom/narvii/community/JoinCommunityService;-><init>()V

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/narvii/community/JoinCommunityServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/community/IJoinCommunityService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/community/IJoinCommunityService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/community/IJoinCommunityService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/JoinCommunityServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/community/IJoinCommunityService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/community/IJoinCommunityService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/community/IJoinCommunityService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/JoinCommunityServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/community/IJoinCommunityService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/community/IJoinCommunityService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/community/IJoinCommunityService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/JoinCommunityServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/community/IJoinCommunityService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/community/IJoinCommunityService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/community/IJoinCommunityService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/JoinCommunityServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/community/IJoinCommunityService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/community/IJoinCommunityService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/community/IJoinCommunityService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/JoinCommunityServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/community/IJoinCommunityService;)V

    return-void
.end method
