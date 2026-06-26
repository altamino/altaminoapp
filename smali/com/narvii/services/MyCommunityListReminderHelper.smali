.class public Lcom/narvii/services/MyCommunityListReminderHelper;
.super Ljava/lang/Object;
.source "MyCommunityListReminderHelper.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/services/MyCommunityListReminderHelper$Listener;
    }
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
.field private observers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/services/MyCommunityListReminderHelper$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/services/MyCommunityListReminderHelper;->observers:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 3

    const-string v0, "config"

    .line 24
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 25
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v1, p0, Lcom/narvii/services/MyCommunityListReminderHelper;->observers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;

    if-nez v1, :cond_1

    .line 28
    new-instance v1, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;

    invoke-direct {v1, p1}, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;-><init>(Lcom/narvii/app/NVContext;)V

    .line 29
    iget-object p1, p0, Lcom/narvii/services/MyCommunityListReminderHelper;->observers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1
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
    .locals 0

    .line 36
    instance-of p1, p2, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;

    if-eqz p1, :cond_0

    .line 37
    check-cast p2, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;

    invoke-virtual {p2}, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->start()V

    :cond_0
    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 51
    instance-of p1, p2, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;

    if-eqz p1, :cond_0

    .line 52
    check-cast p2, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;

    invoke-virtual {p2}, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->stop()V

    :cond_0
    return-void
.end method
