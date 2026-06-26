.class final Lcom/google/android/gms/internal/ads/zzbee;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgh;


# instance fields
.field private final synthetic zzegb:Lcom/google/android/gms/internal/ads/zzbdq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbdq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzegb:Lcom/google/android/gms/internal/ads/zzbdq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgd;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzegb:Lcom/google/android/gms/internal/ads/zzbdq;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PlayerError"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbdq;->zza(Lcom/google/android/gms/internal/ads/zzbdq;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zza(ZI)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzegb:Lcom/google/android/gms/internal/ads/zzbdq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbdq;->zza(Lcom/google/android/gms/internal/ads/zzbdq;)I

    move-result p1

    if-eq p1, p2, :cond_2

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzegb:Lcom/google/android/gms/internal/ads/zzbdq;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbdq;->zza(Lcom/google/android/gms/internal/ads/zzbdq;I)I

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzegb:Lcom/google/android/gms/internal/ads/zzbdq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbdq;->zzc(Lcom/google/android/gms/internal/ads/zzbdq;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzegb:Lcom/google/android/gms/internal/ads/zzbdq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbdq;->zzb(Lcom/google/android/gms/internal/ads/zzbdq;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final zzdo()V
    .locals 0

    return-void
.end method
