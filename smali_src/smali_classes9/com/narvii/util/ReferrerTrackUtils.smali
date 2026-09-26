.class public Lcom/narvii/util/ReferrerTrackUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static referrerTrackUtils:Lcom/narvii/util/ReferrerTrackUtils;


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

.method public static getInstance()Lcom/narvii/util/ReferrerTrackUtils;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/ReferrerTrackUtils;->referrerTrackUtils:Lcom/narvii/util/ReferrerTrackUtils;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/util/ReferrerTrackUtils;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lcom/narvii/util/ReferrerTrackUtils;-><init>()V

    .line 10
    .line 11
    sput-object v0, Lcom/narvii/util/ReferrerTrackUtils;->referrerTrackUtils:Lcom/narvii/util/ReferrerTrackUtils;

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lcom/narvii/util/ReferrerTrackUtils;->referrerTrackUtils:Lcom/narvii/util/ReferrerTrackUtils;

    .line 14
    return-object v0
.end method


# virtual methods
.method public trackReferrer(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "prefs"

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/content/SharedPreferences;

    .line 9
    .line 10
    const-string v1, "referrer_track"

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    xor-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    return-void

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    :try_start_0
    new-instance v1, Lcom/narvii/util/ReferrerTrackUtils$1;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, p0, p1, v0}, Lcom/narvii/util/ReferrerTrackUtils$1;-><init>(Lcom/narvii/util/ReferrerTrackUtils;Lcom/android/installreferrer/api/InstallReferrerClient;Landroid/content/SharedPreferences;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :catch_0
    return-void
.end method
