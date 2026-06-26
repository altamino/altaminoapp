.class final synthetic Lcom/google/android/gms/internal/ads/zzcgq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbal;


# instance fields
.field private final zzfvu:Lcom/google/android/gms/internal/ads/zzcgn;

.field private final zzfvv:Lcom/google/android/gms/internal/ads/zzarx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcgn;Lcom/google/android/gms/internal/ads/zzarx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgq;->zzfvu:Lcom/google/android/gms/internal/ads/zzcgn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgq;->zzfvv:Lcom/google/android/gms/internal/ads/zzarx;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgq;->zzfvu:Lcom/google/android/gms/internal/ads/zzcgn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgq;->zzfvv:Lcom/google/android/gms/internal/ads/zzarx;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcie;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcgn;->zza(Lcom/google/android/gms/internal/ads/zzarx;Lcom/google/android/gms/internal/ads/zzcie;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    return-object p1
.end method
