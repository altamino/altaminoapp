.class public Lcom/google/firebase/crashlytics/internal/common/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final buildId:Ljava/lang/String;

.field public final buildIdInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/common/f;",
            ">;"
        }
    .end annotation
.end field

.field public final developmentPlatformProvider:Lcom/google/firebase/crashlytics/internal/f;

.field public final googleAppId:Ljava/lang/String;

.field public final installerPackageName:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final versionCode:Ljava/lang/String;

.field public final versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/common/f;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/crashlytics/internal/f;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/a;->googleAppId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/a;->buildId:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/a;->buildIdInfoList:Ljava/util/List;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/a;->installerPackageName:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/common/a;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/google/firebase/crashlytics/internal/common/a;->versionCode:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/google/firebase/crashlytics/internal/common/a;->versionName:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/google/firebase/crashlytics/internal/common/a;->developmentPlatformProvider:Lcom/google/firebase/crashlytics/internal/f;

    .line 20
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/common/b0;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/firebase/crashlytics/internal/f;)Lcom/google/firebase/crashlytics/internal/common/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/firebase/crashlytics/internal/common/b0;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/common/f;",
            ">;",
            "Lcom/google/firebase/crashlytics/internal/f;",
            ")",
            "Lcom/google/firebase/crashlytics/internal/common/a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    move-result-object v5

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/b0;->g()Ljava/lang/String;

    .line 8
    move-result-object v4

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    move-result-object p0

    .line 13
    const/4 p1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v5, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/a;->b(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    .line 21
    move-result-object v6

    .line 22
    .line 23
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 24
    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    const-string p0, "0.0"

    .line 28
    :cond_0
    move-object v7, p0

    .line 29
    .line 30
    new-instance p0, Lcom/google/firebase/crashlytics/internal/common/a;

    .line 31
    move-object v0, p0

    .line 32
    move-object v1, p2

    .line 33
    move-object v2, p3

    .line 34
    move-object v3, p4

    .line 35
    move-object v8, p5

    .line 36
    .line 37
    .line 38
    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/crashlytics/internal/common/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/f;)V

    .line 39
    return-object p0
.end method

.method private static b(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1c

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lcom/google/android/gms/internal/consent_sdk/a;->a(Landroid/content/pm/PackageInfo;)J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    .line 17
    :cond_0
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
