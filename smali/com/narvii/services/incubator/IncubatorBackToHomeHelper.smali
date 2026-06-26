.class public Lcom/narvii/services/incubator/IncubatorBackToHomeHelper;
.super Ljava/lang/Object;
.source "IncubatorBackToHomeHelper.java"

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
.field public static final NOT_SHOW_LOGIN_WHEN_OPEN_MASTER:Ljava/lang/String; = "not_show_login_when_open_master"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
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
    .locals 5

    .line 41
    instance-of p2, p1, Lcom/narvii/app/NVActivity;

    if-eqz p2, :cond_3

    instance-of p2, p1, Lcom/narvii/app/ForwardActivity;

    if-nez p2, :cond_3

    instance-of p2, p1, Lcom/narvii/amino/MainActivity;

    if-nez p2, :cond_3

    instance-of p2, p1, Lcom/narvii/master/MasterActivity;

    if-nez p2, :cond_3

    .line 42
    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->hasMainStacked()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {}, Lcom/narvii/app/ApplicationSessionHelper;->hasMasterStacked()Z

    move-result p2

    if-nez p2, :cond_3

    .line 43
    check-cast p1, Lcom/narvii/app/NVActivity;

    const-string p2, "_pushIntent"

    .line 44
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->isStartingActivity()Z

    move-result p2

    if-nez p2, :cond_3

    iget-boolean p2, p1, Lcom/narvii/app/NVActivity;->initTaskActivity:Z

    if-eqz p2, :cond_3

    const-string p2, "config"

    .line 45
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/config/ConfigService;

    const-string v0, "affiliations"

    .line 46
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 47
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    const v0, 0x7f010011

    const v3, 0x7f010010

    if-nez v1, :cond_2

    .line 52
    new-instance p2, Landroid/content/Intent;

    const-class v1, Lcom/narvii/master/MasterActivity;

    invoke-direct {p2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "not_show_login_when_open_master"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    :cond_1
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 57
    invoke-virtual {p1, v3, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 59
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/narvii/amino/MainActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p2

    const-string v2, "__communityId"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 62
    invoke-virtual {p1, v3, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_3
    :goto_0
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
