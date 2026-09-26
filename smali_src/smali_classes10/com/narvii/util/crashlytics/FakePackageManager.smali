.class public Lcom/narvii/util/crashlytics/FakePackageManager;
.super Landroid/content/pm/PackageManager;
.source "SourceFile"


# instance fields
.field private final fakePackageName:Ljava/lang/String;

.field private final orig:Landroid/content/pm/PackageManager;

.field private final origPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/pm/PackageManager;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->origPackageName:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->fakePackageName:Ljava/lang/String;

    .line 10
    return-void
.end method

.method private pn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->fakePackageName:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->origPackageName:Ljava/lang/String;

    .line 11
    :cond_0
    return-object p1
.end method


# virtual methods
.method public addPackageToPreferred(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/util/crashlytics/FakePackageManager;->pn(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->addPackageToPreferred(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->addPermission(Landroid/content/pm/PermissionInfo;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 6
    return-void
.end method

.method public canRequestPackageInstalls()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/crashlytics/d;->a(Landroid/content/pm/PackageManager;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public checkSignatures(II)I
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result p1

    return p1
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/util/crashlytics/FakePackageManager;->pn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/narvii/util/crashlytics/FakePackageManager;->pn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public clearInstantAppCookie()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/crashlytics/e;->a(Landroid/content/pm/PackageManager;)V

    .line 6
    return-void
.end method

.method public clearPackagePreferredActivities(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/util/crashlytics/FakePackageManager;->pn(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public extendVerificationTimeout(IIJ)V
    .locals 0

    return-void
.end method

.method public getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 1
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getActivityBanner(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getActivityBanner(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 1
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/crashlytics/FakePackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 1
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getActivityLogo(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getAllPermissionGroups(I)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getApplicationBanner(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 1
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationBanner(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getApplicationBanner(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationBanner(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/util/crashlytics/FakePackageManager;->pn(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 1
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 2
    invoke-direct {p0, p1}, Lcom/narvii/util/crashlytics/FakePackageManager;->pn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/util/crashlytics/FakePackageManager;->pn(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 1
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getApplicationLogo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 2
    invoke-direct {p0, p1}, Lcom/narvii/util/crashlytics/FakePackageManager;->pn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLogo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getChangedPackages(I)Landroid/content/pm/ChangedPackages;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/util/crashlytics/l;->a(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ChangedPackages;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/util/crashlytics/FakePackageManager;->pn(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getInstalledApplications(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getInstalledPackages(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/util/crashlytics/FakePackageManager;->pn(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getInstantAppCookie()[B
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/crashlytics/g;->a(Landroid/content/pm/PackageManager;)[B

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getInstantAppCookieMaxBytes()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/crashlytics/k;->a(Landroid/content/pm/PackageManager;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/util/crashlytics/FakePackageManager;->pn(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/util/crashlytics/FakePackageManager;->pn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackageGids(Ljava/lang/String;)[I

    move-result-object p1

    return-object p1
.end method

.method public getPackageGids(Ljava/lang/String;I)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/narvii/util/crashlytics/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;I)[I

    move-result-object p1

    return-object p1
.end method

.method public getPackageInfo(Landroid/content/pm/VersionedPackage;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/narvii/util/crashlytics/i;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/VersionedPackage;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/util/crashlytics/FakePackageManager;->pn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public getPackageInstaller()Landroid/content/pm/PackageInstaller;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPackageUid(Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1, p2}, Lcom/narvii/util/crashlytics/c;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p3}, Lcom/narvii/util/crashlytics/FakePackageManager;->pn(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p3

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public getPreferredPackages(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPreferredPackages(I)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 1
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p1

    return-object p1
.end method

.method public getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 2
    invoke-direct {p0, p1}, Lcom/narvii/util/crashlytics/FakePackageManager;->pn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    return-object p1
.end method

.method public getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getSharedLibraries(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/util/crashlytics/h;->a(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSystemSharedLibraryNames()[Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/util/crashlytics/FakePackageManager;->pn(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/util/crashlytics/FakePackageManager;->pn(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public hasSystemFeature(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 1
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasSystemFeature(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/narvii/util/crashlytics/b;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public isInstantApp()Z
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/a;->a(Landroid/content/pm/PackageManager;)Z

    move-result v0

    return v0
.end method

.method public isInstantApp(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/common/wrappers/b;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isSafeMode()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/util/crashlytics/FakePackageManager;->pn(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public removePackageFromPreferred(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/util/crashlytics/FakePackageManager;->pn(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->removePackageFromPreferred(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public removePermission(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->removePermission(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public setApplicationCategoryHint(Ljava/lang/String;I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1, p2}, Lcom/narvii/util/crashlytics/j;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    .line 6
    return-void
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;II)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/util/crashlytics/FakePackageManager;->pn(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 10
    return-void
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 6
    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/util/crashlytics/FakePackageManager;->pn(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/util/crashlytics/FakePackageManager;->pn(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public updateInstantAppCookie([B)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/util/crashlytics/f;->a(Landroid/content/pm/PackageManager;[B)V

    .line 6
    return-void
.end method

.method public verifyPendingInstall(II)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/FakePackageManager;->orig:Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->verifyPendingInstall(II)V

    .line 6
    return-void
.end method
