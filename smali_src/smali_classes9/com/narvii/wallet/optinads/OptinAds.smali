.class public Lcom/narvii/wallet/optinads/OptinAds;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADS_LEVEL_0:I = 0x0

.field public static final ADS_LEVEL_1:I = 0x1

.field public static final ADS_LEVEL_2:I = 0x2

.field public static final FLAG_ALL:I = 0x1b

.field public static final FLAG_BANNER_ADS:I = 0x2

.field public static final FLAG_BANNER_ADS_GROUP_2:I = 0x10

.field public static final FLAG_INTERSTITIAL_ADS:I = 0x8

.field public static final FLAG_MREC_ADS:I = 0x1

.field public static final FLAG_NO_ADS:I = 0x0

.field public static final FLAG_PAID_ADS:I = 0x4

.field private static final REMOTE_ADS_SETTINGS:Ljava/lang/String; = "android_ads_settings"

.field private static forceAds:Ljava/lang/Boolean;

.field private static qualified:Ljava/lang/Boolean;

.field private static qualified4Preload:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static adsInitAllowed(Lcom/narvii/app/NVContext;)Z
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x1b

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0, v1}, Lcom/narvii/wallet/optinads/OptinAds;->optin(Lcom/narvii/app/NVContext;IZ)Z

    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public static forceAds()Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/wallet/optinads/OptinAds;->forceAds:Ljava/lang/Boolean;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/google/firebase/remoteconfig/a;->k()Lcom/google/firebase/remoteconfig/a;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/a;->g()Lcom/google/android/gms/tasks/Task;

    .line 12
    .line 13
    const-string v1, "android_ads_settings"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/a;->i(Ljava/lang/String;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    sput-object v0, Lcom/narvii/wallet/optinads/OptinAds;->forceAds:Ljava/lang/Boolean;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    const-string v1, "REMOTE_ADS_SETTINGS = "

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    sget-object v1, Lcom/narvii/wallet/optinads/OptinAds;->forceAds:Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lcom/narvii/util/Log;->v(Ljava/lang/String;)V

    .line 46
    .line 47
    :cond_0
    sget-object v0, Lcom/narvii/wallet/optinads/OptinAds;->forceAds:Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 51
    move-result v0

    .line 52
    return v0
.end method

.method public static getAdLevel(Lcom/narvii/app/NVContext;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/account/AccountService;->optinAdsLevel()I

    .line 12
    move-result p0

    .line 13
    .line 14
    if-eqz p0, :cond_2

    .line 15
    const/4 v0, 0x1

    .line 16
    .line 17
    if-eq p0, v0, :cond_1

    .line 18
    const/4 v0, 0x2

    .line 19
    .line 20
    if-eq p0, v0, :cond_0

    .line 21
    const/4 p0, 0x0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    const-string p0, "ad_level_2"

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    const-string p0, "ad_level_1"

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_2
    const-string p0, "ad_level_0"

    .line 31
    :goto_0
    return-object p0
.end method

.method public static optin(Lcom/narvii/app/NVContext;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/narvii/wallet/optinads/OptinAds;->optin(Lcom/narvii/app/NVContext;IZ)Z

    move-result p0

    return p0
.end method

.method public static optin(Lcom/narvii/app/NVContext;IZ)Z
    .locals 2

    const-string v0, "account"

    .line 2
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-static {}, Lcom/narvii/wallet/optinads/OptinAds;->forceAds()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    const-string p2, "config"

    .line 4
    invoke-interface {p0, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/config/ConfigService;

    .line 5
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p2

    if-nez p2, :cond_1

    return v1

    .line 6
    :cond_1
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/AccountService;

    .line 7
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->optinAdsFlags()I

    move-result p2

    and-int/2addr p1, p2

    if-nez p1, :cond_2

    return v1

    .line 8
    :cond_2
    invoke-static {p0}, Lcom/narvii/wallet/optinads/OptinAds;->qualified(Lcom/narvii/app/NVContext;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static qualified(Lcom/narvii/app/NVContext;)Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/wallet/optinads/OptinAds;->qualified:Ljava/lang/Boolean;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    .line 8
    sput-object v0, Lcom/narvii/wallet/optinads/OptinAds;->qualified:Ljava/lang/Boolean;

    .line 9
    .line 10
    new-instance v0, Lcom/narvii/util/PackageUtils;

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Lcom/narvii/util/PackageUtils;->getAppIdFromPackageName(Ljava/lang/String;)I

    .line 29
    move-result p0

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 34
    .line 35
    sput-object p0, Lcom/narvii/wallet/optinads/OptinAds;->qualified:Ljava/lang/Boolean;

    .line 36
    .line 37
    :cond_0
    sget-object p0, Lcom/narvii/wallet/optinads/OptinAds;->qualified:Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    move-result p0

    .line 42
    return p0
.end method

.method public static qualified4Preload(Lcom/narvii/app/NVContext;)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/wallet/optinads/OptinAds;->qualified4Preload:Ljava/lang/Boolean;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, La2/b;->d(Landroid/content/Context;)I

    .line 12
    move-result p0

    .line 13
    .line 14
    const/16 v0, 0x7dd

    .line 15
    .line 16
    if-le p0, v0, :cond_0

    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    move-result-object p0

    .line 24
    .line 25
    sput-object p0, Lcom/narvii/wallet/optinads/OptinAds;->qualified4Preload:Ljava/lang/Boolean;

    .line 26
    .line 27
    :cond_1
    sget-object p0, Lcom/narvii/wallet/optinads/OptinAds;->qualified4Preload:Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    move-result p0

    .line 32
    return p0
.end method

.method public static sendAdLevelUserProperty(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "ad_level"

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lcom/narvii/wallet/optinads/OptinAds;->getAdLevel(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method
