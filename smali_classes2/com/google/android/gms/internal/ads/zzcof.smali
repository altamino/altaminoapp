.class final synthetic Lcom/google/android/gms/internal/ads/zzcof;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzczd;


# instance fields
.field private final zzfhm:Lcom/google/android/gms/internal/ads/zzcxm;

.field private final zzfra:Lcom/google/android/gms/internal/ads/zzcxu;

.field private final zzgcc:Lcom/google/android/gms/internal/ads/zzcjy;

.field private final zzgcj:Lcom/google/android/gms/internal/ads/zzcoe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcoe;Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzcjy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzgcj:Lcom/google/android/gms/internal/ads/zzcoe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzfra:Lcom/google/android/gms/internal/ads/zzcxu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzfhm:Lcom/google/android/gms/internal/ads/zzcxm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzgcc:Lcom/google/android/gms/internal/ads/zzcjy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzgcj:Lcom/google/android/gms/internal/ads/zzcoe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzfra:Lcom/google/android/gms/internal/ads/zzcxu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzfhm:Lcom/google/android/gms/internal/ads/zzcxm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzgcc:Lcom/google/android/gms/internal/ads/zzcjy;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcoe;->zzd(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzcjy;)V

    return-void
.end method
