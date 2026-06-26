.class public abstract Lcom/narvii/util/badge/BadgeService;
.super Ljava/lang/Object;
.source "BadgeService.java"


# instance fields
.field protected final context:Lcom/narvii/app/NVContext;

.field prefs:Landroid/content/SharedPreferences;

.field value:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/narvii/util/badge/BadgeService;->context:Lcom/narvii/app/NVContext;

    .line 18
    iget-object p1, p0, Lcom/narvii/util/badge/BadgeService;->context:Lcom/narvii/app/NVContext;

    const-string v0, "prefs"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/narvii/util/badge/BadgeService;->prefs:Landroid/content/SharedPreferences;

    .line 19
    iget-object p1, p0, Lcom/narvii/util/badge/BadgeService;->prefs:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "badge"

    .line 20
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/narvii/util/badge/BadgeService;->value:I

    :cond_0
    return-void
.end method


# virtual methods
.method public flushBadge()V
    .locals 1

    .line 35
    iget v0, p0, Lcom/narvii/util/badge/BadgeService;->value:I

    invoke-virtual {p0, v0}, Lcom/narvii/util/badge/BadgeService;->setLauncherBadge(I)V

    return-void
.end method

.method public abstract isBadgeAvailable()Z
.end method

.method public setBadge(I)V
    .locals 2

    .line 27
    iput p1, p0, Lcom/narvii/util/badge/BadgeService;->value:I

    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/util/badge/BadgeService;->setLauncherBadge(I)V

    .line 29
    iget-object v0, p0, Lcom/narvii/util/badge/BadgeService;->prefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "badge"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method protected abstract setLauncherBadge(I)V
.end method
