.class public Lai/medialab/medialabads2/MediaLabAds;
.super Ljava/lang/Object;
.source "MediaLabAds.java"


# static fields
.field public static Companion:Lai/medialab/medialabads2/MediaLabAds$Companion;

.field public static INSTANCE$stub:Lai/medialab/medialabads2/MediaLabAds;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lai/medialab/medialabads2/MediaLabAds$Companion;

    invoke-direct {v0}, Lai/medialab/medialabads2/MediaLabAds$Companion;-><init>()V

    sput-object v0, Lai/medialab/medialabads2/MediaLabAds;->Companion:Lai/medialab/medialabads2/MediaLabAds$Companion;

    new-instance v0, Lai/medialab/medialabads2/MediaLabAds;

    invoke-direct {v0}, Lai/medialab/medialabads2/MediaLabAds;-><init>()V

    sput-object v0, Lai/medialab/medialabads2/MediaLabAds;->INSTANCE$stub:Lai/medialab/medialabads2/MediaLabAds;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lai/medialab/medialabads2/MediaLabAds;
    .locals 1

    sget-object v0, Lai/medialab/medialabads2/MediaLabAds;->INSTANCE$stub:Lai/medialab/medialabads2/MediaLabAds;

    return-object v0
.end method


# virtual methods
.method public addRevenueListener(Lai/medialab/medialabads2/analytics/AdRevenueListener;)V
    .locals 0

    return-void
.end method

.method public addSdkInitListener(Lai/medialab/medialabads2/SdkInitListener;)V
    .locals 0

    return-void
.end method

.method public initialize(Landroid/content/Context;ZLjava/lang/String;Lai/medialab/medialabads2/SdkInitListener;Lai/medialab/medialabads2/MediaLabUidListener;)V
    .locals 0

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setUserEmail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setUserPhone(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public shouldAllowUserInitiatedConsentUpdate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showUserInitiatedConsentUpdateForm(Landroid/app/Activity;Lai/medialab/medialabads2/cmp/ConsentCompletionListener;)V
    .locals 0

    return-void
.end method
