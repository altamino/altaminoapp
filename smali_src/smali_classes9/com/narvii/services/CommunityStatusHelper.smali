.class public Lcom/narvii/services/CommunityStatusHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION_COMMUNITY_PAUSE:Ljava/lang/String; = "action_community_pause"


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


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    new-instance p2, Landroid/content/Intent;

    .line 3
    .line 4
    const-string v0, "action_community_pause"

    .line 5
    .line 6
    .line 7
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    const-string v0, "config"

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 19
    move-result v0

    .line 20
    .line 21
    const-string v1, "cid"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 36
    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
