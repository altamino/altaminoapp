.class final synthetic Lcom/google/android/gms/internal/ads/zzckw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzfhm:Lcom/google/android/gms/internal/ads/zzcxm;

.field private final zzfra:Lcom/google/android/gms/internal/ads/zzcxu;

.field private final zzgaf:Lcom/google/android/gms/internal/ads/zzckv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzckv;Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckw;->zzgaf:Lcom/google/android/gms/internal/ads/zzckv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzckw;->zzfra:Lcom/google/android/gms/internal/ads/zzcxu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzckw;->zzfhm:Lcom/google/android/gms/internal/ads/zzcxm;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckw;->zzgaf:Lcom/google/android/gms/internal/ads/zzckv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzckw;->zzfra:Lcom/google/android/gms/internal/ads/zzcxu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzckw;->zzfhm:Lcom/google/android/gms/internal/ads/zzcxm;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzckv;->zzc(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;)Lcom/google/android/gms/internal/ads/zzbnf;

    move-result-object v0

    return-object v0
.end method
