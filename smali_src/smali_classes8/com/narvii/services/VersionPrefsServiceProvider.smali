.class public Lcom/narvii/services/VersionPrefsServiceProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# static fields
.field public static final KEY_FIRST_LAUNCH_TIME:Ljava/lang/String; = "firstLaunchTime"

.field public static final KEY_LAUNCH_COUNT:Ljava/lang/String; = "launchCount"


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
.method public create(Lcom/narvii/app/NVContext;)Landroid/content/SharedPreferences;
    .locals 3

    .line 2
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "versionPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/narvii/util/PackageUtils;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getVersionName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "_version"

    .line 4
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/services/VersionPrefsServiceProvider;->create(Lcom/narvii/app/NVContext;)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Landroid/content/SharedPreferences;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/VersionPrefsServiceProvider;->destroy(Lcom/narvii/app/NVContext;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Landroid/content/SharedPreferences;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/VersionPrefsServiceProvider;->pause(Lcom/narvii/app/NVContext;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Landroid/content/SharedPreferences;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/VersionPrefsServiceProvider;->resume(Lcom/narvii/app/NVContext;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Landroid/content/SharedPreferences;)V
    .locals 6

    const/4 p1, 0x0

    const-string v0, "launchCount"

    .line 2
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "firstLaunchTime"

    const-wide/16 v2, 0x0

    .line 3
    invoke-interface {p2, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 4
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    add-int/lit8 p1, p1, 0x1

    .line 5
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    cmp-long p1, v4, v2

    if-nez p1, :cond_0

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {p2, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 7
    :cond_0
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Landroid/content/SharedPreferences;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/VersionPrefsServiceProvider;->start(Lcom/narvii/app/NVContext;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Landroid/content/SharedPreferences;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/VersionPrefsServiceProvider;->stop(Lcom/narvii/app/NVContext;Landroid/content/SharedPreferences;)V

    return-void
.end method
