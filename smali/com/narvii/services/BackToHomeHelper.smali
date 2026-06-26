.class public Lcom/narvii/services/BackToHomeHelper;
.super Ljava/lang/Object;
.source "BackToHomeHelper.java"

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .locals 1

    .line 35
    instance-of p2, p1, Lcom/narvii/app/NVActivity;

    if-eqz p2, :cond_0

    instance-of p2, p1, Lcom/narvii/app/ForwardActivity;

    if-nez p2, :cond_0

    instance-of p2, p1, Lcom/narvii/amino/MainActivity;

    if-nez p2, :cond_0

    .line 36
    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->hasMainStacked()Z

    move-result p2

    if-nez p2, :cond_0

    .line 37
    check-cast p1, Lcom/narvii/app/NVActivity;

    const-string p2, "config"

    .line 38
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/config/ConfigService;

    const-string v0, "_pushIntent"

    .line 39
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->isStartingActivity()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/narvii/app/NVActivity;->initTaskActivity:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p2

    if-eqz p2, :cond_0

    .line 40
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/narvii/amino/MainActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const p2, 0x7f010010

    const v0, 0x7f010011

    .line 42
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
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
