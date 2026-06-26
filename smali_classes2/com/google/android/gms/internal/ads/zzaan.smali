.class public final Lcom/google/android/gms/internal/ads/zzaan;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/MuteThisAdReason;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# instance fields
.field private final description:Ljava/lang/String;

.field private zzciq:Lcom/google/android/gms/internal/ads/zzaak;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaak;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaan;->zzciq:Lcom/google/android/gms/internal/ads/zzaak;

    .line 4
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaak;->getDescription()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 7
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 8
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaan;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaan;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final zzpu()Lcom/google/android/gms/internal/ads/zzaak;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaan;->zzciq:Lcom/google/android/gms/internal/ads/zzaak;

    return-object v0
.end method
