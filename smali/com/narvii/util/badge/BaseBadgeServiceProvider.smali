.class public Lcom/narvii/util/badge/BaseBadgeServiceProvider;
.super Ljava/lang/Object;
.source "BaseBadgeServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/util/badge/BadgeService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDefaultLauncher(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 71
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 v1, 0x10000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 74
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/badge/BadgeService;
    .locals 2

    .line 19
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/util/badge/BaseBadgeServiceProvider;->getDefaultLauncher(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher"

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.sec.android.app.twlauncher"

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Lcom/narvii/util/badge/StubBadgeService;

    invoke-direct {v0, p1}, Lcom/narvii/util/badge/StubBadgeService;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0

    .line 22
    :cond_1
    :goto_0
    new-instance v0, Lcom/narvii/util/badge/SamsungBadgeService;

    invoke-direct {v0, p1}, Lcom/narvii/util/badge/SamsungBadgeService;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/util/badge/BaseBadgeServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/badge/BadgeService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/badge/BadgeService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/util/badge/BadgeService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/badge/BaseBadgeServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/badge/BadgeService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/badge/BadgeService;)V
    .locals 2

    .line 50
    instance-of p1, p2, Lcom/narvii/util/badge/SamsungBadgeService;

    if-eqz p1, :cond_0

    .line 51
    new-instance p1, Lcom/narvii/util/badge/BaseBadgeServiceProvider$2;

    invoke-direct {p1, p0, p2}, Lcom/narvii/util/badge/BaseBadgeServiceProvider$2;-><init>(Lcom/narvii/util/badge/BaseBadgeServiceProvider;Lcom/narvii/util/badge/BadgeService;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/util/badge/BadgeService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/badge/BaseBadgeServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/badge/BadgeService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/badge/BadgeService;)V
    .locals 3

    .line 33
    new-instance v0, Lcom/narvii/util/badge/BaseBadgeServiceProvider$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/util/badge/BaseBadgeServiceProvider$1;-><init>(Lcom/narvii/util/badge/BaseBadgeServiceProvider;Lcom/narvii/app/NVContext;Lcom/narvii/util/badge/BadgeService;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 43
    instance-of p1, p2, Lcom/narvii/util/badge/SamsungBadgeService;

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p2}, Lcom/narvii/util/badge/BadgeService;->flushBadge()V

    :cond_0
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/util/badge/BadgeService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/badge/BaseBadgeServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/badge/BadgeService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/util/badge/BadgeService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/util/badge/BadgeService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/badge/BaseBadgeServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/util/badge/BadgeService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/badge/BadgeService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/narvii/util/badge/BadgeService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/badge/BaseBadgeServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/badge/BadgeService;)V

    return-void
.end method
