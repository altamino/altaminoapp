.class final synthetic Lcom/google/android/gms/internal/ads/zzcnz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfhm:Lcom/google/android/gms/internal/ads/zzcxm;

.field private final zzfra:Lcom/google/android/gms/internal/ads/zzcxu;

.field private final zzgcb:Lcom/google/android/gms/internal/ads/zzcny;

.field private final zzgcc:Lcom/google/android/gms/internal/ads/zzcjy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcny;Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzcjy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnz;->zzgcb:Lcom/google/android/gms/internal/ads/zzcny;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcnz;->zzfra:Lcom/google/android/gms/internal/ads/zzcxu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcnz;->zzfhm:Lcom/google/android/gms/internal/ads/zzcxm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcnz;->zzgcc:Lcom/google/android/gms/internal/ads/zzcjy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnz;->zzgcb:Lcom/google/android/gms/internal/ads/zzcny;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnz;->zzfra:Lcom/google/android/gms/internal/ads/zzcxu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcnz;->zzfhm:Lcom/google/android/gms/internal/ads/zzcxm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcnz;->zzgcc:Lcom/google/android/gms/internal/ads/zzcjy;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcny;->zzgca:Lcom/google/android/gms/internal/ads/zzcnw;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcnw;->zza(Lcom/google/android/gms/internal/ads/zzcnw;Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzcjy;)V

    return-void
.end method
