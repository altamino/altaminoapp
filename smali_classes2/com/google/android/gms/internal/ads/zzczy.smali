.class final synthetic Lcom/google/android/gms/internal/ads/zzczy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbtu;


# instance fields
.field private final zzgno:Lcom/google/android/gms/internal/ads/zzcze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczy;->zzgno:Lcom/google/android/gms/internal/ads/zzcze;

    return-void
.end method


# virtual methods
.method public final zzr(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczy;->zzgno:Lcom/google/android/gms/internal/ads/zzcze;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzczz;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcze;->zzanb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzczs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcze;->zzanc()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzczz;->zzc(Lcom/google/android/gms/internal/ads/zzczs;Ljava/lang/String;)V

    return-void
.end method
