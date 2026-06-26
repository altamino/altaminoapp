.class public Lcom/narvii/util/ReferrerTrackUtils;
.super Ljava/lang/Object;
.source "ReferrerTrackUtils.java"


# static fields
.field private static referrerTrackUtils:Lcom/narvii/util/ReferrerTrackUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/narvii/util/ReferrerTrackUtils;
    .locals 1

    .line 21
    sget-object v0, Lcom/narvii/util/ReferrerTrackUtils;->referrerTrackUtils:Lcom/narvii/util/ReferrerTrackUtils;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/narvii/util/ReferrerTrackUtils;

    invoke-direct {v0}, Lcom/narvii/util/ReferrerTrackUtils;-><init>()V

    sput-object v0, Lcom/narvii/util/ReferrerTrackUtils;->referrerTrackUtils:Lcom/narvii/util/ReferrerTrackUtils;

    .line 24
    :cond_0
    sget-object v0, Lcom/narvii/util/ReferrerTrackUtils;->referrerTrackUtils:Lcom/narvii/util/ReferrerTrackUtils;

    return-object v0
.end method


# virtual methods
.method public trackReferrer(Lcom/narvii/app/NVContext;)V
    .locals 2

    const-string v0, "prefs"

    .line 28
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "referrer_track"

    .line 29
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object p1

    .line 35
    :try_start_0
    new-instance v1, Lcom/narvii/util/ReferrerTrackUtils$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/narvii/util/ReferrerTrackUtils$1;-><init>(Lcom/narvii/util/ReferrerTrackUtils;Lcom/android/installreferrer/api/InstallReferrerClient;Landroid/content/SharedPreferences;)V

    invoke-virtual {p1, v1}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
