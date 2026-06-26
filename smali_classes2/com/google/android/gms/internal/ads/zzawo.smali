.class final Lcom/google/android/gms/internal/ads/zzawo;
.super Lcom/google/android/gms/internal/ads/zzawv;


# instance fields
.field private final synthetic zzdtx:Lcom/google/android/gms/internal/ads/zzawm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzawm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdtx:Lcom/google/android/gms/internal/ads/zzawm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawv;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzto()V
    .locals 3

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzacx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdtx:Lcom/google/android/gms/internal/ads/zzawm;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzawm;->zza(Lcom/google/android/gms/internal/ads/zzawm;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdtx:Lcom/google/android/gms/internal/ads/zzawm;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzawm;->zzb(Lcom/google/android/gms/internal/ads/zzawm;)Lcom/google/android/gms/internal/ads/zzbai;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbai;->zzbsx:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzacx;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdtx:Lcom/google/android/gms/internal/ads/zzawm;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzawm;->zzc(Lcom/google/android/gms/internal/ads/zzawm;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlp()Lcom/google/android/gms/internal/ads/zzada;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzawo;->zzdtx:Lcom/google/android/gms/internal/ads/zzawm;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzawm;->zzd(Lcom/google/android/gms/internal/ads/zzawm;)Lcom/google/android/gms/internal/ads/zzacy;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzada;->zza(Lcom/google/android/gms/internal/ads/zzacy;Lcom/google/android/gms/internal/ads/zzacx;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "Cannot config CSI reporter."

    .line 8
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
