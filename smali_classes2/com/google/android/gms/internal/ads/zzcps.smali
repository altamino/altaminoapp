.class final Lcom/google/android/gms/internal/ads/zzcps;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzban;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzban<",
        "Lcom/google/android/gms/internal/ads/zzbpc;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzged:Lcom/google/android/gms/internal/ads/zzbxo;

.field private final synthetic zzgee:Lcom/google/android/gms/internal/ads/zzcpp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcpp;Lcom/google/android/gms/internal/ads/zzbxo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcps;->zzgee:Lcom/google/android/gms/internal/ads/zzcpp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcps;->zzged:Lcom/google/android/gms/internal/ads/zzbxo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcps;->zzged:Lcom/google/android/gms/internal/ads/zzbxo;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbxo;->zzadb()Lcom/google/android/gms/internal/ads/zzbrm;

    move-result-object v0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgm;->zze(Ljava/lang/Throwable;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbrm;->onAdFailedToLoad(I)V

    const-string v0, "AdLoaderShim.onFailure"

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzcya;->zzc(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic zzk(Ljava/lang/Object;)V
    .locals 3

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbpc;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcps;->zzgee:Lcom/google/android/gms/internal/ads/zzcpp;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcps;->zzgee:Lcom/google/android/gms/internal/ads/zzcpp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbpc;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcpp;->zza(Lcom/google/android/gms/internal/ads/zzcpp;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcps;->zzgee:Lcom/google/android/gms/internal/ads/zzcpp;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbpc;->zzpj()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcpp;->zzb(Lcom/google/android/gms/internal/ads/zzcpp;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbpc;->zzafl()V

    .line 14
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
