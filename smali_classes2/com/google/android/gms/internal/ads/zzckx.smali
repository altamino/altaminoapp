.class final synthetic Lcom/google/android/gms/internal/ads/zzckx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfhm:Lcom/google/android/gms/internal/ads/zzcxm;

.field private final zzfra:Lcom/google/android/gms/internal/ads/zzcxu;

.field private final zzgaf:Lcom/google/android/gms/internal/ads/zzckv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzckv;Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckx;->zzgaf:Lcom/google/android/gms/internal/ads/zzckv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzckx;->zzfra:Lcom/google/android/gms/internal/ads/zzcxu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzckx;->zzfhm:Lcom/google/android/gms/internal/ads/zzcxm;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckx;->zzgaf:Lcom/google/android/gms/internal/ads/zzckv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzckx;->zzfra:Lcom/google/android/gms/internal/ads/zzcxu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzckx;->zzfhm:Lcom/google/android/gms/internal/ads/zzcxm;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzckv;->zzd(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;)V

    return-void
.end method
