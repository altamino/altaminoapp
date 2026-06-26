.class final synthetic Lcom/google/android/gms/internal/ads/zzcmy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbal;


# instance fields
.field private final zzgao:Lcom/google/android/gms/internal/ads/zzcxm;

.field private final zzgaq:Lcom/google/android/gms/internal/ads/zzcxu;

.field private final zzgbn:Lcom/google/android/gms/internal/ads/zzcmx;

.field private final zzgbo:Lcom/google/android/gms/internal/ads/zzcjv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcmx;Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzcjv;Lcom/google/android/gms/internal/ads/zzcxu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzgbn:Lcom/google/android/gms/internal/ads/zzcmx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzgao:Lcom/google/android/gms/internal/ads/zzcxm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzgbo:Lcom/google/android/gms/internal/ads/zzcjv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzgaq:Lcom/google/android/gms/internal/ads/zzcxu;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzgbn:Lcom/google/android/gms/internal/ads/zzcmx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzgao:Lcom/google/android/gms/internal/ads/zzcxm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzgbo:Lcom/google/android/gms/internal/ads/zzcjv;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zzgaq:Lcom/google/android/gms/internal/ads/zzcxu;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzcmx;->zza(Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzcjv;Lcom/google/android/gms/internal/ads/zzcxu;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    return-object p1
.end method
