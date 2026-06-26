.class public Lcom/narvii/services/BadgeServiceProvider;
.super Lcom/narvii/util/badge/BaseBadgeServiceProvider;
.source "BadgeServiceProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/narvii/util/badge/BaseBadgeServiceProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/badge/BadgeService;)V
    .locals 1

    .line 14
    invoke-super {p0, p1, p2}, Lcom/narvii/util/badge/BaseBadgeServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/badge/BadgeService;)V

    const-string p2, "drawerHost"

    .line 16
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/drawer/DrawerHost;

    const-string v0, "badge"

    .line 17
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/badge/BadgeService;

    .line 18
    invoke-virtual {p2}, Lcom/narvii/drawer/DrawerHost;->getTotalBadgeCount()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/util/badge/BadgeService;->setBadge(I)V

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/util/badge/BadgeService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/BadgeServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/badge/BadgeService;)V

    return-void
.end method
