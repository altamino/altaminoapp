.class final synthetic Lcom/google/android/gms/internal/ads/zzcgi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfvf:Lcom/google/android/gms/internal/ads/zzcgb;

.field private final zzfvj:Lcom/google/android/gms/internal/ads/zzams;

.field private final zzfvk:Lcom/google/android/gms/internal/ads/zzaiq;

.field private final zzfvl:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcgb;Lcom/google/android/gms/internal/ads/zzams;Lcom/google/android/gms/internal/ads/zzaiq;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzfvf:Lcom/google/android/gms/internal/ads/zzcgb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzfvj:Lcom/google/android/gms/internal/ads/zzams;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzfvk:Lcom/google/android/gms/internal/ads/zzaiq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzfvl:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzfvf:Lcom/google/android/gms/internal/ads/zzcgb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzfvj:Lcom/google/android/gms/internal/ads/zzams;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzfvk:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcgi;->zzfvl:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcgb;->zza(Lcom/google/android/gms/internal/ads/zzams;Lcom/google/android/gms/internal/ads/zzaiq;Ljava/util/List;)V

    return-void
.end method
