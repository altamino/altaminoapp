.class final synthetic Lcom/google/android/gms/internal/ads/zzczx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbtu;


# instance fields
.field private final zzgno:Lcom/google/android/gms/internal/ads/zzcze;

.field private final zzgnp:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcze;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczx;->zzgno:Lcom/google/android/gms/internal/ads/zzcze;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzczx;->zzgnp:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final zzr(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczx;->zzgno:Lcom/google/android/gms/internal/ads/zzcze;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczx;->zzgnp:Ljava/lang/Throwable;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzczz;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcze;->zzanb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzczs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcze;->zzanc()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzczz;->zza(Lcom/google/android/gms/internal/ads/zzczs;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
