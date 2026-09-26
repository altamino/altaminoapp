.class public abstract Lcom/narvii/util/badge/BadgeService;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final context:Lcom/narvii/app/NVContext;

.field prefs:Landroid/content/SharedPreferences;

.field value:I


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/util/badge/BadgeService;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    const-string v0, "prefs"

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Landroid/content/SharedPreferences;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/util/badge/BadgeService;->prefs:Landroid/content/SharedPreferences;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const-string v0, "badge"

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 24
    move-result p1

    .line 25
    .line 26
    iput p1, p0, Lcom/narvii/util/badge/BadgeService;->value:I

    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method public flushBadge()V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/util/badge/BadgeService;->value:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/util/badge/BadgeService;->setLauncherBadge(I)V

    .line 6
    return-void
.end method

.method public abstract isBadgeAvailable()Z
.end method

.method public setBadge(I)V
    .locals 2

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/util/badge/BadgeService;->value:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/narvii/util/badge/BadgeService;->setLauncherBadge(I)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/util/badge/BadgeService;->prefs:Landroid/content/SharedPreferences;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    const-string v1, "badge"

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 23
    :cond_0
    return-void
.end method

.method protected abstract setLauncherBadge(I)V
.end method
