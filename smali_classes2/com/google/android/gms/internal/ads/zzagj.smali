.class public final Lcom/google/android/gms/internal/ads/zzagj;
.super Lcom/google/android/gms/ads/formats/UnifiedNativeAd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# instance fields
.field private final zzcje:Lcom/google/android/gms/ads/VideoController;

.field private final zzcyt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcyu:Lcom/google/android/gms/internal/ads/zzael;

.field private final zzcyv:Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;

.field private final zzczb:Lcom/google/android/gms/internal/ads/zzagg;

.field private final zzczc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/MuteThisAdReason;",
            ">;"
        }
    .end annotation
.end field

.field private final zzczd:Lcom/google/android/gms/ads/formats/UnifiedNativeAd$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzagg;)V
    .locals 5

    const-string v0, ""

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzcyt:Ljava/util/List;

    .line 3
    new-instance v1, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {v1}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzcje:Lcom/google/android/gms/ads/VideoController;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczc:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    const/4 p1, 0x0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzagg;->getImages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 10
    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_2

    .line 11
    check-cast v2, Landroid/os/IBinder;

    if-eqz v2, :cond_2

    const-string v3, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    .line 13
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    .line 14
    instance-of v4, v3, Lcom/google/android/gms/internal/ads/zzaei;

    if-eqz v4, :cond_1

    .line 15
    move-object v2, v3

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaei;

    goto :goto_1

    .line 16
    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaek;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzaek;-><init>(Landroid/os/IBinder;)V

    move-object v2, v3

    goto :goto_1

    :cond_2
    move-object v2, p1

    :goto_1
    if-eqz v2, :cond_0

    .line 21
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzcyt:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzael;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzael;-><init>(Lcom/google/android/gms/internal/ads/zzaei;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 25
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzagg;->getMuteThisAdReasons()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 28
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 30
    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_5

    .line 31
    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaal;->zzf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzaak;

    move-result-object v2

    goto :goto_3

    :cond_5
    move-object v2, p1

    :goto_3
    if-eqz v2, :cond_4

    .line 35
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczc:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaan;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzaan;-><init>(Lcom/google/android/gms/internal/ads/zzaak;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 39
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    :cond_6
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzagg;->zzri()Lcom/google/android/gms/internal/ads/zzaei;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 43
    new-instance v2, Lcom/google/android/gms/internal/ads/zzael;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzael;-><init>(Lcom/google/android/gms/internal/ads/zzaei;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    .line 48
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    move-object v2, p1

    .line 49
    :goto_4
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzcyu:Lcom/google/android/gms/internal/ads/zzael;

    .line 51
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzagg;->zzrj()Lcom/google/android/gms/internal/ads/zzaea;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 52
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaed;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzagg;->zzrj()Lcom/google/android/gms/internal/ads/zzaea;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzaed;-><init>(Lcom/google/android/gms/internal/ads/zzaea;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v1

    .line 55
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    move-object v1, p1

    .line 56
    :goto_5
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzcyv:Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;

    .line 58
    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzagg;->zzrp()Lcom/google/android/gms/internal/ads/zzaee;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 59
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaeh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzagg;->zzrp()Lcom/google/android/gms/internal/ads/zzaee;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzaeh;-><init>(Lcom/google/android/gms/internal/ads/zzaee;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-object p1, v1

    goto :goto_6

    :catch_4
    move-exception v1

    .line 62
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    :cond_9
    :goto_6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczd:Lcom/google/android/gms/ads/formats/UnifiedNativeAd$zza;

    return-void
.end method

.method private final zzrh()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 2

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzagg;->zzrh()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 67
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final cancelUnconfirmedClick()V
    .locals 2

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzagg;->cancelUnconfirmedClick()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to cancelUnconfirmedClick"

    .line 180
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final destroy()V
    .locals 2

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzagg;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 153
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final enableCustomClickGesture()V
    .locals 2

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzagg;->zzro()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 138
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getAdChoicesInfo()Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzcyv:Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;

    return-object v0
.end method

.method public final getAdvertiser()Ljava/lang/String;
    .locals 2

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzagg;->getAdvertiser()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 184
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBody()Ljava/lang/String;
    .locals 2

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzagg;->getBody()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 97
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .locals 2

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzagg;->getCallToAction()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 102
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 2

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzagg;->getExtras()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 133
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final getHeadline()Ljava/lang/String;
    .locals 2

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzagg;->getHeadline()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 92
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzcyu:Lcom/google/android/gms/internal/ads/zzael;

    return-object v0
.end method

.method public final getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzcyt:Ljava/util/List;

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 2

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzagg;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 126
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMuteThisAdReasons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/MuteThisAdReason;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczc:Ljava/util/List;

    return-object v0
.end method

.method public final getPrice()Ljava/lang/String;
    .locals 2

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzagg;->getPrice()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 115
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getStarRating()Ljava/lang/Double;
    .locals 6

    const/4 v0, 0x0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzagg;->getStarRating()D

    move-result-wide v1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    return-object v0

    .line 105
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, ""

    .line 107
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final getStore()Ljava/lang/String;
    .locals 2

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzagg;->getStore()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 111
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/ads/VideoController;
    .locals 2

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzagg;->getVideoController()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzcje:Lcom/google/android/gms/ads/VideoController;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzagg;->getVideoController()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/ads/zzaar;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception occurred while getting video controller"

    .line 121
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzcje:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method public final isCustomMuteThisAdEnabled()Z
    .locals 2

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzagg;->isCustomMuteThisAdEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 148
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final muteThisAd(Lcom/google/android/gms/ads/MuteThisAdReason;)V
    .locals 1

    .line 160
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzagj;->isCustomMuteThisAdEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Ad is not custom mute enabled"

    .line 161
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzen(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzagg;->zza(Lcom/google/android/gms/internal/ads/zzaak;)V

    return-void

    .line 165
    :cond_1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzaan;

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaan;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaan;->zzpu()Lcom/google/android/gms/internal/ads/zzaak;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzagg;->zza(Lcom/google/android/gms/internal/ads/zzaak;)V

    return-void

    :cond_2
    const-string p1, "Use mute reason from UnifiedNativeAd.getMuteThisAdReasons() or null"

    .line 167
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzen(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 170
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final performClick(Landroid/os/Bundle;)V
    .locals 1

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzagg;->performClick(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 79
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final recordCustomClickGesture()V
    .locals 2

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzagg;->recordCustomClickGesture()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 143
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final recordImpression(Landroid/os/Bundle;)Z
    .locals 1

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzagg;->recordImpression(Landroid/os/Bundle;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 83
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final reportTouchEvent(Landroid/os/Bundle;)V
    .locals 1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzagg;->reportTouchEvent(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 88
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setMuteThisAdListener(Lcom/google/android/gms/ads/MuteThisAdListener;)V
    .locals 2

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaaj;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaaj;-><init>(Lcom/google/android/gms/ads/MuteThisAdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzagg;->zza(Lcom/google/android/gms/internal/ads/zzaag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 175
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setUnconfirmedClickListener(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$UnconfirmedClickListener;)V
    .locals 2

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzagt;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzagt;-><init>(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$UnconfirmedClickListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzagg;->zza(Lcom/google/android/gms/internal/ads/zzagd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to setUnconfirmedClickListener"

    .line 158
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final synthetic zzkq()Ljava/lang/Object;
    .locals 1

    .line 186
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzagj;->zzrh()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzkv()Ljava/lang/Object;
    .locals 2

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagj;->zzczb:Lcom/google/android/gms/internal/ads/zzagg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzagg;->zzrk()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 74
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
