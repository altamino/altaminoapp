.class public Ls4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DATA_COLLECTION_DEFAULT_ENABLED:Ljava/lang/String; = "firebase_data_collection_default_enabled"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final FIREBASE_APP_PREFS:Ljava/lang/String; = "com.google.firebase.common.prefs:"


# instance fields
.field private dataCollectionDefaultEnabled:Z

.field private final deviceProtectedContext:Landroid/content/Context;

.field private final publisher:Ll4/c;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ll4/c;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ls4/a;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iput-object p1, p0, Ls4/a;->deviceProtectedContext:Landroid/content/Context;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    const-string v1, "com.google.firebase.common.prefs:"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p2

    .line 27
    const/4 v0, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iput-object p1, p0, Ls4/a;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 34
    .line 35
    iput-object p3, p0, Ls4/a;->publisher:Ll4/c;

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Ls4/a;->c()Z

    .line 39
    move-result p1

    .line 40
    .line 41
    iput-boolean p1, p0, Ls4/a;->dataCollectionDefaultEnabled:Z

    .line 42
    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x18

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    return-object p0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private c()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Ls4/a;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    const-string v1, "firebase_data_collection_default_enabled"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Ls4/a;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 17
    move-result v0

    .line 18
    return v0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-direct {p0}, Ls4/a;->d()Z

    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method private d()Z
    .locals 4

    .line 1
    .line 2
    const-string v0, "firebase_data_collection_default_enabled"

    .line 3
    .line 4
    :try_start_0
    iget-object v1, p0, Ls4/a;->deviceProtectedContext:Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Ls4/a;->deviceProtectedContext:Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    const/16 v3, 0x80

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 40
    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    return v0

    .line 42
    :catch_0
    :cond_0
    const/4 v0, 0x1

    .line 43
    return v0
.end method


# virtual methods
.method public declared-synchronized b()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Ls4/a;->dataCollectionDefaultEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method
